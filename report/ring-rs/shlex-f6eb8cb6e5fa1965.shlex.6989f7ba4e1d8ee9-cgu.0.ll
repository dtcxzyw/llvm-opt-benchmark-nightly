Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/shlex-f6eb8cb6e5fa1965.shlex.6989f7ba4e1d8ee9-cgu.0?download=true
inline.NumInlined: 134
inline.NumDeleted: 23
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex:bb.a

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit
  %.sroa.0.019 = phi i64 [ %i.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.019 ; 3 uses
  %i.d = add i64 %.sroa.0.019, 1                  ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %i.c)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph21
  %i.g = add i64 %.sroa.0.120, 1                  ; 2 uses
  %i.h = icmp eq i64 %i.g, %1
  br i1 %i.h, label %._crit_edge, label %.lr.ph21

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.e, %bb.b ]
  %i.j = icmp eq i64 %i.d, %1
  br i1 %i.j, label %._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %.body, %bb.e
  %.sroa.0.120 = phi i64 [ %i.g, %bb.e ], [ %i.d, %.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.120
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex(ptr align 8 %i.k) #21
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %.lr.ph21
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex.exit._crit_edge, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit.i
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex.exit
  %.sroa.0.019 = phi i64 [ %i.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.019 ; 3 uses
  %i.d = add i64 %.sroa.0.019, 1                  ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %i.c)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8 %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex.exit unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex.exit._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex.exit, %bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph21
  %i.g = add i64 %.sroa.0.120, 1                  ; 2 uses
  %i.h = icmp eq i64 %i.g, %1
  br i1 %i.h, label %._crit_edge, label %.lr.ph21

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.b ]
  %i.j = icmp eq i64 %i.d, %1
  br i1 %i.j, label %._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %.body, %bb.d
  %.sroa.0.120 = phi i64 [ %i.g, %bb.d ], [ %i.d, %.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.120
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs93MrfdkTAtF_5shlex(ptr align 8 %i.k) #21
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %.lr.ph21
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %.not.not.not2.not = icmp eq ptr %.promoted, %i.b
  br i1 %.not.not.not2.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.d, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  store ptr %i.d, ptr %0, align 8
  %.val = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %.val, 0                      ; 2 uses
  %.not.not.not.not = icmp eq ptr %i.d, %i.b
  %or.cond = select i1 %i.e, i1 true, i1 %.not.not.not.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.e, %.lr.ph ]
  ret i1 %.not.not.not.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecIBx_hEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterQNtNtCs93MrfdkTAtF_5shlex5bytes5ShlexEB26_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_hEEINtB2_18SpecFromIterNestedB11_QNtNtCs93MrfdkTAtF_5shlex5bytes5ShlexE9from_iterB1H_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterQNtCs93MrfdkTAtF_5shlex5ShlexEB2j_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_QNtCs93MrfdkTAtF_5shlex5ShlexE9from_iterB1U_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYQNtCs93MrfdkTAtF_5shlex5ShlexNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1E_6string6StringEEB6_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_QNtCs93MrfdkTAtF_5shlex5ShlexE9from_iterB1U_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYQNtNtCs93MrfdkTAtF_5shlex5bytes5ShlexNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecIB1I_hEEEB8_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_hEEINtB2_18SpecFromIterNestedB11_QNtNtCs93MrfdkTAtF_5shlex5bytes5ShlexE9from_iterB1H_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs93MrfdkTAtF_5shlex5quote(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  store i8 1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB5_6Quoter5quote(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull readonly %i.c, ptr %1, i64 %2)
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtCs93MrfdkTAtF_5shlex10QuoteErrorE6unwrapB1l_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @4, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @3, ptr nonnull align 8 @1) #23
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtCs93MrfdkTAtF_5shlex10QuoteErrorE6unwrapB1l_.exit: ; preds = %bb.a
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.318.0.copyload.i = load ptr, ptr %.sroa.318.0..sroa_idx.i, align 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.419.0.copyload.i = load i64, ptr %.sroa.419.0..sroa_idx.i, align 8
  %.sroa.3.0.i = ptrtoint ptr %.sroa.318.0.copyload.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.419.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs93MrfdkTAtF_5shlex5split(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %i.c to i64
  store i64 %3, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_QNtCs93MrfdkTAtF_5shlex5ShlexE9from_iterB1U_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.d = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  ret void

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs93MrfdkTAtF_5shlex(ptr nonnull align 8 %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs93MrfdkTAtF_5shlex9try_quote(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB5_6Quoter5quote(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull readonly %i.b, ptr %1, i64 %2)
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, -2
  br i1 %i.d, label %_RNvMs4_Cs93MrfdkTAtF_5shlexNtB5_6Quoter5quote.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.318.0.copyload.i = load ptr, ptr %.sroa.318.0..sroa_idx.i, align 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.419.0.copyload.i = load i64, ptr %.sroa.419.0..sroa_idx.i, align 8
  %.sroa.3.0.i = ptrtoint ptr %.sroa.318.0.copyload.i to i64
  %.sroa.3.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.3.0..sroa_idx9.i, align 8
  %.sroa.4.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.419.0.copyload.i, ptr %.sroa.4.0..sroa_idx13.i, align 8
  br label %_RNvMs4_Cs93MrfdkTAtF_5shlexNtB5_6Quoter5quote.exit

_RNvMs4_Cs93MrfdkTAtF_5shlexNtB5_6Quoter5quote.exit: ; preds = %bb.a, %bb.b
  store i64 %i.c, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMCs93MrfdkTAtF_5shlexNtB2_5Shlex3new(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 25)) %0, ptr %1, i64 %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %i.a to i64
  store i64 %3, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VechE3newCs93MrfdkTAtF_5shlex(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #5 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh18split_at_uncheckedCs93MrfdkTAtF_5shlex(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSh4iterCs93MrfdkTAtF_5shlex(ptr %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8is_emptyCs93MrfdkTAtF_5shlex(ptr nofree readnone captures(none) %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs93MrfdkTAtF_5shlex(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #3 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @2, ptr nonnull inttoptr (i64 19 to ptr), ptr align 8 %4) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %i.a to i64
  store i64 %5, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %6, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs93MrfdkTAtF_5shlex5bytesNtB2_5Shlex3new(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 25)) %0, ptr %1, i64 %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB5_6Quoter5quote(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 24 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @10 to i64), ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.f, %i.e
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.g = phi ptr [ %2, %.lr.ph ], [ %i.f, %bb.d ] ; 2 uses
  %.val.i = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %.val.i, 0
  br i1 %i.h, label %bb.f, label %bb.d

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit: ; preds = %bb.d, %bb.b
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 13 uses
  store i64 0, ptr %i.j, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  store i64 -2, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.ao, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit, %bb.f, %bb.c
  ret void

bb.h:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit, %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit
  %i.k = phi i64 [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit ], [ %.sink, %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit ]
  %.sroa.0.081 = phi ptr [ %2, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit ], [ %i.cm, %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit ] ; 9 uses
  %.sroa.10.079 = phi i64 [ %3, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit ], [ %i.cn, %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit ] ; 10 uses
  %i.l = load i8, ptr %.sroa.0.081, align 1
  %i.m = icmp eq i8 %i.l, 94                      ; 2 uses
  %spec.select.i = zext i1 %i.m to i64            ; 2 uses
  %spec.select20.i = select i1 %i.m, i8 2, i8 7   ; 3 uses
  %i.n = icmp ugt i64 %.sroa.10.079, %spec.select.i
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i.thread

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.10.079, %bb.m ], [ %.sroa.04.026.i, %bb.l ] ; 3 uses
  %.sroa.0.0.lcssa.i = phi i8 [ %.sroa.08.2.i, %bb.m ], [ %.sroa.0.027.i, %bb.l ] ; 2 uses
  %i.o = and i8 %.sroa.0.0.lcssa.i, 1
  %.not17.i = icmp eq i8 %i.o, 0
  br i1 %.not17.i, label %bb.n, label %.thread

._crit_edge.i.thread:                             ; preds = %bb.h
  %i.p = and i8 %spec.select20.i, 1
  %.not17.i50 = icmp eq i8 %i.p, 0
  br i1 %.not17.i50, label %bb.n, label %.thread.thread

.lr.ph.i:                                         ; preds = %bb.h, %bb.m
  %.sroa.0.027.i = phi i8 [ %.sroa.08.2.i, %bb.m ], [ %spec.select20.i, %bb.h ] ; 4 uses
  %.sroa.04.026.i = phi i64 [ %i.ac, %bb.m ], [ %spec.select.i, %bb.h ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 %.sroa.04.026.i
  %i.r = load i8, ptr %i.q, align 1               ; 4 uses
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.t = zext nneg i8 %i.r to i128
  %i.u = lshr i128 10633823859816483586817443131232878592, %i.t
  %i.v = trunc i128 %i.u to i1
  %i.w = and i8 %.sroa.0.027.i, -2
  %spec.select21.i = select i1 %i.v, i8 %.sroa.0.027.i, i8 %i.w ; 2 uses
  switch i8 %i.r, label %bb.j [
    i8 39, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i
    i8 94, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i
    i8 92, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i
  ]

_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i: ; preds = %bb.i, %bb.i, %bb.i
  %i.x = and i8 %spec.select21.i, -3
  br label %bb.j

bb.j:                                             ; preds = %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i, %bb.i
  %i.y = phi i8 [ %i.x, %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i ], [ %spec.select21.i, %bb.i ] ; 2 uses
  switch i8 %i.r, label %bb.l [
    i8 96, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i
    i8 36, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i
    i8 33, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i
    i8 94, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i
  ]

_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i: ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %i.z = and i8 %i.y, -5
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.aa = and i8 %.sroa.0.027.i, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i, %bb.j
  %.sroa.08.2.i = phi i8 [ %i.aa, %bb.k ], [ %i.z, %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i ], [ %i.y, %bb.j ] ; 3 uses
  %i.ab = icmp eq i8 %.sroa.08.2.i, 0
  br i1 %i.ab, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = add i64 %.sroa.04.026.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %.sroa.10.079
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %.sroa.0.0.lcssa.i55 = phi i8 [ %spec.select20.i, %._crit_edge.i.thread ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.04.0.lcssa.i53 = phi i64 [ 1, %._crit_edge.i.thread ], [ %.sroa.04.0.lcssa.i, %._crit_edge.i ] ; 15 uses
  %i.ad = and i8 %.sroa.0.0.lcssa.i55, 2
  %.not18.i = icmp eq i8 %i.ad, 0
  br i1 %.not18.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ae = and i8 %.sroa.0.0.lcssa.i55, 4
  %.not19.i = icmp eq i8 %i.ae, 0
  br i1 %.not19.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr nonnull @11, i64 40, ptr nonnull align 8 @12) #23
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.p
  unreachable

.thread:                                          ; preds = %._crit_edge.i
  %i.af = icmp eq i64 %.sroa.04.0.lcssa.i, %.sroa.10.079
  br i1 %i.af, label %.thread.thread, label %bb.s

bb.q:                                             ; preds = %bb.n
  %.not.i18.jt1 = icmp ugt i64 %.sroa.04.0.lcssa.i53, %.sroa.10.079
  br i1 %.not.i18.jt1, label %.loopexit107, label %bb.t

bb.r:                                             ; preds = %bb.o
  %.not.i18.jt2 = icmp ugt i64 %.sroa.04.0.lcssa.i53, %.sroa.10.079
  br i1 %.not.i18.jt2, label %.loopexit107, label %bb.u

bb.s:                                             ; preds = %.thread.thread, %.thread
  %.sroa.04.0.lcssa.i54.jt0 = phi i64 [ %.sroa.04.0.lcssa.i, %.thread ], [ %.sroa.04.0.lcssa.i5257, %.thread.thread ] ; 7 uses
  %.not.i18.jt0 = icmp ugt i64 %.sroa.04.0.lcssa.i54.jt0, %.sroa.10.079
  br i1 %.not.i18.jt0, label %.loopexit107, label %bb.v

.loopexit107:                                     ; preds = %bb.q, %bb.r, %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @2, ptr nonnull inttoptr (i64 19 to ptr), ptr nonnull align 8 @7) #23
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.loopexit107
  unreachable

.thread.thread:                                   ; preds = %._crit_edge.i.thread, %.thread
  %.sroa.04.0.lcssa.i5257 = phi i64 [ %.sroa.10.079, %.thread ], [ 1, %._crit_edge.i.thread ]
  %i.ag = icmp eq i64 %i.k, 0
  br i1 %i.ag, label %bb.al, label %bb.s

bb.t:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 %.sroa.04.0.lcssa.i53
  %.not.jt1 = icmp eq i64 %.sroa.04.0.lcssa.i53, 0
  br i1 %.not.jt1, label %.loopexit108, label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 %.sroa.04.0.lcssa.i53 ; 2 uses
  %.not.jt2 = icmp eq i64 %.sroa.04.0.lcssa.i53, 0
  br i1 %.not.jt2, label %.loopexit108, label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 %.sroa.04.0.lcssa.i54.jt0
  %.not.jt0 = icmp eq i64 %.sroa.04.0.lcssa.i54.jt0, 0
  br i1 %.not.jt0, label %.loopexit108, label %bb.w

.loopexit108:                                     ; preds = %bb.t, %bb.u, %bb.v
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr nonnull @8, i64 45, ptr nonnull align 8 @9) #24
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.a, i64 %.sroa.04.0.lcssa.i54.jt0)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit

.noexc21:                                         ; preds = %bb.w
  %i.ak = load i64, ptr %i.j, align 8
  %i.al = load ptr, ptr %i.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull readonly align 1 %.sroa.0.081, i64 %.sroa.04.0.lcssa.i54.jt0, i1 false)
  %i.an = load i64, ptr %i.j, align 8
  %i.ao = add i64 %i.an, %.sroa.04.0.lcssa.i54.jt0
  br label %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit

bb.x:                                             ; preds = %bb.t
  %i.ap = icmp ugt i64 %.sroa.04.0.lcssa.i53, -3
  br i1 %i.ap, label %.invoke, label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.aq = icmp ugt i64 %.sroa.04.0.lcssa.i53, -3
  br i1 %i.aq, label %.invoke, label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.ar = add nuw i64 %.sroa.04.0.lcssa.i53, 2
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.a, i64 %i.ar)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit

.noexc22:                                         ; preds = %bb.z
  %i.as = load i64, ptr %i.j, align 8             ; 3 uses
  %i.at = load i64, ptr %i.a, align 8
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.aa, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit.i

bb.aa:                                            ; preds = %.noexc22
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %i.a) #25
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit.i unwind label %.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit.i: ; preds = %bb.aa, %.noexc22
  %i.av = load ptr, ptr %i.i, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as
  store i8 39, ptr %i.aw, align 1
  %i.ax = add i64 %i.as, 1
  store i64 %i.ax, ptr %i.j, align 8
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.a, i64 %.sroa.04.0.lcssa.i53)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit.i
  %i.ay = load i64, ptr %i.j, align 8
  %i.az = load ptr, ptr %i.i, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr nonnull readonly align 1 %.sroa.0.081, i64 %.sroa.04.0.lcssa.i53, i1 false)
  %i.bb = load i64, ptr %i.j, align 8
  %i.bc = add i64 %i.bb, %.sroa.04.0.lcssa.i53    ; 4 uses
  store i64 %i.bc, ptr %i.j, align 8
  %i.bd = load i64, ptr %i.a, align 8
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.ab, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i

