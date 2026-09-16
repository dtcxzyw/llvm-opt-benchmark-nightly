Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cp-502ba788104fae03.uu_cp.beafcee701a397b5-cgu.0?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1152
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvNtNtCsh036I4OHgIr_6uucore8features9safe_copy23create_dest_restrictiveRRNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp:bb.a
; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable14driftsort_mainTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB18_6string6StringEENCINvMNtB18_5sliceSBZ_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2H_7Options12from_matchess1_0E0IB14_BZ_EEB2H_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 8              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 166666)
  %..i5 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.c) ; 2 uses
  %..i6 = tail call noundef i64 @llvm.umax.i64(i64 %..i5, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %..i5, 85
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = mul nuw nsw i64 %..i6, 48                ; 3 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !1567
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #39, !noalias !1567 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTjReIBC_RNtNtBG_6string6StringEEEECsgn1j6LDYpaP_5uu_cp.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #43, !noalias !1568
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTjReIBC_RNtNtBG_6string6StringEEEECsgn1j6LDYpaP_5uu_cp.exit: ; preds = %bb.b
  %i.h = icmp samesign ult i64 %1, 65
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift4sortTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB15_6string6StringEENCINvMNtB15_5sliceSBW_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2E_7Options12from_matchess1_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %i.f, i64 noundef %..i6, i1 noundef zeroext %i.h, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #39
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !1569
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.i = icmp samesign ult i64 %1, 65
  call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift4sortTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB15_6string6StringEENCINvMNtB15_5sliceSBW_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2E_7Options12from_matchess1_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %i.a, i64 noundef 85, i1 noundef zeroext %i.i, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #39
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTjReIBC_RNtNtBG_6string6StringEEEECsgn1j6LDYpaP_5uu_cp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1d_6string6StringEENCINvMNtB1d_5sliceSB14_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2N_7Options12from_matchess1_0E0EB2N_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 24019198012642646) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3TjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB18_6string6StringEENCINvMNtB18_5sliceSBZ_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2H_7Options12from_matchess1_0E0EB2H_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1d_6string6StringEENCINvMNtB1d_5sliceSB14_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2N_7Options12from_matchess1_0E0EB2N_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b) #39
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1d_6string6StringEENCINvMNtB1d_5sliceSB14_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2N_7Options12from_matchess1_0E0EB2N_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b) #39
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1d_6string6StringEENCINvMNtB1d_5sliceSB14_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2N_7Options12from_matchess1_0E0EB2N_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b) #39
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3TjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB18_6string6StringEENCINvMNtB18_5sliceSBZ_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2H_7Options12from_matchess1_0E0EB2H_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3TjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB18_6string6StringEENCINvMNtB18_5sliceSBZ_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2H_7Options12from_matchess1_0E0EB2H_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 16
  %.sroa.0.0.val13 = load i64, ptr %i.n, align 8, !noundef !7 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 16
  %.sroa.04.0.val14 = load i64, ptr %i.o, align 8, !noundef !7 ; 2 uses
  %i.p = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 16
  %.sroa.08.0.val12 = load i64, ptr %i.q, align 8, !noundef !7 ; 2 uses
  %i.r = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1v_6string6StringEENCINvMNtB1v_5sliceSB1m_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB35_7Options12from_matchess1_0E0EB35_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.sroa.0.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %.idx = mul nuw nsw i64 %1, 48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1h_6string6StringEENCINvMNtB1h_5sliceSB18_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2R_7Options12from_matchess1_0E0EB2R_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1h_6string6StringEENCINvMNtB1h_5sliceSB18_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2R_7Options12from_matchess1_0E0EB2R_.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1h_6string6StringEENCINvMNtB1h_5sliceSB18_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2R_7Options12from_matchess1_0E0EB2R_.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 7 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1h_6string6StringEENCINvMNtB1h_5sliceSB18_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2R_7Options12from_matchess1_0E0EB2R_.exit ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.b = getelementptr i8, ptr %.pn3, i64 64
  %.val8.i = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 16
  %.val9.i = load i64, ptr %i.c, align 8, !noundef !7
  %i.d = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.d, label %bb.a, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1h_6string6StringEENCINvMNtB1h_5sliceSB18_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2R_7Options12from_matchess1_0E0EB2R_.exit

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04, i64 16, i1 false)
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i, i64 24, i1 false)
  %.sroa.0.0.i1 = getelementptr inbounds i8, ptr %.sroa.0.04, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i1, i64 48, i1 false)
  %i.e = icmp eq ptr %.sroa.0.0.i1, %0
  br i1 %i.e, label %._crit_edge6, label %.lr.ph5

