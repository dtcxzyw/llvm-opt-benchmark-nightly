Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/set?download=true
inline.NumInlined: 715
inline.NumDeleted: 360
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_T0_T1_":bb.a

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i: ; preds = %bb.x
  %.val2.i56.i.i = load ptr, ptr %i.dc, align 8
  %.val.i57.i.i = load ptr, ptr %i.h, align 8
  %i.ev = tail call i32 @memcmp(ptr noundef readonly %.val.i57.i.i, ptr noundef readonly %.val2.i56.i.i, i64 noundef %.sroa.speculated.i.i.i.i54.i.i) #20 ; 2 uses
  %.not.i.i.i.i58.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i.i58.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit64.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i, %bb.x
  %i.ew = sub i64 %.val1.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i61.i.i = tail call i64 @llvm.smax.i64(i64 %i.ew, i64 -2147483648)
  %.08.i.i.i.i.i62.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i61.i.i, i64 2147483647)
  %.0.i6.i.i.i.i63.i.i = trunc nsw i64 %.08.i.i.i.i.i62.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit64.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit64.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i
  %.0.i.i.i.i59.i.i = phi i32 [ %i.ev, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i ], [ %.0.i6.i.i.i.i63.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i ]
  %i.ex = icmp slt i32 %.0.i.i.i.i59.i.i, 0
  br i1 %i.ex, label %bb.y, label %bb.af

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit64.i.i"
  %i.ey = load ptr, ptr %0, align 8, !tbaa !40    ; 3 uses
  %i.ez = icmp eq ptr %i.ey, %i.k
  br i1 %i.ez, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18

bb.z:                                             ; preds = %bb.y
  %i.fa = load i64, ptr %i.m, align 8, !tbaa !55  ; 8 uses
  %i.fb = icmp ult i64 %i.fa, 16
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = load ptr, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.l
  br i1 %i.fd, label %bb.aa, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i21

