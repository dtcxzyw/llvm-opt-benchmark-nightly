Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.13?download=true
inline.NumInlined: 6935
inline.NumDeleted: 3286
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCs8K4cjrcxBsw_6hir_ty:bb.a
  br i1 %.not.i.i, label %bb.d, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %1, 2
  %i.k = add i64 %1, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = lshr i64 -1, %i.l
  %.sroa.010.0.i.i = select i1 %i.j, i64 0, i64 %i.m ; 2 uses
  %i.n = icmp eq i64 %.sroa.010.0.i.i, -1
  br i1 %i.n, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.thread.i, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.i, !prof !65

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.d
  %i.o = add nuw i64 %.sroa.010.0.i.i, 1
  %i.p = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %0, i64 noundef %i.o) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 -1, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i
    i64 0, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.thread.i
  ], !prof !8139

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.i
  %.pre.i = load i64, ptr %i.a, align 16, !alias.scope !10354, !noalias !10357 ; 2 uses
  %.pre55.i = tail call i64 @llvm.umax.i64(i64 %.pre.i, i64 2)
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i

bb.e:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.r = extractvalue { i64, i64 } %i.p, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.q, i64 noundef %i.r) #30, !noalias !10351
  unreachable

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.thread.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31, !noalias !10351
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i, %bb.c
  %.sink.i.pre-phi.i = phi i64 [ %.pre55.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i ], [ %.sink.i.i.i, %bb.c ] ; 3 uses
  %i.s = phi i64 [ %.pre.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i ], [ %i.b, %bb.c ]
  %i.t = icmp ugt i64 %i.s, 2                     ; 2 uses
  %i.u = load ptr, ptr %0, align 16, !alias.scope !10354, !noalias !10357, !nonnull !5
  %.sink10.i.i = select i1 %i.t, ptr %i.u, ptr %0
  %.sink9.i.i2 = select i1 %i.t, ptr %i.d, ptr %i.a ; 3 uses
  %i.v = load i64, ptr %.sink9.i.i2, align 8, !alias.scope !10351, !noundef !5 ; 3 uses
  %i.w = icmp ult i64 %i.v, %.sink.i.pre-phi.i
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.7.0.lcssa.i = phi i64 [ %i.v, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i ], [ %.sink.i.pre-phi.i, %bb.g ]
  %.sroa.6.0.lcssa.i = phi i64 [ %i.h, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i ], [ %i.al, %bb.g ] ; 2 uses
  store i64 %.sroa.7.0.lcssa.i, ptr %.sink9.i.i2, align 8, !alias.scope !10351
  %i.x = icmp eq i64 %.sroa.6.0.lcssa.i, 0
  br i1 %i.x, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph52.i

.lr.ph.i:                                         ; preds = %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.g
  %.sroa.6.048.i = phi i64 [ %i.al, %bb.g ], [ %i.h, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 2 uses
  %.sroa.7.047.i = phi i64 [ %i.an, %bb.g ], [ %i.v, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 3 uses
  %i.y = icmp eq i64 %.sroa.6.048.i, 0
  br i1 %i.y, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.g

.lr.ph52.i:                                       ; preds = %._crit_edge.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.430.050.i = phi i64 [ %i.z, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i ], [ %.sroa.6.0.lcssa.i, %._crit_edge.i ]
  %i.z = add i64 %.sroa.430.050.i, -1             ; 2 uses
  %i.aa = load i64, ptr %i.a, align 16, !alias.scope !10359, !noalias !10364, !noundef !5 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 2                   ; 2 uses
  %i.ac = load ptr, ptr %0, align 16, !alias.scope !10359, !noalias !10364, !nonnull !5
  %.sink10.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %0
  %.sink9.i.i.i = select i1 %i.ab, ptr %i.d, ptr %i.a ; 2 uses
  %.sink.i.i12.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 2)
  %i.ad = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !10366, !noundef !5 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %.sink.i.i12.i
  br i1 %i.ae, label %bb.f, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i, !prof !65

bb.f:                                             ; preds = %.lr.ph52.i
  tail call fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %0)
  %i.af = load ptr, ptr %0, align 16, !alias.scope !10366, !nonnull !5, !noundef !5
  %.pre.i.i = load i64, ptr %i.d, align 8, !alias.scope !10366
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.f, %.lr.ph52.i
  %i.ag = phi i64 [ %.pre.i.i, %bb.f ], [ %i.ad, %.lr.ph52.i ]
  %.sroa.01.0.i.i = phi ptr [ %i.d, %bb.f ], [ %.sink9.i.i.i, %.lr.ph52.i ] ; 2 uses
  %.sroa.0.0.i13.i = phi ptr [ %i.af, %bb.f ], [ %.sink10.i.i.i, %.lr.ph52.i ]
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i13.i, i64 %i.ag
  store i128 0, ptr %i.ah, align 16
  %i.ai = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !10366, !noundef !5
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %.sroa.01.0.i.i, align 8, !alias.scope !10366
  %i.ak = icmp eq i64 %i.z, 0
  br i1 %i.ak, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph52.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.al = add i64 %.sroa.6.048.i, -1              ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i, i64 %.sroa.7.047.i
  store i128 0, ptr %i.am, align 16
  %i.an = add i64 %.sroa.7.047.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %.sink.i.pre-phi.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %.lr.ph.i
  store i64 %.sroa.7.047.i, ptr %.sink9.i.i2, align 8, !alias.scope !10351
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCs8K4cjrcxBsw_6hir_ty.exit

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i, %._crit_edge.i, %.lr.ph.preheader.i, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 4) i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10add_or_sub(ptr noalias nofree noundef nonnull align 16 %0, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %2, ptr noalias nofree noundef nonnull align 16 %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = load i32, ptr %1, align 4, !noundef !5   ; 6 uses
  %i.i = sub i32 %i.h, %4                         ; 13 uses
  %i.j = load i8, ptr %2, align 1, !range !2517, !noundef !5 ; 3 uses
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = xor i1 %5, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.i, 0
  br i1 %i.m, label %bb.n, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.h, %4
  br i1 %i.n, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65, label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.o = sub i32 0, %i.i                          ; 5 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10370)
  %i.q = icmp eq i32 %i.h, %4
  br i1 %i.q, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i64 %i.p, 127
  %i.s = icmp ult i32 %i.o, 129                   ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i128, ptr %0, align 16, !alias.scope !10372, !noalias !10370, !noundef !5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.0.i.i = phi i128 [ %i.t, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sroa.7.0.i.i = phi i64 [ 0, %bb.f ], [ 16, %bb.e ]
  %i.u = and i64 %i.r, 127
  %i.v = zext nneg i64 %i.u to i128
  %i.w = shl nuw i128 1, %i.v                     ; 2 uses
  %i.x = and i128 %.sroa.010.0.i.i, %i.w
  %.not.i.i = icmp eq i128 %i.x, 0                ; 3 uses
  %i.y = add i128 %i.w, -1
  %i.z = and i128 %.sroa.010.0.i.i, %i.y
  %i.aa = icmp eq i128 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.7.0.i.i
  br i1 %i.s, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.ab
  br i1 %i.ad, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.ae = phi ptr [ %i.ac, %bb.i ], [ %0, %bb.h ] ; 2 uses
  %.val.i.i.i = load i128, ptr %i.ae, align 16, !alias.scope !10372, !noalias !10375, !noundef !5
  %i.af = icmp eq i128 %.val.i.i.i, 0
  br i1 %i.af, label %bb.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %bb.i, %bb.h
  %spec.select.i.i = select i1 %.not.i.i, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

bb.j:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.j, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %.thread16.i.i, %bb.j, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i
  %.sroa.09.0.i17.i = phi i8 [ 1, %bb.j ], [ %spec.select.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ 3, %.thread16.i.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i ] ; 2 uses
  %i.ag = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.h, i32 %i.o) ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.l, label %bb.k, !prof !65

bb.k:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %i.ai = extractvalue { i32, i1 } %i.ag, 0
  store i32 %i.ai, ptr %1, align 4, !alias.scope !10370, !noalias !10367
  %i.aj = and i32 %i.o, 127
  %.not12.i = icmp eq i32 %i.aj, 0
  %i.ak = zext nneg i64 %i.p to i128
  br i1 %.not12.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.k
  store i128 0, ptr %0, align 16, !alias.scope !10367, !noalias !10370
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

bb.l:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #31, !noalias !10378
  unreachable

.lr.ph.split.i:                                   ; preds = %bb.k
  %.not11.i = icmp ult i32 %i.o, 128
  br i1 %.not11.i, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.al = load i128, ptr %0, align 16, !alias.scope !10367, !noalias !10370, !noundef !5
  %i.am = lshr i128 %i.al, %i.ak
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156: ; preds = %bb.m, %.lr.ph.split.i
  %.sroa.02.0.i = phi i128 [ 0, %.lr.ph.split.i ], [ %i.am, %bb.m ]
  store i128 %.sroa.02.0.i, ptr %0, align 16, !alias.scope !10367, !noalias !10370
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

