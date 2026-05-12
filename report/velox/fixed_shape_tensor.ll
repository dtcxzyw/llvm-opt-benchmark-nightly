inline.NumInlined: 3518
inline.NumDeleted: 1372
begin_hunk_0_@_ZN5arrow9extension20FixedShapeTensorType10MakeTensorERKSt10shared_ptrINS_15ExtensionScalarEE:bb.a
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !11   ; 4 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN5arrow9extension20FixedShapeTensorType10MakeTensorERKSt10shared_ptrINS_15ExtensionScalarEE:bb.a
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = icmp ugt i64 %i.as, %i.z
  br i1 %i.at, label %bb.m, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.au = sub nuw nsw i64 %i.as, %i.z             ; 3 uses
  %i.av = icmp samesign ult i64 %i.z, 1152921504606846976
  tail call void @llvm.assume(i1 %i.av)
  %13 = xor i64 %i.z, 1152921504606846975
  %14 = icmp ult i64 %13, %i.au
  br i1 %14, label %bb.n, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #24
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal7ArgSortIlSt7greaterIvEEESt6vectorIlSaIlEERKS4_IT_SaIS7_EEOT0_:bb.a
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %3 = xor i64 %i.ah, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt7greaterIvEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_T1_(ptr nonnull %i.j, ptr %.sink, i64 noundef %3, ptr nonnull %2, ptr nonnull %1)
          to label %.noexc12 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit

end_hunk_2
begin_hunk_3_@_ZNK5arrow9extension21FixedShapeTensorArray8ToTensorEv:bb.a
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !11  ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.f
end_hunk_3
begin_hunk_4_@_ZNK5arrow9extension21FixedShapeTensorArray8ToTensorEv:bb.a
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = add nsw i64 %i.bk, 1                    ; 4 uses
  %i.bm = icmp ugt i64 %i.bl, %i.ad
  br i1 %i.bm, label %bb.l, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.bn = sub nuw nsw i64 %i.bl, %i.ad            ; 3 uses
  %i.bo = icmp samesign ult i64 %i.ad, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bo)
  %15 = xor i64 %i.ad, 1152921504606846975
  %16 = icmp ult i64 %15, %i.bn
  br i1 %16, label %bb.m, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #24
end_hunk_4