bb.ab:                                            ; preds = %.noexc24
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %i.a) #25
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i unwind label %.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i: ; preds = %bb.ab, %.noexc24
  %i.bf = load ptr, ptr %i.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  store i8 39, ptr %i.bg, align 1
  %i.bh = add i64 %i.bc, 1
  br label %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit

.invoke:                                          ; preds = %bb.y, %bb.x
  %i.bi = phi ptr [ @13, %bb.x ], [ @14, %bb.y ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 %i.bi) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ac:                                            ; preds = %bb.y
  %i.bj = add nuw i64 %.sroa.04.0.lcssa.i53, 2
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.a, i64 %i.bj)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %bb.ac
  %i.bk = load i64, ptr %i.j, align 8             ; 3 uses
  %i.bl = load i64, ptr %i.a, align 8
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.ad, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit7.i

bb.ad:                                            ; preds = %.noexc27
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %i.a) #25
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit7.i unwind label %.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit7.i: ; preds = %bb.ad, %.noexc27
  %i.bn = load ptr, ptr %i.i, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  store i8 34, ptr %i.bo, align 1
  %i.bp = add i64 %i.bk, 1                        ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit7.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit9.i
  %i.bq = phi i64 [ %i.cf, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit9.i ], [ %i.bp, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit7.i ] ; 4 uses
  %.sroa.0.014.i = phi ptr [ %i.br, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit9.i ], [ %.sroa.0.081, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit7.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 1 ; 2 uses
  %i.bs = load i8, ptr %.sroa.0.014.i, align 1    ; 2 uses
  %i.bt = add i8 %i.bs, -34                       ; 2 uses
  %i.bu = call i8 @llvm.fshl.i8(i8 %i.bt, i8 %i.bt, i8 7)
  switch i8 %i.bu, label %bb.ag [
    i8 1, label %bb.ai
    i8 31, label %bb.ai
    i8 0, label %bb.ai
    i8 29, label %bb.ai
  ]

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs93MrfdkTAtF_5shlex.exit.thread.i: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit9.i
  %i.bv = load i64, ptr %i.a, align 8
  %i.bw = icmp eq i64 %i.cf, %i.bv
  br i1 %i.bw, label %bb.af, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit8.i

bb.af:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs93MrfdkTAtF_5shlex.exit.thread.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %i.a) #25
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit8.i unwind label %.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit8.i: ; preds = %bb.af, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs93MrfdkTAtF_5shlex.exit.thread.i
  %i.bx = load ptr, ptr %i.i, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cf
  store i8 34, ptr %i.by, align 1
  %i.bz = add i64 %i.ca, 2
  br label %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit

bb.ag:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit10.i, %bb.ae
  %i.ca = phi i64 [ %i.cl, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit10.i ], [ %i.bq, %bb.ae ] ; 4 uses
  %i.cb = load i64, ptr %i.a, align 8
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.ah, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit9.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %i.a) #25
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit9.i unwind label %.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit9.i: ; preds = %bb.ah, %bb.ag
  %i.cd = load ptr, ptr %i.i, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  store i8 %i.bs, ptr %i.ce, align 1
  %i.cf = add i64 %i.ca, 1                        ; 4 uses
  store i64 %i.cf, ptr %i.j, align 8
  %i.cg = icmp eq ptr %i.br, %i.ai
  br i1 %i.cg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs93MrfdkTAtF_5shlex.exit.thread.i, label %bb.ae

bb.ai:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.ch = load i64, ptr %i.a, align 8
  %i.ci = icmp eq i64 %i.bq, %i.ch
  br i1 %i.ci, label %bb.aj, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit10.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %i.a) #25
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit10.i unwind label %.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit10.i: ; preds = %bb.aj, %bb.ai
  %i.cj = load ptr, ptr %i.i, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bq
  store i8 92, ptr %i.ck, align 1
  %i.cl = add i64 %i.bq, 1                        ; 2 uses
  store i64 %i.cl, ptr %i.j, align 8
  br label %bb.ag