bb.n:                                             ; preds = %bb.b
  %i.an = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 127
  %i.ap = icmp samesign ult i32 %i.i, 129         ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = load i128, ptr %3, align 16, !alias.scope !10379, !noalias !10384, !noundef !5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.0.i.i17 = phi i128 [ %i.aq, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.sroa.7.0.i.i18 = phi i64 [ 0, %bb.o ], [ 16, %bb.n ]
  %i.ar = and i64 %i.ao, 127
  %i.as = zext nneg i64 %i.ar to i128
  %i.at = shl nuw i128 1, %i.as                   ; 2 uses
  %i.au = and i128 %.sroa.010.0.i.i17, %i.at
  %.not.i.i19 = icmp eq i128 %i.au, 0             ; 3 uses
  %i.av = add i128 %i.at, -1
  %i.aw = and i128 %.sroa.010.0.i.i17, %i.av
  %i.ax = icmp eq i128 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.7.0.i.i18
  br i1 %i.ap, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i37, label %.lr.ph6

bb.r:                                             ; preds = %.lr.ph6
  %i.az = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ay
  br i1 %i.ba, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i37, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.q, %bb.r
  %i.bb = phi ptr [ %i.az, %bb.r ], [ %3, %bb.q ] ; 2 uses
  %.val.i.i.i35 = load i128, ptr %i.bb, align 16, !alias.scope !10379, !noalias !10386, !noundef !5
  %i.bc = icmp eq i128 %.val.i.i.i35, 0
  br i1 %i.bc, label %bb.r, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i36

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i37: ; preds = %bb.r, %bb.q
  %spec.select.i.i38 = select i1 %.not.i.i19, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i21

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i36: ; preds = %.lr.ph6
  br i1 %.not.i.i19, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i21, label %.thread16.i.i20

bb.s:                                             ; preds = %bb.p
  br i1 %.not.i.i19, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i21, label %.thread16.i.i20

.thread16.i.i20:                                  ; preds = %bb.s, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i36
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i21

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i21: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i37, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i36, %bb.s, %.thread16.i.i20
  %.sroa.09.0.i17.i22 = phi i8 [ 1, %bb.s ], [ %spec.select.i.i38, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i37 ], [ 3, %.thread16.i.i20 ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i36 ] ; 2 uses
  %i.bd = and i64 %i.an, 127                      ; 2 uses
  %.not12.i23 = icmp eq i64 %i.bd, 0
  %i.be = zext nneg i64 %i.bd to i128
  br i1 %.not12.i23, label %.lr.ph.split.i24.preheader, label %.lr.ph.split.us.i30.preheader

.lr.ph.split.i24.preheader:                       ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i21
  store i128 0, ptr %3, align 16, !alias.scope !10389, !noalias !10384
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

.lr.ph.split.us.i30.preheader:                    ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i21
  %.not11.i26 = icmp ult i32 %i.i, 128
  br i1 %.not11.i26, label %bb.t, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154

bb.t:                                             ; preds = %.lr.ph.split.us.i30.preheader
  %i.bf = load i128, ptr %3, align 16, !alias.scope !10389, !noalias !10384, !noundef !5
  %i.bg = lshr i128 %i.bf, %i.be
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154: ; preds = %bb.t, %.lr.ph.split.us.i30.preheader
  %.sroa.02.0.i27 = phi i128 [ 0, %.lr.ph.split.us.i30.preheader ], [ %i.bg, %bb.t ]
  store i128 %.sroa.02.0.i27, ptr %3, align 16, !alias.scope !10389, !noalias !10384
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.i24.preheader, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154, %bb.d
  %.sroa.0.0 = phi i8 [ %.sroa.09.0.i17.i22, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154 ], [ 0, %bb.d ], [ %.sroa.09.0.i17.i22, %.lr.ph.split.i24.preheader ], [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156 ], [ %.sroa.09.0.i17.i, %.lr.ph.split.us.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull align 16 %0, ptr noundef nonnull %i.bh, ptr noundef nonnull readonly align 16 %3, ptr noundef nonnull readonly %i.bi)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !noalias !10390 ; 2 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.46.0.copyload.i = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !10390 ; 2 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !10390 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !10390 ; 2 uses
  %i.bj = icmp ult i64 %.sroa.57.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.bj, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3add.exit.thread

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3add.exit.thread: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i
  %.sroa.0.013.i = phi i128 [ 0, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i ], [ %i.bu, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i ]
  %.sroa.57.012.i = phi i64 [ %.sroa.57.0.copyload.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i ], [ %i.bm, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.57.012.i ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.46.0.copyload.i, i64 %.sroa.57.012.i
  %i.bm = add nuw i64 %.sroa.57.012.i, 1          ; 2 uses
  %i.bn = load i128, ptr %i.bl, align 16, !noundef !5
  %i.bo = load i128, ptr %i.bk, align 16, !noundef !5 ; 2 uses
  %i.bp = add i128 %i.bo, %i.bn                   ; 3 uses
  %i.bq = icmp ult i128 %i.bp, %i.bo
  %i.br = add i128 %i.bp, %.sroa.0.013.i          ; 2 uses
  %i.bs = icmp ult i128 %i.br, %i.bp
  store i128 %i.br, ptr %i.bk, align 16
  %i.bt = or i1 %i.bq, %i.bs                      ; 2 uses
  %i.bu = zext i1 %i.bt to i128                   ; 2 uses
  %exitcond.not.i40 = icmp eq i64 %i.bm, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i40, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3add.exit, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3add.exit: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i128 %i.bu, ptr %i.e, align 16
  br i1 %i.bt, label %bb.v, label %bb.u, !prof !10188

bb.u:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3add.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3add.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.v:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3add.exit
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @64, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #31
  unreachable

bb.w:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread, %bb.ba, %bb.ay, %bb.bf, %bb.u
  %.sroa.0.1 = phi i8 [ %.sroa.0.4, %bb.ay ], [ %.sroa.0.2, %bb.ba ], [ %.sroa.0.2, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread ], [ %.sroa.0.5, %bb.bf ], [ %.sroa.0.0, %bb.u ]
  ret i8 %.sroa.0.1

bb.x:                                             ; preds = %bb.c
  %i.bv = icmp sgt i32 %i.i, 0
  br i1 %i.bv, label %bb.ai, label %.lr.ph.split.i41.preheader

.lr.ph.split.i41.preheader:                       ; preds = %bb.x
  %i.bw = load i128, ptr %3, align 16, !alias.scope !10394, !noalias !10397, !noundef !5
  %i.bx = shl i128 %i.bw, 1
  store i128 %i.bx, ptr %3, align 16, !alias.scope !10394, !noalias !10397
  %i.by = xor i32 %i.i, -1                        ; 2 uses
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10402)
  %i.ca = icmp eq i32 %i.i, -1
  br i1 %i.ca, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65, label %bb.z

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65: ; preds = %.lr.ph.split.us.i56.preheader, %.lr.ph.split.i80.preheader, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit153, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit151, %.split.i66, %.lr.ph.split.i41.preheader, %bb.c
  %.sroa.013.0 = phi i1 [ false, %bb.c ], [ true, %.lr.ph.split.i80.preheader ], [ false, %.lr.ph.split.i41.preheader ], [ true, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit151 ], [ true, %.split.i66 ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit153 ], [ false, %.lr.ph.split.us.i56.preheader ] ; 3 uses
  %.sroa.0.2 = phi i8 [ 0, %bb.c ], [ %.sroa.09.0.i17.i78, %.lr.ph.split.i80.preheader ], [ 0, %.lr.ph.split.i41.preheader ], [ %.sroa.09.0.i17.i78, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit151 ], [ 0, %.split.i66 ], [ %.sroa.09.0.i17.i48, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit153 ], [ %.sroa.09.0.i17.i48, %.lr.ph.split.us.i56.preheader ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10404
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 16 %0, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull readonly align 16 %3, ptr noundef nonnull readonly %i.cc)
  %.sroa.09.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !10404 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !10404 ; 2 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !10404 ; 2 uses
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.611.0.copyload.i = load i64, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !10404 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10404
  %i.cd = icmp ult i64 %.sroa.510.0.copyload.i, %.sroa.611.0.copyload.i
  br i1 %i.cd, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i

bb.y:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.ce = icmp ult i64 %.sroa.510.0.copyload.i, %i.cf
  br i1 %i.ce, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader, %bb.y
  %.sroa.7.0.i9 = phi i64 [ %i.cf, %bb.y ], [ %.sroa.611.0.copyload.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader ]
  %i.cf = add i64 %.sroa.7.0.i9, -1               ; 4 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i, i64 %i.cf
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i, i64 %i.cf
  %i.ci = load i128, ptr %i.cg, align 16, !noundef !5 ; 2 uses
  %i.cj = load i128, ptr %i.ch, align 16, !noundef !5 ; 2 uses
  %i.ck = icmp eq i128 %i.ci, %i.cj
  br i1 %i.ck, label %bb.y, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.cl = tail call i8 @llvm.ucmp.i8.i128(i128 %i.ci, i128 %i.cj)
  switch i8 %i.cl, label %bb.ar [
    i8 -1, label %bb.as
    i8 0, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread
    i8 1, label %bb.at
  ]

bb.z:                                             ; preds = %.lr.ph.split.i41.preheader
  %i.cm = add nuw nsw i64 %i.bz, 127
  %i.cn = icmp samesign ugt i32 %i.i, -130        ; 2 uses
  br i1 %i.cn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = load i128, ptr %0, align 16, !alias.scope !10408, !noalias !10402, !noundef !5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.010.0.i.i43 = phi i128 [ %i.co, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.sroa.7.0.i.i44 = phi i64 [ 0, %bb.aa ], [ 16, %bb.z ]
  %i.cp = and i64 %i.cm, 127
  %i.cq = zext nneg i64 %i.cp to i128
  %i.cr = shl nuw i128 1, %i.cq                   ; 2 uses
  %i.cs = and i128 %.sroa.010.0.i.i43, %i.cr
  %.not.i.i45 = icmp eq i128 %i.cs, 0             ; 3 uses
  %i.ct = add i128 %i.cr, -1
  %i.cu = and i128 %.sroa.010.0.i.i43, %i.ct
  %i.cv = icmp eq i128 %i.cu, 0
  br i1 %i.cv, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.7.0.i.i44
  br i1 %i.cn, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i63, label %.lr.ph7

bb.ad:                                            ; preds = %.lr.ph7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cw
  br i1 %i.cy, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i63, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.ac, %bb.ad
  %i.cz = phi ptr [ %i.cx, %bb.ad ], [ %0, %bb.ac ] ; 2 uses
  %.val.i.i.i61 = load i128, ptr %i.cz, align 16, !alias.scope !10408, !noalias !10411, !noundef !5
  %i.da = icmp eq i128 %.val.i.i.i61, 0
  br i1 %i.da, label %bb.ad, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i62

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i63: ; preds = %bb.ad, %bb.ac
  %spec.select.i.i64 = select i1 %.not.i.i45, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i47

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i62: ; preds = %.lr.ph7
  br i1 %.not.i.i45, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i47, label %.thread16.i.i46

bb.ae:                                            ; preds = %bb.ab
  br i1 %.not.i.i45, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i47, label %.thread16.i.i46

.thread16.i.i46:                                  ; preds = %bb.ae, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i62
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i47

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i47: ; preds = %.thread16.i.i46, %bb.ae, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i62, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i63
  %.sroa.09.0.i17.i48 = phi i8 [ 1, %bb.ae ], [ %spec.select.i.i64, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i63 ], [ 3, %.thread16.i.i46 ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i62 ] ; 2 uses
  %i.db = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.h, i32 %i.by) ; 2 uses
  %i.dc = extractvalue { i32, i1 } %i.db, 1
  br i1 %i.dc, label %bb.ag, label %bb.af, !prof !65

bb.af:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i47
  %i.dd = extractvalue { i32, i1 } %i.db, 0
  store i32 %i.dd, ptr %1, align 4, !alias.scope !10402, !noalias !10399
  %i.de = and i64 %i.bz, 127                      ; 2 uses
  %.not12.i49 = icmp eq i64 %i.de, 0
  %i.df = zext nneg i64 %i.de to i128
  br i1 %.not12.i49, label %.lr.ph.split.us.i56.preheader, label %.lr.ph.split.i50

.lr.ph.split.us.i56.preheader:                    ; preds = %bb.af
  store i128 0, ptr %0, align 16, !alias.scope !10399, !noalias !10402
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65

bb.ag:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i47
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #31, !noalias !10414
  unreachable

.lr.ph.split.i50:                                 ; preds = %bb.af
  %.not11.i52 = icmp ugt i32 %i.i, -129
  br i1 %.not11.i52, label %bb.ah, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit153

bb.ah:                                            ; preds = %.lr.ph.split.i50
  %i.dg = load i128, ptr %0, align 16, !alias.scope !10399, !noalias !10402, !noundef !5
  %i.dh = lshr i128 %i.dg, %i.df
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit153

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit153: ; preds = %bb.ah, %.lr.ph.split.i50
  %.sroa.02.0.i53 = phi i128 [ 0, %.lr.ph.split.i50 ], [ %i.dh, %bb.ah ]
  store i128 %.sroa.02.0.i53, ptr %0, align 16, !alias.scope !10399, !noalias !10402
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65

bb.ai:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10418)
  %i.di = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.h, i32 -1) ; 2 uses
  %i.dj = extractvalue { i32, i1 } %i.di, 1
  br i1 %i.dj, label %bb.aj, label %.split.i66, !prof !65

