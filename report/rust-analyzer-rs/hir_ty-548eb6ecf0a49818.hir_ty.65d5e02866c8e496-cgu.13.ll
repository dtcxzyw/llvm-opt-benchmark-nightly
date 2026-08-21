inline.NumInlined: 6935
inline.NumDeleted: 3286
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div:bb.a
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
  br i1 %.not12.i, label %.lr.ph.split.us.i84.preheader, label %.lr.ph.split.i82.preheader

.lr.ph.split.i82.preheader:                       ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %.not11.i = icmp ult i64 %.sroa.0.0.i62259, 128
  br i1 %.not11.i, label %bb.n, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit309

.lr.ph.split.us.i84.preheader:                    ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  store i128 0, ptr %3, align 16, !alias.scope !10475, !noalias !10478
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

bb.n:                                             ; preds = %.lr.ph.split.i82.preheader
  %i.cc = load i128, ptr %3, align 16, !alias.scope !10475, !noalias !10478, !noundef !5
  %i.cd = lshr i128 %i.cc, %i.cb
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit309

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit309: ; preds = %bb.n, %.lr.ph.split.i82.preheader
  %.sroa.02.0.i83 = phi i128 [ 0, %.lr.ph.split.i82.preheader ], [ %i.cd, %bb.n ] ; 2 uses
  store i128 %.sroa.02.0.i83, ptr %3, align 16, !alias.scope !10475, !noalias !10478
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit_crit_edge, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit309, %.lr.ph.split.us.i84.preheader
  %i.ce = phi i128 [ %.pre335, %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit_crit_edge ], [ %.sroa.02.0.i83, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit.loopexit309 ], [ 0, %.lr.ph.split.us.i84.preheader ] ; 2 uses
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
  %extract.t377 = trunc i128 %i.ch to i32
  %extract380 = lshr i128 %i.ch, 32
  %extract.t381 = trunc i128 %extract380 to i32
  %extract384.a = lshr i128 %i.ch, 48
  %extract.t385.a = trunc i128 %extract384.a to i32
  %extract389 = lshr i128 %i.ch, 64
  %extract.t390 = trunc i128 %extract389 to i32
  %extract393.a = lshr i128 %i.ch, 80
  %extract.t394.a = trunc i128 %extract393.a to i32
  %extract398 = lshr i128 %i.ch, 96
  %extract.t399 = trunc nuw i128 %extract398 to i32
  %extract402 = lshr i128 %i.ch, 112
  %extract.t403 = trunc nuw nsw i128 %extract402 to i32
  br i1 %.not.i86, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98, label %.split.i87

.split.i87:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.co = and i64 %i.ci, 127                      ; 2 uses
  %.not18.i88 = icmp eq i64 %i.co, 0
  br i1 %.not18.i88, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit, label %.lr.ph.split.i89.preheader

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit: ; preds = %.split.i87
  store i128 0, ptr %2, align 16, !alias.scope !10480, !noalias !10483
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98