bb.aa:                                            ; preds = %bb.z
  %i.fe = icmp ult i64 %.val1.i.i.i, 16
  tail call void @llvm.assume(i1 %i.fe)
  %.not.i22 = icmp eq i64 %i.fa, 0
  %.not38.i23 = icmp eq i64 %.val1.i.i.i, 0       ; 2 uses
  br i1 %.not.i22, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not38.i23, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i25, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i24

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i24:     ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ff = add nuw nsw i64 %.val1.i.i.i, 1         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.ff, i1 false)
  %i.fg = add nuw nsw i64 %i.fa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.fg, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.ff, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  br i1 %.not38.i23, label %bb.ae, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i28

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i28:     ; preds = %bb.ac
  %i.fh = add nuw nsw i64 %.val1.i.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.fh, i1 false)
  %.pre52.i29 = load ptr, ptr %i.h, align 8, !tbaa !40
  %.pre51.i30 = load i64, ptr %i.i, align 8, !tbaa !55
  store i64 %.pre51.i30, ptr %i.m, align 8, !tbaa !55
  store i64 0, ptr %i.i, align 8, !tbaa !55
  store i8 0, ptr %.pre52.i29, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit31

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i25:     ; preds = %bb.ab
  %i.fi = add nuw nsw i64 %i.fa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.fi, i1 false)
  store i64 %i.fa, ptr %i.i, align 8, !tbaa !55
  store i64 0, ptr %i.m, align 8, !tbaa !55
  store i8 0, ptr %i.ey, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit31

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i21:     ; preds = %bb.z
  %i.fj = load i64, ptr %i.l, align 8, !tbaa !41
  %i.fk = add nuw nsw i64 %i.fa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.fk, i1 false)
  store ptr %i.fc, ptr %0, align 8, !tbaa !40
  store ptr %i.l, ptr %i.h, align 8, !tbaa !40
  store i64 %i.fj, ptr %i.k, align 8, !tbaa !41
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18: ; preds = %bb.y
  %i.fl = load i64, ptr %i.k, align 8, !tbaa !41
  %i.fm = load ptr, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.l
  br i1 %i.fn, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i19

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i20:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18
  %i.fo = icmp ult i64 %.val1.i.i.i, 16
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = add nuw nsw i64 %.val1.i.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.fp, i1 false)
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18
  %i.fq = load i64, ptr %i.l, align 8, !tbaa !41
  store i64 %i.fq, ptr %i.k, align 8, !tbaa !41
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i19, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i20
  %.sink61 = phi ptr [ %i.k, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i20 ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i19 ]
  store ptr %i.ey, ptr %i.h, align 8, !tbaa !40
  store ptr %.sink61, ptr %0, align 8, !tbaa !40
  store i64 %i.fl, ptr %i.l, align 8, !tbaa !41
  %.pre = load i64, ptr %i.m, align 8, !tbaa !55
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i21, %bb.ac, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i24
  %i.fr = phi i64 [ %.pre, %bb.ad ], [ %i.fa, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i21 ], [ 0, %bb.ac ], [ %i.fa, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i24 ]
  %i.fs = load i64, ptr %i.i, align 8, !tbaa !55
  store i64 %i.fs, ptr %i.m, align 8, !tbaa !55
  store i64 %i.fr, ptr %i.i, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit31: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i28, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i25, %bb.ae
  %i.ft = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.fu = load ptr, ptr %i.n, align 8, !tbaa !58
  store ptr %i.fu, ptr %i.j, align 8, !tbaa !58
  store ptr %i.ft, ptr %i.n, align 8, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.af:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit64.i.i"
  %.sroa.speculated.i.i.i.i67.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val3.i.i.i) ; 2 uses
  %i.fv = icmp eq i64 %.sroa.speculated.i.i.i.i67.i.i, 0
  br i1 %i.fv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i: ; preds = %bb.af
  %.val2.i69.i.i = load ptr, ptr %i.dc, align 8
  %.val.i70.i.i = load ptr, ptr %i.db, align 8
  %i.fw = tail call i32 @memcmp(ptr noundef readonly %.val.i70.i.i, ptr noundef readonly %.val2.i69.i.i, i64 noundef %.sroa.speculated.i.i.i.i67.i.i) #20 ; 2 uses
  %.not.i.i.i.i71.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i.i.i71.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit77.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i, %bb.af
  %i.fx = sub i64 %.val3.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i74.i.i = tail call i64 @llvm.smax.i64(i64 %i.fx, i64 -2147483648)
  %.08.i.i.i.i.i75.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i74.i.i, i64 2147483647)
  %.0.i6.i.i.i.i76.i.i = trunc nsw i64 %.08.i.i.i.i.i75.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit77.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit77.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i
  %.0.i.i.i.i72.i.i = phi i32 [ %i.fw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i ], [ %.0.i6.i.i.i.i76.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i ]
  %i.fy = icmp slt i32 %.0.i.i.i.i72.i.i, 0
  br i1 %i.fy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit77.i.i"
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.dc) #20
  %i.fz = getelementptr inbounds i8, ptr %storemerge55139, i64 -8 ; 2 uses
  %i.ga = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !58
  store ptr %i.gb, ptr %i.j, align 8, !tbaa !58
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.ah:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit77.i.i"
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.db) #20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.db, i64 32 ; 2 uses
  %i.gd = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !58
  store ptr %i.ge, ptr %i.j, align 8, !tbaa !58
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader": ; preds = %bb.ah, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit45, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader", %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit
  %.sroa.025.0.i.i = phi ptr [ %i.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit ], [ %i.h, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit ], [ %storemerge55139, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader" ]
  %.val3.i.i13.i = load i64, ptr %i.m, align 8, !tbaa !55 ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit.i20.i", %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i"
  %.sroa.025.1.i.i = phi ptr [ %.sroa.025.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i" ], [ %i.gk, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit.i20.i" ] ; 16 uses
  %i.gf = getelementptr i8, ptr %.sroa.025.1.i.i, i64 8
  %.val1.i.i14.i = load i64, ptr %i.gf, align 8, !tbaa !55 ; 7 uses
  %.sroa.speculated.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i13.i, i64 %.val1.i.i14.i) ; 2 uses
  %i.gg = icmp eq i64 %.sroa.speculated.i.i.i.i.i15.i, 0
  br i1 %i.gg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i: ; preds = %bb.ai
  %.val2.i.i17.i = load ptr, ptr %0, align 8
  %.val.i.i18.i = load ptr, ptr %.sroa.025.1.i.i, align 8
  %i.gh = tail call i32 @memcmp(ptr noundef readonly %.val.i.i18.i, ptr noundef readonly %.val2.i.i17.i, i64 noundef %.sroa.speculated.i.i.i.i.i15.i) #20 ; 2 uses
  %.not.i.i.i.i.i19.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i.i.i.i19.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit.i20.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i, %bb.ai
  %i.gi = sub i64 %.val1.i.i14.i, %.val3.i.i13.i
  %spec.select7.i.i.i.i.i.i23.i = tail call i64 @llvm.smax.i64(i64 %i.gi, i64 -2147483648)
  %.08.i.i.i.i.i.i24.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i23.i, i64 2147483647)
  %.0.i6.i.i.i.i.i25.i = trunc nsw i64 %.08.i.i.i.i.i.i24.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit.i20.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit.i20.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i
  %.0.i.i.i.i.i21.i = phi i32 [ %i.gh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i ], [ %.0.i6.i.i.i.i.i25.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i ]
  %i.gj = icmp slt i32 %.0.i.i.i.i.i21.i, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i, i64 40 ; 2 uses
  br i1 %i.gj, label %bb.ai, label %.preheader.i.i.preheader, !llvm.loop !171

