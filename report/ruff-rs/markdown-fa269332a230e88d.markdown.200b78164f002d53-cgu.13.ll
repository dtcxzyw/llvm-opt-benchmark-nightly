Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.13?download=true
inline.NumInlined: 109
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEBF_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit: ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body14 unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event4NameEEB1b_.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

.body14:                                          ; preds = %bb.q, %bb.n, %.body12
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body12 ], [ %i.t, %bb.q ], [ %i.q, %bb.n ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 520
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.s) #16
          to label %.body16 unwind label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body14

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event4NameEEB1b_.exit: ; preds = %bb.o
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event4NameEEB1b_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body16 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event4NameEEB1b_.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_.exit unwind label %bb.t

.body16:                                          ; preds = %bb.t, %bb.r, %.body14
  %.pn6 = phi { ptr, i32 } [ %.pn4, %.body14 ], [ %i.y, %bb.t ], [ %i.v, %bb.r ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 544
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.x) #16
          to label %.body18 unwind label %bb.y

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body16

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body18 unwind label %bb.w

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

.body18:                                          ; preds = %bb.x, %bb.u, %.body16
  %.pn8 = phi { ptr, i32 } [ %.pn6, %.body16 ], [ %i.ac, %bb.x ], [ %i.aa, %bb.u ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer13TokenizeStateEBF_(ptr noalias noundef align 8 dereferenceable(424) %0) #16
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body18

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_.exit: ; preds = %bb.v
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer13TokenizeStateEBF_(ptr noalias noundef align 8 dereferenceable(424) %0)
  ret void

bb.y:                                             ; preds = %.body18, %.body16, %.body14, %.body12, %.body10, %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.z:                                             ; preds = %.body18
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2KzzoC5ewhj_8markdown4util8edit_map7EditMapEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTjjINtNtBG_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1B_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTjjINtNtBG_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1B_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjIBC_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEEEB1i_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.06.i = phi i64 [ %.sroa.05.0.i, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.06.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.d, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.05.0.i = add i64 %.sroa.0.06.i, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.05.0.i, %1
  br i1 %exitcond.not, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit, label %.lr.ph.i

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %2, %bb.a ], [ %1, %bb.b ], [ %.sroa.0.06.i, %.lr.ph.i ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip3opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph.split.us.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.lr.ph.split.us.i:                                ; preds = %bb.a, %.loopexit.split.us.us.i
  %.sroa.0.031.us.i = phi i64 [ %.lcssa, %.loopexit.split.us.us.i ], [ %2, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.031.us.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.d, label %bb.b, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !7, !alias.scope !33, !noalias !34, !noundef !4
  %.not.us.i = icmp eq i8 %i.f, 0
  br i1 %.not.us.i, label %.split.us.us.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.split.us.us.i:                                   ; preds = %bb.b
  %.sroa.021.0.us.i = add nuw nsw i64 %.sroa.0.031.us.i, 1 ; 4 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, 115292150460684698) %1, i64 %.sroa.021.0.us.i) ; 3 uses
  %exitcond.not.i.peel.not = icmp ult i64 %.sroa.021.0.us.i, %1
  br i1 %exitcond.not.i.peel.not, label %bb.c, label %.split29.us.i

bb.c:                                             ; preds = %.split.us.us.i
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.021.0.us.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !7, !alias.scope !33, !noalias !34, !noundef !4
  %5 = icmp ne i8 %i.i, 0                         ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.031.us.i, 2     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 73
  %i.l = load i8, ptr %i.k, align 1, !range !8, !alias.scope !33, !noalias !34, !noundef !4
  %i.m = load i8, ptr %i.c, align 1, !range !8, !alias.scope !33, !noalias !34, !noundef !4 ; 2 uses
  %i.n = icmp eq i8 %i.l, %i.m
  %or.cond.us.us.i.peel = and i1 %i.n, %5
  br i1 %or.cond.us.us.i.peel, label %.loopexit.split.us.us.i, label %.peel.next

.peel.next:                                       ; preds = %bb.c
  %exitcond.not.i16 = icmp eq i64 %1, %i.j
  br i1 %exitcond.not.i16, label %.split29.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next
  %.sroa.022.0.us.us.i.peel = select i1 %5, i32 0, i32 2
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not.i = icmp eq i64 %i.r, %umax.i
  br i1 %exitcond.not.i, label %.split29.us.i, label %bb.e, !llvm.loop !32

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.1.us.us.i18 = phi i64 [ %i.j, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.015.1.us.us.i17 = phi i32 [ %.sroa.022.0.us.us.i.peel, %.lr.ph ], [ %.sroa.022.0.us.us.i, %bb.d ]
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.1.us.us.i18 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load i8, ptr %i.p, align 8, !range !7, !alias.scope !33, !noalias !34, !noundef !4
  %6 = icmp eq i8 %i.q, 0
  %.sroa.022.0.v.us.us.i = select i1 %6, i32 1, i32 -1
  %.sroa.022.0.us.us.i = add i32 %.sroa.022.0.v.us.us.i, %.sroa.015.1.us.us.i17 ; 2 uses
  %i.r = add i64 %.sroa.0.1.us.us.i18, 1          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 73
  %i.t = load i8, ptr %i.s, align 1, !range !8, !alias.scope !33, !noalias !34, !noundef !4
  %i.u = icmp eq i8 %i.t, %i.m
  %i.v = icmp eq i32 %.sroa.022.0.us.us.i, 0
  %or.cond.us.us.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.us.us.i, label %.loopexit.split.us.us.i, label %bb.d, !llvm.loop !32

.loopexit.split.us.us.i:                          ; preds = %bb.e, %bb.c
  %.lcssa = phi i64 [ %i.j, %bb.c ], [ %i.r, %bb.e ] ; 3 uses
  %i.w = icmp ult i64 %.lcssa, %1
  br i1 %i.w, label %.lr.ph.split.us.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.split29.us.i:                                    ; preds = %.split.us.us.i, %.peel.next, %bb.d
  %umax.i.lcssa = phi i64 [ %umax.i, %bb.d ], [ %.sroa.021.0.us.i, %.split.us.us.i ], [ %umax.i, %.peel.next ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i.lcssa, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit: ; preds = %.lr.ph.split.us.i, %bb.b, %.loopexit.split.us.us.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %2, %bb.a ], [ %.lcssa, %.loopexit.split.us.us.i ], [ %.sroa.0.031.us.i, %.lr.ph.split.us.i ], [ %.sroa.0.031.us.i, %bb.b ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_back(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.06.i = phi i64 [ %.sroa.05.0.i, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.06.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.d, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.05.0.i = add nsw i64 %.sroa.0.06.i, -1   ; 3 uses
  %i.e = icmp ult i64 %.sroa.05.0.i, %1
  br i1 %i.e, label %.lr.ph.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_impl.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %2, %bb.a ], [ %.sroa.05.0.i, %bb.b ], [ %.sroa.0.06.i, %.lr.ph.i ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip8opt_back(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, %1
  br i1 %i.a, label %.lr.ph.split.i.preheader, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.lr.ph.split.i.preheader:                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.d, label %.lr.ph, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.loopexit.split.i:                                ; preds = %bb.d, %bb.b
  %spec.select.i.lcssa = phi i64 [ %spec.select.i.peel, %bb.b ], [ %spec.select.i, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %spec.select.i.lcssa
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 73 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
  br i1 %i.g, label %.lr.ph, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit

.lr.ph:                                           ; preds = %.lr.ph.split.i.preheader, %.loopexit.split.i
  %i.h = phi ptr [ %i.f, %.loopexit.split.i ], [ %i.c, %.lr.ph.split.i.preheader ]
  %.sroa.0.031.i2 = phi i64 [ %spec.select.i.lcssa, %.loopexit.split.i ], [ %2, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.031.i2
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load i8, ptr %i.j, align 8, !range !7, !alias.scope !39, !noalias !40, !noundef !4
  %.not.i.not = icmp eq i8 %i.k, 0
  br i1 %.not.i.not, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit, label %.split.i

.split.i:                                         ; preds = %.lr.ph
  %.sroa.021.0.i = add nsw i64 %.sroa.0.031.i2, -1 ; 4 uses
  %i.l = icmp ult i64 %.sroa.021.0.i, %1
  br i1 %i.l, label %bb.b, label %.split29.us.i

bb.b:                                             ; preds = %.split.i
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.021.0.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load i8, ptr %i.n, align 8, !range !7, !alias.scope !39, !noalias !40, !noundef !4
  %.not.peel = icmp eq i8 %i.o, 0                 ; 2 uses
  %spec.select.i.peel = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.021.0.i, i64 1) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 73
  %i.q = load i8, ptr %i.p, align 1, !range !8, !alias.scope !39, !noalias !40, !noundef !4
  %i.r = load i8, ptr %i.h, align 1, !range !8, !alias.scope !39, !noalias !40, !noundef !4 ; 2 uses
  %i.s = icmp eq i8 %i.q, %i.r
  %or.cond.i.peel = and i1 %i.s, %.not.peel
  br i1 %or.cond.i.peel, label %.loopexit.split.i, label %.peel.next

.peel.next:                                       ; preds = %bb.b
  %.sroa.022.0.i.peel = select i1 %.not.peel, i32 0, i32 2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.peel.next
  %.sroa.015.1.i = phi i32 [ %.sroa.022.0.i.peel, %.peel.next ], [ %.sroa.022.0.i, %bb.d ]
  %.sroa.0.1.i = phi i64 [ %spec.select.i.peel, %.peel.next ], [ %spec.select.i, %bb.d ] ; 4 uses
  %i.t = icmp ult i64 %.sroa.0.1.i, %1
  br i1 %i.t, label %bb.d, label %.split29.us.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.1.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load i8, ptr %i.v, align 8, !range !7, !alias.scope !39, !noalias !40, !noundef !4
  %.not = icmp eq i8 %i.w, 0
  %.sroa.022.0.v.i = select i1 %.not, i32 -1, i32 1
  %.sroa.022.0.i = add i32 %.sroa.022.0.v.i, %.sroa.015.1.i ; 2 uses
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.1.i, i64 1) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 73
  %i.y = load i8, ptr %i.x, align 1, !range !8, !alias.scope !39, !noalias !40, !noundef !4
  %i.z = icmp eq i8 %i.y, %i.r
  %i.aa = icmp eq i32 %.sroa.022.0.i, 0
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %.loopexit.split.i, label %bb.c, !llvm.loop !38

.split29.us.i:                                    ; preds = %.split.i, %bb.c
  %.sroa.0.1.i.lcssa = phi i64 [ %.sroa.0.1.i, %bb.c ], [ %.sroa.021.0.i, %.split.i ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1.i.lcssa, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip13skip_opt_impl.exit: ; preds = %.lr.ph, %.loopexit.split.i, %.lr.ph.split.i.preheader, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %2, %bb.a ], [ %2, %.lr.ph.split.i.preheader ], [ %.sroa.0.031.i2, %.lr.ph ], [ %spec.select.i.lcssa, %.loopexit.split.i ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct14thematic_break5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  %i.h = load i8, ptr %i.g, align 1, !range !7, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef -88)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.k = load i8, ptr %i.j, align 8, !range !7, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d, %bb.e
  %.sink1 = phi i16 [ 345, %bb.e ], [ 364, %bb.d ], [ 364, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink1, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i64 [ -9223372036854775805, %bb.a ], [ -9223372036854775807, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.o = load i8, ptr %i.n, align 1, !noundef !4
  switch i8 %i.o, label %.sink.split [
    i8 9, label %bb.e
    i8 32, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 364, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775805, ptr %i.a, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !5, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 37
  %i.u = load i8, ptr %i.t, align 1, !range !7, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1
  %. = select i1 %i.v, i64 3, i64 -1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 %., ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 -92, ptr %i.aa, align 1
  br label %.sink.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct14thematic_break6before(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(664) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.e = load i8, ptr %i.d, align 1, !noundef !4  ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 42, label %bb.c
    i8 45, label %bb.c
    i8 95, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 366, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i64 [ -9223372036854775807, %bb.c ], [ -9223372036854775805, %bb.b ], [ -9223372036854775805, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct14thematic_break8at_break(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = icmp eq i8 %i.g, %i.b
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = icmp ult i64 %i.j, 3
  %i.l = icmp ne i8 %i.g, 10
  %or.cond7.not = select i1 %i.e, i1 %i.l, i1 false
  %or.cond9 = select i1 %i.k, i1 true, i1 %or.cond7.not
  store i8 0, ptr %i.a, align 8
  store i64 0, ptr %i.i, align 8
  br i1 %or.cond9, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef -87)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 365, ptr %i.m, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef -88)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 653
  store i8 0, ptr %i.n, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.sink = phi i64 [ -9223372036854775807, %bb.c ], [ -9223372036854775806, %bb.d ], [ -9223372036854775805, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct14thematic_break8sequence(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.d = load i8, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, %i.d
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  switch i8 %i.i, label %bb.e [
    i8 9, label %bb.f
    i8 32, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef -87)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.d
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef -87)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 366, ptr %i.n, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775805, ptr %i.a, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 -1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 -92, ptr %i.s, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.sink4 = phi i16 [ 366, %bb.e ], [ 345, %bb.f ], [ 365, %bb.c ]
  %.sink = phi i64 [ -9223372036854775807, %bb.e ], [ -9223372036854775807, %bb.f ], [ -9223372036854775808, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink4, ptr %i.t, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct23gfm_footnote_definition10cont_start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 121, ptr %i.c, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 122, ptr %i.d, align 8
  store i64 -9223372036854775808, ptr %i.a, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 11, ptr %i.e, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct23gfm_footnote_definition11label_after(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.g = load i8, ptr %i.f, align 8, !range !7, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 58
  %or.cond = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 9 uses
  %i.p = icmp ult i64 %i.o, 115292150460684698
  tail call void @llvm.assume(i1 %i.p)
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_back.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.q = add nsw i64 %i.o, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.d
  %.sroa.0.06.i.i = phi i64 [ %.sroa.05.0.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.0.06.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 73
  %i.t = tail call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef range(i64 0, -9223372036854775808) 1)
  br i1 %i.t, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_back.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %.sroa.05.0.i.i = add nsw i64 %.sroa.0.06.i.i, -1 ; 3 uses
  %i.u = icmp ult i64 %.sroa.05.0.i.i, %i.o
  br i1 %i.u, label %.lr.ph.i.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_back.exit

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_back.exit: ; preds = %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.0.0.lcssa.i.i = phi i64 [ -1, %bb.c ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.05.0.i.i, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.ab = icmp ult i64 %.sroa.0.0.lcssa.i.i, %i.o
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_back.exit
  %i.ac = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.0.0.lcssa.i.i ; 2 uses
  %.sroa.0.08.i = add nsw i64 %.sroa.0.0.lcssa.i.i, -1 ; 3 uses
  %i.ad = icmp ult i64 %.sroa.0.08.i, %i.o
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 73
  br label %bb.g

bb.f:                                             ; preds = %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip7to_back.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i.i, i64 noundef range(i64 0, 115292150460684698) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !46
  unreachable

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.0.09.i = phi i64 [ %.sroa.0.08.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.0.09.i ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load i8, ptr %i.ag, align 8, !range !7, !alias.scope !46, !noundef !4
  %2 = icmp eq i8 %i.ah, 0
  br i1 %2, label %bb.h, label %bb.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.e
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.08.i, %bb.e ], [ %.sroa.0.0.i, %bb.i ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef range(i64 0, 115292150460684698) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18, !noalias !46
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 73
  %i.aj = load i8, ptr %i.ai, align 1, !range !8, !alias.scope !46, !noundef !4
  %i.ak = load i8, ptr %i.ae, align 1, !range !8, !alias.scope !46, !noundef !4
  %i.al = icmp eq i8 %i.aj, %i.ak
  br i1 %i.al, label %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i = add nsw i64 %.sroa.0.09.i, -1    ; 3 uses
  %i.am = icmp ult i64 %.sroa.0.0.i, %i.o
  br i1 %i.am, label %bb.g, label %._crit_edge.i

_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit: ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.ao, ptr %i.c, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.an, ptr %i.ap, align 8
  call void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.aq = call { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d) ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1
  call void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util20normalize_identifier20normalize_identifier(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !47, !noalias !48, !noundef !4 ; 3 uses
  %i.aw = load i64, ptr %i.at, align 8, !range !10, !alias.scope !47, !noalias !48, !noundef !4
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs2KzzoC5ewhj_8markdown.exit

bb.j:                                             ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2AWtUsOyxgP_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs2KzzoC5ewhj_8markdown.exit unwind label %bb.k, !noalias !48

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #16
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ay

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs2KzzoC5ewhj_8markdown.exit: ; preds = %_RNvMNtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB2_8Position15from_exit_event.exit, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !47, !noalias !48, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.bd = add i64 %i.av, 1
  store i64 %i.bd, ptr %i.au, align 8, !alias.scope !47, !noalias !48
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 40)
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 40)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 119, ptr %i.be, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775805, ptr %i.a, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 -1, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 -92, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 345, ptr %i.bk, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.n:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs2KzzoC5ewhj_8markdown.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct23gfm_footnote_definition12label_before(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 91
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 60)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 61)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 62)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 62)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 115, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ -9223372036854775808, %bb.b ], [ -9223372036854775805, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct23gfm_footnote_definition12label_escape(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.e = load i8, ptr %i.d, align 1, !noundef !4
  %.off = add i8 %i.e, -91
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i64 [ -9223372036854775808, %bb.c ], [ -9223372036854775807, %bb.b ], [ -9223372036854775807, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 116, ptr %i.i, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct23gfm_footnote_definition12label_inside(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp ult i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.e = load i8, ptr %i.d, align 8, !range !7
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.h = load i8, ptr %i.g, align 1, !noundef !4  ; 3 uses
  switch i8 %i.h, label %bb.c [
    i8 9, label %bb.d
    i8 10, label %bb.d
    i8 32, label %bb.d
    i8 91, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.h, 93                      ; 2 uses
  %i.j = icmp eq i64 %i.b, 0
  %or.cond6 = and i1 %i.j, %i.i
  br i1 %or.cond6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  store i64 0, ptr %i.a, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.a, align 8
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 30)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 63)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 62)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef nonnull align 8 dereferenceable(664) %1)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 62)
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 61)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 118, ptr %i.k, align 8
end_hunk_0
begin_hunk_1_@_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8document8flow_end:bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5state5StateEBF_.exit: ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i16 71, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5state5StateEBF_.exit
  %i.p = phi i64 [ -9223372036854775808, %bb.d ], [ %.sroa.010.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5state5StateEBF_.exit ] ; 2 uses
  store i64 %i.p, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -1, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !113, !noalias !114, !noundef !4 ; 3 uses
  %i.t = load i64, ptr %i.q, align 8, !range !10, !alias.scope !113, !noalias !114, !noundef !4
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEE8grow_oneB1H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.i unwind label %bb.g, !noalias !114

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEEB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #16
          to label %bb.bk unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !113, !noalias !114, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.aa = add i64 %i.s, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !113, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ab = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 632
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 640
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4push(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(664) %i.ab, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %i.ah, i64 noundef %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ak = load i64, ptr %i.o, align 8, !range !6, !alias.scope !115, !noundef !4
  %i.al = icmp sgt i64 %i.ak, -1
  br i1 %i.al, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown7message7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit unwind label %.thread

.thread:                                          ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.an = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 504
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = add nsw i64 %i.ap, -1                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !range !8, !noundef !4 ; 2 uses
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %._crit_edge, label %switch.early.test

._crit_edge:                                      ; preds = %bb.k, %.lr.ph
  %.lcssa137 = phi i8 [ %i.aw, %.lr.ph ], [ %i.ba, %bb.k ]
  switch i8 %.lcssa137, label %._crit_edge.thread [
    i8 78, label %.loopexit
    i8 29, label %.loopexit
  ]

bb.k:                                             ; preds = %switch.early.test
  %i.ay = add i64 %i.bd, -1                       ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !range !8, !noundef !4 ; 2 uses
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %._crit_edge, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph, %bb.k
  %i.bc = phi i8 [ %i.ba, %bb.k ], [ %i.aw, %.lr.ph ]
  %i.bd = phi i64 [ %i.ay, %bb.k ], [ %i.au, %.lr.ph ]
  switch i8 %i.bc, label %bb.k [
    i8 78, label %.loopexit
    i8 29, label %.loopexit
  ]

._crit_edge.thread:                               ; preds = %._crit_edge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 488
  %i.bf = load i64, ptr %i.be, align 8, !noundef !4 ; 4 uses
  %i.bg = icmp ult i64 %i.bf, 115292150460684698
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %switch.early.test, %switch.early.test, %._crit_edge, %._crit_edge, %bb.m, %._crit_edge.thread
  %.sroa.013.0.lcssa124 = phi i8 [ 0, %bb.m ], [ 0, %._crit_edge.thread ], [ 1, %._crit_edge ], [ 1, %._crit_edge ], [ 1, %switch.early.test ], [ 1, %switch.early.test ] ; 3 uses
  %i.bi = phi ptr [ %i.bs, %bb.m ], [ %i.an, %._crit_edge.thread ], [ %i.an, %._crit_edge ], [ %i.an, %._crit_edge ], [ %i.an, %switch.early.test ], [ %i.an, %switch.early.test ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 655
  store i8 0, ptr %i.bj, align 1
  %i.bk = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 656
  %i.bm = load i8, ptr %i.bl, align 8, !range !7, !noundef !4
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.s, label %bb.p

bb.l:                                             ; preds = %._crit_edge.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 480
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4
  %i.bq = add nsw i64 %i.bf, -1
  %i.br = call noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip8opt_back(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bp, i64 noundef %i.bf, i64 noundef %i.bq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 1) ; 3 uses
  %i.bs = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 488
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !4 ; 2 uses
  %i.bv = icmp ult i64 %i.br, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 480
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw [80 x i8], ptr %i.bx, i64 %i.br
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 73
  %i.ca = load i8, ptr %i.bz, align 1, !range !8, !noundef !4
  switch i8 %i.ca, label %.loopexit [
    i8 91, label %bb.o
    i8 29, label %bb.o
  ]

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 655
  store i8 0, ptr %i.cb, align 1
  %i.cc = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 656
  %i.ce = load i8, ptr %i.cd, align 8, !range !7, !noundef !4
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %.loopexit
  %.sroa.013.2 = phi i8 [ 1, %bb.r ], [ %.sroa.013.0.lcssa124, %bb.s ], [ %.sroa.013.0.lcssa124, %.loopexit ], [ 1, %bb.q ], [ 1, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !4 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 576460752303423488
  call void @llvm.assume(i1 %i.ck)
  %.not = icmp eq i64 %i.ch, %i.cj
  br i1 %.not, label %bb.u, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cm = load i8, ptr %i.cl, align 8, !range !7, !noundef !4
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !noundef !4 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 576460752303423488
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 %i.cp, ptr %i.cr, align 8
  br label %bb.p

bb.s:                                             ; preds = %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ct = load i8, ptr %i.cs, align 8, !range !7, !noundef !4
  %i.cu = and i8 %i.ct, %.sroa.013.0.lcssa124
  %or.cond7.not = icmp eq i8 %i.cu, 0
  br i1 %or.cond7.not, label %bb.p, label %bb.r

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8document15exit_containers(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef align 8 dereferenceable(664) %1, i8 0)
  %i.cv = load i64, ptr %i.h, align 8, !range !3, !alias.scope !116, !noundef !4
  %i.cw = icmp eq i64 %i.cv, -1
  br i1 %i.cw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs2KzzoC5ewhj_8markdown7message7MessageEEB12_.exit, label %bb.v

bb.u:                                             ; preds = %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs2KzzoC5ewhj_8markdown7message7MessageEEB12_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.cy = load i8, ptr %i.cx, align 8, !range !7, !noundef !4
  %i.cz = trunc nuw i8 %i.cy to i1
  store i64 0, ptr %i.cg, align 8
  br i1 %i.cz, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown7message7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs2KzzoC5ewhj_8markdown7message7MessageEEB12_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs2KzzoC5ewhj_8markdown7message7MessageEEB12_.exit: ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i8 %.sroa.013.2, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 653
  store i8 0, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 61, ptr %i.dc, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8document15exit_containers(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef align 8 dereferenceable(664) %1, i8 2)
  %i.dd = load i64, ptr %i.g, align 8, !range !3, !noundef !4
  %.not44 = icmp eq i64 %i.dd, -1
  br i1 %.not44, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2KzzoC5ewhj_8markdown.exit.i, %bb.w
  %storemerge = phi i64 [ -9223372036854775807, %bb.w ], [ -9223372036854775806, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2KzzoC5ewhj_8markdown.exit.i ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.bj

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bj

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.de = load ptr, ptr %i.m, align 8, !alias.scope !117, !align !5, !noundef !4 ; 5 uses
  %.not.i = icmp eq ptr %i.de, null
  br i1 %.not.i, label %.noexc48, label %.preheader74.i, !prof !11

.preheader74.i:                                   ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 488
  %i.dg = load i64, ptr %i.df, align 8, !noundef !4 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 115292150460684698
  call void @llvm.assume(i1 %i.dh)
  %.not116.i = icmp eq i64 %i.dg, 0
  br i1 %.not116.i, label %._crit_edge100.i, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %.preheader74.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.az

.noexc48:                                         ; preds = %bb.aa
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #18
  unreachable

._crit_edge100.i:                                 ; preds = %bb.bi, %.preheader74.i
  %.sroa.011.0.lcssa.i = phi i64 [ 0, %.preheader74.i ], [ %.sroa.011.1.i, %bb.bi ] ; 2 uses
  %.lcssa79.i = phi ptr [ %i.de, %.preheader74.i ], [ %i.ko, %bb.bi ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.lcssa79.i, i64 472
  %i.dj = getelementptr inbounds nuw i8, ptr %.lcssa79.i, i64 520
  call void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap7consume(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !117, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 6 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !117, !noundef !4 ; 3 uses
  %.not73.i = icmp eq i64 %i.do, 0
  br i1 %.not73.i, label %._crit_edge105.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge100.i, %bb.ab
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.05.0.i.i.i, %bb.ab ], [ 0, %._crit_edge100.i ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [80 x i8], ptr %i.dm, i64 %.sroa.0.06.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 73
  %i.dr = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef range(i64 0, -9223372036854775808) 1)
  br i1 %i.dr, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %.sroa.05.0.i.i.i = add nuw i64 %.sroa.0.06.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.05.0.i.i.i, %i.do
  br i1 %exitcond.not.i.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i, label %.lr.ph.i.i.i

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i: ; preds = %bb.ab, %.lr.ph.i.i.i
  %.sroa.0.0.lcssa.i.i.ph.i = phi i64 [ %i.do, %bb.ab ], [ %.sroa.0.06.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.pre124.i = load i64, ptr %i.dn, align 8, !alias.scope !117 ; 4 uses
  %i.ds = icmp ult i64 %.pre124.i, 115292150460684698
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp ult i64 %.sroa.0.0.lcssa.i.i.ph.i, %.pre124.i
  br i1 %i.dt, label %.lr.ph104.i, label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %bb.ae, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i, %._crit_edge100.i
  %.sroa.028.0.lcssa.i = phi i64 [ %.sroa.0.0.lcssa.i.i.ph.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i ], [ 0, %._crit_edge100.i ], [ %.sroa.0.0.lcssa.i.i61.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i ], [ %.sroa.028.0103.i, %bb.ae ]
  %.lcssa76.i = phi i64 [ %.pre124.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i ], [ 0, %._crit_edge100.i ], [ %i.el, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i ], [ %i.ec, %bb.ae ]
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.dv = load ptr, ptr %i.dl, align 8, !alias.scope !117, !nonnull !4, !noundef !4
  %i.dw = load ptr, ptr %i.m, align 8, !alias.scope !117, !nonnull !4, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 472
  %i.dy = call { i64, i64 } @_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize13divide_events(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dv, i64 noundef %.lcssa76.i, i64 noundef %.sroa.028.0.lcssa.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx, i64 noundef 0, i64 noundef 0) ; 0 uses
  call void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap7consume(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dk)
  %i.dz = load i64, ptr %i.r, align 8, !alias.scope !117, !noundef !4 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 384307168202282326
  call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp ult i64 %.sroa.011.0.lcssa.i, %i.dz
  br i1 %i.eb, label %bb.ag, label %.noexc54

.lr.ph104.i:                                      ; preds = %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i
  %i.ec = phi i64 [ %i.el, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i ], [ %.pre124.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i ] ; 5 uses
  %.sroa.028.0103.i = phi i64 [ %.sroa.0.0.lcssa.i.i61.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i ], [ %.sroa.0.0.lcssa.i.i.ph.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i ] ; 3 uses
  %i.ed = load ptr, ptr %i.dl, align 8, !alias.scope !117, !nonnull !4, !noundef !4 ; 2 uses
  %i.ee = getelementptr inbounds nuw [80 x i8], ptr %i.ed, i64 %.sroa.028.0103.i ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !range !14, !noundef !4
  %.not55.i = icmp eq i64 %i.ef, 2
  br i1 %.not55.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ae, %.lr.ph104.i
  %i.eg = add nuw nsw i64 %.sroa.028.0103.i, 1    ; 3 uses
  %i.eh = icmp samesign ult i64 %i.eg, %i.ec
  br i1 %i.eh, label %.lr.ph.i.i62.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i

.lr.ph.i.i62.i:                                   ; preds = %bb.ac, %bb.ad
  %.sroa.0.06.i.i63.i = phi i64 [ %.sroa.05.0.i.i64.i, %bb.ad ], [ %i.eg, %bb.ac ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [80 x i8], ptr %i.ed, i64 %.sroa.0.06.i.i63.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 73
  %i.ek = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ej, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef range(i64 0, -9223372036854775808) 1)
  br i1 %i.ek, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i62.i
  %.sroa.05.0.i.i64.i = add nuw nsw i64 %.sroa.0.06.i.i63.i, 1 ; 2 uses
  %exitcond.not.i65.i = icmp eq i64 %.sroa.05.0.i.i64.i, %i.ec
  br i1 %exitcond.not.i65.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i, label %.lr.ph.i.i62.i

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i: ; preds = %bb.ad, %.lr.ph.i.i62.i
  %.sroa.0.0.lcssa.i.i61.ph.i = phi i64 [ %i.ec, %bb.ad ], [ %.sroa.0.06.i.i63.i, %.lr.ph.i.i62.i ]
  %.pre125.i = load i64, ptr %i.dn, align 8, !alias.scope !117
  br label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i: ; preds = %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i, %bb.ac
  %i.el = phi i64 [ %i.ec, %bb.ac ], [ %.pre125.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i ] ; 4 uses
  %.sroa.0.0.lcssa.i.i61.i = phi i64 [ %i.eg, %bb.ac ], [ %.sroa.0.0.lcssa.i.i61.ph.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i ] ; 3 uses
  %i.em = icmp ult i64 %i.el, 115292150460684698
  call void @llvm.assume(i1 %i.em)
  %i.en = icmp ult i64 %.sroa.0.0.lcssa.i.i61.i, %i.el
  br i1 %i.en, label %.lr.ph104.i, label %._crit_edge105.i

bb.ae:                                            ; preds = %.lr.ph104.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.ep = load i8, ptr %i.eo, align 8, !range !118, !noundef !4
  %.not56.i = icmp eq i8 %i.ep, 0
  br i1 %.not56.i, label %._crit_edge105.i, label %bb.ac

.noexc54:                                         ; preds = %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit.i, %._crit_edge105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !117
  %i.eq = load ptr, ptr %i.m, align 8, !alias.scope !117, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 560 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !120, !noalias !119, !noundef !4 ; 9 uses
  %i.et = icmp sgt i64 %i.es, -1
  call void @llvm.assume(i1 %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 -576460752303423487, -9223372036854775808) %i.es, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.eu = load i64, ptr %i.b, align 8, !range !12, !noalias !121, !noundef !4
  %i.ev = trunc nuw i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !range !13, !noalias !121, !noundef !4 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ev, label %.noexc55, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE9split_offBH_.exit.i, !prof !11

.noexc55:                                         ; preds = %.noexc54
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !121
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ex, i64 %i.ez) #18
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE9split_offBH_.exit.i: ; preds = %.noexc54
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.fb = load ptr, ptr %i.ey, align 8, !noalias !121, !nonnull !4, !noundef !4 ; 3 uses
  %i.fc = icmp ule i64 %i.es, %i.ex
  call void @llvm.assume(i1 %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121
  store i64 %i.ex, ptr %i.d, align 8, !alias.scope !119, !noalias !122
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.fb, ptr %i.fd, align 8, !alias.scope !119, !noalias !122
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
end_hunk_1
