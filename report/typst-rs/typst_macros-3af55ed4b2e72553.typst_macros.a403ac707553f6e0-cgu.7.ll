Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.7?download=true
inline.NumInlined: 127
inline.NumDeleted: 95
begin_hunk_0_@_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCscVvfRCjUNk2_11proc_macro211TokenStreamE4pushCse52LceO7DeS_12typst_macros:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4cast7VariantE4pushBJ_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4cast7VariantE8push_mutBJ_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCse52LceO7DeS_12typst_macros4cast7VariantE8grow_oneBQ_(ptr nonnull align 8 %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4cast7VariantE8push_mutBJ_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse52LceO7DeS_12typst_macros4cast7VariantEBF_(ptr align 8 %1) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4cast7VariantE8push_mutBJ_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4func5ParamE4pushBJ_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4func5ParamE8push_mutBJ_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCse52LceO7DeS_12typst_macros4func5ParamE8grow_oneBQ_(ptr nonnull align 8 %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4func5ParamE8push_mutBJ_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse52LceO7DeS_12typst_macros4func5ParamEBF_(ptr align 8 %1) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCse52LceO7DeS_12typst_macros4func5ParamE8push_mutBJ_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [480 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %i.i, ptr noundef nonnull align 8 dereferenceable(480) %1, i64 480, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrE4pushCse52LceO7DeS_12typst_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrE8push_mutCse52LceO7DeS_12typst_macros.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsjMPGGl8VONr_3syn3lit6LitStrE8grow_oneCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrE8push_mutCse52LceO7DeS_12typst_macros.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn3lit6LitStrEBF_(ptr nonnull align 8 %i.a) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn3lit6LitStrE8push_mutCse52LceO7DeS_12typst_macros.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.c
  store ptr %1, ptr %i.j, align 8
  %i.k = add i64 %i.c, 1
  store i64 %i.k, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item10ImplItemFnE4pushCse52LceO7DeS_12typst_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item10ImplItemFnE8push_mutCse52LceO7DeS_12typst_macros.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsjMPGGl8VONr_3syn4item10ImplItemFnE8grow_oneCse52LceO7DeS_12typst_macros(ptr nonnull align 8 %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item10ImplItemFnE8push_mutCse52LceO7DeS_12typst_macros.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn4item10ImplItemFnEBF_(ptr align 8 %1) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item10ImplItemFnE8push_mutCse52LceO7DeS_12typst_macros.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [392 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCscVvfRCjUNk2_11proc_macro211TokenStreamE8is_emptyCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE8is_emptyCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE5clearCse52LceO7DeS_12typst_macros(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  store i64 0, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsjMPGGl8VONr_3syn4attr9AttributeEBG_(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE6removeCse52LceO7DeS_12typst_macros(ptr nofree writeonly sret([256 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, i64 %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %.sroa.4 = alloca [248 x i8], align 8           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !49 ; 4 uses
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10try_removeCse52LceO7DeS_12typst_macros.exit, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10try_removeCse52LceO7DeS_12typst_macros.exit.thread

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10try_removeCse52LceO7DeS_12typst_macros.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noalias !49
  %i.e = getelementptr inbounds nuw [256 x i8], ptr %i.d, i64 %2 ; 4 uses
  %.sroa.03.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.44.0..sroa_idx, i64 248, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = xor i64 %2, -1
  %i.h = add i64 %i.b, %i.g
  %i.i = shl nuw nsw i64 %i.h, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.i, i1 false), !noalias !49
  %i.j = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.j, ptr %i.a, align 8, !noalias !49
  %.not = icmp eq i64 %.sroa.03.0.copyload, -1
  br i1 %.not, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10try_removeCse52LceO7DeS_12typst_macros.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10try_removeCse52LceO7DeS_12typst_macros.exit
  store i64 %.sroa.03.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4, i64 248, i1 false)
  ret void

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10try_removeCse52LceO7DeS_12typst_macros.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10try_removeCse52LceO7DeS_12typst_macros.exit
  %i.k = phi i64 [ %i.b, %bb.a ], [ %i.j, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10try_removeCse52LceO7DeS_12typst_macros.exit ]
  tail call void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 %2, i64 %i.k, ptr align 8 %3) #26
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtE3popCse52LceO7DeS_12typst_macros(ptr nofree writeonly sret([352 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [352 x i8], ptr %i.f, i64 %i.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %i.g, i64 352, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtE6insertCse52LceO7DeS_12typst_macros(ptr align 8 %0, i64 %1, ptr align 8 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNvMs_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 %1, i64 %i.b, ptr align 8 %3) #25
          to label %bb.h unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsjMPGGl8VONr_3syn4stmt4StmtE8grow_oneBQ_(ptr nonnull align 8 %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [352 x i8], ptr %i.g, i64 %1 ; 3 uses
  %i.i = icmp ult i64 %1, %i.b
  br i1 %i.i, label %bb.g, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtE10insert_mutCse52LceO7DeS_12typst_macros.exit

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn4stmt4StmtEBF_(ptr align 8 %2) #23
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.l = sub nuw i64 %i.b, %1
  %i.m = mul nuw nsw i64 %i.l, 352
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.h, i64 %i.m, i1 false)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtE10insert_mutCse52LceO7DeS_12typst_macros.exit

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.j

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsjMPGGl8VONr_3syn4stmt4StmtE10insert_mutCse52LceO7DeS_12typst_macros.exit: ; preds = %bb.e, %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.h, ptr noundef nonnull align 8 dereferenceable(352) %2, i64 352, i1 false)
  %i.o = add i64 %i.b, 1
  store i64 %i.o, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjMPGGl8VONr_3syn11parse_quoteNtNtB4_4expr4ExprNtB2_10ParseQuote5parseCse52LceO7DeS_12typst_macros(ptr sret([176 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtCsjMPGGl8VONr_3syn4expr7parsingNtB4_4ExprNtNtB6_5parse5Parse5parse(ptr sret([176 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateINtNtNtB8_5slice4iter7IterMutNtNtCse52LceO7DeS_12typst_macros4elem5FieldEENtB2_12IntoIterator9into_iterB1V_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardNtNtCsjMPGGl8VONr_3syn4attr9AttributeNtNtB9_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d                       ; 2 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [256 x i8], ptr %i.h, i64 %i.k
  %i.m = shl nuw nsw i64 %i.e, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.i, i64 %i.m, i1 false)
  %i.n = load ptr, ptr %0, align 8
  %i.o = load i64, ptr %i.j, align 8
  %i.p = add i64 %i.o, %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.p, ptr %i.q, align 8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardNtNtCsjMPGGl8VONr_3syn4item8ImplItemNtNtB9_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCse52LceO7DeS_12typst_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d                       ; 2 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw [592 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [592 x i8], ptr %i.h, i64 %i.k
  %i.m = mul nuw nsw i64 %i.e, 592
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.i, i64 %i.m, i1 false)
  %i.n = load ptr, ptr %0, align 8
  %i.o = load i64, ptr %i.j, align 8
  %i.p = add i64 %i.o, %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.p, ptr %i.q, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse52LceO7DeS_12typst_macros(ptr align 4 %0) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull align 4 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs1s_Csa5ERaWwhjCQ_10proc_macroNtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCse52LceO7DeS_12typst_macros(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, ptr align 4 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  call void @_RNvXsI_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCscVvfRCjUNk2_11proc_macro2(ptr nonnull sret([12 x i8]) align 4 %i.a, ptr align 4 %1) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtCsjMPGGl8VONr_3syn11parse_quoteINtNtB7_10punctuated10PunctuatedNtNtB7_4item5FnArgNtNtB7_5token5CommaENtB5_10ParseQuote5parseCse52LceO7DeS_12typst_macros(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 4 uses
  %i.g = alloca [96 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !52
  call void @_RNvMNtCsjMPGGl8VONr_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE3newB4_(ptr nonnull sret([32 x i8]) align 8 %i.h), !noalias !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b
end_hunk_0
