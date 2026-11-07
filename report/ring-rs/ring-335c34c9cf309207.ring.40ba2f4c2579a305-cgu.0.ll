Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtB8_5value14ValidatedInput18write_into_mont_RRNtNtBe_3rsa1NEBe_:bb.a
  tail call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !169
  %exitcond.not.i12.i.i.i.i = icmp eq i64 %.sroa.05.02.i.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i12.i.i.i.i, label %.preheader.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i10.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

bb.w:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !23, !noalias !168, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.co) #39
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cp = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cr = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.ct = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cv = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cx = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.w, label %bb.x, !prof !16

bb.x:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  %i.cz = add nuw i64 %i.aa, %i.d
  store i64 %i.cz, ptr %i.s, align 8, !alias.scope !156
  br label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i: ; preds = %bb.x, %bb.o, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i, %bb.j, %.lr.ph.i.i36.i._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i
  %i.da = phi i64 [ %.val3.i.i.i, %bb.j ], [ %.val3.i.i.i, %bb.o ], [ %.val3.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ %.pre5.i, %.lr.ph.i.i36.i._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ %.val3.i.i.i, %bb.x ]
  %i.db = phi ptr [ %.val.i.i.i, %bb.j ], [ %.val.i.i.i, %bb.o ], [ %.val.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ %.pre.i, %.lr.ph.i.i36.i._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ %.val.i.i.i, %bb.x ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.j ], [ 1, %bb.o ], [ 1, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ 1, %.lr.ph.i.i36.i._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ 0, %bb.x ]
  %i.dc = icmp eq ptr %i.db, %i.q
  %i.dd = icmp eq i64 %i.da, %i.m
  %i.de = and i1 %i.dd, %i.dc
  br i1 %i.de, label %bb.y, label %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit, !prof !19

bb.y:                                             ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i
  %i.df = load i64, ptr %i.s, align 8, !noundef !15
  %i.dg = add i64 %i.df, %i.l                     ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.l
  br i1 %i.dh, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.dg, ptr %i.k, align 8
  br label %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #41
  unreachable

_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit: ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, %bb.z
  %.pn.i = phi i64 [ %.sroa.0.0.i.i, %bb.z ], [ 1, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit
  %.pn = phi i64 [ %.pn.i, %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit ], [ 1, %bb.d ]
  ret i64 %.pn

bb.ac:                                            ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs6_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_5BoxedNtNtNtBc_3rsa7keypair1PE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp ult i64 %.8.val, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 6 uses
  %i.e = lshr i64 %i.d, 1                         ; 4 uses
  %i.f = add nuw i64 %i.e, 2                      ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.f ; 2 uses
  %i.h = sub nuw nsw i64 %.8.val, %i.f            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !196, !noalias !197, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.j, %i.e
  br i1 %.not.i.i.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.d, 8
  br i1 %i.k, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.d, 257
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.42.0.ph.i.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i.i) #39
          to label %.noexc4 unwind label %bb.o

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !198
  store ptr %0, ptr %i.a, align 8, !noalias !198
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.m, align 8, !noalias !198
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.n, align 8, !noalias !198
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.o, align 8, !noalias !198
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.d, 15
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.d, 6
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.m, label %.thread3.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  br label %.thread3.i.i

.thread3.i.i:                                     ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.h, %i.e
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %.thread3.i.i
  %.not.i.i.i.i.i = icmp eq i64 %1, %i.e
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j, %.thread3.i.i
  %.sroa.6.0.ph.i.i.i = phi i64 [ %i.h, %.thread3.i.i ], [ %1, %bb.j ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i.i.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !199, !noalias !198
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull readonly align 8 %i.g, ptr noundef nonnull readonly align 8 %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %1) #36, !noalias !200, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !199, !noalias !198
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i: ; preds = %bb.l, %bb.k
  %.sink13.i.i.i = phi i64 [ %1, %bb.l ], [ %i.u, %bb.k ]
  %.sink.i.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i.i.i, ptr %i.x, align 8, !alias.scope !199, !noalias !198
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i

bb.m:                                             ; preds = %bb.h
  %i.y = lshr i64 %i.d, 3
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !201, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not.i.i = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not.i.i) #40
  %.pre.i.i = load i64, ptr %i.b, align 8, !noalias !198
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i: ; preds = %bb.m, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i
  %i.ac = phi i64 [ %.sink.i.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i ], [ %.pre.i.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !198
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %bb.p, !prof !16

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noalias !198, !noundef !15
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
          to label %.noexc5 unwind label %bb.o

.noexc5:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n, %bb.f, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = icmp eq i64 %1, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PEEBK_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.o
  %i.ai = shl nuw nsw i64 %1, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %i.ai, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PEEBK_.exit

bb.p:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !198
  %i.aj = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ak = insertvalue { ptr, i64 } %i.aj, i64 %1, 1
  ret { ptr, i64 } %i.ak

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PEEBK_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.o
  resume { ptr, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp ult i64 %.8.val, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !228
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 6 uses
  %i.e = lshr i64 %i.d, 1                         ; 4 uses
  %i.f = add nuw i64 %i.e, 2                      ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.f ; 2 uses
  %i.h = sub nuw nsw i64 %.8.val, %i.f            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !229, !noundef !15
  %.not.i.i = icmp eq i64 %i.j, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.d, 8
  br i1 %i.k, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.d, 257
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.42.0.ph.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtB6_3rsa1NEEB6_(i64 noundef %.sroa.42.0.ph.i) #39
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !230
  store ptr %0, ptr %i.a, align 8, !noalias !230
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.m, align 8, !noalias !230
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.n, align 8, !noalias !230
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.o, align 8, !noalias !230
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.d, 15
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.d, 6
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.m, label %.thread3.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  br label %.thread3.i

.thread3.i:                                       ; preds = %bb.h, %bb.i
  %.not.i.i.i = icmp eq i64 %i.h, %i.e
  br i1 %.not.i.i.i, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %.thread3.i
  %.not.i.i.i.i = icmp eq i64 %1, %i.e
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j, %.thread3.i
  %.sroa.6.0.ph.i.i = phi i64 [ %i.h, %.thread3.i ], [ %1, %bb.j ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !231, !noalias !230
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i

bb.l:                                             ; preds = %bb.j
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull readonly align 8 %i.g, ptr noundef nonnull readonly align 8 %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %1) #36, !noalias !232, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !231, !noalias !230
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i: ; preds = %bb.l, %bb.k
  %.sink13.i.i = phi i64 [ %1, %bb.l ], [ %i.u, %bb.k ]
  %.sink.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i.i, ptr %i.x, align 8, !alias.scope !231, !noalias !230
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i

bb.m:                                             ; preds = %bb.h
  %i.y = lshr i64 %i.d, 3
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !233, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not.i = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not.i) #40
  %.pre.i = load i64, ptr %i.b, align 8, !noalias !230
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i: ; preds = %bb.m, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i
  %i.ac = phi i64 [ %.sink.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i ], [ %.pre.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !230
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE3mulNtNtBa_10montgomery2RREBc_.exit, !prof !16

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noalias !230, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
  unreachable

_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE3mulNtNtBa_10montgomery2RREBc_.exit: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !230
  %i.ag = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %1, 1
  ret { ptr, i64 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PNtNtBa_10montgomery8RInverseE11encode_montNtB1s_2RREBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp ult i64 %.8.val, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !260
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 6 uses
  %i.e = lshr i64 %i.d, 1                         ; 4 uses
  %i.f = add nuw i64 %i.e, 2                      ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.f ; 2 uses
  %i.h = sub nuw nsw i64 %.8.val, %i.f            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !261, !noundef !15
  %.not.i.i = icmp eq i64 %i.j, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.d, 8
  br i1 %i.k, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.d, 257
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.42.0.ph.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i) #39
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !262
  store ptr %0, ptr %i.a, align 8, !noalias !262
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.m, align 8, !noalias !262
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.n, align 8, !noalias !262
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.o, align 8, !noalias !262
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.d, 15
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.d, 6
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.m, label %.thread3.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  br label %.thread3.i

.thread3.i:                                       ; preds = %bb.h, %bb.i
  %.not.i.i.i = icmp eq i64 %i.h, %i.e
  br i1 %.not.i.i.i, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %.thread3.i
  %.not.i.i.i.i = icmp eq i64 %1, %i.e
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j, %.thread3.i
  %.sroa.6.0.ph.i.i = phi i64 [ %i.h, %.thread3.i ], [ %1, %bb.j ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !263, !noalias !262
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i

bb.l:                                             ; preds = %bb.j
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull readonly align 8 %i.g, ptr noundef nonnull readonly align 8 %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %1) #36, !noalias !264, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !263, !noalias !262
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i: ; preds = %bb.l, %bb.k
  %.sink13.i.i = phi i64 [ %1, %bb.l ], [ %i.u, %bb.k ]
  %.sink.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i.i, ptr %i.x, align 8, !alias.scope !263, !noalias !262
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i

bb.m:                                             ; preds = %bb.h
  %i.y = lshr i64 %i.d, 3
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !265, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not.i = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not.i) #40
  %.pre.i = load i64, ptr %i.b, align 8, !noalias !262
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i: ; preds = %bb.m, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i
  %i.ac = phi i64 [ %.sink.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i ], [ %.pre.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !262
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PNtNtBa_10montgomery8RInverseE3mulNtB1s_2RREBc_.exit, !prof !16

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noalias !262, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
  unreachable

_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PNtNtBa_10montgomery8RInverseE3mulNtB1s_2RREBc_.exit: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !262
  %i.ag = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %1, 1
  ret { ptr, i64 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulNtB1i_9UnencodedEBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %i.e, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.f = icmp ugt i64 %.8.val, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add i64 %.8.val, -2                      ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.g, 7
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.g, 3
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.l = icmp samesign ult i64 %i.g, 4
  br i1 %i.l, label %bb.g, label %.thread3, !prof !24

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %i.g, 128
  br i1 %i.m, label %bb.i, label %.thread3, !prof !25

bb.g:                                             ; preds = %bb.e
  %i.n = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846976) %i.g) #39
  %i.o = extractvalue { i64, i64 } %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.p, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

.thread3:                                         ; preds = %bb.e, %bb.f
  %.not.i.i = icmp eq i64 %3, %i.g
  br i1 %.not.i.i, label %bb.h, label %bb.j, !prof !19

bb.h:                                             ; preds = %.thread3
  %.not.i.i.i = icmp eq i64 %1, %3
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.q = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846976) %i.g) #39
  %i.r = extractvalue { i64, i64 } %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.s, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

bb.j:                                             ; preds = %bb.h, %.thread3
  %.sroa.6.0.ph.i = phi i64 [ %3, %.thread3 ], [ %1, %bb.h ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

bb.k:                                             ; preds = %bb.h
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull %2, ptr noundef nonnull readonly align 8 %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %3) #36, !noalias !286, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit: ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.o, %bb.g ], [ %i.r, %bb.i ], [ %i.u, %bb.j ], [ %3, %bb.k ]
  %.sink.i = phi i64 [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i, ptr %i.x, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit

bb.l:                                             ; preds = %bb.d
  %i.y = lshr exact i64 %i.g, 2
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !287, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not) #40
  %.pre = load i64, ptr %i.b, align 8
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit, %bb.l
  %i.ac = phi i64 [ %.sink.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit ], [ %.pre, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
  unreachable

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %1, 1
  ret { ptr, i64 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PE3mulNtNtBa_10montgomery1REBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %i.e, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.f = icmp ugt i64 %.8.val, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add i64 %.8.val, -2                      ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.g, 7
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.g, 3
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.l = icmp samesign ult i64 %i.g, 4
  br i1 %i.l, label %bb.g, label %.thread3, !prof !24

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %i.g, 128
  br i1 %i.m, label %bb.i, label %.thread3, !prof !25

bb.g:                                             ; preds = %bb.e
  %i.n = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846976) %i.g) #39
  %i.o = extractvalue { i64, i64 } %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.p, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