.split.i66:                                       ; preds = %bb.ai
  %i.dk = extractvalue { i32, i1 } %i.di, 0
  store i32 %i.dk, ptr %1, align 4, !alias.scope !10418, !noalias !10415
  %i.dl = load i128, ptr %0, align 16, !alias.scope !10415, !noalias !10418, !noundef !5
  %i.dm = shl i128 %i.dl, 1
  store i128 %i.dm, ptr %0, align 16, !alias.scope !10415, !noalias !10418
  %i.dn = add nsw i32 %i.i, -1                    ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = icmp eq i32 %i.dn, 0
  br i1 %i.dp, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #31, !noalias !10420
  unreachable

bb.ak:                                            ; preds = %.split.i66
  %i.dq = add nuw nsw i64 %i.do, 127
  %i.dr = icmp samesign ult i32 %i.i, 130         ; 2 uses
  br i1 %i.dr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ds = load i128, ptr %3, align 16, !alias.scope !10421, !noalias !10426, !noundef !5
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sroa.010.0.i.i73 = phi i128 [ %i.ds, %bb.al ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.7.0.i.i74 = phi i64 [ 0, %bb.al ], [ 16, %bb.ak ]
  %i.dt = and i64 %i.dq, 127
  %i.du = zext nneg i64 %i.dt to i128
  %i.dv = shl nuw i128 1, %i.du                   ; 2 uses
  %i.dw = and i128 %.sroa.010.0.i.i73, %i.dv
  %.not.i.i75 = icmp eq i128 %i.dw, 0             ; 3 uses
  %i.dx = add i128 %i.dv, -1
  %i.dy = and i128 %.sroa.010.0.i.i73, %i.dx
  %i.dz = icmp eq i128 %i.dy, 0
  br i1 %i.dz, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.7.0.i.i74
  br i1 %i.dr, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i93, label %.lr.ph8

bb.ao:                                            ; preds = %.lr.ph8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ea
  br i1 %i.ec, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i93, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.an, %bb.ao
  %i.ed = phi ptr [ %i.eb, %bb.ao ], [ %3, %bb.an ] ; 2 uses
  %.val.i.i.i91 = load i128, ptr %i.ed, align 16, !alias.scope !10421, !noalias !10428, !noundef !5
  %i.ee = icmp eq i128 %.val.i.i.i91, 0
  br i1 %i.ee, label %bb.ao, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i92

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i93: ; preds = %bb.ao, %bb.an
  %spec.select.i.i94 = select i1 %.not.i.i75, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i77

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i92: ; preds = %.lr.ph8
  br i1 %.not.i.i75, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i77, label %.thread16.i.i76

bb.ap:                                            ; preds = %bb.am
  br i1 %.not.i.i75, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i77, label %.thread16.i.i76

.thread16.i.i76:                                  ; preds = %bb.ap, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i92
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i77

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i77: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i93, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i92, %bb.ap, %.thread16.i.i76
  %.sroa.09.0.i17.i78 = phi i8 [ 1, %bb.ap ], [ %spec.select.i.i94, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i93 ], [ 3, %.thread16.i.i76 ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i92 ] ; 2 uses
  %i.ef = and i64 %i.do, 127                      ; 2 uses
  %.not12.i79 = icmp eq i64 %i.ef, 0
  %i.eg = zext nneg i64 %i.ef to i128
  br i1 %.not12.i79, label %.lr.ph.split.i80.preheader, label %.lr.ph.split.us.i86.preheader

.lr.ph.split.i80.preheader:                       ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i77
  store i128 0, ptr %3, align 16, !alias.scope !10431, !noalias !10426
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65

.lr.ph.split.us.i86.preheader:                    ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i77
  %.not11.i82 = icmp ult i32 %i.i, 129
  br i1 %.not11.i82, label %bb.aq, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit151

bb.aq:                                            ; preds = %.lr.ph.split.us.i86.preheader
  %i.eh = load i128, ptr %3, align 16, !alias.scope !10431, !noalias !10426, !noundef !5
  %i.ei = lshr i128 %i.eh, %i.eg
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit151

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit151: ; preds = %bb.aq, %.lr.ph.split.us.i86.preheader
  %.sroa.02.0.i83 = phi i128 [ 0, %.lr.ph.split.us.i86.preheader ], [ %i.ei, %bb.aq ]
  store i128 %.sroa.02.0.i83, ptr %3, align 16, !alias.scope !10431, !noalias !10426
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65

bb.ar:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit
  unreachable

bb.as:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit
  %i.ej = icmp eq i8 %.sroa.0.2, 0
  %or.cond = or i1 %.sroa.013.0, %i.ej
  br i1 %or.cond, label %bb.ax, label %bb.au

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread: ; preds = %bb.y, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !10432
  %i.ek = icmp ne i8 %.sroa.0.2, 0
  %or.cond3 = and i1 %.sroa.013.0, %i.ek
  br i1 %or.cond3, label %bb.ba, label %bb.w

bb.at:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit
  %i.el = icmp ne i8 %.sroa.0.2, 0
  %or.cond5 = and i1 %.sroa.013.0, %i.el
  br i1 %or.cond5, label %bb.bb, label %bb.bc

bb.au:                                            ; preds = %bb.as
  switch i8 %.sroa.0.2, label %bb.ax [
    i8 1, label %bb.av
    i8 3, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.au, %bb.as
  %.sroa.011.0 = phi i128 [ 0, %bb.as ], [ 1, %bb.au ], [ 1, %bb.aw ], [ 1, %bb.av ] ; 2 uses
  %.sroa.0.4 = phi i8 [ %.sroa.0.2, %bb.as ], [ %.sroa.0.2, %bb.au ], [ 1, %bb.aw ], [ 3, %bb.av ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 16 %3, ptr noundef nonnull %i.cc, ptr noundef nonnull readonly align 16 %0, ptr noundef nonnull readonly %i.cb)
  %.sroa.0.0.copyload.i96 = load ptr, ptr %i.b, align 8, !noalias !10435 ; 2 uses
  %.sroa.46.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0.copyload.i98 = load ptr, ptr %.sroa.46.0..sroa_idx.i97, align 8, !noalias !10435 ; 2 uses
  %.sroa.57.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.57.0.copyload.i100 = load i64, ptr %.sroa.57.0..sroa_idx.i99, align 8, !noalias !10435 ; 2 uses
  %.sroa.7.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0.copyload.i102 = load i64, ptr %.sroa.7.0..sroa_idx.i101, align 8, !noalias !10435 ; 2 uses
  %i.em = icmp ult i64 %.sroa.57.0.copyload.i100, %.sroa.7.0.copyload.i102
  br i1 %i.em, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i104, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i104: ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i96) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i98) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i105

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i105: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i105, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i104
  %.sroa.0.013.i106 = phi i128 [ %.sroa.011.0, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i104 ], [ %i.ex, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i105 ] ; 2 uses
  %.sroa.57.012.i107 = phi i64 [ %.sroa.57.0.copyload.i100, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i104 ], [ %i.ep, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i105 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i96, i64 %.sroa.57.012.i107 ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.46.0.copyload.i98, i64 %.sroa.57.012.i107
  %i.ep = add nuw i64 %.sroa.57.012.i107, 1       ; 2 uses
  %i.eq = load i128, ptr %i.eo, align 16, !noundef !5 ; 2 uses
  %i.er = load i128, ptr %i.en, align 16, !noundef !5 ; 2 uses
  %i.es = sub i128 %i.er, %i.eq                   ; 2 uses
  %i.et = icmp ult i128 %i.er, %i.eq
  %i.eu = sub i128 %i.es, %.sroa.0.013.i106
  %i.ev = icmp ult i128 %i.es, %.sroa.0.013.i106
  store i128 %i.eu, ptr %i.en, align 16
  %i.ew = or i1 %i.et, %i.ev
  %i.ex = zext i1 %i.ew to i128                   ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %i.ep, %.sroa.7.0.copyload.i102
  br i1 %exitcond.not.i108, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i105

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i105, %bb.ax
  %.sroa.0.0.lcssa.i103 = phi i128 [ %.sroa.011.0, %bb.ax ], [ %i.ex, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i105 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i128 %.sroa.0.0.lcssa.i103, ptr %i.g, align 16
  %i.ey = icmp eq i128 %.sroa.0.0.lcssa.i103, 0
  br i1 %i.ey, label %bb.ay, label %bb.az, !prof !6

bb.ay:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_imploECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %3, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80)
  %i.ez = xor i8 %i.j, 1
  store i8 %i.ez, ptr %2, align 1
  br label %bb.w

bb.az:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @64, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #31
  unreachable

bb.ba:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread
  %i.fa = xor i8 %i.j, 1
  store i8 %i.fa, ptr %2, align 1
  br label %bb.w

bb.bb:                                            ; preds = %bb.at
  switch i8 %.sroa.0.2, label %bb.bc [
    i8 1, label %bb.bd
    i8 3, label %bb.be
  ]

bb.bc:                                            ; preds = %bb.bd, %bb.be, %bb.bb, %bb.at
  %.sroa.012.0 = phi i128 [ 0, %bb.at ], [ 1, %bb.bb ], [ 1, %bb.be ], [ 1, %bb.bd ] ; 2 uses
  %.sroa.0.5 = phi i8 [ %.sroa.0.2, %bb.at ], [ %.sroa.0.2, %bb.bb ], [ 1, %bb.be ], [ 3, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 16 %0, ptr noundef nonnull %i.cb, ptr noundef nonnull readonly align 16 %3, ptr noundef nonnull readonly %i.cc)
  %.sroa.0.0.copyload.i109 = load ptr, ptr %i.a, align 8, !noalias !10439 ; 2 uses
  %.sroa.46.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0.copyload.i111 = load ptr, ptr %.sroa.46.0..sroa_idx.i110, align 8, !noalias !10439 ; 2 uses
  %.sroa.57.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.57.0.copyload.i113 = load i64, ptr %.sroa.57.0..sroa_idx.i112, align 8, !noalias !10439 ; 2 uses
  %.sroa.7.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i115 = load i64, ptr %.sroa.7.0..sroa_idx.i114, align 8, !noalias !10439 ; 2 uses
  %i.fb = icmp ult i64 %.sroa.57.0.copyload.i113, %.sroa.7.0.copyload.i115
  br i1 %i.fb, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i117, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit122

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i117: ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i109) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i111) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i118

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i118: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i118, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i117
  %.sroa.0.013.i119 = phi i128 [ %.sroa.012.0, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i117 ], [ %i.fm, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i118 ] ; 2 uses
  %.sroa.57.012.i120 = phi i64 [ %.sroa.57.0.copyload.i113, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.lr.ph.i117 ], [ %i.fe, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i118 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i109, i64 %.sroa.57.012.i120 ; 2 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.46.0.copyload.i111, i64 %.sroa.57.012.i120
  %i.fe = add nuw i64 %.sroa.57.012.i120, 1       ; 2 uses
  %i.ff = load i128, ptr %i.fd, align 16, !noundef !5 ; 2 uses
  %i.fg = load i128, ptr %i.fc, align 16, !noundef !5 ; 2 uses
  %i.fh = sub i128 %i.fg, %i.ff                   ; 2 uses
  %i.fi = icmp ult i128 %i.fg, %i.ff
  %i.fj = sub i128 %i.fh, %.sroa.0.013.i119
  %i.fk = icmp ult i128 %i.fh, %.sroa.0.013.i119
  store i128 %i.fj, ptr %i.fc, align 16
  %i.fl = or i1 %i.fi, %i.fk
  %i.fm = zext i1 %i.fl to i128                   ; 2 uses
  %exitcond.not.i121 = icmp eq i64 %i.fe, %.sroa.7.0.copyload.i115
  br i1 %exitcond.not.i121, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit122, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i118

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit122: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i118, %bb.bc
  %.sroa.0.0.lcssa.i116 = phi i128 [ %.sroa.012.0, %bb.bc ], [ %i.fm, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E4nextCs8K4cjrcxBsw_6hir_ty.exit.i118 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i128 %.sroa.0.0.lcssa.i116, ptr %i.f, align 16
  %i.fn = icmp eq i128 %.sroa.0.0.lcssa.i116, 0
  br i1 %i.fn, label %bb.bf, label %bb.bg, !prof !6

bb.bd:                                            ; preds = %bb.bb
  br label %bb.bc

bb.be:                                            ; preds = %bb.bb
  br label %bb.bc

bb.bf:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.bg:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3sub.exit122
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @64, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 4) i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div(ptr noalias nofree noundef nonnull align 16 %0, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef nonnull align 16 %2, ptr noalias nofree noundef nonnull align 16 %3, i64 noundef range(i64 11, 114) %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 16               ; 5 uses
  %i.j = alloca [16 x i8], align 16               ; 5 uses
  %i.k = alloca [16 x i8], align 16               ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 5 uses
  %i.m = alloca [16 x i8], align 16               ; 5 uses
  %i.n = alloca [16 x i8], align 16               ; 5 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = load i128, ptr %3, align 16, !alias.scope !10443, !noundef !5 ; 4 uses
  %i.q = icmp eq i128 %i.p, 0
  br i1 %i.q, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.p, i1 true)
  %i.s = trunc nuw nsw i128 %i.r to i64
  %.neg = or disjoint i64 %i.s, -128
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.neg = phi i64 [ %.neg, %bb.b ], [ 0, %bb.a ]
  %i.t = add nsw i64 %.sroa.0.0.i.neg, %4         ; 4 uses
  %.not.i42 = icmp eq i64 %i.t, 0
  br i1 %.not.i42, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit, label %.split.i

.split.i:                                         ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %i.u = trunc nsw i64 %i.t to i32
  %i.v = and i64 %i.t, 127                        ; 2 uses
  %.not18.i = icmp eq i64 %i.v, 0
  %i.w = zext nneg i64 %i.v to i128
  %.not308 = icmp ugt i64 %i.t, 127
  %i.x = shl i128 %i.p, %i.w
  %i.y = or i1 %.not18.i, %.not308
  %spec.select.sink = select i1 %i.y, i128 0, i128 %i.x ; 2 uses
  store i128 %spec.select.sink, ptr %3, align 16, !alias.scope !10446, !noalias !10449
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit: ; preds = %.split.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %.pre-phi = phi i32 [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ], [ %i.u, %.split.i ]
  %i.z = phi i128 [ %i.p, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ], [ %spec.select.sink, %.split.i ] ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !noundef !5
  %i.ab = add i32 %i.aa, %.pre-phi                ; 3 uses
  store i32 %i.ab, ptr %1, align 4
  %i.ac = load i128, ptr %2, align 16, !alias.scope !10451, !noundef !5 ; 3 uses
  %i.ad = icmp eq i128 %i.ac, 0
  br i1 %i.ad, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit48, label %bb.c

bb.c:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit
  %i.ae = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.ac, i1 true)
  %i.af = trunc nuw nsw i128 %i.ae to i64
  %.neg268 = or disjoint i64 %i.af, -128
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit48

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit48: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit, %bb.c
  %.sroa.0.0.i47.neg = phi i64 [ %.neg268, %bb.c ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit ]
  %i.ag = add nsw i64 %.sroa.0.0.i47.neg, %4      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10457)
  %.not.i49 = icmp eq i64 %i.ag, 0
  br i1 %.not.i49, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit61, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit48
  %i.ah = trunc nsw i64 %i.ag to i32
  %i.ai = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ab, i32 %i.ah) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.e, label %.split.i50, !prof !65

