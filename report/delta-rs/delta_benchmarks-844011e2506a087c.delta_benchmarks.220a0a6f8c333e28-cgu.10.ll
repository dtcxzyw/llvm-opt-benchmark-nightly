inline.NumInlined: 5211
inline.NumDeleted: 2104
begin_hunk_0_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %.body

bb.ab:                                            ; preds = %bb.z
  %i.cb = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.ac:                                            ; preds = %bb.ak, %bb.ae, %bb.z, %.body, %.thread91
  %.sroa.012.0 = phi i1 [ true, %bb.ak ], [ true, %.thread91 ], [ true, %bb.z ], [ %.sroa.014.2, %.body ], [ true, %bb.ae ]
  %.sroa.014.1 = phi i1 [ true, %bb.ak ], [ true, %.thread91 ], [ false, %bb.z ], [ %5, %.body ], [ false, %bb.ae ]
  %.pn77 = phi { ptr, i32 } [ %i.cu, %bb.ak ], [ %i.cq, %.thread91 ], [ %i.ca, %bb.z ], [ %6, %.body ], [ %i.cl, %bb.ae ] ; 2 uses
  %i.cc = load i64, ptr %i.l, align 8, !range !18, !noundef !8
  %i.cd = icmp ne i64 %i.cc, -9223372036854775808
  %or.cond = and i1 %.sroa.012.0, %i.cd
  br i1 %or.cond, label %bb.ar, label %bb.t

.body:                                            ; preds = %bb.aa, %bb.am, %bb.ag
  %.sroa.014.2 = phi i1 [ false, %bb.am ], [ true, %bb.ag ], [ true, %bb.aa ]
  %5 = phi i1 [ true, %bb.am ], [ false, %bb.ag ], [ false, %bb.aa ]
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.aa
end_hunk_1
begin_hunk_2_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4s1dLWtJWRF_12clap_builder5error10ErrorInnerECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.e) #39
          to label %bb.ac unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cj, ptr noundef nonnull align 8 dereferenceable(256) %i.e, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cn = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error8with_cmdCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0)
          to label %bb.ah unwind label %.body     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
end_hunk_3
begin_hunk_4_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i8 2, ptr %i.f, align 8
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.ct, i8 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.ao unwind label %.body

bb.an:                                            ; preds = %bb.ao, %bb.al
  %.sroa.0.0 = phi ptr [ %i.cx, %bb.ao ], [ %i.ct, %bb.al ]
end_hunk_4