.thread3:                                         ; preds = %bb.e, %bb.f
  %.not.i.i = icmp eq i64 %3, %i.g
  br i1 %.not.i.i, label %bb.h, label %bb.j, !prof !19

bb.h:                                             ; preds = %.thread3
  %.not.i.i.i = icmp eq i64 %1, %3
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.q = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846976) %i.g) #39
  %i.r = extractvalue { i64, i64 } %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.s, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

bb.j:                                             ; preds = %bb.h, %.thread3
  %.sroa.6.0.ph.i = phi i64 [ %3, %.thread3 ], [ %1, %bb.h ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

bb.k:                                             ; preds = %bb.h
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull %2, ptr noundef nonnull readonly align 8 %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %3) #36, !noalias !308, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit: ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.o, %bb.g ], [ %i.r, %bb.i ], [ %i.u, %bb.j ], [ %3, %bb.k ]
  %.sink.i = phi i64 [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i, ptr %i.x, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit

bb.l:                                             ; preds = %bb.d
  %i.y = lshr exact i64 %i.g, 2
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !309, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not) #40
  %.pre = load i64, ptr %i.b, align 8
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit, %bb.l
  %i.ac = phi i64 [ %.sink.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit ], [ %.pre, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
  unreachable

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %1, 1
  ret { ptr, i64 } %i.ah
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1PEBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %2, ptr %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp ugt i64 %.8.val, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 6 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %i.d, 1                      ; 2 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp eq i64 %1, %i.f
  br i1 %i.g, label %bb.g, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #41
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = icmp ugt i64 %1, 128
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %3, ptr nonnull readonly align 8 %0, i64 %i.i, i1 false), !alias.scope !318
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.j, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit, !prof !16

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.k = tail call noundef i32 @ring_core_0_17_16000__bn_from_montgomery_in_place(ptr noundef nonnull align 8 %2, i64 noundef %i.d, ptr noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noundef nonnull readonly align 8 %i.j, i64 noundef range(i64 0, 1152921504606846976) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val) #36, !noalias !319
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %_RNvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery24limbs_from_mont_in_place.exit, label %bb.k, !prof !19

bb.k:                                             ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41
  unreachable

_RNvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery24limbs_from_mont_in_place.exit: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit
  %i.m = insertvalue { ptr, i64 } poison, ptr %2, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %i.d, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtBG_6string6StringB19_bEEECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %.val4.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !326 ; 2 uses
  %i.f = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val5.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !326, !nonnull !15, !noundef !15
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %.val4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !326
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !326 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !326, !nonnull !15, !noundef !15
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !326
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit.i.i.i
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit, label %.lr.ph.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  %i.l = icmp eq i64 %.val2, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtBG_6string6StringB1g_bEEECs5yxAJGbRKSL_4ring.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit
  %i.m = mul nuw i64 %.val2, 56
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtBG_6string6StringB1g_bEEECs5yxAJGbRKSL_4ring.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtBG_6string6StringB1g_bEEECs5yxAJGbRKSL_4ring.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair15PrivateCrtPrimeNtBE_1PEEBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load i64, ptr %i.a, align 8, !noundef !15 ; 2 uses
  %i.b = icmp eq i64 %.val5, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4mont13BoxedIntoMontNtNtNtBM_3rsa7keypair1PNtNtBK_10montgomery3RRREEBM_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %.val4 = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.c = shl nuw nsw i64 %.val5, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.c, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4mont13BoxedIntoMontNtNtNtBM_3rsa7keypair1PNtNtBK_10montgomery3RRREEBM_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4mont13BoxedIntoMontNtNtNtBM_3rsa7keypair1PNtNtBK_10montgomery3RRREEBM_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.d, align 8, !noundef !15 ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint16private_exponent15PrivateExponentEBJ_.exit8, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i7

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i7: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4mont13BoxedIntoMontNtNtNtBM_3rsa7keypair1PNtNtBK_10montgomery3RRREEBM_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.f, align 8, !nonnull !15, !noundef !15
  %i.g = shl nuw nsw i64 %.val1, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint16private_exponent15PrivateExponentEBJ_.exit8

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint16private_exponent15PrivateExponentEBJ_.exit8: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4mont13BoxedIntoMontNtNtNtBM_3rsa7keypair1PNtNtBK_10montgomery3RRREEBM_.exit, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i7
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring2io6writer6WriterEBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !15, !noundef !15
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5yxAJGbRKSL_4ring.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring3rsa10public_key9PublicKeyEBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !15 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB2_10SealingKey13seal_in_place:bb.a
  %i.r = and i32 %i.o, 4
  %.not2.i = icmp eq i32 %i.r, 0
  br i1 %.not2.i, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit: ; preds = %bb.g
  call void @ring_core_0_17_16000__ChaCha20_ctr32_ssse3_4x(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1717, !inline_history !4
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit: ; preds = %bb.g, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1718, !inline_history !2
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1719
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  %i.s = and i32 %.sroa.1163.sroa.0.0.copyload, 67108863
  %i.t = call i32 @llvm.fshl.i32(i32 %.sroa.1163.sroa.4.0.copyload, i32 %.sroa.1163.sroa.0.0.copyload, i32 6)
  %i.u = and i32 %i.t, 67108611                   ; 2 uses
  %i.v = call i32 @llvm.fshl.i32(i32 %.sroa.1163.sroa.5.0.copyload, i32 %.sroa.1163.sroa.4.0.copyload, i32 12)
  %i.w = and i32 %i.v, 67092735                   ; 2 uses
  %i.x = call i32 @llvm.fshl.i32(i32 %.sroa.1163.sroa.6.0.copyload, i32 %.sroa.1163.sroa.5.0.copyload, i32 18)
  %i.y = and i32 %i.x, 66076671                   ; 2 uses
  %i.z = lshr i32 %.sroa.1163.sroa.6.0.copyload, 8
  %i.aa = and i32 %i.z, 1048575                   ; 2 uses
  %i.ab = mul nuw nsw i32 %i.u, 5
  %i.ac = mul nuw nsw i32 %i.w, 5
  %i.ad = mul nuw nsw i32 %i.y, 5
  %i.ae = mul nuw nsw i32 %i.aa, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7, i64 16, i1 false), !alias.scope !1721, !noalias !1722
  %.sroa.4.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.s, ptr %.sroa.4.0..sroa_idx.i.i42, align 16, !alias.scope !1723, !noalias !1719
  %.sroa.5.0..sroa_idx.i.i43 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.u, ptr %.sroa.5.0..sroa_idx.i.i43, align 4, !alias.scope !1723, !noalias !1719
  %.sroa.6.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.w, ptr %.sroa.6.0..sroa_idx.i.i44, align 8, !alias.scope !1723, !noalias !1719
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.y, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !1723, !noalias !1719
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.aa, ptr %.sroa.8.0..sroa_idx.i.i, align 32, !alias.scope !1723, !noalias !1719
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.ab, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !1723, !noalias !1719
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.ac, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !1723, !noalias !1719
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.ad, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !alias.scope !1723, !noalias !1719
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.ae, ptr %.sroa.12.0..sroa_idx.i.i, align 16, !alias.scope !1723, !noalias !1719
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx.i.i, i8 0, i64 20, i1 false), !alias.scope !1723, !noalias !1719
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 4, -9223372036854775808) %3), !noalias !1724
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 64, !alias.scope !1725, !noalias !1726
  %.sroa.4.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i45, align 4, !alias.scope !1725, !noalias !1726
  %.sroa.5.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i46, align 8, !alias.scope !1725, !noalias !1726
  %.sroa.6.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i47, align 4, !alias.scope !1725, !noalias !1726
  %.sroa.71.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !alias.scope !1725, !noalias !1726 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1725, !noalias !1726
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !1725, !noalias !1726
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 64, !alias.scope !1725, !noalias !1726
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !1725, !noalias !1726
  %i.af = lshr i32 %.sroa.71.0.copyload.i, 26
  %i.ag = and i32 %.sroa.71.0.copyload.i, 67108863
  %i.ah = add i32 %.sroa.8.0.copyload.i, %i.af    ; 2 uses
  %i.ai = lshr i32 %i.ah, 26
  %i.aj = and i32 %i.ah, 67108863                 ; 2 uses
  %i.ak = add i32 %i.ai, %.sroa.9.0.copyload.i    ; 2 uses
  %i.al = lshr i32 %i.ak, 26
  %i.am = and i32 %i.ak, 67108863                 ; 2 uses
  %i.an = add i32 %i.al, %.sroa.10.0.copyload.i   ; 2 uses
  %i.ao = lshr i32 %i.an, 26
  %i.ap = and i32 %i.an, 67108863                 ; 2 uses
  %i.aq = add i32 %i.ao, %.sroa.11.0.copyload.i   ; 3 uses
  %i.ar = lshr i32 %i.aq, 26
  %i.as = mul nuw nsw i32 %i.ar, 5
  %i.at = add nuw nsw i32 %i.as, %i.ag            ; 2 uses
  %i.au = add nuw nsw i32 %i.at, 5                ; 2 uses
  %i.av = lshr i32 %i.au, 26
  %i.aw = add nuw nsw i32 %i.av, %i.aj            ; 2 uses
  %i.ax = lshr i32 %i.aw, 26
  %i.ay = add nuw nsw i32 %i.ax, %i.am            ; 2 uses
  %i.az = lshr i32 %i.ay, 26
  %i.ba = add nuw nsw i32 %i.az, %i.ap            ; 2 uses
  %i.bb = lshr i32 %i.ba, 26
  %i.bc = or i32 %i.aq, -67108864
  %i.bd = add nsw i32 %i.bb, %i.bc                ; 3 uses
  %.neg.i.i = ashr i32 %i.bd, 31                  ; 5 uses
  %i.be = lshr i32 %i.bd, 31
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  %i.bg = and i32 %.neg.i.i, %i.at
  %i.bh = and i32 %i.bf, 67108863                 ; 4 uses
  %i.bi = and i32 %i.bh, %i.au
  %i.bj = or i32 %i.bi, %i.bg
  %i.bk = and i32 %.neg.i.i, %i.aj
  %i.bl = and i32 %i.bh, %i.aw
  %i.bm = or i32 %i.bl, %i.bk                     ; 2 uses
  %i.bn = and i32 %.neg.i.i, %i.am
  %i.bo = and i32 %i.bh, %i.ay
  %i.bp = or i32 %i.bo, %i.bn                     ; 2 uses
  %i.bq = and i32 %.neg.i.i, %i.ap
  %i.br = and i32 %i.bh, %i.ba
  %i.bs = or i32 %i.br, %i.bq                     ; 2 uses
  %i.bt = and i32 %.neg.i.i, %i.aq
  %i.bu = and i32 %i.bf, %i.bd
  %i.bv = or i32 %i.bu, %i.bt
  %i.bw = shl i32 %i.bm, 26
  %i.bx = or i32 %i.bj, %i.bw                     ; 2 uses
  %add.narrowed.i.i = add i32 %i.bx, %.sroa.0.0.copyload.i ; 2 uses
  %add.narrowed.overflow.i.i = icmp ult i32 %add.narrowed.i.i, %i.bx
  %i.by = lshr i32 %i.bm, 6
  %i.bz = shl i32 %i.bp, 20
  %i.ca = or disjoint i32 %i.by, %i.bz
  %i.cb = zext i32 %i.ca to i64
  %i.cc = zext i32 %.sroa.4.0.copyload.i to i64
  %i.cd = add nuw nsw i64 %i.cb, %i.cc
  %i.ce = lshr i32 %i.bp, 12
  %i.cf = shl i32 %i.bs, 14
  %i.cg = or disjoint i32 %i.ce, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = zext i32 %.sroa.5.0.copyload.i to i64
  %i.cj = add nuw nsw i64 %i.ch, %i.ci
  %i.ck = lshr i32 %i.bs, 18
  %i.cl = shl i32 %i.bv, 8
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = zext i32 %.sroa.6.0.copyload.i to i64
  %i.cp = add nuw nsw i64 %i.cn, %i.co
  %i.cq = zext i1 %add.narrowed.overflow.i.i to i64
  %i.cr = add nuw nsw i64 %i.cd, %i.cq            ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = lshr i64 %i.cr, 32
  %i.cu = add nuw nsw i64 %i.cj, %i.ct            ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = lshr i64 %i.cu, 32
  %i.cx = add nuw nsw i64 %i.cp, %i.cw
  %i.cy = trunc i64 %i.cx to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1719
  store i32 %add.narrowed.i.i, ptr %4, align 1
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.cs, ptr %.sroa.496.0..sroa_idx, align 1
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.cv, ptr %.sroa.597.0..sroa_idx, align 1
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.cy, ptr %.sroa.698.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB2_10SealingKey3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 4 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.764.0..sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.772.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <4 x i32>, ptr %i.a, align 1, !alias.scope !1729
  store <4 x i32> %i.b, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <4 x i32>, ptr %.sroa.764.0..sroa.6.16..sroa_idx.i, align 1, !alias.scope !1729
  store <4 x i32> %i.c, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load <4 x i32>, ptr %1, align 1, !alias.scope !1729
  store <4 x i32> %i.d, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load <4 x i32>, ptr %.sroa.772.0..sroa.0.0..sroa_idx.i, align 1, !alias.scope !1729
  store <4 x i32> %i.e, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB2_3Key11open_within(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 %.0.val, i64 %.8.val) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 1                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 1                ; 6 uses
  %i.i = alloca [16 x i8], align 1                ; 4 uses
  %i.j = alloca [16 x i8], align 1                ; 4 uses
  %i.k = alloca [16 x i8], align 1                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 1                ; 4 uses
  %i.n = alloca [16 x i8], align 1                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 11 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.q = alloca [16 x i8], align 1                ; 5 uses
  %i.r = alloca [16 x i8], align 1                ; 5 uses
  %i.s = alloca [16 x i8], align 1                ; 5 uses
  %i.t = alloca [16 x i8], align 1                ; 5 uses
  %i.u = alloca [16 x i8], align 1                ; 6 uses
  %i.v = alloca [16 x i8], align 1                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1854, !noundef !15 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1854, !noundef !15 ; 9 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !1855
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i: ; preds = %bb.a
  %i.ad = sub nuw i64 %i.z, %i.ab                 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %i.ae = load ptr, ptr %5, align 8, !alias.scope !1857, !nonnull !15, !noundef !15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.v, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 16777216, ptr %.sroa.9.0..sroa_idx9.i.i.i.i, align 1, !alias.scope !1863, !noalias !1862
  %i.af = load i64, ptr %1, align 8, !range !41, !alias.scope !1861, !noalias !1864, !noundef !15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  switch i64 %i.af, label %default.unreachable [
    i64 0, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
  ], !prof !42