.split.i50:                                       ; preds = %bb.d
  %i.ak = extractvalue { i32, i1 } %i.ai, 0       ; 2 uses
  store i32 %i.ak, ptr %1, align 4, !alias.scope !10457, !noalias !10454
  %i.al = and i64 %i.ag, 127                      ; 2 uses
  %.not18.i51 = icmp eq i64 %i.al, 0
  %i.am = zext nneg i64 %i.al to i128
  %.not309 = icmp ugt i64 %i.ag, 127
  %i.an = shl i128 %i.ac, %i.am
  %i.ao = or i1 %.not18.i51, %.not309
  %spec.select413.sink.a = select i1 %i.ao, i128 0, i128 %i.an
  store i128 %spec.select413.sink.a, ptr %2, align 16, !alias.scope !10454, !noalias !10457
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit61

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #31, !noalias !10459
  unreachable

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit61: ; preds = %.split.i50, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit48
  %i.ap = phi i32 [ %i.ab, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit48 ], [ %i.ak, %.split.i50 ]
  %i.aq = icmp eq i128 %i.z, 0
  br i1 %i.aq, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit.thread, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit61
  %i.ar = tail call range(i128 0, 129) i128 @llvm.cttz.i128(i128 %i.z, i1 true)
  %i.as = trunc nuw nsw i128 %i.ar to i64         ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, %4
  br i1 %i.au, label %bb.g, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit.thread

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit.thread: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit61, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit
  %.sroa.0.0.i62259 = phi i64 [ %i.as, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit ], [ -1, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit61 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10460
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull readonly align 16 %2, ptr noundef nonnull readonly %i.av, ptr noundef nonnull readonly align 16 %3, ptr noundef nonnull readonly %i.aw)
  %.sroa.09.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !10460 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !10460 ; 2 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !10460 ; 2 uses
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.611.0.copyload.i = load i64, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !10460 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10460
  %i.ax = icmp ult i64 %.sroa.510.0.copyload.i, %.sroa.611.0.copyload.i
  br i1 %i.ax, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i

bb.f:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.ay = icmp ult i64 %.sroa.510.0.copyload.i, %i.az
  br i1 %i.ay, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader, %bb.f
  %.sroa.7.0.i15 = phi i64 [ %i.az, %bb.f ], [ %.sroa.611.0.copyload.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader ]
  %i.az = add i64 %.sroa.7.0.i15, -1              ; 4 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i, i64 %i.az
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i, i64 %i.az
  %i.bc = load i128, ptr %i.ba, align 16, !noundef !5 ; 2 uses
  %i.bd = load i128, ptr %i.bb, align 16, !noundef !5 ; 2 uses
  %i.be = icmp eq i128 %i.bc, %i.bd
  br i1 %i.be, label %bb.f, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.bf = icmp ult i128 %i.bc, %i.bd
  br i1 %i.bf, label %bb.h, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread

bb.g:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_imploECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89)
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit222

bb.h:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10467)
  %i.bg = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ap, i32 -1) ; 2 uses
  %i.bh = extractvalue { i32, i1 } %i.bg, 1
  br i1 %i.bh, label %bb.i, label %.split.i64, !prof !65

.split.i64:                                       ; preds = %bb.h
  %i.bi = extractvalue { i32, i1 } %i.bg, 0
  store i32 %i.bi, ptr %1, align 4, !alias.scope !10467, !noalias !10464
  %i.bj = load i128, ptr %2, align 16, !alias.scope !10464, !noalias !10467, !noundef !5
  %i.bk = shl i128 %i.bj, 1
  store i128 %i.bk, ptr %2, align 16, !alias.scope !10464, !noalias !10467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10469
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull readonly align 16 %2, ptr noundef nonnull readonly %i.av, ptr noundef nonnull readonly align 16 %3, ptr noundef nonnull readonly %i.aw)
  %.sroa.09.0.copyload.i71 = load ptr, ptr %i.g, align 8, !noalias !10469 ; 2 uses
  %.sroa.3.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0.copyload.i73 = load ptr, ptr %.sroa.3.0..sroa_idx.i72, align 8, !noalias !10469 ; 2 uses
  %.sroa.510.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.510.0.copyload.i75 = load i64, ptr %.sroa.510.0..sroa_idx.i74, align 8, !noalias !10469 ; 2 uses
  %.sroa.611.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.611.0.copyload.i77 = load i64, ptr %.sroa.611.0..sroa_idx.i76, align 8, !noalias !10469 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10469
  %i.bl = icmp ult i64 %.sroa.510.0.copyload.i75, %.sroa.611.0.copyload.i77
  br i1 %i.bl, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i80.preheader, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit81.thread

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i80.preheader: ; preds = %.split.i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i71) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i73) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i80

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #31, !noalias !10473
  unreachable

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i80
  %i.bm = icmp ult i64 %.sroa.510.0.copyload.i75, %i.bn
  br i1 %i.bm, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i80, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit81.thread

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i80: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i80.preheader, %bb.j
  %.sroa.7.0.i7816 = phi i64 [ %i.bn, %bb.j ], [ %.sroa.611.0.copyload.i77, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i80.preheader ]
  %i.bn = add i64 %.sroa.7.0.i7816, -1            ; 4 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i71, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i73, i64 %i.bn
  %i.bq = load i128, ptr %i.bo, align 16, !noundef !5 ; 3 uses
  %i.br = load i128, ptr %i.bp, align 16, !noundef !5 ; 3 uses
  %i.bs = icmp eq i128 %i.bq, %i.br
  br i1 %i.bs, label %bb.j, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit81

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit81: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i80
  %i.bt = tail call i8 @llvm.ucmp.i8.i128(i128 %i.bq, i128 %i.br)
  store i8 %i.bt, ptr %i.o, align 1
  %i.bu = icmp ult i128 %i.bq, %i.br
  br i1 %i.bu, label %bb.k, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit81.thread, !prof !10474

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread: ; preds = %bb.f, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4olsb.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit81.thread
  %i.bv = sub nsw i64 %4, %.sroa.0.0.i62259       ; 7 uses
  %i.bw = shl nsw i64 %i.bv, 1                    ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 17
  br i1 %i.bx, label %bb.m, label %bb.l

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit81.thread: ; preds = %bb.j, %.split.i64, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread

bb.k:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit81
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtB4_3cmp8OrderingBM_ECsileJQcQObtj_7hir_def(i8 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.o, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @86, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31
  unreachable

bb.l:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread
  %i.by = icmp ult i64 %i.bw, 33
  br i1 %i.by, label %bb.t, label %bb.s

bb.m:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.thread
  %i.bz = icmp eq i64 %.sroa.0.0.i62259, 0
  br i1 %i.bz, label %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit_crit_edge, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit_crit_edge: ; preds = %bb.m
  %.pre335 = load i128, ptr %3, align 16
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %bb.m
  %i.ca = and i64 %.sroa.0.0.i62259, 127          ; 2 uses
  %.not12.i = icmp eq i64 %i.ca, 0
  %i.cb = zext nneg i64 %i.ca to i128
  br i1 %.not12.i, label %.lr.ph.split.i82.preheader, label %.lr.ph.split.us.i84.preheader

.lr.ph.split.i82.preheader:                       ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  store i128 0, ptr %3, align 16, !alias.scope !10475, !noalias !10478
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

.lr.ph.split.us.i84.preheader:                    ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %.not11.i = icmp ult i64 %.sroa.0.0.i62259, 128
  br i1 %.not11.i, label %bb.n, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit313

bb.n:                                             ; preds = %.lr.ph.split.us.i84.preheader
  %i.cc = load i128, ptr %3, align 16, !alias.scope !10475, !noalias !10478, !noundef !5
  %i.cd = lshr i128 %i.cc, %i.cb
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit313

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit313: ; preds = %bb.n, %.lr.ph.split.us.i84.preheader
  %.sroa.02.0.i83 = phi i128 [ 0, %.lr.ph.split.us.i84.preheader ], [ %i.cd, %bb.n ] ; 2 uses
  store i128 %.sroa.02.0.i83, ptr %3, align 16, !alias.scope !10475, !noalias !10478
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit_crit_edge, %.lr.ph.split.i82.preheader, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit313
  %i.ce = phi i128 [ %.pre335, %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit_crit_edge ], [ 0, %.lr.ph.split.i82.preheader ], [ %.sroa.02.0.i83, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit313 ] ; 2 uses
  %i.cf = trunc i128 %i.ce to i32
  %i.cg = and i32 %i.cf, 65535                    ; 17 uses
  %i.ch = load i128, ptr %2, align 16, !noundef !5 ; 9 uses
  %i.ci = add nsw i64 %i.bv, -1                   ; 3 uses
  %i.cj = sub nsw i64 1, %i.bv
  %i.ck = and i64 %i.cj, 127
  %i.cl = zext nneg i64 %i.ck to i128
  %i.cm = lshr i128 %i.ch, %i.cl
  %i.cn = trunc i128 %i.cm to i32
  %.not.i86 = icmp eq i64 %i.ci, 0
  %extract.t372 = trunc i128 %i.ch to i32
  %extract375 = lshr i128 %i.ch, 32
  %extract.t376 = trunc i128 %extract375 to i32
  %extract379.a = lshr i128 %i.ch, 48
  %extract.t380.a = trunc i128 %extract379.a to i32
  %extract384 = lshr i128 %i.ch, 64
  %extract.t385 = trunc i128 %extract384 to i32
  %extract388.a = lshr i128 %i.ch, 80
  %extract.t389.a = trunc i128 %extract388.a to i32
  %extract393 = lshr i128 %i.ch, 96
  %extract.t394 = trunc nuw i128 %extract393 to i32
  %extract397 = lshr i128 %i.ch, 112
  %extract.t398 = trunc nuw nsw i128 %extract397 to i32
  br i1 %.not.i86, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98, label %.split.i87

.split.i87:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.co = and i64 %i.ci, 127                      ; 2 uses
  %.not18.i88 = icmp eq i64 %i.co, 0
  br i1 %.not18.i88, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit, label %.lr.ph.split.i89

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit: ; preds = %.split.i87
  store i128 0, ptr %2, align 16, !alias.scope !10480, !noalias !10483
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98

.lr.ph.split.i89:                                 ; preds = %.split.i87
  %i.cp = zext nneg i64 %i.co to i128
  %.not312 = icmp ult i64 %i.ci, 128
  %i.cq = shl i128 %i.ch, %i.cp
  %spec.select414 = select i1 %.not312, i128 %i.cq, i128 0 ; 8 uses
  store i128 %spec.select414, ptr %2, align 16, !alias.scope !10480, !noalias !10483
  %extract.t371.a = trunc i128 %spec.select414 to i32
  %extract373 = lshr i128 %spec.select414, 32
  %extract.t374 = trunc i128 %extract373 to i32
  %extract377 = lshr i128 %spec.select414, 48
  %extract.t378 = trunc i128 %extract377 to i32
  %extract382 = lshr i128 %spec.select414, 64
  %extract.t383 = trunc i128 %extract382 to i32
  %extract386 = lshr i128 %spec.select414, 80
  %extract.t387 = trunc i128 %extract386 to i32
  %extract391 = lshr i128 %spec.select414, 96
  %extract.t392 = trunc nuw i128 %extract391 to i32
  %extract395 = lshr i128 %spec.select414, 112
  %extract.t396 = trunc nuw nsw i128 %extract395 to i32
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98: ; preds = %.lr.ph.split.i89, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.off0370 = phi i32 [ %extract.t371.a, %.lr.ph.split.i89 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t372, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ] ; 2 uses
  %.off32 = phi i32 [ %extract.t374, %.lr.ph.split.i89 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t376, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off48 = phi i32 [ %extract.t378, %.lr.ph.split.i89 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t380.a, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off64381 = phi i32 [ %extract.t383, %.lr.ph.split.i89 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t385, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off80 = phi i32 [ %extract.t387, %.lr.ph.split.i89 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t389.a, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off96390 = phi i32 [ %extract.t392, %.lr.ph.split.i89 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t394, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off112 = phi i32 [ %extract.t396, %.lr.ph.split.i89 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t398, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10485)
  %i.cr = icmp eq i32 %i.cg, 0
  br i1 %i.cr, label %bb.o, label %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs_0ECs8K4cjrcxBsw_6hir_ty.exit

bb.o:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98
  tail call void @_RNvNtNtCshzWfHUSfYae_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #31, !noalias !10488
  unreachable

_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs_0ECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98
  %i.cs = shl i32 %i.cn, 16
  %i.ct = or disjoint i32 %i.cs, %.off112         ; 2 uses
  %i.cu = urem i32 %i.ct, %i.cg
  %i.cv = udiv i32 %i.ct, %i.cg
  %.mask.i.i = and i32 %i.cv, 65535
  %i.cw = zext nneg i32 %.mask.i.i to i128
  %i.cx = shl nuw i128 %i.cw, 112
  %i.cy = shl nuw i32 %i.cu, 16
  %i.cz = and i32 %.off96390, 65535
  %i.da = or disjoint i32 %i.cz, %i.cy            ; 2 uses
  %i.db = urem i32 %i.da, %i.cg
  %i.dc = udiv i32 %i.da, %i.cg
  %.mask.i.1.i = and i32 %i.dc, 65535
  %i.dd = zext nneg i32 %.mask.i.1.i to i128
  %i.de = shl nuw nsw i128 %i.dd, 96
  %i.df = or disjoint i128 %i.de, %i.cx
  %i.dg = shl nuw i32 %i.db, 16
  %i.dh = and i32 %.off80, 65535
  %i.di = or disjoint i32 %i.dg, %i.dh            ; 2 uses
  %i.dj = urem i32 %i.di, %i.cg
  %i.dk = udiv i32 %i.di, %i.cg
  %.mask.i.2.i = and i32 %i.dk, 65535
  %i.dl = zext nneg i32 %.mask.i.2.i to i128
  %i.dm = shl nuw nsw i128 %i.dl, 80
  %i.dn = or disjoint i128 %i.dm, %i.df
  %i.do = shl nuw i32 %i.dj, 16
  %i.dp = and i32 %.off64381, 65535
  %i.dq = or disjoint i32 %i.do, %i.dp            ; 2 uses
  %i.dr = urem i32 %i.dq, %i.cg
  %i.ds = udiv i32 %i.dq, %i.cg
  %.mask.i.3.i = and i32 %i.ds, 65535
  %i.dt = zext nneg i32 %.mask.i.3.i to i128
  %i.du = shl nuw nsw i128 %i.dt, 64
  %i.dv = or disjoint i128 %i.du, %i.dn
  %i.dw = shl nuw i32 %i.dr, 16
  %i.dx = and i32 %.off48, 65535
  %i.dy = or disjoint i32 %i.dw, %i.dx            ; 2 uses
  %i.dz = urem i32 %i.dy, %i.cg
  %i.ea = udiv i32 %i.dy, %i.cg
  %.mask.i.4.i = and i32 %i.ea, 65535
  %i.eb = zext nneg i32 %.mask.i.4.i to i128
  %i.ec = shl nuw nsw i128 %i.eb, 48
  %i.ed = or disjoint i128 %i.ec, %i.dv
  %i.ee = shl nuw i32 %i.dz, 16
  %i.ef = and i32 %.off32, 65535
  %i.eg = or disjoint i32 %i.ee, %i.ef            ; 2 uses
  %i.eh = urem i32 %i.eg, %i.cg
  %i.ei = udiv i32 %i.eg, %i.cg
  %.mask.i.5.i = and i32 %i.ei, 65535
  %i.ej = zext nneg i32 %.mask.i.5.i to i128
  %i.ek = shl nuw nsw i128 %i.ej, 32
  %i.el = or disjoint i128 %i.ek, %i.ed
  %i.em = tail call i32 @llvm.fshl.i32(i32 %i.eh, i32 %.off0370, i32 16) ; 2 uses
  %i.en = urem i32 %i.em, %i.cg
  %i.eo = udiv i32 %i.em, %i.cg
  %i.ep = shl i32 %i.eo, 16
  %i.eq = zext i32 %i.ep to i128
  %i.er = or disjoint i128 %i.el, %i.eq
  %i.es = shl nuw i32 %i.en, 16
  %i.et = and i32 %.off0370, 65535
  %i.eu = or disjoint i32 %i.es, %i.et            ; 2 uses
  %i.ev = urem i32 %i.eu, %i.cg                   ; 2 uses
  %i.ew = udiv i32 %i.eu, %i.cg
  %.mask.i.7.i = and i32 %i.ew, 65535
  %i.ex = zext nneg i32 %.mask.i.7.i to i128
  %i.ey = or i128 %i.er, %i.ex
  store i128 %i.ey, ptr %2, align 16, !alias.scope !10485, !noalias !10491
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_imploECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ez = shl nuw nsw i32 %i.ev, 1
  %i.fa = zext nneg i32 %i.ez to i128
  store i128 %i.fa, ptr %i.n, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fb = and i128 %i.ce, 65535
  store i128 %i.fb, ptr %i.m, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10492
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 %i.n, ptr noundef nonnull readonly %i.fc, ptr noundef nonnull readonly align 16 %i.m, ptr noundef nonnull readonly %i.fd)
  %.sroa.09.0.copyload.i.i = load ptr, ptr %i.f, align 8, !noalias !10492 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !10492 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.510.0.copyload.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !10492 ; 2 uses
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.611.0.copyload.i.i = load i64, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !noalias !10492 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10492
  %i.fe = icmp ult i64 %.sroa.510.0.copyload.i.i, %.sroa.611.0.copyload.i.i
  br i1 %i.fe, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i.preheader, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i.preheader: ; preds = %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs_0ECs8K4cjrcxBsw_6hir_ty.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i
  %i.ff = icmp ult i64 %.sroa.510.0.copyload.i.i, %i.fg
  br i1 %i.ff, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i.preheader, %bb.p
  %.sroa.7.0.i.i9921 = phi i64 [ %i.fg, %bb.p ], [ %.sroa.611.0.copyload.i.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i.preheader ]
  %i.fg = add i64 %.sroa.7.0.i.i9921, -1          ; 4 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i.i, i64 %i.fg
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i.i, i64 %i.fg
  %i.fj = load i128, ptr %i.fh, align 16, !noundef !5 ; 2 uses
  %i.fk = load i128, ptr %i.fi, align 16, !noundef !5 ; 2 uses
  %i.fl = icmp eq i128 %i.fj, %i.fk
  br i1 %i.fl, label %bb.p, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i
  %i.fm = call i8 @llvm.ucmp.i8.i128(i128 %i.fj, i128 %i.fk)
  switch i8 %i.fm, label %bb.q [
    i8 -1, label %.preheader.preheader.i
    i8 0, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit
    i8 1, label %bb.r
  ]

.preheader.preheader.i:                           ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i
  %i.fn = icmp ne i32 %i.ev, 0
  %..i = zext i1 %i.fn to i8
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit

bb.q:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i
  unreachable

bb.r:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit

_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.p, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs_0ECs8K4cjrcxBsw_6hir_ty.exit, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i, %.preheader.preheader.i, %bb.r
  %.sroa.0.0.i100 = phi i8 [ 3, %bb.r ], [ 2, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i ], [ %..i, %.preheader.preheader.i ], [ 2, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs_0ECs8K4cjrcxBsw_6hir_ty.exit ], [ 2, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit222

bb.s:                                             ; preds = %bb.l
  %i.fo = icmp ult i64 %i.bw, 65
  br i1 %i.fo, label %bb.z, label %.preheader277.preheader

.preheader277.preheader:                          ; preds = %bb.s
  store i128 0, ptr %0, align 16
  %.sroa.3.0..sroa_idx.i224 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.510.0..sroa_idx.i226 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.611.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.aj

bb.t:                                             ; preds = %bb.l
  %i.fp = icmp eq i64 %.sroa.0.0.i62259, 0
  br i1 %i.fp, label %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123_crit_edge, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i105

._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123_crit_edge: ; preds = %bb.t
  %.pre334 = load i128, ptr %3, align 16
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i105: ; preds = %bb.t
  %i.fq = and i64 %.sroa.0.0.i62259, 127          ; 2 uses
  %.not12.i107 = icmp eq i64 %i.fq, 0
  %i.fr = zext nneg i64 %i.fq to i128
  br i1 %.not12.i107, label %.lr.ph.split.i108.preheader, label %.lr.ph.split.us.i114.preheader

.lr.ph.split.i108.preheader:                      ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i105
  store i128 0, ptr %3, align 16, !alias.scope !10499, !noalias !10502
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123

.lr.ph.split.us.i114.preheader:                   ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i105
  %.not11.i110 = icmp ult i64 %.sroa.0.0.i62259, 128
  br i1 %.not11.i110, label %bb.u, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit314

bb.u:                                             ; preds = %.lr.ph.split.us.i114.preheader
  %i.fs = load i128, ptr %3, align 16, !alias.scope !10499, !noalias !10502, !noundef !5
  %i.ft = lshr i128 %i.fs, %i.fr
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit314

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit314: ; preds = %bb.u, %.lr.ph.split.us.i114.preheader
  %.sroa.02.0.i111 = phi i128 [ 0, %.lr.ph.split.us.i114.preheader ], [ %i.ft, %bb.u ] ; 2 uses
  store i128 %.sroa.02.0.i111, ptr %3, align 16, !alias.scope !10499, !noalias !10502
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123: ; preds = %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123_crit_edge, %.lr.ph.split.i108.preheader, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit314
  %i.fu = phi i128 [ %.pre334, %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123_crit_edge ], [ 0, %.lr.ph.split.i108.preheader ], [ %.sroa.02.0.i111, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit314 ] ; 2 uses
  %i.fv = trunc i128 %i.fu to i64
  %i.fw = and i64 %i.fv, 4294967295               ; 9 uses
  %i.fx = load i128, ptr %2, align 16, !noundef !5 ; 5 uses
  %i.fy = add nsw i64 %i.bv, -1                   ; 3 uses
  %i.fz = sub nsw i64 1, %i.bv
  %i.ga = and i64 %i.fz, 127
  %i.gb = zext nneg i64 %i.ga to i128
  %i.gc = lshr i128 %i.fx, %i.gb
  %i.gd = trunc i128 %i.gc to i64
  %.not.i124 = icmp eq i64 %i.fy, 0
  %extract.t362.a = trunc i128 %i.fx to i64
  %extract364 = lshr i128 %i.fx, 64
  %extract.t365 = trunc nuw i128 %extract364 to i64
  %extract368 = lshr i128 %i.fx, 96
  %extract.t369 = trunc nuw nsw i128 %extract368 to i64
  br i1 %.not.i124, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136, label %.split.i125

.split.i125:                                      ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123
  %i.ge = and i64 %i.fy, 127                      ; 2 uses
  %.not18.i126 = icmp eq i64 %i.ge, 0
  br i1 %.not18.i126, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit, label %.lr.ph.split.i127

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit: ; preds = %.split.i125
  store i128 0, ptr %2, align 16, !alias.scope !10504, !noalias !10507
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136

.lr.ph.split.i127:                                ; preds = %.split.i125
  %i.gf = zext nneg i64 %i.ge to i128
  %.not311 = icmp ult i64 %i.fy, 128
  %i.gg = shl i128 %i.fx, %i.gf
  %spec.select415 = select i1 %.not311, i128 %i.gg, i128 0 ; 4 uses
  store i128 %spec.select415, ptr %2, align 16, !alias.scope !10504, !noalias !10507
  %extract.t = trunc i128 %spec.select415 to i64
  %extract = lshr i128 %spec.select415, 64
  %extract.t363 = trunc nuw i128 %extract to i64
  %extract366 = lshr i128 %spec.select415, 96
  %extract.t367 = trunc nuw nsw i128 %extract366 to i64
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136: ; preds = %.lr.ph.split.i127, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123
  %.off0 = phi i64 [ %extract.t, %.lr.ph.split.i127 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit ], [ %extract.t362.a, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123 ] ; 2 uses
  %.off64 = phi i64 [ %extract.t363, %.lr.ph.split.i127 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit ], [ %extract.t365, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123 ]
  %.off96 = phi i64 [ %extract.t367, %.lr.ph.split.i127 ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit ], [ %extract.t369, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10509)
  %i.gh = icmp eq i64 %i.fw, 0
  br i1 %i.gh, label %bb.v, label %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs0_0ECs8K4cjrcxBsw_6hir_ty.exit

bb.v:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136
  tail call void @_RNvNtNtCshzWfHUSfYae_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #31, !noalias !10512
  unreachable

_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs0_0ECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136
  %i.gi = shl i64 %i.gd, 32
  %i.gj = or disjoint i64 %i.gi, %.off96          ; 2 uses
  %i.gk = urem i64 %i.gj, %i.fw
  %i.gl = udiv i64 %i.gj, %i.fw
  %.mask.i.i138 = and i64 %i.gl, 4294967295
  %i.gm = zext nneg i64 %.mask.i.i138 to i128
  %i.gn = shl nuw i128 %i.gm, 96
  %i.go = shl nuw i64 %i.gk, 32
  %i.gp = and i64 %.off64, 4294967295
  %i.gq = or disjoint i64 %i.gp, %i.go            ; 2 uses
  %i.gr = urem i64 %i.gq, %i.fw
  %i.gs = udiv i64 %i.gq, %i.fw
  %.mask.i.1.i139 = and i64 %i.gs, 4294967295
  %i.gt = zext nneg i64 %.mask.i.1.i139 to i128
  %i.gu = shl nuw nsw i128 %i.gt, 64
  %i.gv = or disjoint i128 %i.gu, %i.gn
  %i.gw = tail call i64 @llvm.fshl.i64(i64 %i.gr, i64 %.off0, i64 32) ; 2 uses
  %i.gx = urem i64 %i.gw, %i.fw
  %i.gy = udiv i64 %i.gw, %i.fw
  %i.gz = shl i64 %i.gy, 32
  %i.ha = zext i64 %i.gz to i128
  %i.hb = or disjoint i128 %i.gv, %i.ha
  %i.hc = shl nuw i64 %i.gx, 32
  %i.hd = and i64 %.off0, 4294967295
  %i.he = or disjoint i64 %i.hc, %i.hd            ; 2 uses
  %i.hf = urem i64 %i.he, %i.fw                   ; 2 uses
  %i.hg = udiv i64 %i.he, %i.fw
  %.mask.i.3.i140 = and i64 %i.hg, 4294967295
  %i.hh = zext nneg i64 %.mask.i.3.i140 to i128
  %i.hi = or disjoint i128 %i.hb, %i.hh
  store i128 %i.hi, ptr %2, align 16, !alias.scope !10509, !noalias !10515
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_imploECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.hj = shl nuw nsw i64 %i.hf, 1
  %i.hk = zext nneg i64 %i.hj to i128
  store i128 %i.hk, ptr %i.l, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.hl = and i128 %i.fu, 4294967295
  store i128 %i.hl, ptr %i.k, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10516
  %i.hm = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 16 %i.l, ptr noundef nonnull readonly %i.hm, ptr noundef nonnull readonly align 16 %i.k, ptr noundef nonnull readonly %i.hn)
  %.sroa.09.0.copyload.i.i141 = load ptr, ptr %i.e, align 8, !noalias !10516 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i142 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0.copyload.i.i143 = load ptr, ptr %.sroa.3.0..sroa_idx.i.i142, align 8, !noalias !10516 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i144 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.510.0.copyload.i.i145 = load i64, ptr %.sroa.510.0..sroa_idx.i.i144, align 8, !noalias !10516 ; 2 uses
  %.sroa.611.0..sroa_idx.i.i146 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.611.0.copyload.i.i147 = load i64, ptr %.sroa.611.0..sroa_idx.i.i146, align 8, !noalias !10516 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10516
  %i.ho = icmp ult i64 %.sroa.510.0.copyload.i.i145, %.sroa.611.0.copyload.i.i147
  br i1 %i.ho, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i150.preheader, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit155

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i150.preheader: ; preds = %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs0_0ECs8K4cjrcxBsw_6hir_ty.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i141) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i143) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i150

bb.w:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i150
  %i.hp = icmp ult i64 %.sroa.510.0.copyload.i.i145, %i.hq
  br i1 %i.hp, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i150, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit155

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i150: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i150.preheader, %bb.w
  %.sroa.7.0.i.i14820 = phi i64 [ %i.hq, %bb.w ], [ %.sroa.611.0.copyload.i.i147, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i150.preheader ]
  %i.hq = add i64 %.sroa.7.0.i.i14820, -1         ; 4 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i.i141, i64 %i.hq
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i.i143, i64 %i.hq
  %i.ht = load i128, ptr %i.hr, align 16, !noundef !5 ; 2 uses
  %i.hu = load i128, ptr %i.hs, align 16, !noundef !5 ; 2 uses
  %i.hv = icmp eq i128 %i.ht, %i.hu
  br i1 %i.hv, label %bb.w, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i151

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i151: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i150
  %i.hw = call i8 @llvm.ucmp.i8.i128(i128 %i.ht, i128 %i.hu)
  switch i8 %i.hw, label %bb.x [
    i8 -1, label %.preheader.preheader.i152
    i8 0, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit155
    i8 1, label %bb.y
  ]

.preheader.preheader.i152:                        ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i151
  %i.hx = icmp ne i64 %i.hf, 0
  %..i154 = zext i1 %i.hx to i8
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit155

bb.x:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i151
  unreachable

bb.y:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i151
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit155

_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit155: ; preds = %bb.w, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs0_0ECs8K4cjrcxBsw_6hir_ty.exit, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i151, %.preheader.preheader.i152, %bb.y
  %.sroa.0.0.i149 = phi i8 [ 3, %bb.y ], [ 2, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i151 ], [ %..i154, %.preheader.preheader.i152 ], [ 2, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs0_0ECs8K4cjrcxBsw_6hir_ty.exit ], [ 2, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit222

bb.z:                                             ; preds = %bb.s
  %i.hy = icmp eq i64 %.sroa.0.0.i62259, 0
  br i1 %i.hy, label %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178_crit_edge, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i160

._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178_crit_edge: ; preds = %bb.z
  %.pre = load i128, ptr %3, align 16
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i160: ; preds = %bb.z
  %i.hz = and i64 %.sroa.0.0.i62259, 127          ; 2 uses
  %.not12.i162 = icmp eq i64 %i.hz, 0
  %i.ia = zext nneg i64 %i.hz to i128
  br i1 %.not12.i162, label %.lr.ph.split.i163.preheader, label %.lr.ph.split.us.i169.preheader

.lr.ph.split.i163.preheader:                      ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i160
  store i128 0, ptr %3, align 16, !alias.scope !10523, !noalias !10526
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178

.lr.ph.split.us.i169.preheader:                   ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i160
  %.not11.i165 = icmp ult i64 %.sroa.0.0.i62259, 128
  br i1 %.not11.i165, label %bb.aa, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit315

bb.aa:                                            ; preds = %.lr.ph.split.us.i169.preheader
  %i.ib = load i128, ptr %3, align 16, !alias.scope !10523, !noalias !10526, !noundef !5
  %i.ic = lshr i128 %i.ib, %i.ia
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit315

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit315: ; preds = %bb.aa, %.lr.ph.split.us.i169.preheader
  %.sroa.02.0.i166 = phi i128 [ 0, %.lr.ph.split.us.i169.preheader ], [ %i.ic, %bb.aa ] ; 2 uses
  store i128 %.sroa.02.0.i166, ptr %3, align 16, !alias.scope !10523, !noalias !10526
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178: ; preds = %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178_crit_edge, %.lr.ph.split.i163.preheader, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit315
  %i.id = phi i128 [ %.pre, %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178_crit_edge ], [ 0, %.lr.ph.split.i163.preheader ], [ %.sroa.02.0.i166, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit315 ]
  %i.ie = and i128 %i.id, 18446744073709551615    ; 4 uses
  %i.if = load i128, ptr %2, align 16, !noundef !5 ; 3 uses
  %i.ig = add nsw i64 %i.bv, -1                   ; 3 uses
  %i.ih = sub nsw i64 1, %i.bv
  %i.ii = and i64 %i.ih, 127
  %i.ij = zext nneg i64 %i.ii to i128
  %i.ik = lshr i128 %i.if, %i.ij
  %.not.i179 = icmp eq i64 %i.ig, 0
  br i1 %.not.i179, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit191, label %.split.i180

.split.i180:                                      ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178
  %i.il = and i64 %i.ig, 127                      ; 2 uses
  %.not18.i181 = icmp eq i64 %i.il, 0
  %i.im = zext nneg i64 %i.il to i128
  %.not310 = icmp ugt i64 %i.ig, 127
  %i.in = shl i128 %i.if, %i.im
  %i.io = or i1 %.not18.i181, %.not310
  %spec.select416.sink = select i1 %i.io, i128 0, i128 %i.in ; 2 uses
  store i128 %spec.select416.sink, ptr %2, align 16, !alias.scope !10528, !noalias !10531
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit191

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit191: ; preds = %.split.i180, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178
  %i.ip = phi i128 [ %i.if, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178 ], [ %spec.select416.sink, %.split.i180 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10533)
  %i.iq = icmp eq i128 %i.ie, 0
  br i1 %i.iq, label %bb.ab, label %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs1_0ECs8K4cjrcxBsw_6hir_ty.exit

bb.ab:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit191
  tail call void @_RNvNtNtCshzWfHUSfYae_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #31, !noalias !10536
  unreachable

_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs1_0ECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit191
  %i.ir = tail call i128 @llvm.fshl.i128(i128 %i.ik, i128 %i.ip, i128 64)
  %.frozen = freeze i128 %i.ir                    ; 2 uses
  %.frozen78 = freeze i128 %i.ie                  ; 2 uses
  %i.is = udiv i128 %.frozen, %.frozen78          ; 2 uses
  %i.it = mul i128 %i.is, %.frozen78
  %.decomposed = sub i128 %.frozen, %i.it
  %i.iu = shl i128 %i.is, 64
  %i.iv = shl nuw i128 %.decomposed, 64
  %i.iw = and i128 %i.ip, 18446744073709551615
  %i.ix = or disjoint i128 %i.iv, %i.iw
  %.frozen79 = freeze i128 %i.ix                  ; 2 uses
  %.frozen80 = freeze i128 %i.ie                  ; 2 uses
  %i.iy = udiv i128 %.frozen79, %.frozen80        ; 2 uses
  %i.iz = mul i128 %i.iy, %.frozen80
  %.decomposed81 = sub i128 %.frozen79, %i.iz     ; 2 uses
  %i.ja = and i128 %i.iy, 18446744073709551615
  %i.jb = or disjoint i128 %i.ja, %i.iu
  store i128 %i.jb, ptr %2, align 16, !alias.scope !10533, !noalias !10539
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_imploECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.jc = shl nuw nsw i128 %.decomposed81, 1
  store i128 %i.jc, ptr %i.j, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i128 %i.ie, ptr %i.i, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10540
  %i.jd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 16 %i.j, ptr noundef nonnull readonly %i.jd, ptr noundef nonnull readonly align 16 %i.i, ptr noundef nonnull readonly %i.je)
  %.sroa.09.0.copyload.i.i193 = load ptr, ptr %i.d, align 8, !noalias !10540 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i194 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3.0.copyload.i.i195 = load ptr, ptr %.sroa.3.0..sroa_idx.i.i194, align 8, !noalias !10540 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i196 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.510.0.copyload.i.i197 = load i64, ptr %.sroa.510.0..sroa_idx.i.i196, align 8, !noalias !10540 ; 2 uses
  %.sroa.611.0..sroa_idx.i.i198 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.611.0.copyload.i.i199 = load i64, ptr %.sroa.611.0..sroa_idx.i.i198, align 8, !noalias !10540 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10540
  %i.jf = icmp ult i64 %.sroa.510.0.copyload.i.i197, %.sroa.611.0.copyload.i.i199
  br i1 %i.jf, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i202.preheader, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit207

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i202.preheader: ; preds = %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs1_0ECs8K4cjrcxBsw_6hir_ty.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i193) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i195) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i202

bb.ac:                                            ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i202
  %i.jg = icmp ult i64 %.sroa.510.0.copyload.i.i197, %i.jh
  br i1 %i.jg, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i202, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit207

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i202: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i202.preheader, %bb.ac
  %.sroa.7.0.i.i20019 = phi i64 [ %i.jh, %bb.ac ], [ %.sroa.611.0.copyload.i.i199, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i202.preheader ]
  %i.jh = add i64 %.sroa.7.0.i.i20019, -1         ; 4 uses
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i.i193, i64 %i.jh
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i.i195, i64 %i.jh
  %i.jk = load i128, ptr %i.ji, align 16, !noundef !5 ; 2 uses
  %i.jl = load i128, ptr %i.jj, align 16, !noundef !5 ; 2 uses
  %i.jm = icmp eq i128 %i.jk, %i.jl
  br i1 %i.jm, label %bb.ac, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i203

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i203: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i202
  %i.jn = call i8 @llvm.ucmp.i8.i128(i128 %i.jk, i128 %i.jl)
  switch i8 %i.jn, label %bb.ad [
    i8 -1, label %.preheader.preheader.i204
    i8 0, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit207
    i8 1, label %bb.ae
  ]

.preheader.preheader.i204:                        ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i203
  %i.jo = icmp ne i128 %.decomposed81, 0
  %..i206 = zext i1 %i.jo to i8
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit207

bb.ad:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i203
  unreachable

bb.ae:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i203
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit207

_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit207: ; preds = %bb.ac, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs1_0ECs8K4cjrcxBsw_6hir_ty.exit, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i203, %.preheader.preheader.i204, %bb.ae
  %.sroa.0.0.i201 = phi i8 [ 3, %bb.ae ], [ 2, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i203 ], [ %..i206, %.preheader.preheader.i204 ], [ 2, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvB2_3divs1_0ECs8K4cjrcxBsw_6hir_ty.exit ], [ 2, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit222

bb.af:                                            ; preds = %.split.i235
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10550
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 16 %2, ptr noundef nonnull readonly %i.av, ptr noundef nonnull readonly align 16 %3, ptr noundef nonnull readonly %i.aw)
  %.sroa.09.0.copyload.i.i208 = load ptr, ptr %i.c, align 8, !noalias !10550 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i209 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload.i.i210 = load ptr, ptr %.sroa.3.0..sroa_idx.i.i209, align 8, !noalias !10550 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i211 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.510.0.copyload.i.i212 = load i64, ptr %.sroa.510.0..sroa_idx.i.i211, align 8, !noalias !10550 ; 2 uses
  %.sroa.611.0..sroa_idx.i.i213 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.611.0.copyload.i.i214 = load i64, ptr %.sroa.611.0..sroa_idx.i.i213, align 8, !noalias !10550 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10550
  %i.jp = icmp ult i64 %.sroa.510.0.copyload.i.i212, %.sroa.611.0.copyload.i.i214
  br i1 %i.jp, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i217.preheader, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit222

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i217.preheader: ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i208) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i210) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i217

