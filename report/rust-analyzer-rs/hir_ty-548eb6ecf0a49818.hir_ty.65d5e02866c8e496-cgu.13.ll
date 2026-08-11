inline.NumInlined: 6935
inline.NumDeleted: 3286
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCs8K4cjrcxBsw_6hir_ty:bb.a
  %.sink.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.i = sub i64 %.sink.i.i.i, %.sink10.i
  %.not.i.i = icmp ult i64 %i.i, %i.h
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
  %.pre57.i = tail call i64 @llvm.umax.i64(i64 %.pre.i, i64 2)
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i

bb.e:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.r = extractvalue { i64, i64 } %i.p, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.q, i64 noundef %i.r) #30, !noalias !10351
  unreachable

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.thread.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31, !noalias !10351
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i, %bb.c
  %.sink.i.pre-phi.i = phi i64 [ %.pre57.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCs8K4cjrcxBsw_6hir_ty.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i ], [ %.sink.i.i.i, %bb.c ] ; 3 uses
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
  br i1 %i.x, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.g
  %.sroa.6.050.i = phi i64 [ %i.al, %bb.g ], [ %i.h, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 2 uses
  %.sroa.7.049.i = phi i64 [ %i.an, %bb.g ], [ %i.v, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 3 uses
  %i.y = icmp eq i64 %.sroa.6.050.i, 0
  br i1 %i.y, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.g

.lr.ph54.i:                                       ; preds = %._crit_edge.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.430.052.i = phi i64 [ %i.z, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i ], [ %.sroa.6.0.lcssa.i, %._crit_edge.i ]
  %i.z = add i64 %.sroa.430.052.i, -1             ; 2 uses
  %i.aa = load i64, ptr %i.a, align 16, !alias.scope !10359, !noalias !10364, !noundef !5 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 2                   ; 2 uses
  %i.ac = load ptr, ptr %0, align 16, !alias.scope !10359, !noalias !10364, !nonnull !5
  %.sink10.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %0
  %.sink9.i.i.i = select i1 %i.ab, ptr %i.d, ptr %i.a ; 2 uses
  %.sink.i.i12.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 2)
  %i.ad = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !10366, !noundef !5 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %.sink.i.i12.i
  br i1 %i.ae, label %bb.f, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i, !prof !65

bb.f:                                             ; preds = %.lr.ph54.i
  tail call fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %0)
  %i.af = load ptr, ptr %0, align 16, !alias.scope !10366, !nonnull !5, !noundef !5
  %.pre.i.i = load i64, ptr %i.d, align 8, !alias.scope !10366
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.f, %.lr.ph54.i
  %i.ag = phi i64 [ %.pre.i.i, %bb.f ], [ %i.ad, %.lr.ph54.i ]
  %.sroa.01.0.i.i = phi ptr [ %i.d, %bb.f ], [ %.sink9.i.i.i, %.lr.ph54.i ] ; 2 uses
  %.sroa.0.0.i13.i = phi ptr [ %i.af, %bb.f ], [ %.sink10.i.i.i, %.lr.ph54.i ]
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i13.i, i64 %i.ag
  store i128 0, ptr %i.ah, align 16
  %i.ai = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !10366, !noundef !5
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %.sroa.01.0.i.i, align 8, !alias.scope !10366
  %i.ak = icmp eq i64 %i.z, 0
  br i1 %i.ak, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph54.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.al = add i64 %.sroa.6.050.i, -1              ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i, i64 %.sroa.7.049.i
  store i128 0, ptr %i.am, align 16
  %i.an = add i64 %.sroa.7.049.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %.sink.i.pre-phi.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %.lr.ph.i
  store i64 %.sroa.7.049.i, ptr %.sink9.i.i2, align 8, !alias.scope !10351
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
  %6 = and i64 %i.p, 127
  %i.aj = and i32 %i.o, 127
  %.not12.i = icmp eq i32 %i.aj, 0
  %i.ak = zext nneg i64 %6 to i128
  br i1 %.not12.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.k
  %.not11.i = icmp ult i32 %i.o, 128
  br i1 %.not11.i, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156

.lr.ph.split.us.i.preheader:                      ; preds = %bb.k
  store i128 0, ptr %0, align 16, !alias.scope !10367, !noalias !10370
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

bb.l:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #31, !noalias !10378
  unreachable

bb.m:                                             ; preds = %.lr.ph.split.i.preheader
  %i.al = load i128, ptr %0, align 16, !alias.scope !10367, !noalias !10370, !noundef !5
  %i.am = lshr i128 %i.al, %i.ak
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156: ; preds = %bb.m, %.lr.ph.split.i.preheader
  %.sroa.02.0.i = phi i128 [ 0, %.lr.ph.split.i.preheader ], [ %i.am, %bb.m ]
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
  br i1 %.not12.i23, label %.lr.ph.split.us.i30.preheader, label %.lr.ph.split.i24.preheader

.lr.ph.split.i24.preheader:                       ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i21
  %.not11.i26 = icmp ult i32 %i.i, 128
  br i1 %.not11.i26, label %bb.t, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154

.lr.ph.split.us.i30.preheader:                    ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i21
  store i128 0, ptr %3, align 16, !alias.scope !10389, !noalias !10384
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

bb.t:                                             ; preds = %.lr.ph.split.i24.preheader
  %i.bf = load i128, ptr %3, align 16, !alias.scope !10389, !noalias !10384, !noundef !5
  %i.bg = lshr i128 %i.bf, %i.be
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154: ; preds = %bb.t, %.lr.ph.split.i24.preheader
  %.sroa.02.0.i27 = phi i128 [ 0, %.lr.ph.split.i24.preheader ], [ %i.bg, %bb.t ]
  store i128 %.sroa.02.0.i27, ptr %3, align 16, !alias.scope !10389, !noalias !10384
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156, %.lr.ph.split.us.i.preheader, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154, %.lr.ph.split.us.i30.preheader, %bb.d
  %.sroa.0.0 = phi i8 [ %.sroa.09.0.i17.i, %.lr.ph.split.us.i.preheader ], [ 0, %bb.d ], [ %.sroa.09.0.i17.i22, %.lr.ph.split.us.i30.preheader ], [ %.sroa.09.0.i17.i22, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit154 ], [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit156 ]
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

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65: ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit153, %.lr.ph.split.us.i56.preheader, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit151, %.lr.ph.split.us.i86.preheader, %.split.i66, %.lr.ph.split.i41.preheader, %bb.c
  %.sroa.013.0 = phi i1 [ false, %bb.c ], [ true, %.lr.ph.split.us.i86.preheader ], [ false, %.lr.ph.split.i41.preheader ], [ false, %.lr.ph.split.us.i56.preheader ], [ true, %.split.i66 ], [ true, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit151 ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit153 ] ; 3 uses
  %.sroa.0.2 = phi i8 [ 0, %bb.c ], [ %.sroa.09.0.i17.i78, %.lr.ph.split.us.i86.preheader ], [ 0, %.lr.ph.split.i41.preheader ], [ %.sroa.09.0.i17.i48, %.lr.ph.split.us.i56.preheader ], [ 0, %.split.i66 ], [ %.sroa.09.0.i17.i78, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit151 ], [ %.sroa.09.0.i17.i48, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit65.loopexit153 ] ; 11 uses
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
end_hunk_0