default.unreachable:                              ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 3 uses
  store i32 33554432, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 1, !noalias !1862
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1862
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  %i.ai = icmp ugt i64 %i.ad, 68719476704
  br i1 %i.ai, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i, label %bb.c, !prof !16

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
  %i.aj = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.aj, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.ak = shl nuw nsw i64 %i.ad, 3
  %i.al = shl nuw i64 %4, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1867
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !noalias !1868
  store ptr %i.ag, ptr %i.o, align 8, !noalias !1867
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.al, ptr %i.an, align 8, !noalias !1867
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.ak, ptr %i.ao, align 8, !noalias !1867
  %i.ap = icmp eq i64 %4, 0
  br i1 %i.ap, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i: ; preds = %bb.d
  %.sroa.516.0..sroa_idx39.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx39.i.i.i.i.i, i64 24, i1 false), !noalias !1868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1867
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.d, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.011.026.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %3, %bb.d ] ; 2 uses
  %.sroa.512.025.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %4, %bb.d ] ; 3 uses
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.512.025.i.i.i.i.i, i64 16) ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.026.i.i.i.i.i, i64 %..i.i.i.i.i.i.i
  %i.ar = sub nuw nsw i64 %.sroa.512.025.i.i.i.i.i, %..i.i.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1868
  %i.as = icmp ugt i64 %.sroa.512.025.i.i.i.i.i, 15
  %i.at = sub nuw nsw i64 16, %..i.i.i.i.i.i.i
  %i.au = select i1 %i.as, i64 0, i64 %i.at
  %i.av = getelementptr i8, ptr %i.n, i64 %..i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.au, i1 false), !noalias !1868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.011.026.i.i.i.i.i, i64 range(i64 0, 129) %..i.i.i.i.i.i.i, i1 false), !alias.scope !1869, !noalias !1870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) %i.n, i64 16, i1 false), !noalias !1867
  %i.aw = load ptr, ptr %i.o, align 8, !noalias !1867, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.m, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !1871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1868
  %i.ax = icmp eq i64 %i.ar, 0
  br i1 %i.ax, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.014.0.copyload.pre.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !1867 ; 2 uses
  %.sroa.415.0.copyload.pre.i.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !1867 ; 2 uses
  %.sroa.516.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !1868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1867
  %i.ay = icmp eq ptr %.sroa.014.0.copyload.pre.i.i.i.i.i, null
  br i1 %i.ay, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i: ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i, %bb.c, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
  %.sroa.88.024.i.i.i.i.i = phi i64 [ %.sroa.415.0.copyload.pre.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i ], [ %i.ad, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i ], [ %4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.88.024.i.i.i.i.i, ptr %i.az, align 8, !alias.scope !1872, !noalias !1858
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i
  %.sroa.014.0.copyload41.i.i.i.i.i = phi ptr [ %i.ag, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i ], [ %.sroa.014.0.copyload.pre.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.415.0.copyload40.i.i.i.i.i = phi i64 [ 0, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i ], [ %.sroa.415.0.copyload.pre.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %.sroa.8.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, i64 24, i1 false), !noalias !1868
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  store ptr %.sroa.014.0.copyload41.i.i.i.i.i, ptr %i.p, align 8, !noalias !1868
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store i64 %.sroa.415.0.copyload40.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !1868
  call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  %i.bb = and i64 %i.ad, 68719476720              ; 5 uses
  %i.bc = add i64 %i.bb, %i.ab                    ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ab
  %.not.i.i7.i.i.i.i.i = icmp ugt i64 %i.bc, %i.z
  %or.cond.i.i.i.i.i.i = or i1 %i.bd, %.not.i.i7.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.h, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i, !prof !29

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.ad, 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i, label %_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvNtNtBa_7aes_gcm13vaesclmulavx226open_whole_vaes_clmul_avx20EBc_.exit.i.i.i.i.i.i.i.i.i.i

_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvNtNtBa_7aes_gcm13vaesclmulavx226open_whole_vaes_clmul_avx20EBc_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i to i32
  call void @ring_core_0_17_16000__aes_gcm_dec_update_vaes_avx2(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ae, i64 noundef %i.bb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ba, ptr noalias nofree noundef nonnull align 1 dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.014.0.copyload41.i.i.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i) #36, !noalias !1874
  %i.be = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 1, !alias.scope !1875, !noalias !1876
  %i.bf = call i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = add i32 %i.bf, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = call i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 1, !alias.scope !1875, !noalias !1876
  br label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i

_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i: ; preds = %_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvNtNtBa_7aes_gcm13vaesclmulavx226open_whole_vaes_clmul_avx20EBc_.exit.i.i.i.i.i.i.i.i.i.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i
  %i.bi = icmp ult i64 %i.z, %i.bb
  br i1 %i.bi, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i
  %i.bj = sub nuw i64 %i.z, %i.bb                 ; 3 uses
  %.not42.i.i.i.i.i.i.i = icmp ult i64 %i.bj, %i.ab
  br i1 %.not42.i.i.i.i.i.i.i, label %bb.g, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i, !prof !30

bb.f:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !1877
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !1877
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #41, !noalias !1878
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bk = sub nuw i64 %i.bj, %i.ab                ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.thread.i.i.i.i.i.i, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i.i.i.i.i.i, !prof !16

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !1880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !1881
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.not.i2.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.ab
  br i1 %.not.i2.i.i.i.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i.i.i.i.i.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #41, !noalias !1883
  unreachable

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bb ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !1884
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.bn, i64 range(i64 0, 129) %i.bk, i1 false), !noalias !1885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !1884
  %i.bo = load ptr, ptr %i.l, align 8, !alias.scope !1882, !noalias !1879, !nonnull !15, !align !17, !noundef !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bo, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.j, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !1886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !1884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !1888
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.b) #36, !noalias !1889, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1887
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 dereferenceable(16) %i.i, i64 range(i64 0, -9223372036854775808) %i.bk, i1 false), !alias.scope !1891, !noalias !1892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i.i.i.i.i.i, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !1893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !1895
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !1896, !noalias !1884, !noundef !15
  %i.bs = call i64 @llvm.bswap.i64(i64 %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1896, !noalias !1884, !noundef !15
  %i.bv = call i64 @llvm.bswap.i64(i64 %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1897
  store i64 %i.bs, ptr %i.f, align 8, !noalias !1897
  %.sroa.5.0..sroa_idx10.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.bv, ptr %.sroa.5.0..sroa_idx10.i.i.i.i.i.i.i, align 8, !noalias !1897
  %i.bw = load ptr, ptr %i.g, align 8, !alias.scope !1896, !noalias !1884, !nonnull !15, !align !17, !noundef !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bw, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.f, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !1898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !noalias !1884
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.d) #36, !noalias !1899, !inline_history !1
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.by, ptr noundef nonnull align 1 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !1900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1879
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i ], [ 1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1862
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i

bb.i:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.t, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 33554432, ptr %.sroa.9.0..sroa_idx1.i.i.i.i, align 1, !noalias !1862
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4open(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ag, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.t, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %5) #39, !noalias !1901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1862
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exitthread-pre-split.i.i

bb.j:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 33554432, ptr %.sroa.9.0..sroa_idx3.i.i.i.i, align 1, !noalias !1862
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %5, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.v) #39, !noalias !1901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1862
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exitthread-pre-split.i.i

bb.k:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.r, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 33554432, ptr %.sroa.9.0..sroa_idx5.i.i.i.i, align 1, !noalias !1862
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %5, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.r, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.v) #39, !noalias !1901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1862
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exitthread-pre-split.i.i

bb.l:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 33554432, ptr %.sroa.9.0..sroa_idx7.i.i.i.i, align 1, !noalias !1862
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %5, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.q, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.v) #39, !noalias !1901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1862
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exitthread-pre-split.i.i

_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exitthread-pre-split.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.pr.i.i = load i8, ptr %i.w, align 8, !noalias !1858
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i