_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit: ; preds = %.noexc21, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit8.i
  %.sink = phi i64 [ %i.ao, %.noexc21 ], [ %i.bh, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i ], [ %i.bz, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit8.i ] ; 2 uses
  %.sroa.04.0.lcssa.i54.jt0.pn = phi i64 [ %.sroa.04.0.lcssa.i54.jt0, %.noexc21 ], [ %.sroa.04.0.lcssa.i53, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i ], [ %.sroa.04.0.lcssa.i53, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit8.i ]
  %i.cm = phi ptr [ %i.aj, %.noexc21 ], [ %i.ah, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i ], [ %i.ai, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit8.i ]
  %i.cn = sub nuw i64 %.sroa.10.079, %.sroa.04.0.lcssa.i54.jt0.pn ; 2 uses
  store i64 %.sink, ptr %i.j, align 8
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.ao, label %bb.h

bb.ak:                                            ; preds = %.loopexit108
  unreachable

bb.al:                                            ; preds = %.thread.thread
  %4 = ptrtoint ptr %.sroa.0.081 to i64
  store i64 -1, ptr %0, align 8
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %.sroa.238.0..sroa_idx, align 8
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.079, ptr %.sroa.339.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.a)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %bb.am ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit: ; preds = %bb.al
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.a)
  br label %bb.g

