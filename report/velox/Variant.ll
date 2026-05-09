inline.NumInlined: 5993
inline.NumDeleted: 1816
begin_hunk_0_@_ZN8facebook5velox16VariantConverter7convertILNS0_8TypeKindE7EEENS0_7VariantERKS4_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.e = load i8, ptr %i.c, align 1, !tbaa !123, !range !86, !noalias !124, !noundef !43
  %i.f = trunc nuw i8 %i.e to i1                  ; 5 uses
  %i.g = select i1 %i.f, ptr @.str.83, ptr @.str.84
  %i.h = select i1 %i.f, i64 4, i64 5             ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %.sroa.213, ptr noundef nonnull align 1 dereferenceable(4) %i.g, i64 %i.h, i1 false), !noalias !117
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, i64 4, i64 5
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.213, i64 %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !21, !alias.scope !120, !noalias !117
  %.sroa.213.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.213, i64 16
  store i8 1, ptr %.sroa.213.16..sroa_idx, align 8, !tbaa !125, !alias.scope !120, !noalias !117
  %2 = select i1 %i.f, i64 5, i64 6               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.215, ptr noundef nonnull align 8 dereferenceable(5) %.sroa.213, i64 %2, i1 false), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.213)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(4) %.sroa.215, i64 %i.h, i1 false), !noalias !117
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, i64 4, i64 5
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox16VariantConverter7convertILNS0_8TypeKindE7EEENS0_7VariantERKS4_:bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38, !noalias !117 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !13, !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.j, ptr noundef nonnull align 8 dereferenceable(5) %.sroa.2, i64 %2, i1 false), !noalias !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !18, !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.215)
end_hunk_1
begin_hunk_2_@_ZZN5folly2toIldEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35, !noalias !966
  store ptr %3, ptr %i.a, align 8, !tbaa !798, !noalias !966
  %i.f = load double, ptr %i.c, align 8, !tbaa !100, !noalias !966
  %i.g = fcmp olt double %i.f, 0.000000e+00       ; 2 uses
  %i.h = select i1 %i.g, i64 35, i64 34
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #38
          to label %.noexc.i.i unwind label %bb.a ; 2 uses

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %4 = select i1 %i.g, i64 34, i64 33
  store i8 0, ptr %i.i, align 1, !tbaa !21
  store ptr %i.i, ptr %3, align 8, !tbaa !27
  store i64 %4, ptr %i.d, align 8, !tbaa !21
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA2_cPKcA3_cdPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(2) @.str.102, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.103, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly6detail10errorValueIldEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit unwind label %bb.a

end_hunk_2
begin_hunk_3_@_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.bo = zext i1 %i.bm to i64
  %i.bp = add nuw i64 %i.bo, %i.bf                ; 3 uses
  %i.bq = icmp ne i64 %i.bn, 0                    ; 4 uses
  %i.br = icmp ugt i64 %i.bp, 999999999999999999  ; 3 uses
  %i.bs = mul nuw i64 %i.bp, 10
  %.0112 = select i1 %i.br, i32 19, i32 18        ; 4 uses
  %.0111 = select i1 %i.br, i64 %i.bp, i64 %i.bs  ; 3 uses
  br i1 %i.d, label %bb.k, label %bb.o

end_hunk_3
begin_hunk_4_@_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  br label %bb.au

.thread217:                                       ; preds = %bb.o
  %6 = select i1 %i.br, i32 18, i32 17
  %i.ja = add nsw i32 %.neg125, %6
  store i32 %i.ja, ptr %i.a, align 4, !tbaa !3
  br i1 %3, label %bb.av, label %bb.aw

end_hunk_4