_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i: ; preds = %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exitthread-pre-split.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i
  %6 = phi i8 [ %.pr.i.i, %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exitthread-pre-split.i.i ], [ %storemerge.i.i.i.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1862
  %i.ca = trunc nuw i8 %6 to i1
  br i1 %i.ca, label %bb.m, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1858
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.cb, align 8, !alias.scope !1851
  store ptr null, ptr %0, align 8, !alias.scope !1851
  br label %_RINvNtCs5yxAJGbRKSL_4ring4aead11open_withinNCNvMNtB2_7aes_gcmNtBK_3Key11open_within0EB4_.exit

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.x, ptr noundef nonnull align 1 dereferenceable(7) %i.cc, i64 7, i1 false), !noalias !1902
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.416.0.copyload.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !1858
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.517.0.copyload.i.i = load i8, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !1858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1858
  %.7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  store i64 %.sroa.416.0.copyload.i.i, ptr %.7..7..7..7..sroa_idx, align 1, !noalias !1902
  %.15..15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 15
  store i8 %.sroa.517.0.copyload.i.i, ptr %.15..15..15..15..sroa_idx, align 1, !noalias !1902
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  %.0..0..0..0..sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !1905, !noalias !1906
  %i.cd = xor i64 %.0..0..0..0..sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.0.val
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.8..8..8..8..sroa.0.0.copyload.i.i.i.i.i.i.i.1.i = load i64, ptr %.8..8..8..8..sroa_idx, align 8, !alias.scope !1905, !noalias !1906
  %i.ce = xor i64 %.8..8..8..8..sroa.0.0.copyload.i.i.i.i.i.i.i.1.i, %.8.val
  %i.cf = or i64 %i.ce, %i.cd
  %i.cg = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.cf) #36, !noalias !1907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1908
  store i64 %i.cg, ptr %i.a, align 8, !noalias !1908
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !1908, !srcloc !37
  %i.ch = load i64, ptr %i.a, align 8, !noalias !1908, !noundef !15
  %.not.i.i = icmp eq i64 %i.ch, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1908
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 0, i64 %i.ad, i1 false), !noalias !1902
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.sink.i = phi ptr [ null, %bb.n ], [ %i.ae, %.lr.ph.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ci, align 8, !alias.scope !1851
  store ptr %.sink.i, ptr %0, align 8, !alias.scope !1851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCs5yxAJGbRKSL_4ring4aead11open_withinNCNvMNtB2_7aes_gcmNtBK_3Key11open_within0EB4_.exit

_RINvNtCs5yxAJGbRKSL_4ring4aead11open_withinNCNvMNtB2_7aes_gcmNtBK_3Key11open_within0EB4_.exit: ; preds = %bb.m, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB2_3Key3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(448) initializes((0, 448)) %0, i64 noundef range(i64 0, 2) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [244 x i8], align 4               ; 5 uses
  %i.d = alloca [344 x i8], align 8               ; 5 uses
  %i.e = alloca [440 x i8], align 8               ; 5 uses
  %i.f = alloca [440 x i8], align 8               ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [244 x i8], align 4               ; 7 uses
  %i.i = alloca [448 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  %i.j = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !1931, !noundef !15 ; 6 uses
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = and i32 %i.j, 38
  %brmerge.i12.not.i = icmp eq i32 %i.l, 38
  br i1 %brmerge.i12.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1931
  %i.m = and i32 %i.j, 64
  %.not3.not.i = icmp eq i32 %i.m, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1932
  %i.n = trunc nuw i64 %1 to i1
  %..i.i = select i1 %i.n, i32 256, i32 128       ; 2 uses
  br i1 %.not3.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef i32 @ring_core_0_17_16000__aes_hw_set_encrypt_key_alt(ptr noundef nonnull %2, i32 noundef %..i.i, ptr noundef nonnull %i.c) #36, !noalias !1932 ; 0 uses
  br label %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = call noundef i32 @ring_core_0_17_16000__aes_hw_set_encrypt_key_base(ptr noundef nonnull %2, i32 noundef %..i.i, ptr noundef nonnull %i.c) #36, !noalias !1932 ; 0 uses
  br label %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i

_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.h, ptr noundef nonnull align 4 dereferenceable(244) %i.c, i64 244, i1 false), !noalias !1931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1933
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !1934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1933
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !noalias !1931
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !1935, !inline_history !1
  %.sroa.026.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !1936
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1933
  %i.q = call noundef i64 @llvm.bswap.i64(i64 %.sroa.026.0.copyload.i)
  %i.r = call noundef i64 @llvm.bswap.i64(i64 %.sroa.4.0.copyload.i)
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !1937, !noalias !1931
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1937, !noalias !1931
  %i.s = and i32 %i.j, 257
  %brmerge.i7.not.i = icmp eq i32 %i.s, 257
  br i1 %brmerge.i7.not.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.t = and i32 %i.j, 4
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.f:                                             ; preds = %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1931
  call void @ring_core_0_17_16000__gcm_init_vpclmulqdq_avx2(ptr noundef nonnull align 8 dereferenceable(192) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g) #36, !noalias !1931
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(244) %i.u, ptr noundef nonnull align 4 dereferenceable(244) %i.h, i64 244, i1 false), !noalias !1931
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.v, ptr noundef nonnull align 8 dereferenceable(440) %i.f, i64 440, i1 false)
  store i64 0, ptr %i.i, align 8, !alias.scope !1931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1931
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i
  %i.w = and i32 %i.j, 82
  %.sroa.0.0.i.i = icmp eq i32 %i.w, 82
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %.sroa.0.0.i.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1931
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey3new.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1931
  call fastcc void @_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm13clmulavxmovbeNtB2_3Key3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(192) %i.e, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) %i.g) #39, !noalias !1931
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(244) %i.y, ptr noundef nonnull align 4 dereferenceable(244) %i.h, i64 244, i1 false), !noalias !1931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.x, ptr noundef nonnull align 8 dereferenceable(440) %i.e, i64 440, i1 false)
  store i64 1, ptr %i.i, align 8, !alias.scope !1931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1931
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1931
  call void @ring_core_0_17_16000__gcm_init_clmul(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g) #36, !noalias !1931
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(244) %i.z, ptr noundef nonnull align 4 dereferenceable(244) %i.h, i64 244, i1 false), !noalias !1931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.x, ptr noundef nonnull align 8 dereferenceable(344) %i.d, i64 344, i1 false)
  store i64 2, ptr %i.i, align 8, !alias.scope !1931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1931
  br label %bb.h

bb.k:                                             ; preds = %bb.e
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey9new_ssse3(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(448) %i.i, i64 noundef range(i64 0, 2) %1, ptr noundef nonnull %2) #39
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey3new.exit

bb.l:                                             ; preds = %bb.e
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey12new_fallback(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(448) %i.i, i64 noundef range(i64 0, 2) %1, ptr noundef nonnull %2) #39
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey3new.exit

_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey3new.exit: ; preds = %bb.h, %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(448) %i.i, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB2_3Key4seal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 1                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 1                ; 6 uses
  %i.h = alloca [16 x i8], align 1                ; 4 uses
  %i.i = alloca [16 x i8], align 1                ; 5 uses
  %i.j = alloca [16 x i8], align 1                ; 4 uses
  %i.k = alloca [16 x i8], align 1                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12.i.i = alloca [24 x i8], align 8       ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.0.i.i = alloca [15 x i8], align 1        ; 5 uses
  %i.o = alloca [16 x i8], align 1                ; 8 uses
  %i.p = alloca [16 x i8], align 1                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
end_hunk_1
begin_hunk_2_@_RNvMs0_NtCs5yxAJGbRKSL_4ring9agreementNtB5_19EphemeralPrivateKey8generate:bb.a
  %i.g = icmp ult i64 %i.f, 49
  br i1 %i.g, label %bb.d, label %bb.c, !prof !36

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #41, !noalias !2271
  unreachable

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2269, !nonnull !15, !noundef !15
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull %i.d, i64 noundef %i.f), !noalias !2272, !inline_history !5
  br i1 %i.j, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit.thread, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2270
  br label %bb.e

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit: ; preds = %bb.d
  %.sroa.01.0.copyload2 = load ptr, ptr %i.a, align 8, !noalias !2273 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !2273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2270
  %i.k = icmp eq ptr %.sroa.01.0.copyload2, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit.thread, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store ptr %.sroa.01.0.copyload2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE17exponentiate_elem(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 21 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !38, !noundef !15
  %i.g = and i64 %i.f, -2                         ; 7 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2323
  store i8 4, ptr %i.d, align 1, !noalias !2323
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #41, !noalias !2323
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.h, align 8, !noundef !15 ; 3 uses
  %i.i = icmp ult i64 %.val2, 2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !2324
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit
  %i.j = add i64 %.val2, -2                       ; 6 uses
  %i.k = lshr i64 %i.j, 1                         ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !2325, !noundef !15
  %.not.i.i = icmp eq i64 %i.m, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.g, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i64 %i.j, 8
  br i1 %i.n, label %bb.g, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %i.j, 257
  br i1 %i.o, label %bb.g, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit, !prof !16

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.42.0.ph.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtB6_3rsa1NEEB6_(i64 noundef %.sroa.42.0.ph.i) #39
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit: ; preds = %bb.f
  %i.p = icmp ugt i64 %3, 128
  br i1 %i.p, label %bb.h, label %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE10clone_intoBb_.exit

bb.h:                                             ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #41, !noalias !2326
  unreachable

_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE10clone_intoBb_.exit: ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit
  %i.q = shl nuw nsw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %4, ptr nonnull readonly align 8 %2, i64 %i.q, i1 false), !alias.scope !2327
  %i.r = tail call fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %3, ptr nonnull %.val, i64 %.val2)
  %.fr22 = freeze { ptr, i64 } %i.r               ; 2 uses
  %i.s = extractvalue { ptr, i64 } %.fr22, 0      ; 4 uses
  %i.t = extractvalue { ptr, i64 } %.fr22, 1      ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  %i.u = icmp ugt i64 %i.t, 128
  br i1 %i.u, label %bb.i, label %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NNtNtB9_10montgomery1RE10clone_intoBb_.exit.i

bb.i:                                             ; preds = %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE10clone_intoBb_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #41, !noalias !2330
  unreachable

_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NNtNtB9_10montgomery1RE10clone_intoBb_.exit.i: ; preds = %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE10clone_intoBb_.exit
  %i.v = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %1, ptr nonnull readonly align 8 %i.s, i64 %i.v, i1 false), !alias.scope !2331
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.g, i1 true) ; 2 uses
  %i.x = lshr exact i64 -9223372036854775808, %i.w ; 5 uses
  %.not.i = icmp eq i64 %i.w, 63
  br i1 %.not.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NNtNtB9_10montgomery1RE10clone_intoBb_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.not.i.i.i.not.i = icmp eq i64 %i.t, %i.k      ; 2 uses
  %i.ad = lshr i64 %i.j, 3
  %i.ae = icmp samesign ugt i64 %i.j, 15
  br i1 %i.ae, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i
  %i.af = and i64 %i.j, 6
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.split.us.split.us.split.us.i, label %.lr.ph.split.us.split.us.split.split.i.preheader

.lr.ph.split.us.split.us.split.split.i.preheader: ; preds = %.lr.ph.split.us.split.us.i
  br i1 %.not.i.i.i.not.i, label %.lr.ph.split.us.split.us.split.split.i.us, label %.lr.ph.split.us.split.us.split.split.i, !prof !19

.lr.ph.split.us.split.us.split.split.i.us:        ; preds = %.lr.ph.split.us.split.us.split.split.i.preheader, %bb.j
  %.sroa.05.01.us.us.i.us = phi i64 [ %i.ah, %bb.j ], [ %i.x, %.lr.ph.split.us.split.us.split.split.i.preheader ] ; 2 uses
  %i.ah = lshr i64 %.sroa.05.01.us.us.i.us, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val)
  %i.ai = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i.us, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i.us: ; preds = %.lr.ph.split.us.split.us.split.split.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.ak = and i64 %i.ah, %i.g
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %.thread3.i.us.us.i.us

.thread3.i.us.us.i.us:                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2333
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull readonly align 8 %i.s, ptr noundef nonnull readonly align 8 %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, i64 noundef range(i64 0, 1152921504606846976) %i.k) #36, !noalias !2334, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2333
  br label %bb.j

bb.j:                                             ; preds = %.thread3.i.us.us.i.us, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i.us
  %i.am = icmp ugt i64 %.sroa.05.01.us.us.i.us, 3
  br i1 %i.am, label %.lr.ph.split.us.split.us.split.split.i.us, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.split.us.split.us.i, %bb.k
  %.sroa.05.01.us.us.us.i = phi i64 [ %i.an, %bb.k ], [ %i.x, %.lr.ph.split.us.split.us.i ] ; 2 uses
  %i.an = lshr i64 %.sroa.05.01.us.us.us.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val)
  %i.ao = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.us.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.us.i: ; preds = %.lr.ph.split.us.split.us.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.aq = and i64 %i.an, %i.g
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.us.us.us.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.us.us.us.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2333
  store ptr %1, ptr %i.a, align 8, !noalias !2333
  store i64 %i.t, ptr %i.z, align 8, !noalias !2333
  store ptr %i.s, ptr %i.aa, align 8, !noalias !2333
  store i64 %i.t, ptr %i.ab, align 8, !noalias !2333
  %i.as = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !2335, !noundef !15 ; 2 uses
  %i.at = icmp ne i32 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = and i32 %i.as, 1536
  %brmerge.i.not.i.us.us.us.i = icmp eq i32 %i.au, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, i1 noundef zeroext %brmerge.i.not.i.us.us.us.i) #40
  %.pre.i.us.us.us.i = load i64, ptr %i.b, align 8, !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2333
  %i.av = trunc nuw i64 %.pre.i.us.us.us.i to i1
  br i1 %i.av, label %.split3.us.loopexit.i, label %_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulB1g_EBc_.exit.us.us.us.i, !prof !16