bb.ag:                                            ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i217
  %i.jq = icmp ult i64 %.sroa.510.0.copyload.i.i212, %i.jr
  br i1 %i.jq, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i217, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit222

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i217: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i217.preheader, %bb.ag
  %.sroa.7.0.i.i21518 = phi i64 [ %i.jr, %bb.ag ], [ %.sroa.611.0.copyload.i.i214, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i217.preheader ]
  %i.jr = add i64 %.sroa.7.0.i.i21518, -1         ; 4 uses
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i.i208, i64 %i.jr
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i.i210, i64 %i.jr
  %i.ju = load i128, ptr %i.js, align 16, !noundef !5 ; 2 uses
  %i.jv = load i128, ptr %i.jt, align 16, !noundef !5 ; 2 uses
  %i.jw = icmp eq i128 %i.ju, %i.jv
  br i1 %i.jw, label %bb.ag, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i218

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i218: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.i217
  %i.jx = tail call i8 @llvm.ucmp.i8.i128(i128 %i.ju, i128 %i.jv)
  switch i8 %i.jx, label %bb.ah [
    i8 -1, label %.preheader.preheader.i219
    i8 0, label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit222
    i8 1, label %bb.ai
  ]

.preheader.preheader.i219:                        ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i218
  %.val.i.i220 = load i128, ptr %2, align 16, !alias.scope !10547, !noalias !10555, !noundef !5
  %i.jy = icmp ne i128 %.val.i.i220, 0
  %..i221 = zext i1 %i.jy to i8
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit222

