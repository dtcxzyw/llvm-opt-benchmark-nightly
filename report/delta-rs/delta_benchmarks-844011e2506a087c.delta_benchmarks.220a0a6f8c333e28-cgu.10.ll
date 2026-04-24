inline.NumInlined: 5211
inline.NumDeleted: 2104
begin_hunk_0_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %5

bb.ab:                                            ; preds = %bb.z
  %i.cb = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.ac:                                            ; preds = %bb.ak, %.thread91, %.body
  %.sroa.012.0 = phi i1 [ %7, %.body ], [ true, %.thread91 ], [ true, %bb.ak ]
  %.sroa.014.1 = phi i1 [ %8, %.body ], [ true, %.thread91 ], [ true, %bb.ak ]
  %.pn77 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cq, %.thread91 ], [ %i.cu, %bb.ak ] ; 2 uses
  %i.cc = load i64, ptr %i.l, align 8, !range !18, !noundef !8
  %i.cd = icmp ne i64 %i.cc, -9223372036854775808
  %or.cond = select i1 %i.cd, i1 %.sroa.012.0, i1 false
  br i1 %or.cond, label %bb.ar, label %bb.t

5:                                                ; preds = %bb.aa, %bb.am, %bb.ag
  %.sroa.014.2 = phi i8 [ 0, %bb.am ], [ 1, %bb.ag ], [ 1, %bb.aa ]
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ae, %5, %bb.z
  %.sroa.014.2.lpad-body = phi i8 [ 1, %bb.z ], [ %.sroa.014.2, %5 ], [ 1, %bb.ae ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.z ], [ %6, %5 ], [ %i.cl, %bb.ae ]
  %7 = trunc nuw i8 %.sroa.014.2.lpad-body to i1
  %8 = icmp eq i8 %.sroa.014.2.lpad-body, 0
  br label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.aa
end_hunk_1
begin_hunk_2_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4s1dLWtJWRF_12clap_builder5error10ErrorInnerECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.e) #39
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cj, ptr noundef nonnull align 8 dereferenceable(256) %i.e, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cn = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error8with_cmdCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0)
          to label %bb.ah unwind label %5         ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
end_hunk_3
begin_hunk_4_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i8 2, ptr %i.f, align 8
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.ct, i8 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.ao unwind label %5

bb.an:                                            ; preds = %bb.ao, %bb.al
  %.sroa.0.0 = phi ptr [ %i.cx, %bb.ao ], [ %i.ct, %bb.al ]
end_hunk_4