_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulB1g_EBc_.exit.us.us.us.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.us.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2333
  br label %bb.k

bb.k:                                             ; preds = %_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulB1g_EBc_.exit.us.us.us.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.us.i
  %i.aw = icmp ugt i64 %.sroa.05.01.us.us.us.i, 3
  br i1 %i.aw, label %.lr.ph.split.us.split.us.split.us.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.lr.ph.split.us.split.us.split.split.i:           ; preds = %.lr.ph.split.us.split.us.split.split.i.preheader, %bb.l
  %.sroa.05.01.us.us.i = phi i64 [ %i.ax, %bb.l ], [ %i.x, %.lr.ph.split.us.split.us.split.split.i.preheader ] ; 2 uses
  %i.ax = lshr i64 %.sroa.05.01.us.us.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val)
  %i.ay = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i: ; preds = %.lr.ph.split.us.split.us.split.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.ba = and i64 %i.ax, %i.g
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %.thread3.i.us.us.i

.thread3.i.us.us.i:                               ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  br label %.split3.us.i

bb.l:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i
  %i.bc = icmp ugt i64 %.sroa.05.01.us.us.i, 3
  br i1 %i.bc, label %.lr.ph.split.us.split.us.split.split.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.i
  br i1 %.not.i.i.i.not.i, label %.lr.ph.split.us.split.split.split.us.split.i, label %.lr.ph.split.us.split.split.split.i, !prof !19

.lr.ph.split.us.split.split.split.us.split.i:     ; preds = %.lr.ph.split.us.split.split.i, %bb.m
  %.sroa.05.01.us.us11.i = phi i64 [ %i.bd, %bb.m ], [ %i.x, %.lr.ph.split.us.split.split.i ] ; 2 uses
  %i.bd = lshr i64 %.sroa.05.01.us.us11.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val)
  %i.be = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us12.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us12.i: ; preds = %.lr.ph.split.us.split.split.split.us.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.bg = and i64 %i.bd, %i.g
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %.thread3.i.us.us13.i

.thread3.i.us.us13.i:                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2333
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull readonly align 8 %i.s, ptr noundef nonnull readonly align 8 %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, i64 noundef range(i64 0, 1152921504606846976) %i.k) #36, !noalias !2334, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2333
  br label %bb.m

bb.m:                                             ; preds = %.thread3.i.us.us13.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us12.i
  %i.bi = icmp ugt i64 %.sroa.05.01.us.us11.i, 3
  br i1 %i.bi, label %.lr.ph.split.us.split.split.split.us.split.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.lr.ph.split.us.split.split.split.i:              ; preds = %.lr.ph.split.us.split.split.i, %bb.n
  %.sroa.05.01.us.i = phi i64 [ %i.bj, %bb.n ], [ %i.x, %.lr.ph.split.us.split.split.i ] ; 2 uses
  %i.bj = lshr i64 %.sroa.05.01.us.i, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val), !noalias !2328
  %i.bk = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.i: ; preds = %.lr.ph.split.us.split.split.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.bm = and i64 %i.bj, %i.g
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %.thread3.i.us.i

.thread3.i.us.i:                                  ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  br label %.split3.us.i

bb.n:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.i
  %i.bo = icmp ugt i64 %.sroa.05.01.us.i, 3
  br i1 %i.bo, label %.lr.ph.split.us.split.split.split.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.split.us.i:                                      ; preds = %.lr.ph.split.us.split.split.split.i, %.lr.ph.split.us.split.split.split.us.split.i, %.lr.ph.split.us.split.us.split.split.i, %.lr.ph.split.us.split.us.split.split.i.us, %.lr.ph.split.us.split.us.split.us.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !23, !noalias !2332, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.bq) #39
  unreachable

.split3.us.loopexit.i:                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.us.us.us.i
  %.pre.i = load i64, ptr %i.ac, align 8, !range !23, !noalias !2333
  br label %.split3.us.i

.split3.us.i:                                     ; preds = %.thread3.i.us.us.i, %.split3.us.loopexit.i, %.thread3.i.us.i
  %i.br = phi i64 [ 0, %.thread3.i.us.us.i ], [ %.pre.i, %.split3.us.loopexit.i ], [ 0, %.thread3.i.us.i ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.br) #39
  unreachable

_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.k, %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NNtNtB9_10montgomery1RE10clone_intoBb_.exit.i
  %i.bs = add nuw nsw i64 %i.k, 2
  %i.bt = tail call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulNtB1i_9UnencodedEBc_(ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr nonnull %.val, i64 %i.bs)
  ret { ptr, i64 } %i.bt
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8be_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.c = icmp ult i64 %.val1, 2
  br i1 %i.c, label %bb.b, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !2362
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i: ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8
  %.0.val.fr.i = freeze ptr %.val                 ; 2 uses
  %i.d = add i64 %.val1, -2
  %i.e = lshr i64 %i.d, 1                         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val.fr.i) ]
  %i.f = getelementptr i8, ptr %.0.val.fr.i, i64 16 ; 6 uses
  %.idx6.i = shl nuw nsw i64 %i.e, 3              ; 6 uses
  %.ptr7.i = getelementptr i8, ptr %i.f, i64 %.idx6.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2363
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  store i64 0, ptr %i.a, align 8, !alias.scope !2365, !noalias !2366
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2366
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.f, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2366
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  store ptr %.ptr7.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2366
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i64 %.idx6.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2366
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  store i8 2, ptr %i.g, align 8, !alias.scope !2367, !noalias !2363
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.promoted20.i.i = load i64, ptr %i.h, align 8, !noalias !2363 ; 2 uses
  %.promoted24.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2363 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %.split.us.i.loopexit.i, label %.split.preheader.i.i.i.i.i

bb.c:                                             ; preds = %.split29.i.i.i.i.i
  %i.i = add i64 %.sroa.0.018.i.i, -1             ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %.split.preheader.i.i.i.i.i, label %..loopexit_crit_edge.i.i

.split.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i, %bb.c
  %i.k = phi i64 [ %i.z, %bb.c ], [ %.idx6.i, %.lr.ph.i.i ] ; 3 uses
  %.idx.i = phi i64 [ %.idx3.i, %bb.c ], [ %.idx6.i, %.lr.ph.i.i ] ; 3 uses
  %i.l = phi i64 [ %i.aa, %bb.c ], [ %.promoted24.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.m = phi i64 [ %i.ab, %bb.c ], [ %.promoted20.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %i.i, %bb.c ], [ %.idx6.i, %.lr.ph.i.i ]
  %i.n = phi i64 [ %i.ac, %bb.c ], [ 0, %.lr.ph.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  %i.o = trunc nuw i64 %i.n to i1
  %.not.i.i.i.not.i.peel.i.i.i.i.i = icmp ne i64 %i.m, %i.l
  %or.cond166.not.i.i = select i1 %i.o, i1 %.not.i.i.i.not.i.peel.i.i.i.i.i, i1 false
  br i1 %or.cond166.not.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.split.preheader.i.i.i.i.i
  %i.p = icmp eq i64 %.idx.i, 0
  br i1 %i.p, label %.split29.i.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i: ; preds = %bb.d
  %.add.i = add i64 %.idx.i, -8                   ; 2 uses
  %.ptr11.i = getelementptr i8, ptr %i.f, i64 %.add.i
  %i.q = load i64, ptr %.ptr11.i, align 8, !noalias !2371, !noundef !15
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q)
  store i64 %i.r, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, align 8, !alias.scope !2372, !noalias !2363
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i, %.split.preheader.i.i.i.i.i
  %.idx5.i = phi i64 [ %.add.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %.idx.i, %.split.preheader.i.i.i.i.i ]
  %i.s = phi i64 [ 8, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.m, %.split.preheader.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.l, %.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.t = icmp ult i64 %.us-phi.i.i.i.i.i, 8
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.k, 0
  br i1 %i.u, label %.noexc.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, i64 %.us-phi.i.i.i.i.i
  %i.w = add nuw nsw i64 %.us-phi.i.i.i.i.i, 1
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
  %i.fl = icmp eq ptr %i.fi, %i.ep
  br i1 %i.fl, label %bb.ak, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !2932

bb.aj:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !3244
  unreachable

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fm = load i64, ptr %i.dt, align 64, !alias.scope !3245, !noalias !3231, !noundef !15
  %i.fn = or i64 %i.fm, 1
  store i64 %i.fn, ptr %i.dt, align 64, !alias.scope !3245, !noalias !3231
  %i.fo = call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dt, i64 noundef %i.fk, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, i64 noundef 0), !noalias !3232
  %i.fp = extractvalue { i64, i64 } %i.fo, 0
  %.not71.i.i.i.i = icmp eq i64 %i.fp, -1
  %.not.i101.i.i.i.i = icmp eq i64 %i.da, %i.em
  %or.cond.i.i = and i1 %.not.i101.i.i.i.i, %.not71.i.i.i.i
  br i1 %or.cond.i.i, label %bb.al, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i, !prof !3246

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.dt, ptr nonnull readonly align 8 %i.eo, i64 %i.dz, i1 false), !alias.scope !3247, !noalias !3232
  %i.fq = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef 1, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not72.i.i.i.i = icmp eq i64 %i.fq, -1
  br i1 %.not72.i.i.i.i, label %.split.split.split.us.i.preheader.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

.split.split.split.us.i.preheader.i.i.i:          ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3231
  store i64 1, ptr %i.o, align 8, !noalias !3231
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 31, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 5 uses
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  br i1 %.sroa.0.0.i76.i.i.i.i, label %.split.split.split.us.i.us.i.i.i, label %.split.split.split.us.i.i.i.i

.split.split.split.us.i.us.i.i.i:                 ; preds = %.split.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i
  %i.fr = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !range !34, !noalias !3231, !noundef !15
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = load i64, ptr %i.o, align 8, !noalias !3231
  %.sroa.066.0.us91.i.us.i.i.i = select i1 %i.fs, i64 0, i64 %i.ft
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  %i.fu = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i, i64 noundef %.sroa.066.0.us91.i.us.i.i.i) #40, !noalias !3232 ; 2 uses
  %i.fv = extractvalue { i64, i64 } %i.fu, 0
  %i.fw = extractvalue { i64, i64 } %i.fu, 1      ; 3 uses
  %i.fx = trunc nuw i64 %i.fv to i1
  br i1 %i.fx, label %bb.am, label %.split86.us.i.i.i.i

bb.am:                                            ; preds = %.split.split.split.us.i.us.i.i.i
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %.split88.us.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i: ; preds = %bb.am
  %i.fz = add i64 %i.fw, -1
  call void @ring_core_0_17_16000__bn_mulx4x_mont_gather5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull readonly align 8 %i.eo, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.da, i64 noundef range(i64 0, -1) %i.fz) #36, !noalias !3232
  %i.ga = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.fw, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not74.us.i.us.i.i.i = icmp eq i64 %i.ga, -1
  br i1 %.not74.us.i.us.i.i.i, label %.split.split.split.us.i.us.i.i.i, label %.split93.us.i.i.i.i

.split.split.split.us.i.i.i.i:                    ; preds = %.split.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i
  %i.gb = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !range !34, !noalias !3231, !noundef !15
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = load i64, ptr %i.o, align 8, !noalias !3231
  %.sroa.066.0.us91.i.i.i.i = select i1 %i.gc, i64 0, i64 %i.gd
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  %i.ge = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i, i64 noundef %.sroa.066.0.us91.i.i.i.i) #40, !noalias !3232 ; 2 uses
  %i.gf = extractvalue { i64, i64 } %i.ge, 0
  %i.gg = extractvalue { i64, i64 } %i.ge, 1      ; 3 uses
  %i.gh = trunc nuw i64 %i.gf to i1
  br i1 %i.gh, label %bb.an, label %.split86.us.i.i.i.i