.lr.ph.split.i89.preheader:                       ; preds = %.split.i87
  %i.cp = zext nneg i64 %i.co to i128
  %.not374 = icmp ult i64 %i.ci, 128
  %i.cq = shl i128 %i.ch, %i.cp
  %spec.select419 = select i1 %.not374, i128 %i.cq, i128 0 ; 8 uses
  store i128 %spec.select419, ptr %2, align 16, !alias.scope !10480, !noalias !10483
  %extract.t376 = trunc i128 %spec.select419 to i32
  %extract378 = lshr i128 %spec.select419, 32
  %extract.t379 = trunc i128 %extract378 to i32
  %extract382.a = lshr i128 %spec.select419, 48
  %extract.t383.a = trunc i128 %extract382.a to i32
  %extract387 = lshr i128 %spec.select419, 64
  %extract.t388 = trunc i128 %extract387 to i32
  %extract391.a = lshr i128 %spec.select419, 80
  %extract.t392.a = trunc i128 %extract391.a to i32
  %extract396 = lshr i128 %spec.select419, 96
  %extract.t397 = trunc nuw i128 %extract396 to i32
  %extract400 = lshr i128 %spec.select419, 112
  %extract.t401 = trunc nuw nsw i128 %extract400 to i32
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98: ; preds = %.lr.ph.split.i89.preheader, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.off0375 = phi i32 [ %extract.t376, %.lr.ph.split.i89.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t377, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ] ; 2 uses
  %.off32 = phi i32 [ %extract.t379, %.lr.ph.split.i89.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t381, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off48 = phi i32 [ %extract.t383.a, %.lr.ph.split.i89.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t385.a, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off64386 = phi i32 [ %extract.t388, %.lr.ph.split.i89.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t390, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off80 = phi i32 [ %extract.t392.a, %.lr.ph.split.i89.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t394.a, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off96395 = phi i32 [ %extract.t397, %.lr.ph.split.i89.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t399, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
  %.off112 = phi i32 [ %extract.t401, %.lr.ph.split.i89.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit98.loopexit ], [ %extract.t403, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ]
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
  %i.cz = and i32 %.off96395, 65535
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
  %i.dp = and i32 %.off64386, 65535
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
  %i.em = tail call i32 @llvm.fshl.i32(i32 %i.eh, i32 %.off0375, i32 16) ; 2 uses
  %i.en = urem i32 %i.em, %i.cg
  %i.eo = udiv i32 %i.em, %i.cg
  %i.ep = shl i32 %i.eo, 16
  %i.eq = zext i32 %i.ep to i128
  %i.er = or disjoint i128 %i.el, %i.eq
  %i.es = shl nuw i32 %i.en, 16
  %i.et = and i32 %.off0375, 65535
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
  br i1 %.not12.i107, label %.lr.ph.split.us.i114.preheader, label %.lr.ph.split.i108.preheader

.lr.ph.split.i108.preheader:                      ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i105
  %.not11.i110 = icmp ult i64 %.sroa.0.0.i62259, 128
  br i1 %.not11.i110, label %bb.u, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit311

.lr.ph.split.us.i114.preheader:                   ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i105
  store i128 0, ptr %3, align 16, !alias.scope !10499, !noalias !10502
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123

bb.u:                                             ; preds = %.lr.ph.split.i108.preheader
  %i.fs = load i128, ptr %3, align 16, !alias.scope !10499, !noalias !10502, !noundef !5
  %i.ft = lshr i128 %i.fs, %i.fr
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit311

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit311: ; preds = %bb.u, %.lr.ph.split.i108.preheader
  %.sroa.02.0.i111 = phi i128 [ 0, %.lr.ph.split.i108.preheader ], [ %i.ft, %bb.u ] ; 2 uses
  store i128 %.sroa.02.0.i111, ptr %3, align 16, !alias.scope !10499, !noalias !10502
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123: ; preds = %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123_crit_edge, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit311, %.lr.ph.split.us.i114.preheader
  %i.fu = phi i128 [ %.pre334, %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123_crit_edge ], [ %.sroa.02.0.i111, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123.loopexit311 ], [ 0, %.lr.ph.split.us.i114.preheader ] ; 2 uses
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
  %extract.t366 = trunc i128 %i.fx to i64
  %extract368.a = lshr i128 %i.fx, 64
  %extract.t369.a = trunc nuw i128 %extract368.a to i64
  %extract372 = lshr i128 %i.fx, 96
  %extract.t373 = trunc nuw nsw i128 %extract372 to i64
  br i1 %.not.i124, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136, label %.split.i125

.split.i125:                                      ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123
  %i.ge = and i64 %i.fy, 127                      ; 2 uses
  %.not18.i126 = icmp eq i64 %i.ge, 0
  br i1 %.not18.i126, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit, label %.lr.ph.split.i127.preheader

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit: ; preds = %.split.i125
  store i128 0, ptr %2, align 16, !alias.scope !10504, !noalias !10507
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136

.lr.ph.split.i127.preheader:                      ; preds = %.split.i125
  %i.gf = zext nneg i64 %i.ge to i128
  %.not365 = icmp ult i64 %i.fy, 128
  %i.gg = shl i128 %i.fx, %i.gf
  %spec.select420 = select i1 %.not365, i128 %i.gg, i128 0 ; 4 uses
  store i128 %spec.select420, ptr %2, align 16, !alias.scope !10504, !noalias !10507
  %extract.t = trunc i128 %spec.select420 to i64
  %extract = lshr i128 %spec.select420, 64
  %extract.t367.a = trunc nuw i128 %extract to i64
  %extract370 = lshr i128 %spec.select420, 96
  %extract.t371 = trunc nuw nsw i128 %extract370 to i64
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136: ; preds = %.lr.ph.split.i127.preheader, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123
  %.off0 = phi i64 [ %extract.t, %.lr.ph.split.i127.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit ], [ %extract.t366, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123 ] ; 2 uses
  %.off64 = phi i64 [ %extract.t367.a, %.lr.ph.split.i127.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit ], [ %extract.t369.a, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123 ]
  %.off96 = phi i64 [ %extract.t371, %.lr.ph.split.i127.preheader ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit136.loopexit ], [ %extract.t373, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit123 ]
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
  br i1 %.not12.i162, label %.lr.ph.split.us.i169.preheader, label %.lr.ph.split.i163.preheader

.lr.ph.split.i163.preheader:                      ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i160
  %.not11.i165 = icmp ult i64 %.sroa.0.0.i62259, 128
  br i1 %.not11.i165, label %bb.aa, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit313

.lr.ph.split.us.i169.preheader:                   ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i160
  store i128 0, ptr %3, align 16, !alias.scope !10523, !noalias !10526
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178

bb.aa:                                            ; preds = %.lr.ph.split.i163.preheader
  %i.ib = load i128, ptr %3, align 16, !alias.scope !10523, !noalias !10526, !noundef !5
  %i.ic = lshr i128 %i.ib, %i.ia
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit313

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit313: ; preds = %bb.aa, %.lr.ph.split.i163.preheader
  %.sroa.02.0.i166 = phi i128 [ 0, %.lr.ph.split.i163.preheader ], [ %i.ic, %bb.aa ] ; 2 uses
  store i128 %.sroa.02.0.i166, ptr %3, align 16, !alias.scope !10523, !noalias !10526
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178: ; preds = %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178_crit_edge, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit313, %.lr.ph.split.us.i169.preheader
  %i.id = phi i128 [ %.pre, %._RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178_crit_edge ], [ %.sroa.02.0.i166, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178.loopexit313 ], [ 0, %.lr.ph.split.us.i169.preheader ]
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
  %.not364 = icmp ugt i64 %i.ig, 127
  %i.in = shl i128 %i.if, %i.im
  %i.io = or i1 %.not18.i181, %.not364
  %spec.select421.sink = select i1 %i.io, i128 0, i128 %i.in ; 2 uses
  store i128 %spec.select421.sink, ptr %2, align 16, !alias.scope !10528, !noalias !10531
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit191

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left.exit191: ; preds = %.split.i180, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178
  %i.ip = phi i128 [ %i.if, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit178 ], [ %spec.select421.sink, %.split.i180 ] ; 2 uses
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
end_hunk_0