bb.b:                                             ; preds = %.lr.ph5
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i, i64 48, i1 false)
  %i.f = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.f, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %.sroa.0.0.i1, %bb.a ] ; 5 uses
  %.sroa.4.0.i2 = phi ptr [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.0.04, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.4.0.i2, i64 -80
  %.val7.i = load i64, ptr %i.g, align 8, !noundef !7
  %i.h = icmp ult i64 %.val8.i, %.val7.i
  br i1 %i.h, label %bb.b, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.b, %.lr.ph5, %bb.a
  %.sroa.4.0.i.lcssa = phi ptr [ %.sroa.0.04, %bb.a ], [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.4.0.i2, %.lr.ph5 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %.lr.ph5 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !1574
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.4.0.i.lcssa, i64 -32
  store i64 %.val8.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1574
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.4.0.i.lcssa, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !1574
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1h_6string6StringEENCINvMNtB1h_5sliceSB18_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2R_7Options12from_matchess1_0E0EB2R_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1h_6string6StringEENCINvMNtB1h_5sliceSB18_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2R_7Options12from_matchess1_0E0EB2R_.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 48 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift4sortTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB15_6string6StringEENCINvMNtB15_5sliceSBW_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2E_7Options12from_matchess1_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1) #39
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread94, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 64
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !1610, !noalias !1611, !noundef !7 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !1610, !noalias !1611, !noundef !7
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread94, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !1610, !noalias !1611, !noundef !7 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !1610, !noalias !1611, !noundef !7 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.aa = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond75.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i, label %.lr.ph55

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.preheader.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1e_6string6StringEENCINvMNtB1e_5sliceSB15_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2O_7Options12from_matchess1_0E0EB2O_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #40, !inline_history !1579
  %i.ad = shl nuw nsw i64 %..i35, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612), !noalias !1611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1613), !noalias !1611
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.preheader.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread94, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread94 ]
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1b_6string6StringEENCINvMNtB1b_5sliceSB12_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2L_7Options12from_matchess1_0E0EB2L_.exit.i.thread94 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ax, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.i.i ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 4 uses
  %i.am = getelementptr [48 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !1614, !noalias !1615
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !1616, !noalias !1617
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !1614, !noalias !1615
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !1616, !noalias !1617
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !1618, !noalias !1615
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !1619, !noalias !1617
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !1618, !noalias !1615
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !1619, !noalias !1617
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !1620, !noalias !1615
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !1621, !noalias !1617
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !1620, !noalias !1615
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !1621, !noalias !1617
  %i.ax = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE12split_at_mutCsgn1j6LDYpaP_5uu_cp.exit11.i.i

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1c_6string6StringEENCINvMNtB1c_5sliceSB13_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2M_7Options12from_matchess1_0E0EB2M_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtBD_6string6StringEE7reverseCsgn1j6LDYpaP_5uu_cp.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ba = sub nsw i64 %factor, %i.ay
  %i.bb = add nuw nsw i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1f_6string6StringEENCINvMNtB1f_5sliceSB16_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2P_7Options12from_matchess1_0E0EB2P_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bh, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1f_6string6StringEENCINvMNtB1f_5sliceSB16_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2P_7Options12from_matchess1_0E0EB2P_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1f_6string6StringEENCINvMNtB1f_5sliceSB16_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2P_7Options12from_matchess1_0E0EB2P_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1f_6string6StringEENCINvMNtB1f_5sliceSB16_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2P_7Options12from_matchess1_0E0EB2P_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1f_6string6StringEENCINvMNtB1f_5sliceSB16_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2P_7Options12from_matchess1_0E0EB2P_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1f_6string6StringEENCINvMNtB1f_5sliceSB16_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2P_7Options12from_matchess1_0E0EB2P_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !7 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.159 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.159
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.by = shl nuw nsw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1f_6string6StringEENCINvMNtB1f_5sliceSB16_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2P_7Options12from_matchess1_0E0EB2P_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bu, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1e_6string6StringEENCINvMNtB1e_5sliceSB15_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2O_7Options12from_matchess1_0E0EB2O_(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 192153584101141163) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #40, !inline_history !1598
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1e_6string6StringEENCINvMNtB1e_5sliceSB15_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2O_7Options12from_matchess1_0E0EB2O_(ptr noalias nofree noundef nonnull align 8 %i.ce, i64 noundef range(i64 0, 192153584101141163) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #40, !inline_history !1598
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB16_6string6StringEENCINvMNtB16_5sliceSBX_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2F_7Options12from_matchess1_0E0EB2F_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.cm = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cm, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB16_6string6StringEENCINvMNtB16_5sliceSBX_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB2F_7Options12from_matchess1_0E0EB2F_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cn, ptr %i.bs
  %i.co = mul nuw nsw i64 %..i.i, 48              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.co, i1 false), !alias.scope !1624
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.co ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cq = phi ptr [ %i.dc, %.preheader.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %i.cr = phi ptr [ %i.da, %.preheader.i ], [ %i.cn, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cu, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -48 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -48 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -48 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cq, i64 -32
  %.val.i.i = load i64, ptr %i.cv, align 8, !alias.scope !1623, !noalias !1625, !noundef !7
  %i.cw = getelementptr i8, ptr %i.cr, i64 -32
  %.val12.i.i = load i64, ptr %i.cw, align 8, !alias.scope !1622, !noalias !1626, !noundef !7
  %i.cx = icmp ult i64 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i16.i = select i1 %i.cx, ptr %i.cs, ptr %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %..i16.i, i64 48, i1 false), !alias.scope !1624, !noalias !1627
  %i.cy = xor i1 %i.cx, true
  %i.cz = zext i1 %i.cy to i64
  %i.da = getelementptr inbounds nuw [48 x i8], ptr %i.cs, i64 %i.cz ; 3 uses
  %i.db = zext i1 %i.cx to i64
  %i.dc = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %i.db ; 3 uses
  %i.dd = icmp eq ptr %i.da, %i.bs
  %i.de = icmp eq ptr %i.dc, %2
  %or.cond.i.i = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5mergeINtB3_10MergeStateTjReINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtB1j_6string6StringEEE10merge_downNCINvMNtB1j_5sliceSB1a_11sort_by_keyjNCNvMsf_Csgn1j6LDYpaP_5uu_cpNtB36_7Options12from_matchess1_0E0EB36_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.df = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %i.bs, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.do, %.lr.ph.i.i ], [ %i.cn, %.critedge.i ] ; 3 uses
  %i.dg = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dh = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val.i.i = load i64, ptr %i.dh, align 8, !alias.scope !1622, !noalias !1628, !noundef !7
  %i.di = getelementptr i8, ptr %i.dg, i64 16
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs7tKScEop1B6_5alloc3stre12to_lowercase

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features14backup_control21determine_backup_mode(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvNtNtCsh036I4OHgIr_6uucore8features14update_control21determine_update_mode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features14backup_control23determine_backup_suffix(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8index_of(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches10indices_of(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvCsh036I4OHgIr_6uucore8read_yes() unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #28

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #30

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_CsdCydk8Dt9Am_7walkdirNtB5_8IntoIterNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(176)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsi_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtCs6JMX4GRUq9U_4core3fmtcNtB5_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsdCydk8Dt9Am_7walkdir5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs6JMX4GRUq9U_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXs4_NtNtCs2vKOLqTMYjT_3std2io4pipeRNtB5_10PipeReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #2

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketuEE9drop_slowCs6Mg6kPLyuSp_9indicatif(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEE9drop_slowB1z_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs2vKOLqTMYjT_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcTINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexbENtNtBM_7condvar7CondvarEE9drop_slowCs6Mg6kPLyuSp_9indicatif(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs6JMX4GRUq9U_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser15possible_values(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1u_NtCs2vKOLqTMYjT_3std4pathNtB6_16StripPrefixErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXNtNtNtCs2vKOLqTMYjT_3std2os4unix2fsNtNtB8_2fs4FileNtB2_7FileExt8write_at(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXNtNtNtCs2vKOLqTMYjT_3std2os4unix2fsNtNtB8_2fs4FileNtB2_7FileExt7read_at(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #28

attributes #0 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold minsize nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #25 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #33 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #39 = { nounwind }
attributes #40 = { noinline nounwind }
attributes #41 = { noinline noreturn nounwind }
attributes #42 = { inlinehint nounwind }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!6 = !{i64 -1, i64 -9223372036854775808}
!7 = !{}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{i64 0, i64 2}
!12 = !{i64 50784011147307971}
!13 = !{i16 0, i16 2}
!14 = !{i64 8}
!15 = !{i64 1, i64 536870913}
!16 = !{!"branch_weights", i32 1, i32 1999}
!17 = !{!"branch_weights", i32 0, i32 1}
!18 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!19 = !{!"branch_weights", i32 2002, i32 2000}
!20 = !{i64 -2, i64 -9223372036854775797}
!21 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!22 = !{i8 0, i8 2}
!23 = !{!"branch_weights", i32 4000000, i32 4001}
!24 = !{i64 -2, i64 -9223372036854775808}
!25 = !{i64 -1, i64 -9223372036854775797}
!26 = !{i64 50781812124051907}
!27 = !{!"branch_weights", i32 1, i32 4001}
!28 = !{i32 0, i32 2}
!29 = !{i32 0, i32 -1}
!30 = !{i64 0, i64 3}
!31 = !{i64 50777757674923539}
!32 = !{!"branch_weights", i32 4001, i32 4000000}
!33 = !{i8 0, i8 44}
!34 = !{i8 -1, i8 10}
!35 = !{i8 0, i8 3}
!36 = !{i64 0, i64 -9223372036854775807}
!37 = !{i64 4}
!38 = !{i8 0, i8 4}
!39 = !{i8 0, i8 5}
!40 = !{i8 0, i8 8}
!41 = !{i64 50773054685733324}
!42 = !{!"address", !"read_provenance"}
!43 = distinct !{!43, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringNtBZ_8NulErrorEECsgn1j6LDYpaP_5uu_cp"}
!44 = distinct !{!44, !43, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringNtBZ_8NulErrorEECsgn1j6LDYpaP_5uu_cp: argument 0"}
!45 = distinct !{!45, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsgn1j6LDYpaP_5uu_cp"}
!46 = distinct !{!46, !45, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!47 = !{!44}
!48 = !{!46}
!49 = !{!46, !44}
!50 = distinct !{!50, !"_RNCINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathE0Csgn1j6LDYpaP_5uu_cp"}
!51 = distinct !{!51, !50, !"_RNCINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathE0Csgn1j6LDYpaP_5uu_cp: argument 1"}
!52 = distinct !{!52, !50, !"_RNCINvNtNtCsqsXNUdQJE7_3nix3sys4stat5mknodNtNtCs2vKOLqTMYjT_3std4path4PathE0Csgn1j6LDYpaP_5uu_cp: argument 0"}
!53 = distinct !{!53, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringNtBZ_8NulErrorEECsgn1j6LDYpaP_5uu_cp"}
!54 = distinct !{!54, !53, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringNtBZ_8NulErrorEECsgn1j6LDYpaP_5uu_cp: argument 0"}
!55 = distinct !{!55, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsgn1j6LDYpaP_5uu_cp"}
!56 = distinct !{!56, !55, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECsgn1j6LDYpaP_5uu_cp: argument 0"}
!57 = !{!52, !51}
!58 = !{!52}
!59 = !{!54}
!60 = !{!56}
!61 = !{!56, !54}
!62 = distinct !{!62, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECsgn1j6LDYpaP_5uu_cp"}
!63 = distinct !{!63, !62, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!64 = distinct !{!64, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECsgn1j6LDYpaP_5uu_cp"}
!65 = distinct !{!65, !64, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!66 = distinct !{!66, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Csgn1j6LDYpaP_5uu_cp"}
!67 = distinct !{!67, !66, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Csgn1j6LDYpaP_5uu_cp: argument 0"}
!68 = distinct !{!68, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp"}
!69 = distinct !{!69, !68, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp: argument 0"}
!70 = distinct !{!70, !64, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECsgn1j6LDYpaP_5uu_cp: argument 1"}
!71 = distinct !{!71, !68, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp: argument 1"}
!72 = distinct !{!72, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!73 = distinct !{!73, !72, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!74 = distinct !{!74, !72, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!75 = distinct !{!75, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Csgn1j6LDYpaP_5uu_cp"}
!76 = distinct !{!76, !75, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Csgn1j6LDYpaP_5uu_cp: argument 0"}
!77 = distinct !{!77, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp"}
!78 = distinct !{!78, !77, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp: argument 0"}
!79 = distinct !{!79, !77, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp: argument 1"}
!80 = distinct !{!80, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!81 = distinct !{!81, !80, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!82 = distinct !{!82, !80, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!83 = distinct !{!83, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsgn1j6LDYpaP_5uu_cp"}
!84 = distinct !{!84, !83, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsgn1j6LDYpaP_5uu_cp: argument 0"}
!85 = distinct !{!85, !83, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsgn1j6LDYpaP_5uu_cp: argument 1"}
!86 = !{!63}
!87 = !{!65}
!88 = !{!67}
!89 = !{!69}
!90 = !{!69, !67, !65, !63}
!91 = !{!71, !70}
!92 = !{!74, !73}
!93 = !{!69, !71, !67, !65, !70, !63}
!94 = !{!76}
!95 = !{!78}
!96 = !{!78, !76, !65, !63}
!97 = !{!79, !70}
!98 = !{!82, !81}
!99 = !{!78, !79, !76, !65, !70, !63}
!100 = !{!84}
!101 = !{!85}
!102 = distinct !{!102, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECsgn1j6LDYpaP_5uu_cp"}
!103 = distinct !{!103, !102, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!104 = distinct !{!104, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECsgn1j6LDYpaP_5uu_cp"}
!105 = distinct !{!105, !104, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!106 = distinct !{!106, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Csgn1j6LDYpaP_5uu_cp"}
!107 = distinct !{!107, !106, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Csgn1j6LDYpaP_5uu_cp: argument 0"}
!108 = distinct !{!108, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp"}
!109 = distinct !{!109, !108, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp: argument 0"}
!110 = distinct !{!110, !104, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECsgn1j6LDYpaP_5uu_cp: argument 1"}
!111 = distinct !{!111, !108, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp: argument 1"}
!112 = distinct !{!112, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!113 = distinct !{!113, !112, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!114 = distinct !{!114, !112, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!115 = distinct !{!115, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Csgn1j6LDYpaP_5uu_cp"}
!116 = distinct !{!116, !115, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Csgn1j6LDYpaP_5uu_cp: argument 0"}
!117 = distinct !{!117, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp"}
!118 = distinct !{!118, !117, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp: argument 0"}
!119 = distinct !{!119, !117, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCsgn1j6LDYpaP_5uu_cp: argument 1"}
!120 = distinct !{!120, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!121 = distinct !{!121, !120, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!122 = distinct !{!122, !120, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!123 = distinct !{!123, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsgn1j6LDYpaP_5uu_cp"}
!124 = distinct !{!124, !123, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsgn1j6LDYpaP_5uu_cp: argument 0"}
!125 = distinct !{!125, !123, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsgn1j6LDYpaP_5uu_cp: argument 1"}
!126 = !{!103}
!127 = !{!105}
!128 = !{!107}
!129 = !{!109}
!130 = !{!109, !107, !105, !103}
!131 = !{!111, !110}
!132 = !{!114, !113}
!133 = !{!109, !111, !107, !105, !110, !103}
!134 = !{!116}
!135 = !{!118}
!136 = !{!118, !116, !105, !103}
!137 = !{!119, !110}
!138 = !{!122, !121}
!139 = !{!118, !119, !116, !105, !110, !103}
!140 = !{!124}
!141 = !{!125}
!142 = distinct !{!142, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECsgn1j6LDYpaP_5uu_cp"}
!143 = distinct !{!143, !142, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
!144 = distinct !{!144, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECsgn1j6LDYpaP_5uu_cp"}
!145 = distinct !{!145, !144, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECsgn1j6LDYpaP_5uu_cp: argument 0"}
end_hunk_1