bb.ao:                                            ; preds = %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.g

.loopexit:                                        ; preds = %bb.aj, %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.w, %bb.z, %bb.aa, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit.i, %bb.ab, %bb.ac, %bb.ad, %bb.af
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %.loopexit108, %bb.p, %.loopexit107
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit58, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex(ptr nonnull align 8 %i.a) #21
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs93MrfdkTAtF_5shlex(ptr align 8 %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr align 8 %0, i64 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhEE11spec_extendCs93MrfdkTAtF_5shlex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr readonly align 1 %1, i64 %2, i1 false)
  br label %_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhEE11spec_extendCs93MrfdkTAtF_5shlex.exit

_RNvXs2_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhEE11spec_extendCs93MrfdkTAtF_5shlex.exit: ; preds = %bb.a, %bb.b
  %i.f = load i64, ptr %i.a, align 8
  %i.g = add i64 %i.f, %2
  store i64 %i.g, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i1, i8 } @_RNvMs1_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRhE6copiedCs93MrfdkTAtF_5shlex(ptr nofree readonly captures(address_is_null) %0) unnamed_addr #7 {
bb.a:
  %.not = icmp ne ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.a, %bb.b ], [ undef, %bb.a ]
  %i.b = insertvalue { i1, i8 } poison, i1 %.not, 0
  %i.c = insertvalue { i1, i8 } %i.b, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_Cs93MrfdkTAtF_5shlexNtB5_6Quoter5quote(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly captures(none) %1, ptr %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB5_6Quoter5quote(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, ptr %2, i64 %3)
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.318.0.copyload = load ptr, ptr %.sroa.318.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.419.0.copyload = load i64, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.3.0 = ptrtoint ptr %.sroa.318.0.copyload to i64
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.419.0.copyload, ptr %.sroa.4.0..sroa_idx13, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterhE3newCs93MrfdkTAtF_5shlex(ptr %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs93MrfdkTAtF_5shlex(i64 %0, i64 %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %0, i1 zeroext false, i64 %1, i64 %2)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.e, i64 %i.g) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = insertvalue { i64, ptr } poison, i64 %i.e, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %i.h, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex(ptr align 8 %0, i8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs93MrfdkTAtF_5shlex.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %0) #25
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs93MrfdkTAtF_5shlex.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs93MrfdkTAtF_5shlex.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  store i8 %1, ptr %i.g, align 1
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define noundef ptr @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs93MrfdkTAtF_5shlex(ptr align 8 %0, i8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %0) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  store i8 %1, ptr %i.g, align 1
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_hEE7reserveCs93MrfdkTAtF_5shlex(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 24)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs93MrfdkTAtF_5shlex(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 24)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs93MrfdkTAtF_5shlex(ptr align 8 %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr align 8 %0, i64 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8is_emptyCs93MrfdkTAtF_5shlex(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs93MrfdkTAtF_5shlex5bytes5quote(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  store i8 1, ptr %i.b, align 1
  call void @_RNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB5_6Quoter5quote(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull %i.b, ptr %1, i64 %2)
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc6borrow3CowShENtCs93MrfdkTAtF_5shlex10QuoteErrorE6unwrapB1m_.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @4, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @3, ptr nonnull align 8 @15) #23
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc6borrow3CowShENtCs93MrfdkTAtF_5shlex10QuoteErrorE6unwrapB1m_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs93MrfdkTAtF_5shlex5bytes5split(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.f, align 8
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_hEEINtB2_18SpecFromIterNestedB11_QNtNtCs93MrfdkTAtF_5shlex5bytes5ShlexE9from_iterB1H_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
end_hunk_0