bb.an:                                            ; preds = %.split.split.split.us.i.i.i.i
  %i.gi = icmp eq i64 %i.gg, 0
  br i1 %i.gi, label %.split88.us.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i: ; preds = %bb.an
  %i.gj = add i64 %i.gg, -1
  call void @ring_core_0_17_16000__bn_mul4x_mont_gather5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull readonly align 8 %i.eo, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.da, i64 noundef range(i64 0, -1) %i.gj) #36, !noalias !3232
  %i.gk = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.gg, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not74.us.i.i.i.i = icmp eq i64 %i.gk, -1
  br i1 %.not74.us.i.i.i.i, label %.split.split.split.us.i.i.i.i, label %.split93.us.i.i.i.i

.split86.us.i.i.i.i:                              ; preds = %.split.split.split.us.i.i.i.i, %.split.split.split.us.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3231
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  %i.gl = icmp samesign ugt i64 %.val1.i.i, 288230376151711743
  br i1 %i.gl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.split86.us.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !3249
  unreachable

bb.ap:                                            ; preds = %.split86.us.i.i.i.i
  %.not.i12.i.i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i12.i.i.i, label %bb.aq, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i, !prof !16

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !3249
  unreachable

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i: ; preds = %bb.ap
  %i.gm = shl nuw i64 %.val1.i.i, 6
  %i.gn = urem i64 %i.gm, 5                       ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  %i.gp = sub nuw nsw i64 64, %i.gn
  %i.gq = select i1 %i.go, i64 59, i64 %i.gp      ; 2 uses
  %i.gr = load i64, ptr %.val.i.i, align 8, !alias.scope !3248, !noalias !3250, !noundef !15
  %i.gs = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %i.gr, i64 noundef 0, i64 noundef %i.gq) #36, !noalias !3249
  %i.gt = add nsw i64 %i.gq, -5
  call void @ring_core_0_17_16000__bn_gather5(ptr noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noundef nonnull %i.q, i64 noundef %i.gs) #36, !noalias !3251
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i: ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i
  %.sroa.011.0.us.us.us.i.i.i.i = phi i64 [ %.val.i.us.us.us.i.i.i.i, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ]
  %.sroa.0.0.us.us.us.i.i.i.i = phi i64 [ %i.hf, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ %i.gt, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 4 uses
  %.sroa.05.0.i.us.us.us.i.i.i.i = phi i64 [ %i.hg, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.sroa.05.0.i.us.us.us.i.i.i.i
  %.val.i.us.us.us.i.i.i.i = load i64, ptr %i.gu, align 8, !alias.scope !3248, !noalias !3252, !noundef !15 ; 4 uses
  %i.gv = icmp ugt i64 %.sroa.0.0.us.us.us.i.i.i.i, 59
  br i1 %i.gv, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %i.gw = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.011.0.us.us.us.i.i.i.i, i64 noundef %.sroa.0.0.us.us.us.i.i.i.i) #36, !noalias !3253 ; 2 uses
  %i.gx = add i64 %.sroa.0.0.us.us.us.i.i.i.i, -5 ; 3 uses
  br i1 %.sroa.0.0.i76.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gw) #36, !noalias !3254
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

bb.as:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gw) #36, !noalias !3254
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i: ; preds = %bb.as, %bb.ar
  %i.gy = icmp ult i64 %i.gx, 64
  br i1 %i.gy, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %.sroa.0.1.us.us.us.i.i.i.i = phi i64 [ %i.gx, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %.sroa.0.0.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i ] ; 2 uses
  br i1 %.sroa.0.0.i76.i.i.i.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i
  %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i = phi i64 [ %i.ha, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i ], [ %.sroa.0.1.us.us.us.i.i.i.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i ] ; 2 uses
  %i.gz = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i) #36, !noalias !3255
  %i.ha = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gz) #36, !noalias !3256
  %i.hb = icmp ult i64 %i.ha, 64
  br i1 %i.hb, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i
  %.sroa.0.2.us.us.us.us.us.us.i.i.i.i = phi i64 [ %i.hd, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i ], [ %.sroa.0.1.us.us.us.i.i.i.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i ] ; 2 uses
  %i.hc = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.i.i.i) #36, !noalias !3255
  %i.hd = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.i.i.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.hc) #36, !noalias !3256
  %i.he = icmp ult i64 %i.hd, 64
  br i1 %i.he, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i
  %.lcssa.i.i.us.us.us.i.i.i.i = phi i64 [ %i.gx, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %i.ha, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i ], [ %i.hd, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i ]
  %i.hf = add i64 %.lcssa.i.i.us.us.us.i.i.i.i, 64
  %i.hg = add nuw nsw i64 %.sroa.05.0.i.us.us.us.i.i.i.i, 1 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, %.val1.i.i
  br i1 %i.hh, label %.lr.ph.i.i.preheader.i.i.i.i, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.t, ptr nonnull readonly align 64 %i.dt, i64 %i.dz, i1 false), !alias.scope !3257, !noalias !3258
  call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  store i64 1, ptr %i.ab, align 8, !alias.scope !3260, !noalias !3261
  %.idx.i.i.i.i.i = add nsw i64 %i.dz, -8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hi, i8 0, i64 range(i64 0, 1017) %.idx.i.i.i.i.i, i1 false), !alias.scope !3262, !noalias !3263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3264
  store ptr %i.t, ptr %i.l, align 8, !noalias !3264
  %i.hj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.da, ptr %i.hj, align 8, !noalias !3264
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ab, ptr %i.hk, align 8, !noalias !3264
  %i.hl = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.da, ptr %i.hl, align 8, !noalias !3264
  %i.hm = icmp ugt i64 %i.cz, 15
  br i1 %i.hm, label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.preheader.i.i.i.i
  call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %i.t, ptr noundef nonnull align 8 dereferenceable(1024) %i.t, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da) #36, !noalias !3265, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3264
  br label %bb.au

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i
  %i.hn = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3266, !noundef !15 ; 2 uses
  %i.ho = icmp ne i32 %i.hn, 0
  call void @llvm.assume(i1 %i.ho), !noalias !3267
  %i.hp = and i32 %i.hn, 1536
  %brmerge.i.not.i.i.i.i = icmp eq i32 %i.hp, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dn, i64 noundef %i.ei, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i1 noundef zeroext %brmerge.i.not.i.i.i.i) #40, !noalias !3268
  %.pre.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !3264
  %i.hq = trunc nuw i64 %.pre.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3264
  br i1 %i.hq, label %bb.at, label %bb.au, !prof !16

bb.at:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !range !23, !noalias !3264, !noundef !15
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.hs) #39
  unreachable

.split88.us.i.i.i.i:                              ; preds = %bb.an, %bb.am
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41, !noalias !3232
  unreachable

.split93.us.i.i.i.i:                              ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3231
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i: ; preds = %.split93.us.i.i.i.i, %bb.al, %bb.ak, %bb.ah, %bb.ag, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3231
  br label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38

bb.au:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3231
  call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i92.i = load ptr, ptr %i.ht, align 8, !alias.scope !3272 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i93.i = load i64, ptr %i.hu, align 8, !alias.scope !3272 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3273)
  call void @llvm.experimental.noalias.scope.decl(metadata !3274)
  %i.hv = icmp ult i64 %.val67.i, 2
  br i1 %i.hv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !3275
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hw = add i64 %.val67.i, -2                   ; 9 uses
  %i.hx = lshr i64 %i.hw, 1                       ; 32 uses
  %i.hy = add nuw i64 %i.hx, 2                    ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.val66.i, i64 %i.hy
  %i.ia = sub nuw nsw i64 %.val67.i, %i.hy
  %i.ib = getelementptr inbounds nuw i8, ptr %.val66.i, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !3276, !noalias !3277, !noundef !15
  %.not.i.i.i.i94.i = icmp eq i64 %i.ic, %i.hx
  br i1 %.not.i.i.i.i94.i, label %bb.ax, label %bb.az, !prof !19

bb.ax:                                            ; preds = %bb.aw
  %i.id = icmp ult i64 %i.hw, 8
  br i1 %i.id, label %bb.az, label %bb.ay, !prof !16

bb.ay:                                            ; preds = %bb.ax
  %i.ie = icmp ugt i64 %i.hw, 257
  br i1 %i.ie, label %bb.az, label %bb.ba, !prof !16

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sroa.42.0.ph.i.i.i95.i = phi i64 [ 0, %bb.aw ], [ 1, %bb.ax ], [ 2, %bb.ay ]
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1QEEB6_(i64 noundef %.sroa.42.0.ph.i.i.i95.i) #39
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  call void @llvm.experimental.noalias.scope.decl(metadata !3279)
  %i.if = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3280, !noundef !15 ; 3 uses
  %i.ig = icmp ne i32 %i.if, 0
  call void @llvm.assume(i1 %i.ig)
  %i.ih = and i32 %i.if, 1536
  %not.brmerge.i78.i.i.i98.i = icmp eq i32 %i.ih, 1536 ; 4 uses
  %i.ii = and i32 %i.if, 1664
  %.sroa.0.0.i76.i.i.i99.i = icmp eq i32 %i.ii, 1664 ; 3 uses
  %.not.i91.i.i.i100.i = icmp eq i64 %i.hx, 0
  br i1 %.not.i91.i.i.i100.i, label %bb.bb, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i, !prof !16

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41, !noalias !3281
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i: ; preds = %bb.ba
  %i.ij = and i64 %i.hw, 510
  %.not70.i.i.i101.i = icmp eq i64 %i.cv, %i.ij
  br i1 %.not70.i.i.i101.i, label %bb.bc, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, !prof !19

bb.bc:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.val66.i, i64 16 ; 9 uses
  %i.il = lshr i64 %i.hw, 4                       ; 5 uses
  %i.im = and i64 %i.hw, 14
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, !prof !19

_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i: ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3280
  %i.io = icmp samesign ult i64 %i.hw, 80
  br i1 %i.io, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i
  %i.ip = shl nuw nsw i64 %i.il, 5                ; 5 uses
  %i.iq = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.ip ; 22 uses
  %i.ir = mul nuw nsw i64 %i.il, 24               ; 2 uses
  %.not.i93.i.i.i107.i = icmp samesign ugt i64 %i.hx, %i.ir
  br i1 %.not.i93.i.i.i107.i, label %bb.bd, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i, !prof !16

bb.bd:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #41, !noalias !3282
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.hx ; 2 uses
  %i.it = sub nuw nsw i64 %i.ir, %i.hx            ; 2 uses
  %.not.i94.i.i.i109.i = icmp samesign ugt i64 %i.hx, %i.it
  br i1 %.not.i94.i.i.i109.i, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #41, !noalias !3283
  unreachable

bb.bf:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.hx ; 11 uses
  %i.iv = sub nuw nsw i64 %i.it, %i.hx
  %.not.i99.i.i.i110.i = icmp eq i64 %i.iv, %i.hx
  br i1 %.not.i99.i.i.i110.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, !prof !19

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i: ; preds = %bb.bf
  %i.iw = shl nuw nsw i64 %i.hx, 3                ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.iu, ptr nonnull readonly align 8 %i.ik, i64 %i.iw, i1 false), !alias.scope !3284, !noalias !3285
  call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %i.ix = icmp samesign ugt i64 %i.cv, 128
  br i1 %i.ix, label %bb.bg, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i

bb.bg:                                            ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41, !noalias !3288
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i: ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i
  %i.iy = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.ct, i64 %i.iy, i1 false), !alias.scope !3289, !noalias !3222
  %i.iz = call noundef i32 @ring_core_0_17_16000__bn_from_montgomery_in_place(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, i64 noundef %i.hx, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.cv, ptr noundef nonnull readonly align 8 %i.ik, i64 noundef range(i64 0, 1152921504606846976) %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i) #36, !noalias !3290
  %i.ja = icmp eq i32 %i.iz, 1
  br i1 %i.ja, label %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i, label %bb.bh, !prof !19