.preheader.i.i.preheader:                         ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit.i20.i"
  %7 = getelementptr i8, ptr %.sroa.025.1.i.i, i64 8 ; 5 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit22.i.i"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit22.i.i" ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 6 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 10 uses
  %i.gl = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %.val3.i11.i.i = load i64, ptr %i.gl, align 8, !tbaa !55 ; 8 uses
  %.sroa.speculated.i.i.i.i12.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i11.i.i, i64 %.val3.i.i13.i) ; 2 uses
  %i.gm = icmp eq i64 %.sroa.speculated.i.i.i.i12.i.i, 0
  br i1 %i.gm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i18.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i: ; preds = %.preheader.i.i
  %.val2.i14.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8
  %.val.i15.i.i = load ptr, ptr %0, align 8
  %i.gn = tail call i32 @memcmp(ptr noundef readonly %.val.i15.i.i, ptr noundef readonly %.val2.i14.i.i, i64 noundef %.sroa.speculated.i.i.i.i12.i.i) #20 ; 2 uses
  %.not.i.i.i.i16.i.i = icmp eq i32 %i.gn, 0
  br i1 %.not.i.i.i.i16.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i18.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit22.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i18.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i, %.preheader.i.i
  %i.go = sub i64 %.val3.i.i13.i, %.val3.i11.i.i
  %spec.select7.i.i.i.i.i19.i.i = tail call i64 @llvm.smax.i64(i64 %i.go, i64 -2147483648)
  %.08.i.i.i.i.i20.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i19.i.i, i64 2147483647)
  %.0.i6.i.i.i.i21.i.i = trunc nsw i64 %.08.i.i.i.i.i20.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit22.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit22.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i18.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i
  %.0.i.i.i.i17.i.i = phi i32 [ %i.gn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i13.i.i ], [ %.0.i6.i.i.i.i21.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i18.i.i ]
  %i.gp = icmp slt i32 %.0.i.i.i.i17.i.i, 0
  br i1 %i.gp, label %.preheader.i.i, label %bb.aj, !llvm.loop !172

bb.aj:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit22.i.i"
  %i.gq = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %.not.i.i = icmp ult ptr %.sroa.025.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.ak, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEET_SO_SO_T0_.exit"

bb.ak:                                            ; preds = %bb.aj
  %i.gr = load ptr, ptr %.sroa.025.1.i.i, align 8, !tbaa !40 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i, i64 16 ; 11 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.gu = icmp ult i64 %.val1.i.i14.i, 16
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !40 ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 8 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %bb.am, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i