bb.ah:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i218
  unreachable

bb.ai:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit.i218
  br label %_RNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div0Cs8K4cjrcxBsw_6hir_ty.exit222

bb.aj:                                            ; preds = %.preheader277.preheader, %.split.i235
  %.sroa.0.0307 = phi i64 [ %4, %.preheader277.preheader ], [ %i.jz, %.split.i235 ]
  %i.jz = add nsw i64 %.sroa.0.0307, -1           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10558
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 16 %2, ptr noundef nonnull readonly %i.av, ptr noundef nonnull readonly align 16 %3, ptr noundef nonnull readonly %i.aw)
  %.sroa.09.0.copyload.i223 = load ptr, ptr %i.b, align 8, !noalias !10558 ; 2 uses
  %.sroa.3.0.copyload.i225 = load ptr, ptr %.sroa.3.0..sroa_idx.i224, align 8, !noalias !10558 ; 2 uses
  %.sroa.510.0.copyload.i227 = load i64, ptr %.sroa.510.0..sroa_idx.i226, align 8, !noalias !10558 ; 2 uses
  %.sroa.611.0.copyload.i229 = load i64, ptr %.sroa.611.0..sroa_idx.i228, align 8, !noalias !10558 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10558
  %i.ka = icmp ult i64 %.sroa.510.0.copyload.i227, %.sroa.611.0.copyload.i229
  br i1 %i.ka, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i232.preheader, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit233.thread

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i232.preheader: ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i223) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i225) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i232

bb.ak:                                            ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i232
  %i.kb = icmp ult i64 %.sroa.510.0.copyload.i227, %i.kc
  br i1 %i.kb, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i232, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit233.thread

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i232: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i232.preheader, %bb.ak
  %.sroa.7.0.i23017 = phi i64 [ %i.kc, %bb.ak ], [ %.sroa.611.0.copyload.i229, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i232.preheader ]
  %i.kc = add i64 %.sroa.7.0.i23017, -1           ; 4 uses
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i223, i64 %i.kc
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i225, i64 %i.kc
  %i.kf = load i128, ptr %i.kd, align 16, !noundef !5 ; 2 uses
  %i.kg = load i128, ptr %i.ke, align 16, !noundef !5 ; 2 uses
  %i.kh = icmp eq i128 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ak, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit233
end_hunk_0