bb.bh:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !noalias !3291
  unreachable

_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3280
  store ptr %i.is, ptr %i.h, align 8, !noalias !3280
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.hx, ptr %i.jb, align 8, !noalias !3280
  %i.jc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %i.jc, align 8, !noalias !3280
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.hx, ptr %i.jd, align 8, !noalias !3280
  %i.je = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.hz, ptr %i.je, align 8, !noalias !3280
  %i.jf = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.ia, ptr %i.jf, align 8, !noalias !3280
  %i.jg = lshr i64 %i.hw, 3                       ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill12uninit_slice6UninityERSyB1S_EEBa_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.jg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i) #40, !noalias !3281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3280
  %i.jh = load i64, ptr %i.j, align 8, !range !22, !noalias !3280, !noundef !15
  %i.ji = trunc nuw i64 %i.jh to i1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !3280, !noundef !15
  br i1 %i.ji, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3280
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

bb.bj:                                            ; preds = %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !3280, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3280
  call void @llvm.experimental.noalias.scope.decl(metadata !3292)
  call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.iw
  %i.jo = add nsw i64 %i.iw, -8
  %i.jp = lshr exact i64 %i.jo, 3
  %i.jq = call i64 @llvm.umin.i64(i64 %i.hx, i64 %i.jp) ; 2 uses
  %min.iters.check142 = icmp samesign ult i64 %i.jq, 4
  br i1 %min.iters.check142, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %bb.bj
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 2 uses
  %i.js = and i64 %i.jr, 3                        ; 2 uses
  %i.jt = icmp eq i64 %i.js, 0
  %i.ju = select i1 %i.jt, i64 4, i64 %i.js
  %n.vec144 = sub nsw i64 %i.jr, %i.ju            ; 3 uses
  %i.jv = shl i64 %n.vec144, 3
  %i.jw = getelementptr i8, ptr %i.ik, i64 %i.jv
  br label %vector.body145

end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
  %i.ki = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i113.i, 1 ; 2 uses
  %i.kj = icmp eq ptr %i.kg, %i.jn
  br i1 %i.kj, label %bb.bl, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i, !llvm.loop !3046

bb.bk:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !3298
  unreachable

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.i
  %i.kk = load i64, ptr %i.iq, align 64, !alias.scope !3299, !noalias !3280, !noundef !15
  %i.kl = or i64 %i.kk, 1
  store i64 %i.kl, ptr %i.iq, align 64, !alias.scope !3299, !noalias !3280
  %i.km = call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iq, i64 noundef %i.ki, ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, i64 noundef 0), !noalias !3281
  %i.kn = extractvalue { i64, i64 } %i.km, 0
  %.not71.i.i.i117.i = icmp eq i64 %i.kn, -1
  %.not.i102.i.i.i.i = icmp eq i64 %i.hx, %i.jk
  %or.cond.i118.i = and i1 %.not.i102.i.i.i.i, %.not71.i.i.i117.i
  br i1 %or.cond.i118.i, label %bb.bm, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, !prof !3246

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.iq, ptr nonnull readonly align 8 %i.jm, i64 %i.iw, i1 false), !alias.scope !3300, !noalias !3281
  %i.ko = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, ptr noalias nofree noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef 1, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not72.i.i.i119.i = icmp eq i64 %i.ko, -1
  br i1 %.not72.i.i.i119.i, label %.split.split.us.i.preheader.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

.split.split.us.i.preheader.i.i.i:                ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3280
  store i64 1, ptr %i.i, align 8, !noalias !3280
  %.sroa.2.0..sroa_idx.i.i.i120.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i120.i, align 8, !noalias !3280
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i121.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i121.i, align 8, !noalias !3280
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i122.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 31, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i122.i, align 8, !noalias !3280
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i123.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i123.i, align 8, !noalias !3280
  %.sroa.3.0..sroa_idx.i.i.i124.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 5 uses
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3280
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %.split.split.us.i.us.i.i.i, label %.split.split.us.i.i.i.i

.split.split.us.i.us.i.i.i:                       ; preds = %.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i
  %i.kp = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !range !34, !noalias !3280, !noundef !15
  %i.kq = trunc nuw i8 %i.kp to i1
  %i.kr = load i64, ptr %i.i, align 8, !noalias !3280
  %.sroa.066.0.us.i.us.i.i.i = select i1 %i.kq, i64 0, i64 %i.kr
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3280
  %i.ks = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i120.i, i64 noundef %.sroa.066.0.us.i.us.i.i.i) #40, !noalias !3281 ; 2 uses
  %i.kt = extractvalue { i64, i64 } %i.ks, 0
  %i.ku = extractvalue { i64, i64 } %i.ks, 1      ; 3 uses
  %i.kv = trunc nuw i64 %i.kt to i1
  br i1 %i.kv, label %bb.bn, label %.split86.us.i.i.i125.i

bb.bn:                                            ; preds = %.split.split.us.i.us.i.i.i
  %i.kw = icmp eq i64 %i.ku, 0
  br i1 %i.kw, label %.split88.us.i.i.i147.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i: ; preds = %bb.bn
  %i.kx = add i64 %i.ku, -1
  call void @ring_core_0_17_16000__bn_mulx4x_mont_gather5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull readonly align 8 %i.jm, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.hx, i64 noundef range(i64 0, -1) %i.kx) #36, !noalias !3281
  %i.ky = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, ptr noalias nofree noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.ku, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not74.us.i.us.i.i149.i = icmp eq i64 %i.ky, -1
  br i1 %.not74.us.i.us.i.i149.i, label %.split.split.us.i.us.i.i.i, label %.split90.us.i.i.i.i

.split.split.us.i.i.i.i:                          ; preds = %.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i
  %i.kz = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !range !34, !noalias !3280, !noundef !15
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = load i64, ptr %i.i, align 8, !noalias !3280
  %.sroa.066.0.us.i.i.i.i = select i1 %i.la, i64 0, i64 %i.lb
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3280
  %i.lc = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i120.i, i64 noundef %.sroa.066.0.us.i.i.i.i) #40, !noalias !3281 ; 2 uses
  %i.ld = extractvalue { i64, i64 } %i.lc, 0
  %i.le = extractvalue { i64, i64 } %i.lc, 1      ; 3 uses
  %i.lf = trunc nuw i64 %i.ld to i1
  br i1 %i.lf, label %bb.bo, label %.split86.us.i.i.i125.i

bb.bo:                                            ; preds = %.split.split.us.i.i.i.i
  %i.lg = icmp eq i64 %i.le, 0
  br i1 %i.lg, label %.split88.us.i.i.i147.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i: ; preds = %bb.bo
  %i.lh = add i64 %i.le, -1
  call void @ring_core_0_17_16000__bn_mul4x_mont_gather5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull readonly align 8 %i.jm, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.hx, i64 noundef range(i64 0, -1) %i.lh) #36, !noalias !3281
  %i.li = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, ptr noalias nofree noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.le, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not74.us.i.i.i146.i = icmp eq i64 %i.li, -1
  br i1 %.not74.us.i.i.i146.i, label %.split.split.us.i.i.i.i, label %.split90.us.i.i.i.i

.split86.us.i.i.i125.i:                           ; preds = %.split.split.us.i.i.i.i, %.split.split.us.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3280
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i92.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  %i.lj = icmp samesign ugt i64 %.val1.i93.i, 288230376151711743
  br i1 %i.lj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.split86.us.i.i.i125.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !3302
  unreachable

bb.bq:                                            ; preds = %.split86.us.i.i.i125.i
  %.not.i12.i.i126.i = icmp eq i64 %.val1.i93.i, 0
  br i1 %.not.i12.i.i126.i, label %bb.br, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i, !prof !16

bb.br:                                            ; preds = %bb.bq
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !3302
  unreachable

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i: ; preds = %bb.bq
  %i.lk = shl nuw i64 %.val1.i93.i, 6
  %i.ll = urem i64 %i.lk, 5                       ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 0
  %i.ln = sub nuw nsw i64 64, %i.ll
  %i.lo = select i1 %i.lm, i64 59, i64 %i.ln      ; 2 uses
  %i.lp = load i64, ptr %.val.i92.i, align 8, !alias.scope !3301, !noalias !3303, !noundef !15
  %i.lq = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %i.lp, i64 noundef 0, i64 noundef %i.lo) #36, !noalias !3302
  %i.lr = add nsw i64 %i.lo, -5
  call void @ring_core_0_17_16000__bn_gather5(ptr noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noundef nonnull %i.k, i64 noundef %i.lq) #36, !noalias !3304
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i: ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i
  %.sroa.011.0.us.us.us.i.i.i127.i = phi i64 [ %.val.i.us.us.us.i.i.i130.i, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i ]
  %.sroa.0.0.us.us.us.i.i.i128.i = phi i64 [ %i.md, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ %i.lr, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 4 uses
  %.sroa.05.0.i.us.us.us.i.i.i129.i = phi i64 [ %i.me, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val.i92.i, i64 %.sroa.05.0.i.us.us.us.i.i.i129.i
  %.val.i.us.us.us.i.i.i130.i = load i64, ptr %i.ls, align 8, !alias.scope !3301, !noalias !3305, !noundef !15 ; 4 uses
  %i.lt = icmp ugt i64 %.sroa.0.0.us.us.us.i.i.i128.i, 59
  br i1 %i.lt, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %i.lu = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %.val.i.us.us.us.i.i.i130.i, i64 noundef %.sroa.011.0.us.us.us.i.i.i127.i, i64 noundef %.sroa.0.0.us.us.us.i.i.i128.i) #36, !noalias !3306 ; 2 uses
  %i.lv = add i64 %.sroa.0.0.us.us.us.i.i.i128.i, -5 ; 3 uses
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.lu) #36, !noalias !3307
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

bb.bt:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.lu) #36, !noalias !3307
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %i.lw = icmp ult i64 %i.lv, 64
  br i1 %i.lw, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %.sroa.0.1.us.us.us.i.i.i132.i = phi i64 [ %i.lv, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %.sroa.0.0.us.us.us.i.i.i128.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i ] ; 2 uses
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i
  %.sroa.0.2.us.us.us.us.us.us.i.us.i.i143.i = phi i64 [ %i.ly, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i ], [ %.sroa.0.1.us.us.us.i.i.i132.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i ] ; 2 uses
  %i.lx = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i130.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.us.i.i143.i) #36, !noalias !3308
  %i.ly = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.us.i.i143.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.lx) #36, !noalias !3309
  %i.lz = icmp ult i64 %i.ly, 64
  br i1 %i.lz, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i
  %.sroa.0.2.us.us.us.us.us.us.i.i.i134.i = phi i64 [ %i.mb, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i ], [ %.sroa.0.1.us.us.us.i.i.i132.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i ] ; 2 uses
  %i.ma = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i130.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.i.i134.i) #36, !noalias !3308
  %i.mb = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.i.i134.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.ma) #36, !noalias !3309
  %i.mc = icmp ult i64 %i.mb, 64
  br i1 %i.mc, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i
  %.lcssa.i.i.us.us.us.i.i.i135.i = phi i64 [ %i.lv, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %i.ly, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i ], [ %i.mb, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i ]
  %i.md = add i64 %.lcssa.i.i.us.us.us.i.i.i135.i, 64
  %i.me = add nuw nsw i64 %.sroa.05.0.i.us.us.us.i.i.i129.i, 1 ; 2 uses
  %i.mf = icmp eq i64 %i.me, %.val1.i93.i
  br i1 %i.mf, label %.lr.ph.i.i.preheader.i.i.i136.i, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