bb.am:                                            ; preds = %bb.al
  %i.gy = icmp ult i64 %.val3.i11.i.i, 16
  tail call void @llvm.assume(i1 %i.gy)
  %.not.i = icmp eq i64 %.val1.i.i14.i, 0
  %.not38.i = icmp eq i64 %.val3.i11.i.i, 0       ; 2 uses
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not38.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i:       ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.gz = add nuw nsw i64 %.val3.i11.i.i, 1       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.gw, i64 %i.gz, i1 false)
  %i.ha = add nuw nsw i64 %.val1.i.i14.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gw, ptr noundef nonnull align 8 dereferenceable(1) %i.gs, i64 %i.ha, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gs, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %i.gz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  br i1 %.not38.i, label %bb.aq, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i:       ; preds = %bb.ao
  %i.hb = add nuw nsw i64 %.val3.i11.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gs, ptr noundef nonnull align 8 dereferenceable(1) %i.gw, i64 %i.hb, i1 false)
  %.pre52.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !40
  %.pre51.i = load i64, ptr %i.gq, align 8, !tbaa !55
  store i64 %.pre51.i, ptr %7, align 8, !tbaa !55
  store i64 0, ptr %i.gq, align 8, !tbaa !55
  store i8 0, ptr %.pre52.i, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i:       ; preds = %bb.an
  %i.hc = add nuw nsw i64 %.val1.i.i14.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gw, ptr noundef nonnull align 8 dereferenceable(1) %i.gs, i64 %i.hc, i1 false)
  %.pre50.i = load ptr, ptr %.sroa.025.1.i.i, align 8, !tbaa !40
  %.pre.i17 = load i64, ptr %7, align 8, !tbaa !55
  store i64 %.pre.i17, ptr %i.gq, align 8, !tbaa !55
  store i64 0, ptr %7, align 8, !tbaa !55
  store i8 0, ptr %.pre50.i, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i:       ; preds = %bb.al
  %i.hd = load i64, ptr %i.gw, align 8, !tbaa !41
  %i.he = add nuw nsw i64 %.val1.i.i14.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gw, ptr noundef nonnull align 8 dereferenceable(1) %i.gs, i64 %i.he, i1 false)
  store ptr %i.gv, ptr %.sroa.025.1.i.i, align 8, !tbaa !40
  store ptr %i.gw, ptr %.sroa.0.1.i.i, align 8, !tbaa !40
  store i64 %i.hd, ptr %i.gs, align 8, !tbaa !41
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ak
  %i.hf = load i64, ptr %i.gs, align 8, !tbaa !41
  %i.hg = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !40 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 4 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hj = icmp ult i64 %.val3.i11.i.i, 16
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = add nuw nsw i64 %.val3.i11.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gs, ptr noundef nonnull align 8 dereferenceable(1) %i.hh, i64 %i.hk, i1 false)
  store ptr %i.gr, ptr %.sroa.0.1.i.i, align 8, !tbaa !40
  store ptr %i.gs, ptr %.sroa.025.1.i.i, align 8, !tbaa !40
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.hg, ptr %.sroa.025.1.i.i, align 8, !tbaa !40
  store ptr %i.gr, ptr %.sroa.0.1.i.i, align 8, !tbaa !40
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !41
  store i64 %i.hl, ptr %i.gs, align 8, !tbaa !41
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i
  store i64 %i.hf, ptr %i.hh, align 8, !tbaa !41
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i, %bb.ao, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i
  %i.hm = load i64, ptr %7, align 8, !tbaa !55
  %i.hn = load i64, ptr %i.gq, align 8, !tbaa !55
  store i64 %i.hn, ptr %7, align 8, !tbaa !55
  store i64 %i.hm, ptr %i.gq, align 8, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i, i64 32 ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !58
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !58
  store ptr %i.hr, ptr %i.ho, align 8, !tbaa !58
  store ptr %i.hq, ptr %i.hp, align 8, !tbaa !58
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i", !llvm.loop !173

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEET_SO_SO_T0_.exit": ; preds = %bb.aj
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_T0_T1_"(ptr %.sroa.025.1.i.i, ptr %storemerge55139, i64 noundef %i.cz)
  %i.hs = ptrtoint ptr %.sroa.025.1.i.i to i64
  %i.ht = sub i64 %i.hs, %i.d                     ; 3 uses
  %i.hu = icmp sgt i64 %i.ht, 640
  br i1 %i.hu, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_T0_.exit", !llvm.loop !168

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEET_SO_SO_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEElSC_NS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_T0_SP_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair", align 8        ; 12 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit
  %.051 = phi i64 [ %spec.select, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.051, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val1.i = load i64, ptr %i.i, align 8, !tbaa !55 ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i = load i64, ptr %i.j, align 8, !tbaa !55 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i, i64 %.val1.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph
  %.val2.i = load ptr, ptr %i.h, align 8
  %.val.i = load ptr, ptr %i.f, align 8
  %i.l = tail call i32 @memcmp(ptr noundef readonly %.val.i, ptr noundef readonly %.val2.i, i64 noundef %.sroa.speculated.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph
  %i.m = sub i64 %.val1.i, %.val3.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i, 0
  %spec.select = select i1 %i.n, i64 %i.g, i64 %i.e ; 5 uses
  %i.o = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select ; 10 uses
  %i.p = getelementptr inbounds [40 x i8], ptr %0, i64 %.051 ; 9 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !40   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  %i.v = icmp eq ptr %i.t, %i.u                   ; 2 uses
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"
  br i1 %i.v, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"
  br i1 %i.v, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !55   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %.not21.i.i = icmp eq i64 %spec.select, %.051
  br i1 %.not21.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit, label %bb.c, !prof !56

bb.c:                                             ; preds = %bb.b
  switch i64 %i.x, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.t, align 1, !tbaa !41
  store i8 %i.z, ptr %i.q, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
end_hunk_0