.lr.ph.i.i.preheader.i.i.i136.i:                  ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.s, ptr nonnull readonly align 64 %i.iq, i64 %i.iw, i1 false), !alias.scope !3310, !noalias !3311
  call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  store i64 1, ptr %i.ab, align 8, !alias.scope !3313, !noalias !3314
  %.idx.i.i.i.i137.i = add nsw i64 %i.iw, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hi, i8 0, i64 range(i64 0, 1017) %.idx.i.i.i.i137.i, i1 false), !alias.scope !3315, !noalias !3316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3317
  store ptr %i.s, ptr %i.f, align 8, !noalias !3317
  %i.mg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.hx, ptr %i.mg, align 8, !noalias !3317
  %i.mh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.ab, ptr %i.mh, align 8, !noalias !3317
  %i.mi = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.hx, ptr %i.mi, align 8, !noalias !3317
  %i.mj = icmp ugt i64 %i.hw, 15
  br i1 %i.mj, label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i, label %.thread.i.i.i138.i

.thread.i.i.i138.i:                               ; preds = %.lr.ph.i.i.preheader.i.i.i136.i
  call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, ptr noundef nonnull align 8 dereferenceable(1024) %i.s, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.ik, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx) #36, !noalias !3318, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3317
  br label %bb.bv

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i: ; preds = %.lr.ph.i.i.preheader.i.i.i136.i
  %i.mk = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3319, !noundef !15 ; 2 uses
  %i.ml = icmp ne i32 %i.mk, 0
  call void @llvm.assume(i1 %i.ml), !noalias !3320
  %i.mm = and i32 %i.mk, 1536
  %brmerge.i.not.i.i.i140.i = icmp eq i32 %i.mm, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ik, i64 noundef %i.jg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i1 noundef zeroext %brmerge.i.not.i.i.i140.i) #40, !noalias !3321
  %.pre.i.i.i141.i = load i64, ptr %i.g, align 8, !noalias !3317
  %i.mn = trunc nuw i64 %.pre.i.i.i141.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3317
  br i1 %i.mn, label %bb.bu, label %bb.bv, !prof !16

bb.bu:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !range !23, !noalias !3317, !noundef !15
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.mp) #39
  unreachable

.split88.us.i.i.i147.i:                           ; preds = %bb.bo, %bb.bn
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41, !noalias !3281
  unreachable

.split90.us.i.i.i.i:                              ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3280
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i: ; preds = %.split90.us.i.i.i.i, %bb.bm, %bb.bl, %bb.bi, %bb.bf, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3280
  br label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38

bb.bv:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i, %.thread.i.i.i138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3280
  %i.mq = load i64, ptr %i.de, align 8, !alias.scope !3322, !noalias !3222, !noundef !15
  %.not.i.i150.i = icmp eq i64 %i.mq, %i.da
  br i1 %.not.i.i150.i, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i, label %bb.bw, !prof !19

bb.bw:                                            ; preds = %bb.bv
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef 0) #39
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i: ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  %.not.i.i.i155.i = icmp eq i64 %i.da, %i.hx
  br i1 %.not.i.i.i155.i, label %bb.by, label %bb.bx, !prof !3246

bb.bx:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #41, !noalias !3325
  unreachable

bb.by:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.s, i64 %i.dz, i1 false), !alias.scope !3326, !noalias !3222
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.dn, i64 noundef range(i64 0, 1152921504606846976) %i.da) #36, !noalias !3327
  call void @ring_core_0_17_16000__LIMBS_sub_mod(ptr noundef nonnull align 8 %i.t, ptr noundef nonnull align 8 %i.t, ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull %i.dn, i64 noundef %i.da) #36, !noalias !3328
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val60.i = load ptr, ptr %i.mr, align 8, !alias.scope !3217, !nonnull !15, !noundef !15
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val61.i = load i64, ptr %i.ms, align 8, !alias.scope !3217, !noundef !15
  %i.mt = call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PE3mulNtNtBa_10montgomery1REBc_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val60.i, i64 noundef %.val61.i, ptr nonnull %.val64.i, i64 %i.db), !noalias !3222 ; 2 uses
  %i.mu = extractvalue { ptr, i64 } %i.mt, 0      ; 2 uses
  %i.mv = extractvalue { ptr, i64 } %i.mt, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mu) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3329)
  call void @llvm.experimental.noalias.scope.decl(metadata !3330)
  br i1 %.not.i.i.i, label %bb.bz, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i, !prof !16

bb.bz:                                            ; preds = %bb.by
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41, !noalias !3331
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i: ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  %i.mw = icmp ult i64 %i.ak, %i.mv
  br i1 %i.mw, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE26write_copy_of_slice_paddedB9_.exit.thread.i.i, label %bb.ca, !prof !16

bb.ca:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i
  %i.mx = shl nuw nsw i64 %i.mv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.mu, i64 %i.mx, i1 false), !alias.scope !3333, !noalias !3222
  %i.my = icmp eq i64 %i.ak, %i.mv
  br i1 %i.my, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.ca
  %i.mz = sub nuw nsw i64 %i.ak, %i.mv
  %.idx.i.i.i.i = shl nuw nsw i64 %i.mz, 3
  %i.na = getelementptr [8 x i8], ptr %i.ab, i64 %i.mv
  call void @llvm.memset.p0.i64(ptr align 8 %i.na, i8 0, i64 %.idx.i.i.i.i, i1 false), !alias.scope !3334, !noalias !3335
  br label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE26write_copy_of_slice_paddedB9_.exit.thread.i.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #41, !noalias !3331
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !3336)
  call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  %i.nb = icmp samesign ult i64 %i.ak, %i.da
  br i1 %i.nb, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, label %bb.cb, !prof !16

bb.cb:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.t, ptr nonnull readonly align 8 %i.ik, i64 %i.dz, i1 false), !alias.scope !3338, !noalias !3222
  %i.nc = icmp eq i64 %i.ak, %i.da                ; 2 uses
  br i1 %i.nc, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i162.i

.lr.ph.i.i.preheader.i.i162.i:                    ; preds = %bb.cb
  %i.nd = sub nuw nsw i64 %i.ak, %i.da
  %.idx.i.i.i163.i = shl nuw nsw i64 %i.nd, 3
  %i.ne = getelementptr [8 x i8], ptr %i.t, i64 %i.da
  call void @llvm.memset.p0.i64(ptr align 8 %i.ne, i8 0, i64 %.idx.i.i.i163.i, i1 false), !alias.scope !3339, !noalias !3340
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i162.i, %bb.cb
  %i.nf = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ng = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.t, ptr noundef nonnull readonly align 8 %i.nf, i64 noundef range(i64 0, 1152921504606846976) %i.ak) #36, !noalias !3222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3341
  store i64 %i.ng, ptr %i.e, align 8, !noalias !3341
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.e) #36, !noalias !3222, !srcloc !37
  %i.nh = load i64, ptr %i.e, align 8, !noalias !3341, !noundef !15
  %.not.i.i.i164.i = icmp eq i64 %i.nh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3341
  br i1 %.not.i.i.i164.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, label %bb.cc

bb.cc:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %i.ni = call fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.ak, ptr nonnull %i.af, i64 %i.ah), !noalias !3222 ; 2 uses
  %i.nj = extractvalue { ptr, i64 } %i.ni, 0
  %i.nk = extractvalue { ptr, i64 } %i.ni, 1
  %i.nl = call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulNtB1i_9UnencodedEBc_(ptr noalias nofree noundef nonnull align 8 %i.nj, i64 noundef %i.nk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1024) %i.ab, i64 noundef %i.ak, ptr nonnull %i.af, i64 %i.ck), !noalias !3222 ; 2 uses
  %i.nm = extractvalue { ptr, i64 } %i.nl, 0      ; 2 uses
  %i.nn = extractvalue { ptr, i64 } %i.nl, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3342)
  call void @llvm.experimental.noalias.scope.decl(metadata !3343)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.s, i64 %i.dz, i1 false), !alias.scope !3344, !noalias !3222
  br i1 %i.nc, label %bb.cd, label %.lr.ph.i.i.preheader.i.i169.i

.lr.ph.i.i.preheader.i.i169.i:                    ; preds = %bb.cc
  %i.no = sub nuw nsw i64 %i.ak, %i.da
  %.idx.i.i.i170.i = shl nuw nsw i64 %i.no, 3
  %i.np = getelementptr [8 x i8], ptr %i.ab, i64 %i.da
  call void @llvm.memset.p0.i64(ptr align 8 %i.np, i8 0, i64 %.idx.i.i.i170.i, i1 false), !alias.scope !3345, !noalias !3346
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.preheader.i.i169.i, %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nm) ]
  %.not.i.i.i173.i = icmp eq i64 %i.nn, %i.ak
  br i1 %.not.i.i.i173.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb20limbs_add_assign_mod.exit.i.i, !prof !19

_RNvNtCs5yxAJGbRKSL_4ring4limb20limbs_add_assign_mod.exit.i.i: ; preds = %bb.cd
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i: ; preds = %bb.cd
  call void @ring_core_0_17_16000__LIMBS_add_mod(ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.nm, ptr noundef nonnull readonly align 8 %i.nf, i64 noundef range(i64 0, 1152921504606846976) %i.ak) #36, !noalias !3347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3219
  call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  %i.nq = load i64, ptr %i.cj, align 8, !range !38, !alias.scope !3350, !noundef !15
  store ptr %i.af, ptr %i.r, align 8, !alias.scope !3348, !noalias !3219
  %i.nr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ah, ptr %i.nr, align 8, !alias.scope !3348, !noalias !3219
  %i.ns = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.nq, ptr %i.ns, align 8, !alias.scope !3348, !noalias !3219
  %i.nt = call fastcc { ptr, i64 } @_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE17exponentiate_elem(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1024) %i.ab, i64 noundef %i.ak, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.s), !noalias !3222 ; 2 uses
  %i.nu = extractvalue { ptr, i64 } %i.nt, 0      ; 3 uses
  %i.nv = extractvalue { ptr, i64 } %i.nt, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3351)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nu) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3352)
  call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  %.not.i.i174.i = icmp eq i64 %i.nv, %i.cv
  br i1 %.not.i.i174.i, label %.lr.ph.i.i.i.i.preheader, label %bb.ce, !prof !19

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i
  %min.iters.check155 = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check155, label %.lr.ph.i.i.i.i.preheader168, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec157 = and i64 %i.cv, 252                  ; 3 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next165, %vector.body158 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph156 ], [ %i.oc, %vector.body158 ]
  %vec.phi160 = phi <2 x i64> [ zeroinitializer, %vector.ph156 ], [ %i.od, %vector.body158 ]
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %index159 ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index159 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %wide.load161 = load <2 x i64>, ptr %i.nw, align 8, !alias.scope !3352, !noalias !3354
  %wide.load162 = load <2 x i64>, ptr %i.ny, align 8, !alias.scope !3352, !noalias !3354
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %wide.load163 = load <2 x i64>, ptr %i.nx, align 8, !alias.scope !3355, !noalias !3356
  %wide.load164 = load <2 x i64>, ptr %i.nz, align 8, !alias.scope !3355, !noalias !3356
  %i.oa = xor <2 x i64> %wide.load163, %wide.load161
  %i.ob = xor <2 x i64> %wide.load164, %wide.load162
  %i.oc = or <2 x i64> %i.oa, %vec.phi            ; 2 uses
  %i.od = or <2 x i64> %i.ob, %vec.phi160         ; 2 uses
  %index.next165 = add nuw i64 %index159, 4       ; 2 uses
  %i.oe = icmp eq i64 %index.next165, %n.vec157
  br i1 %i.oe, label %middle.block166, label %vector.body158, !llvm.loop !3179

middle.block166:                                  ; preds = %vector.body158
  %bin.rdx = or <2 x i64> %i.od, %i.oc
  %i.of = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cv, %n.vec157
  br i1 %cmp.n, label %_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i, label %.lr.ph.i.i.i.i.preheader168

.lr.ph.i.i.i.i.preheader168:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block166
  %.sroa.0.014.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.of, %middle.block166 ]
  %.sroa.02.013.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec157, %middle.block166 ]
end_hunk_4
