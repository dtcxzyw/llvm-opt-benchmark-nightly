Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3key3KeyEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3key3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish3key3KeyEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3key3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish3key3KeyEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1l_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB1n_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB1n_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecdEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecyEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4, label %.lr.ph67

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBG_.exit, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit
  %.sroa.0.0.i66 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [224 x i8], ptr %i.a, i64 %.sroa.0.0.i66 ; 6 uses
  %i.f = add nuw i64 %.sroa.0.0.i66, 1            ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.g)
          to label %bb.c unwind label %bb.b, !inline_history !63

bb.b:                                             ; preds = %.lr.ph67
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #48
          to label %.body22 unwind label %bb.f, !inline_history !63

bb.c:                                             ; preds = %.lr.ph67
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !75, !nonnull !12, !noundef !12 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !75, !noundef !12 ; 6 uses
  %cond72 = icmp eq i64 %i.m, 0
  br i1 %cond72, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i: ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.m
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i
  %.sroa.0.0.i.i65 = phi i64 [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %.sroa.0.0.i.i65
  %i.p = add nuw i64 %.sroa.0.0.i.i65, 1          ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i unwind label %bb.d, !noalias !75, !inline_history !68

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i: ; preds = %.lr.ph69
  %i.q = add nuw i64 %.sroa.0.1.i.i68, 1          ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %.body.i, label %.lr.ph69

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.m
  br i1 %i.t, label %.body.i, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i
  %.sroa.0.1.i.i68 = phi i64 [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %.sroa.0.1.i.i68
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i unwind label %bb.e, !noalias !75, !inline_history !68

bb.e:                                             ; preds = %.lr.ph69
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !75, !inline_history !69
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i, %bb.d
  %i.w = mul nuw nsw i64 %i.m, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 8) #50, !noalias !75, !inline_history !70
  br label %.body22

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i
  %i.x = mul nuw nsw i64 %i.m, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef 8) #50, !noalias !75, !inline_history !70
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i

.body22:                                          ; preds = %.body.i, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.s, %.body.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #48
          to label %.body5 unwind label %bb.f, !inline_history !63

bb.f:                                             ; preds = %.body22, %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !63
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit unwind label %bb.h, !inline_history !71

bb.g:                                             ; preds = %.lr.ph71
  %i.ab = add nuw i64 %.sroa.0.1.i70, 1           ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.c
  br i1 %i.ac, label %.body, label %.lr.ph71

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body5

.body5:                                           ; preds = %.body22, %bb.h
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %.pn.i.i, %.body22 ]
  %i.ae = icmp eq i64 %i.f, %i.c
  br i1 %i.ae, label %.body, label %.lr.ph71

.lr.ph71:                                         ; preds = %.body5, %bb.g
  %.sroa.0.1.i70 = phi i64 [ %i.ab, %bb.g ], [ %i.f, %.body5 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [224 x i8], ptr %i.a, i64 %.sroa.0.1.i70
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.af) #48
          to label %bb.g unwind label %bb.i, !inline_history !72

bb.i:                                             ; preds = %.lr.ph71
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !72
  unreachable

.body:                                            ; preds = %bb.g, %.body5
  %i.ah = mul nuw nsw i64 %i.c, 224
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef 8) #50
  resume { ptr, i32 } %eh.lpad-body6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBG_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_.exit
  %i.ai = mul nuw nsw i64 %i.c, 224
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef 8) #50
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBG_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit
  %.sroa.0.0.i5 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.sroa.0.0.i5 ; 3 uses
  %i.f = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !84, !noundef !12 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !84, !nonnull !12, !noundef !12
  %i.j = mul nuw nsw i64 %.val1.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef 4) #50, !noalias !84, !inline_history !80
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit unwind label %bb.d, !inline_history !80

bb.c:                                             ; preds = %.lr.ph7
  %i.l = add nuw i64 %.sroa.0.1.i6, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.f, %i.c
  br i1 %i.o, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.l, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #48
          to label %bb.c unwind label %bb.e, !inline_history !81

bb.e:                                             ; preds = %.lr.ph7
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !81
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %i.r = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 8) #50
  resume { ptr, i32 } %i.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBG_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit
  %i.s = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef 8) #50
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBG_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit
  %.sroa.0.0.i19 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.0.i19 ; 5 uses
  %i.f = add nuw i64 %.sroa.0.0.i19, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.val1.i = load i64, ptr %i.g, align 8, !alias.scope !90, !noundef !12 ; 2 uses
  %i.h = icmp eq i64 %.val1.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !90, !nonnull !12, !noundef !12
  %i.j = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef 4) #50, !noalias !90
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i unwind label %bb.c, !inline_history !87

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #48
          to label %.body5 unwind label %bb.d, !inline_history !87

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !87
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit unwind label %bb.f, !inline_history !88

bb.e:                                             ; preds = %.lr.ph21
  %i.p = add nuw i64 %.sroa.0.1.i20, 1            ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %.body, label %.lr.ph21

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body5

.body5:                                           ; preds = %bb.c, %bb.f
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.l, %bb.c ]
  %i.s = icmp eq i64 %i.f, %i.c
  br i1 %i.s, label %.body, label %.lr.ph21

.lr.ph21:                                         ; preds = %.body5, %bb.e
  %.sroa.0.1.i20 = phi i64 [ %i.p, %bb.e ], [ %i.f, %.body5 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.1.i20
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.t) #48
          to label %bb.e unwind label %bb.g, !inline_history !89

bb.g:                                             ; preds = %.lr.ph21
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !89
  unreachable

.body:                                            ; preds = %bb.e, %.body5
  %i.v = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef 8) #50
  resume { ptr, i32 } %eh.lpad-body6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBG_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit
  %i.w = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 8) #50
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBG_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5
  %.sroa.0.0.i6 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5 ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.0.i6
  %i.f = add nuw i64 %.sroa.0.0.i6, 1             ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5 unwind label %bb.b, !inline_history !91

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit: ; preds = %.lr.ph8
  %i.g = add nuw i64 %.sroa.0.1.i7, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %.body, label %.lr.ph8

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %.body, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit
  %.sroa.0.1.i7 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.1.i7
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit unwind label %bb.c, !inline_history !91

bb.c:                                             ; preds = %.lr.ph8
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !92
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit, %bb.b
  %i.m = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef 8) #50
  resume { ptr, i32 } %i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBG_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5
  %i.n = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef 8) #50
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit4: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBG_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEEB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !14, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEB1A_.exit, !prof !16

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEB1A_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEB1A_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !14, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit, !prof !16

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !14, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit, !prof !16

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish(ptr %.0.val, i8 %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB1J_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, !prof !16

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB1J_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB1J_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEB1A_(ptr %.0.val, i8 %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish:bb.a
bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15fd_readable_set13FdReadableSetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !99, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !99, !noundef !12 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit unwind label %bb.b, !noalias !99, !inline_history !0

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = mul nuw nsw i64 %i.d, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef 8) #50, !noalias !99
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit1

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit1: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit: ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit
  %i.i = mul nuw nsw i64 %i.d, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #50, !noalias !99
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !102, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !102, !nonnull !12, !noundef !12
  %i.d = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 4) #50, !noalias !102
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit unwind label %bb.e, !inline_history !103

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h), !inline_history !103
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11WhileHeaderEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(192) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %common.resume unwind label %bb.f, !inline_history !108

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !109, !nonnull !12, !noundef !12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !109, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.g, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.g
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBG_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.0.i.i1
  %i.j = add nuw i64 %.sroa.0.0.i.i1, 1           ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.i) #51
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i unwind label %bb.d, !noalias !109, !inline_history !106

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i: ; preds = %.lr.ph3
  %i.k = add nuw i64 %.sroa.0.1.i.i2, 1           ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.g
  br i1 %i.l, label %.body.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.g
  br i1 %i.n, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.1.i.i2
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.o) #51
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i unwind label %bb.e, !noalias !109, !inline_history !106

bb.e:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !109, !inline_history !107
  unreachable

common.resume:                                    ; preds = %bb.b, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %.body.i ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i, %bb.d
  %i.q = mul nuw nsw i64 %i.g, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef 8) #50, !noalias !109, !inline_history !110
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBG_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i
  %i.r = mul nuw nsw i64 %i.g, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 8) #50, !noalias !109, !inline_history !110
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBG_.exit.i
  ret void

bb.f:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !115, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !115, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %.sroa.0.0.i2 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.0.i2
  %i.f = add nuw i64 %.sroa.0.0.i2, 1             ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i unwind label %bb.b, !noalias !115, !inline_history !113

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i: ; preds = %.lr.ph4
  %i.g = add nuw i64 %.sroa.0.1.i3, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %.body, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %.body, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i
  %.sroa.0.1.i3 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.1.i3
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i unwind label %bb.c, !noalias !115, !inline_history !113

bb.c:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !115, !inline_history !114
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i, %bb.b
  %i.m = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef 8) #50, !noalias !115
  resume { ptr, i32 } %i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %i.n = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef 8) #50, !noalias !115
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8ArgumentEEB1f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = mul nuw nsw i64 %.val1, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 4) #50
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8ArgumentEEB1f_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8ArgumentEEB1f_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %bb.c unwind label %bb.b, !inline_history !116

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #48
          to label %.body unwind label %bb.f, !inline_history !116

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !125, !nonnull !12, !noundef !12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !125, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.g, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.g
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %.sroa.0.0.i4 = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.0.i4
  %i.j = add nuw i64 %.sroa.0.0.i4, 1             ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i unwind label %bb.d, !noalias !125, !inline_history !121

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i: ; preds = %.lr.ph6
  %i.k = add nuw i64 %.sroa.0.1.i5, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.g
  br i1 %i.l, label %.body2, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.g
  br i1 %i.n, label %.body2, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i
  %.sroa.0.1.i5 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.1.i5
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i unwind label %bb.e, !noalias !125, !inline_history !121

bb.e:                                             ; preds = %.lr.ph6
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !125, !inline_history !122
  unreachable

.body2:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i, %bb.d
  %i.q = mul nuw nsw i64 %i.g, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef 8) #50, !noalias !125
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %i.r = mul nuw nsw i64 %i.g, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 8) #50, !noalias !125
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit

.body:                                            ; preds = %.body2, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.m, %.body2 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #48
          to label %bb.g unwind label %bb.f, !inline_history !116

bb.f:                                             ; preds = %.body, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !116
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %.pn.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u), !inline_history !116
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14FunctionHeaderEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !128, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !128, !nonnull !12, !noundef !12
  %i.d = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 4) #50, !noalias !128
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !139, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !139, !nonnull !12, !noundef !12
  %i.d = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 4) #50, !noalias !139
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.d unwind label %bb.c, !inline_history !20

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #48
          to label %.body unwind label %bb.i, !inline_history !20

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !142, !nonnull !12, !noundef !12 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !142, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.k, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.l = icmp eq i64 %i.n, %i.k
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %.sroa.0.0.i8 = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %.sroa.0.0.i8 ; 3 uses
  %i.n = add nuw i64 %.sroa.0.0.i8, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143), !noalias !142
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.val1.i.i4 = load i64, ptr %i.o, align 8, !alias.scope !144, !noalias !142, !noundef !12 ; 2 uses
  %i.p = icmp eq i64 %.val1.i.i4, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.val.i.i5 = load ptr, ptr %i.q, align 8, !alias.scope !144, !noalias !142, !nonnull !12, !noundef !12
  %i.r = mul nuw nsw i64 %.val1.i.i4, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i5, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 4) #50, !noalias !145, !inline_history !1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %bb.e, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i unwind label %bb.g, !noalias !142, !inline_history !2

bb.f:                                             ; preds = %.lr.ph10
  %i.t = add nuw i64 %.sroa.0.1.i9, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %.body6, label %.lr.ph10

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = icmp eq i64 %i.n, %i.k
  br i1 %i.w, label %.body6, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i9 = phi i64 [ %i.t, %bb.f ], [ %i.n, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %.sroa.0.1.i9
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.x) #48
          to label %bb.f unwind label %bb.h, !noalias !142, !inline_history !1

bb.h:                                             ; preds = %.lr.ph10
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !142, !inline_history !1
  unreachable

.body6:                                           ; preds = %bb.f, %bb.g
  %i.z = mul nuw nsw i64 %i.k, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef 8) #50, !noalias !142
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %i.aa = mul nuw nsw i64 %i.k, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef 8) #50, !noalias !142
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit

bb.i:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !20
  unreachable

.body:                                            ; preds = %.body6, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.v, %.body6 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit unwind label %bb.j, !inline_history !146

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ad), !inline_history !146
  ret void

bb.j:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !149, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !149, !nonnull !12, !noundef !12
  %i.d = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 4) #50, !noalias !149
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !156, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !156, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %.sroa.0.0.i4 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.sroa.0.0.i4 ; 3 uses
  %i.f = add nuw i64 %.sroa.0.0.i4, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.val1.i2 = load i64, ptr %i.g, align 8, !alias.scope !157, !noalias !156, !noundef !12 ; 2 uses
  %i.h = icmp eq i64 %.val1.i2, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val.i3 = load ptr, ptr %i.i, align 8, !alias.scope !157, !noalias !156, !nonnull !12, !noundef !12
  %i.j = mul nuw nsw i64 %.val1.i2, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef 4) #50, !noalias !158
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i unwind label %.body.i, !noalias !156, !inline_history !154

bb.c:                                             ; preds = %.lr.ph6
  %i.l = add nuw i64 %.sroa.0.1.i5, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %.body, label %.lr.ph6

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.f, %i.c
  br i1 %i.o, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %.body.i, %bb.c
  %.sroa.0.1.i5 = phi i64 [ %i.l, %bb.c ], [ %i.f, %.body.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #48
          to label %bb.c unwind label %bb.d, !noalias !156, !inline_history !155

bb.d:                                             ; preds = %.lr.ph6
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !156, !inline_history !155
  unreachable

.body:                                            ; preds = %bb.c, %.body.i
  %i.r = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 8) #50, !noalias !156
  resume { ptr, i32 } %i.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %i.s = mul nuw nsw i64 %i.c, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef 8) #50, !noalias !156
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast18VariableAssignmentEEB1f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = mul nuw nsw i64 %.val1, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 4) #50
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast18VariableAssignmentEEB1f_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast18VariableAssignmentEEB1f_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEEB1f_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i32, ptr %i.c, align 8, !range !21, !alias.scope !161, !noundef !12
  %i.e = icmp eq i32 %.val8.i.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val9.i.i = load ptr, ptr %i.f, align 8, !alias.scope !161, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef 32, i64 noundef 4) #50, !noalias !161
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.g = icmp eq i64 %i.d, %.val1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i, label %.lr.ph.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i
  %i.h = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef 8) #50
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEEB1f_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEEB1f_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !172, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !172, !nonnull !12, !noundef !12
  %i.d = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 4) #50, !noalias !172
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit unwind label %bb.c, !inline_history !20

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #48
          to label %common.resume unwind label %bb.d, !inline_history !20

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !20
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.w, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !175, !nonnull !12, !noundef !12 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !175, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.l, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.m = icmp eq i64 %i.o, %i.l
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %.sroa.0.0.i4 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %.sroa.0.0.i4 ; 3 uses
  %i.o = add nuw i64 %.sroa.0.0.i4, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176), !noalias !175
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.val1.i.i2 = load i64, ptr %i.p, align 8, !alias.scope !177, !noalias !175, !noundef !12 ; 2 uses
  %i.q = icmp eq i64 %.val1.i.i2, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.val.i.i3 = load ptr, ptr %i.r, align 8, !alias.scope !177, !noalias !175, !nonnull !12, !noundef !12
  %i.s = mul nuw nsw i64 %.val1.i.i2, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i3, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef 4) #50, !noalias !178, !inline_history !1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %bb.e, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i unwind label %bb.g, !noalias !175, !inline_history !2

bb.f:                                             ; preds = %.lr.ph6
  %i.u = add nuw i64 %.sroa.0.1.i5, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.l
  br i1 %i.v, label %.body, label %.lr.ph6

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = icmp eq i64 %i.o, %i.l
  br i1 %i.x, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.g, %bb.f
  %.sroa.0.1.i5 = phi i64 [ %i.u, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.y) #48
          to label %bb.f unwind label %bb.h, !noalias !175, !inline_history !1

bb.h:                                             ; preds = %.lr.ph6
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !175, !inline_history !1
  unreachable

.body:                                            ; preds = %bb.f, %bb.g
  %i.aa = mul nuw nsw i64 %i.l, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef 8) #50, !noalias !175
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %i.ab = mul nuw nsw i64 %i.l, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef 8) #50, !noalias !175
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast19JobContinuationListEBF_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !189, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !189, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i: ; preds = %bb.d
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.0.i16 ; 5 uses
  %i.f = add nuw i64 %.sroa.0.0.i16, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191), !noalias !189
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !192, !noalias !189, !noundef !12 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !192, !noalias !189, !nonnull !12, !noundef !12
  %i.j = mul nuw nsw i64 %.val1.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef 4) #50, !noalias !193, !inline_history !185
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %bb.d unwind label %bb.c, !noalias !189, !inline_history !185

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m)
          to label %.body2 unwind label %bb.e, !noalias !189, !inline_history !186

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i unwind label %bb.f, !inline_history !185

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !189, !inline_history !185
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i: ; preds = %.lr.ph18
  %i.p = add nuw i64 %.sroa.0.1.i17, 1            ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %.body, label %.lr.ph18

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body2

.body2:                                           ; preds = %bb.c, %bb.f
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.l, %bb.c ]
  %i.s = icmp eq i64 %i.f, %i.c
  br i1 %i.s, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i
  %.sroa.0.1.i17 = phi i64 [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i ], [ %i.f, %.body2 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %.sroa.0.1.i17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i unwind label %bb.g, !noalias !189, !inline_history !187

bb.g:                                             ; preds = %.lr.ph18
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !189, !inline_history !188
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i, %.body2
  %i.w = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 8) #50, !noalias !189
  resume { ptr, i32 } %eh.lpad-body3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit.i
  %i.x = mul nuw nsw i64 %i.c, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef 8) #50, !noalias !189
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEEB1f_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #48
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #48
          to label %.body3 unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body3 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit5 unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

.body3:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #48
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit5: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit7 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit5
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %.body3, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.j ], [ %.pn, %.body3 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit7: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit5
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.l:                                             ; preds = %.body3, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !204, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !204, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEEB1f_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i
  %.sroa.0.0.i24 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.0.i24 ; 7 uses
  %i.f = add nuw i64 %.sroa.0.0.i24, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206), !noalias !204
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !207, !noalias !204, !noundef !12 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !207, !noalias !204, !nonnull !12, !noundef !12
  %i.j = mul nuw nsw i64 %.val1.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef 4) #50, !noalias !208, !inline_history !200
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %bb.b, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %bb.d unwind label %bb.c, !noalias !204, !inline_history !200

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m)
          to label %.body2 unwind label %bb.e, !noalias !204, !inline_history !201

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit unwind label %bb.f, !inline_history !200

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !204, !inline_history !200
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body2

.body2:                                           ; preds = %bb.c, %bb.f
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #48
          to label %.body.i unwind label %bb.g, !noalias !204, !inline_history !202

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i unwind label %bb.i, !noalias !204, !inline_history !202

bb.g:                                             ; preds = %.body2
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !204, !inline_history !202
  unreachable

bb.h:                                             ; preds = %.lr.ph26
  %i.t = add nuw i64 %.sroa.0.1.i25, 1            ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.c
  br i1 %i.u, label %.body, label %.lr.ph26

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body2, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %eh.lpad-body3, %.body2 ]
  %i.w = icmp eq i64 %i.f, %i.c
  br i1 %i.w, label %.body, label %.lr.ph26

.lr.ph26:                                         ; preds = %.body.i, %bb.h
  %.sroa.0.1.i25 = phi i64 [ %i.t, %bb.h ], [ %i.f, %.body.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.1.i25
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.x) #48
          to label %bb.h unwind label %bb.j, !noalias !204, !inline_history !203

bb.j:                                             ; preds = %.lr.ph26
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !204, !inline_history !203
  unreachable

.body:                                            ; preds = %bb.h, %.body.i
  %i.z = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef 8) #50, !noalias !204
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEEB1f_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit.i
  %i.aa = mul nuw nsw i64 %i.c, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef 8) #50, !noalias !204
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEEB1f_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !215, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !215, !nonnull !12, !noundef !12
  %i.d = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 4) #50, !noalias !215
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !218, !nonnull !12, !noundef !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !218, !noundef !12 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.f, i64 noundef %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit unwind label %bb.c, !noalias !218, !inline_history !0

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = mul nuw nsw i64 %i.h, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef 8) #50, !noalias !218
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit1

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit1: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit
  %i.m = mul nuw nsw i64 %i.h, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef 8) #50, !noalias !218
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9ForHeaderEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !221, !noundef !12 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !221, !nonnull !12, !noundef !12
  %i.d = mul nuw nsw i64 %.val1.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef 4) #50, !noalias !221
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !22, !noundef !12 ; 2 uses
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.j
    i64 1, label %bb.l
    i64 2, label %bb.o
    i64 3, label %bb.ac
    i64 4, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !334, !nonnull !12, !noundef !12 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !335, !noalias !334, !nonnull !12, !noundef !12 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !335, !noalias !334, !noundef !12 ; 6 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79
  %.sroa.0.0.i.i83 = phi i64 [ %i.n, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79 ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.0.0.i.i83 ; 4 uses
  %i.n = add nuw i64 %.sroa.0.0.i.i83, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336), !noalias !334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !334
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.val1.i.i.i55 = load i64, ptr %i.o, align 8, !alias.scope !338, !noalias !339, !noundef !12 ; 2 uses
  %i.p = icmp eq i64 %.val1.i.i.i55, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.val.i.i.i56 = load ptr, ptr %i.q, align 8, !alias.scope !338, !noalias !339, !nonnull !12, !noundef !12
  %i.r = mul nuw nsw i64 %.val1.i.i.i55, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i56, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 4) #50, !noalias !340, !inline_history !230
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i: ; preds = %bb.c, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341), !noalias !334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342), !noalias !334
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !343, !noalias !339, !nonnull !12, !noundef !12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !343, !noalias !339, !noundef !12 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_.exit.i unwind label %bb.d, !noalias !344, !inline_history !235

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit80, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = mul nuw nsw i64 %i.v, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef 8) #50, !noalias !344
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit80

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit80: ; preds = %bb.e, %bb.d
  %i.z = icmp eq i64 %i.n, %i.k
  br i1 %i.z, label %.body61, label %.lr.ph168

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12ArgumentListEBF_.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_.exit.i
  %i.ab = mul nuw nsw i64 %i.v, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef 8) #50, !noalias !344
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_.exit.i, %bb.f
  %i.ac = icmp eq i64 %i.n, %i.k
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBG_.exit.i, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph168
  %i.ad = add nuw i64 %.sroa.0.1.i.i167, 1        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.k
  br i1 %i.ae, label %.body61, label %.lr.ph168

.lr.ph168:                                        ; preds = %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit80, %bb.g
  %.sroa.0.1.i.i167 = phi i64 [ %i.ad, %bb.g ], [ %i.n, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit80 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.0.1.i.i167
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.af) #48
          to label %bb.g unwind label %bb.h, !noalias !339, !inline_history !236

bb.h:                                             ; preds = %.lr.ph168
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !339, !inline_history !236
  unreachable

.body61:                                          ; preds = %bb.g, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit80
  %i.ah = shl nuw nsw i64 %i.k, 6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef 8) #50, !noalias !339, !inline_history !237
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ai) #48, !noalias !334, !inline_history !238
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 96, i64 noundef 8) #50, !noalias !334
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBG_.exit.i: ; preds = %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit79
  %i.aj = shl nuw nsw i64 %i.k, 6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef 8) #50, !noalias !339, !inline_history !237
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i: ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8CaseItemEBG_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345), !noalias !334
  %.val.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !346, !noalias !334, !nonnull !12, !noundef !12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.val1.i.i = load i64, ptr %i.al, align 8, !alias.scope !346, !noalias !334, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347), !noalias !334
  %i.am = icmp eq i64 %.val1.i.i, 0
  br i1 %i.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast15SwitchStatementEEB1e_.exit, label %.lr.ph.i.i.i.i10

.lr.ph.i.i.i.i10:                                 ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i14
  %.sroa.0.011.i.i.i.i11 = phi i64 [ %i.ao, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i14 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.sroa.0.011.i.i.i.i11 ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.0.011.i.i.i.i11, 1 ; 2 uses
  %.val8.i.i.i.i12 = load i32, ptr %i.an, align 8, !range !21, !alias.scope !347, !noalias !348, !noundef !12
  %i.ap = icmp eq i32 %.val8.i.i.i.i12, 0
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i14, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i10
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %.val9.i.i.i.i13 = load ptr, ptr %i.aq, align 8, !alias.scope !347, !noalias !348, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i13, i64 noundef 32, i64 noundef 4) #50, !noalias !349, !inline_history !238
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i14

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i14: ; preds = %bb.i, %.lr.ph.i.i.i.i10
  %i.ar = icmp eq i64 %i.ao, %.val1.i.i
  br i1 %i.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i15, label %.lr.ph.i.i.i.i10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i15: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i14
  %i.as = shl nuw nsw i64 %.val1.i.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.as, i64 noundef 8) #50, !noalias !348, !inline_history !238
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast15SwitchStatementEEB1e_.exit

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit63, %bb.n, %.body61
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body61 ], [ %i.bj, %bb.n ], [ %.pn.i, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit63 ], [ %i.dq, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71 ], [ %.pn2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast15SwitchStatementEEB1e_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i15, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12CaseItemListEBF_.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 96, i64 noundef 8) #50, !noalias !334
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.j:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.at, align 8, !alias.scope !350, !nonnull !12, !noundef !12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load i64, ptr %i.au, align 8, !alias.scope !350, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.av = icmp eq i64 %.val1, 0
  br i1 %i.av, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i32, ptr %i.aw, align 8, !range !21, !alias.scope !351, !noalias !352, !noundef !12
  %i.ay = icmp eq i32 %.val8.i.i.i.i, 0
  br i1 %i.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !351, !noalias !352, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef 32, i64 noundef 4) #50, !noalias !353
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i
  %i.ba = icmp eq i64 %i.ax, %.val1
  br i1 %i.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i
  %i.bb = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.bb, i64 noundef 8) #50, !noalias !352
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.l:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !354, !nonnull !12, !noundef !12 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356), !noalias !354
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %.val1.i.i16 = load i64, ptr %i.be, align 8, !alias.scope !357, !noalias !354, !noundef !12 ; 2 uses
  %i.bf = icmp eq i64 %.val1.i.i16, 0
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %.val.i.i17 = load ptr, ptr %i.bg, align 8, !alias.scope !357, !noalias !354, !nonnull !12, !noundef !12
  %i.bh = mul nuw nsw i64 %.val1.i.i16, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i17, i64 noundef range(i64 1, -9223372036854775808) %i.bh, i64 noundef 4) #50, !noalias !358, !inline_history !257
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %bb.m, %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast12NotStatementEEB1e_.exit unwind label %bb.n, !inline_history !257

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef 96, i64 noundef 8) #50, !noalias !354
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast12NotStatementEEB1e_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef 96, i64 noundef 8) #50, !noalias !354
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.o:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !359, !nonnull !12, !noundef !12 ; 16 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !range !23, !alias.scope !360, !noalias !359, !noundef !12 ; 3 uses
  %i.bo = icmp ne i32 %i.bn, 4
  tail call void @llvm.assume(i1 %i.bo), !noalias !359
  %i.bp = add nsw i32 %i.bn, -2
  %.inv.i.i = icmp samesign ult i32 %i.bn, 2
  %narrow.i.i = select i1 %.inv.i.i, i32 2, i32 %i.bp
  switch i32 %narrow.i.i, label %bb.p [
    i32 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %.val1.i.i68 = load i64, ptr %i.bq, align 8, !alias.scope !361, !noalias !359, !noundef !12 ; 2 uses
  %i.br = icmp eq i64 %.val1.i.i68, 0
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i.sink.split

bb.q:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %.val1.i.i66 = load i64, ptr %i.bs, align 8, !alias.scope !362, !noalias !359, !noundef !12 ; 2 uses
  %i.bt = icmp eq i64 %.val1.i.i66, 0
  br i1 %i.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i.sink.split

bb.r:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.bu)
          to label %bb.t unwind label %bb.s, !noalias !359, !inline_history !272

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 192
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.body64 unwind label %bb.w, !noalias !359, !inline_history !273

bb.t:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !363, !nonnull !12, !noundef !12 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 200
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !363, !noundef !12 ; 6 uses
  %cond = icmp eq i64 %i.ca, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i, label %.lr.ph164

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i: ; preds = %.lr.ph164
  %i.cb = icmp eq i64 %i.cd, %i.ca
  br i1 %i.cb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBG_.exit.i, label %.lr.ph164

.lr.ph164:                                        ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i
  %.sroa.0.0.i.i163 = phi i64 [ %i.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i ], [ 0, %bb.t ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [160 x i8], ptr %i.by, i64 %.sroa.0.0.i.i163
  %i.cd = add nuw i64 %.sroa.0.0.i.i163, 1        ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.cc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i unwind label %bb.u, !noalias !363, !inline_history !276

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i: ; preds = %.lr.ph166
  %i.ce = add nuw i64 %.sroa.0.1.i.i108165, 1     ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %i.ca
  br i1 %i.cf, label %.body.i109, label %.lr.ph166

bb.u:                                             ; preds = %.lr.ph164
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = icmp eq i64 %i.cd, %i.ca
  br i1 %i.ch, label %.body.i109, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i
  %.sroa.0.1.i.i108165 = phi i64 [ %i.ce, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i ], [ %i.cd, %bb.u ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [160 x i8], ptr %i.by, i64 %.sroa.0.1.i.i108165
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ci)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i unwind label %bb.v, !noalias !363, !inline_history !276

bb.v:                                             ; preds = %.lr.ph166
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !363, !inline_history !277
  unreachable

.body.i109:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i, %bb.u
  %i.ck = mul nuw nsw i64 %i.ca, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef range(i64 1, -9223372036854775808) %i.ck, i64 noundef 8) #50, !noalias !363, !inline_history !278
  br label %.body64

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBG_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit5.i
  %i.cl = mul nuw nsw i64 %i.ca, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef range(i64 1, -9223372036854775808) %i.cl, i64 noundef 8) #50, !noalias !363, !inline_history !278
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i

bb.w:                                             ; preds = %bb.s
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !359, !inline_history !272
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i.sink.split: ; preds = %bb.q, %bb.p
  %.sink107 = phi i64 [ 56, %bb.p ], [ 88, %bb.q ]
  %.val1.i.i66.sink = phi i64 [ %.val1.i.i68, %bb.p ], [ %.val1.i.i66, %bb.q ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink107
  %.val.i.i67 = load ptr, ptr %i.cn, align 8, !noalias !359, !nonnull !12, !noundef !12
  %i.co = mul nuw nsw i64 %.val1.i.i66.sink, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i67, i64 noundef range(i64 1, -9223372036854775808) %i.co, i64 noundef 4) #50, !noalias !359
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i: ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBG_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i.sink.split, %bb.q, %bb.p, %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364), !noalias !359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365), !noalias !359
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !366, !noalias !359, !nonnull !12, !noundef !12 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !366, !noalias !359, !noundef !12 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef %i.cs)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i unwind label %bb.x, !noalias !367, !inline_history !283

.body64:                                          ; preds = %.body.i109, %bb.s
  %eh.lpad-body65 = phi { ptr, i32 } [ %i.bv, %bb.s ], [ %i.cg, %.body.i109 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 208
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ct) #48
          to label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit63 unwind label %bb.ab, !noalias !359, !inline_history !284

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = icmp eq i64 %i.cs, 0
  br i1 %i.cv, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit63, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = mul nuw nsw i64 %i.cs, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cq, i64 noundef range(i64 1, -9223372036854775808) %i.cw, i64 noundef 8) #50, !noalias !367
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit63

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast20BlockStatementHeaderEBF_.exit.i
  %i.cx = icmp eq i64 %i.cs, 0
  br i1 %i.cx, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %bb.z

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i
  %i.cy = mul nuw nsw i64 %i.cs, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cq, i64 noundef range(i64 1, -9223372036854775808) %i.cy, i64 noundef 8) #50, !noalias !367
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i, %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bl, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368), !noalias !359
  %.val.i.i18 = load ptr, ptr %i.cz, align 8, !alias.scope !369, !noalias !359, !nonnull !12, !noundef !12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 232
  %.val1.i.i19 = load i64, ptr %i.da, align 8, !alias.scope !369, !noalias !359, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370), !noalias !359
  %i.db = icmp eq i64 %.val1.i.i19, 0
  br i1 %i.db, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BlockStatementEEB1e_.exit, label %.lr.ph.i.i.i.i20

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit63: ; preds = %bb.x, %bb.y, %.body64
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body65, %.body64 ], [ %i.cu, %bb.y ], [ %i.cu, %bb.x ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 224
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dc) #48, !noalias !359, !inline_history !284
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 240, i64 noundef 8) #50, !noalias !359
  br label %common.resume

.lr.ph.i.i.i.i20:                                 ; preds = %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i24
  %.sroa.0.011.i.i.i.i21 = phi i64 [ %i.de, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i24 ], [ 0, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i18, i64 %.sroa.0.011.i.i.i.i21 ; 2 uses
  %i.de = add nuw nsw i64 %.sroa.0.011.i.i.i.i21, 1 ; 2 uses
  %.val8.i.i.i.i22 = load i32, ptr %i.dd, align 8, !range !21, !alias.scope !370, !noalias !371, !noundef !12
  %i.df = icmp eq i32 %.val8.i.i.i.i22, 0
  br i1 %i.df, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i24, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i20
  %i.dg = getelementptr i8, ptr %i.dd, i64 8
  %.val9.i.i.i.i23 = load ptr, ptr %i.dg, align 8, !alias.scope !370, !noalias !371, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i23, i64 noundef 32, i64 noundef 4) #50, !noalias !372, !inline_history !284
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i24

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i24: ; preds = %bb.aa, %.lr.ph.i.i.i.i20
  %i.dh = icmp eq i64 %i.de, %.val1.i.i19
  br i1 %i.dh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i25, label %.lr.ph.i.i.i.i20

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i25: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i24
  %i.di = shl nuw nsw i64 %.val1.i.i19, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i18, i64 noundef range(i64 1, -9223372036854775808) %i.di, i64 noundef 8) #50, !noalias !371, !inline_history !284
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BlockStatementEEB1e_.exit

bb.ab:                                            ; preds = %.body64
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !359, !inline_history !284
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BlockStatementEEB1e_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i25, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 240, i64 noundef 8) #50, !noalias !359
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.ac:                                            ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !373, !nonnull !12, !noundef !12 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375), !noalias !373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376), !noalias !373
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !377, !noalias !373, !nonnull !12, !noundef !12 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !377, !noalias !373, !noundef !12 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.dn, i64 noundef %i.dp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i30 unwind label %bb.ad, !noalias !378, !inline_history !297

bb.ad:                                            ; preds = %bb.ac
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = icmp eq i64 %i.dp, 0
  br i1 %i.dr, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = mul nuw nsw i64 %i.dp, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef range(i64 1, -9223372036854775808) %i.ds, i64 noundef 8) #50, !noalias !378
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit71: ; preds = %bb.ae, %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dt) #48, !noalias !373, !inline_history !298
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef 64, i64 noundef 8) #50, !noalias !373
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i30: ; preds = %bb.ac
  %i.du = icmp eq i64 %i.dp, 0
  br i1 %i.du, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit70, label %bb.af

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i30
  %i.dv = mul nuw nsw i64 %i.dp, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef range(i64 1, -9223372036854775808) %i.dv, i64 noundef 8) #50, !noalias !378
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit70

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit70: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i30, %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379), !noalias !373
  %.val.i.i33 = load ptr, ptr %i.dw, align 8, !alias.scope !380, !noalias !373, !nonnull !12, !noundef !12 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %.val1.i.i34 = load i64, ptr %i.dx, align 8, !alias.scope !380, !noalias !373, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381), !noalias !373
  %i.dy = icmp eq i64 %.val1.i.i34, 0
  br i1 %i.dy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BraceStatementEEB1e_.exit, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit70, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i39
  %.sroa.0.011.i.i.i.i36 = phi i64 [ %i.ea, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i39 ], [ 0, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit70 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i33, i64 %.sroa.0.011.i.i.i.i36 ; 2 uses
  %i.ea = add nuw nsw i64 %.sroa.0.011.i.i.i.i36, 1 ; 2 uses
  %.val8.i.i.i.i37 = load i32, ptr %i.dz, align 8, !range !21, !alias.scope !381, !noalias !382, !noundef !12
  %i.eb = icmp eq i32 %.val8.i.i.i.i37, 0
  br i1 %i.eb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i39, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i35
  %i.ec = getelementptr i8, ptr %i.dz, i64 8
  %.val9.i.i.i.i38 = load ptr, ptr %i.ec, align 8, !alias.scope !381, !noalias !382, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i38, i64 noundef 32, i64 noundef 4) #50, !noalias !383, !inline_history !298
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i39

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i39: ; preds = %bb.ag, %.lr.ph.i.i.i.i35
  %i.ed = icmp eq i64 %i.ea, %.val1.i.i34
  br i1 %i.ed, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i40, label %.lr.ph.i.i.i.i35

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i40: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i39
  %i.ee = shl nuw nsw i64 %.val1.i.i34, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i33, i64 noundef range(i64 1, -9223372036854775808) %i.ee, i64 noundef 8) #50, !noalias !382, !inline_history !298
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BraceStatementEEB1e_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BraceStatementEEB1e_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i40, %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit70
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef 64, i64 noundef 8) #50, !noalias !373
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

bb.ah:                                            ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !384, !nonnull !12, !noundef !12 ; 17 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.eh)
          to label %bb.aj unwind label %bb.ai, !noalias !384, !inline_history !305

bb.ai:                                            ; preds = %bb.ah
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ej) #48
          to label %.body113 unwind label %bb.am, !noalias !384, !inline_history !305

bb.aj:                                            ; preds = %bb.ah
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386), !noalias !384
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !387, !noalias !384, !nonnull !12, !noundef !12 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 184
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !387, !noalias !384, !noundef !12 ; 6 uses
  %cond169 = icmp eq i64 %i.en, 0
  br i1 %cond169, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit, label %.lr.ph160

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i: ; preds = %.lr.ph160
  %i.eo = icmp eq i64 %i.eq, %i.en
  br i1 %i.eo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit.i, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i
  %.sroa.0.0.i.i110159 = phi i64 [ %i.eq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i ], [ 0, %bb.aj ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [160 x i8], ptr %i.el, i64 %.sroa.0.0.i.i110159
  %i.eq = add nuw i64 %.sroa.0.0.i.i110159, 1     ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ep)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i unwind label %bb.ak, !noalias !388, !inline_history !310

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i: ; preds = %.lr.ph162
  %i.er = add nuw i64 %.sroa.0.1.i.i111161, 1     ; 2 uses
  %i.es = icmp eq i64 %i.er, %i.en
  br i1 %i.es, label %.body.i112, label %.lr.ph162

bb.ak:                                            ; preds = %.lr.ph160
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = icmp eq i64 %i.eq, %i.en
  br i1 %i.eu, label %.body.i112, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i
  %.sroa.0.1.i.i111161 = phi i64 [ %i.er, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i ], [ %i.eq, %bb.ak ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [160 x i8], ptr %i.el, i64 %.sroa.0.1.i.i111161
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ev)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i unwind label %bb.al, !noalias !388, !inline_history !310

bb.al:                                            ; preds = %.lr.ph162
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !388, !inline_history !311
  unreachable

.body.i112:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit7.i.i, %bb.ak
  %i.ex = mul nuw nsw i64 %i.en, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef range(i64 1, -9223372036854775808) %i.ex, i64 noundef 8) #50, !noalias !388, !inline_history !312
  br label %.body113

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8AndorJobEBF_.exit.i.i
  %i.ey = mul nuw nsw i64 %i.en, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef range(i64 1, -9223372036854775808) %i.ey, i64 noundef 8) #50, !noalias !388, !inline_history !312
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit

.body113:                                         ; preds = %.body.i112, %bb.ai
  %.pn.i.i = phi { ptr, i32 } [ %i.ei, %bb.ai ], [ %i.et, %.body.i112 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eg, i64 192
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ez) #48
          to label %.body.i unwind label %bb.am, !noalias !384, !inline_history !305

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit: ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast8AndorJobEEB1f_.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 192
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i unwind label %bb.an, !noalias !384, !inline_history !305

bb.am:                                            ; preds = %.body113, %bb.ai
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !384, !inline_history !305
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eg, i64 272
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit4.i unwind label %bb.ap, !noalias !384, !inline_history !313

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast12AndorJobListEBF_.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body113, %bb.an
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fd, %bb.an ], [ %.pn.i.i, %.body113 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eg, i64 272
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fe)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i unwind label %bb.av, !noalias !384, !inline_history !313

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit4.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eg, i64 224
  %i.fg = load i32, ptr %i.ff, align 8, !range !24, !alias.scope !389, !noalias !384, !noundef !12
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit6.i, label %bb.aq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i: ; preds = %.body.i, %bb.ap
  %.pn.i43 = phi { ptr, i32 } [ %i.fl, %bb.ap ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eg, i64 224 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !range !24, !alias.scope !390, !noalias !384, !noundef !12
  %i.fk = icmp eq i32 %i.fj, 2
  br i1 %i.fk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fi)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i unwind label %bb.av, !noalias !384, !inline_history !320

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast8IfClauseEBF_.exit.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eg, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392), !noalias !384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393), !noalias !384
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !394, !noalias !384, !nonnull !12, !noundef !12 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eg, i64 264
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !394, !noalias !384, !noundef !12 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.fn, i64 noundef %i.fp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i74 unwind label %bb.ar, !noalias !395, !inline_history !327

bb.ar:                                            ; preds = %bb.aq
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = icmp eq i64 %i.fp, 0
  br i1 %i.fr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fs = mul nuw nsw i64 %i.fp, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef range(i64 1, -9223372036854775808) %i.fs, i64 noundef 8) #50, !noalias !395, !inline_history !328
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i74: ; preds = %bb.aq
  %i.ft = icmp eq i64 %i.fp, 0
  br i1 %i.ft, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit6.i, label %bb.at

bb.at:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i74
  %i.fu = mul nuw nsw i64 %i.fp, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef range(i64 1, -9223372036854775808) %i.fu, i64 noundef 8) #50, !noalias !395, !inline_history !328
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit6.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit6.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit.i74, %bb.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit4.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eg, i64 288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396), !noalias !384
  %.val.i.i45 = load ptr, ptr %i.fv, align 8, !alias.scope !397, !noalias !384, !nonnull !12, !noundef !12 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eg, i64 296
  %.val1.i.i46 = load i64, ptr %i.fw, align 8, !alias.scope !397, !noalias !384, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398), !noalias !384
  %i.fx = icmp eq i64 %.val1.i.i46, 0
  br i1 %i.fx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast11IfStatementEEB1e_.exit, label %.lr.ph.i.i.i.i47

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit.i: ; preds = %bb.as, %bb.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i, %bb.ao
  %.pn2.i = phi { ptr, i32 } [ %.pn.i43, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast16ElseifClauseListEBF_.exit.i ], [ %.pn.i43, %bb.ao ], [ %i.fq, %bb.ar ], [ %i.fq, %bb.as ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eg, i64 288
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast25ArgumentOrRedirectionListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fy) #48, !noalias !384, !inline_history !333
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eg, i64 noundef 304, i64 noundef 8) #50, !noalias !384
  br label %common.resume

.lr.ph.i.i.i.i47:                                 ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit6.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i51
  %.sroa.0.011.i.i.i.i48 = phi i64 [ %i.ga, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i51 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit6.i ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i45, i64 %.sroa.0.011.i.i.i.i48 ; 2 uses
  %i.ga = add nuw nsw i64 %.sroa.0.011.i.i.i.i48, 1 ; 2 uses
  %.val8.i.i.i.i49 = load i32, ptr %i.fz, align 8, !range !21, !alias.scope !398, !noalias !399, !noundef !12
  %i.gb = icmp eq i32 %.val8.i.i.i.i49, 0
  br i1 %i.gb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i51, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i47
  %i.gc = getelementptr i8, ptr %i.fz, i64 8
  %.val9.i.i.i.i50 = load ptr, ptr %i.gc, align 8, !alias.scope !398, !noalias !399, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i50, i64 noundef 32, i64 noundef 4) #50, !noalias !400, !inline_history !333
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i51

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i51: ; preds = %bb.au, %.lr.ph.i.i.i.i47
  %i.gd = icmp eq i64 %i.ga, %.val1.i.i46
  br i1 %i.gd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i52, label %.lr.ph.i.i.i.i47

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i52: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBF_.exit.i.i.i.i51
  %i.ge = shl nuw nsw i64 %.val1.i.i46, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i45, i64 noundef range(i64 1, -9223372036854775808) %i.ge, i64 noundef 8) #50, !noalias !399, !inline_history !333
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast11IfStatementEEB1e_.exit

bb.av:                                            ; preds = %bb.ao, %.body.i
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !384, !inline_history !333
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast11IfStatementEEB1e_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i52, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEEB11_.exit6.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eg, i64 noundef 304, i64 noundef 8) #50, !noalias !384
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast18DecoratedStatementEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionEBG_.exit.i.i.i, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast11IfStatementEEB1e_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BraceStatementEEB1e_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast14BlockStatementEEB1e_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast12NotStatementEEB1e_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs8frGy5WneL6_4fish3ast15SwitchStatementEEB1e_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish9highlight9highlight11HighlighterEBH_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void

bb.h:                                             ; preds = %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11PerprocDataEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #48
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 57646075230342349) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit
  %.sroa.0.066 = phi i64 [ %i.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.066 ; 8 uses
  %i.c = add nuw nsw i64 %.sroa.0.066, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.val1.i.i9 = load i64, ptr %i.d, align 8, !alias.scope !502, !noundef !12 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i9, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph67
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.val.i.i10 = load ptr, ptr %i.f, align 8, !alias.scope !502, !nonnull !12, !noundef !12
  %i.g = mul nuw nsw i64 %.val1.i.i9, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i10, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef 4) #50, !noalias !502, !inline_history !503
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i: ; preds = %bb.b, %.lr.ph67
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %bb.d unwind label %bb.c, !inline_history !503

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.j)
          to label %.body11 unwind label %bb.e, !inline_history !504

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit unwind label %bb.f, !inline_history !503

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !503
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.c, %bb.f
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #48
          to label %.body unwind label %bb.u, !inline_history !505

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !508, !nonnull !12, !noundef !12 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !508, !noundef !12 ; 6 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %.sroa.0.0.i61 = phi i64 [ %i.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %.sroa.0.0.i61 ; 8 uses
  %i.u = add nuw i64 %.sroa.0.0.i61, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !noalias !508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510), !noalias !508
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %.val1.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !511, !noalias !508, !noundef !12 ; 2 uses
  %i.w = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !511, !noalias !508, !nonnull !12, !noundef !12
  %i.y = mul nuw nsw i64 %.val1.i.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef 4) #50, !noalias !512, !inline_history !477
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i: ; preds = %bb.g, %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %bb.i unwind label %bb.h, !noalias !508, !inline_history !477

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ab)
          to label %.body.i unwind label %bb.o, !noalias !508, !inline_history !478

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !513, !noalias !508, !nonnull !12, !noundef !12 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !513, !noalias !508, !noundef !12 ; 5 uses
  %cond = icmp eq i64 %i.af, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i, label %.lr.ph165

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i25
  %i.ag = icmp eq i64 %i.ai, %i.af
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBG_.exit.i, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %.sroa.0.0.i.i163 = phi i64 [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i ], [ 0, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i163 ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.0.i.i163, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514), !noalias !508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515), !noalias !508
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %.val1.i.i.i23 = load i64, ptr %i.aj, align 8, !alias.scope !516, !noalias !517, !noundef !12 ; 2 uses
  %i.ak = icmp eq i64 %.val1.i.i.i23, 0
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i25, label %bb.j

bb.j:                                             ; preds = %.lr.ph165
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.val.i.i.i24 = load ptr, ptr %i.al, align 8, !alias.scope !516, !noalias !517, !nonnull !12, !noundef !12
  %i.am = mul nuw nsw i64 %.val1.i.i.i23, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i24, i64 noundef range(i64 1, -9223372036854775808) %i.am, i64 noundef 4) #50, !noalias !518, !inline_history !485
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i25

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i25: ; preds = %bb.j, %.lr.ph165
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i unwind label %bb.k, !noalias !517, !inline_history !485

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i32
  %i.ao = icmp eq i64 %i.au, %i.af
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge, label %.lr.ph168

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i.i25
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.as = icmp eq i64 %i.ai, %i.af
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit
  %.sroa.0.1.i.i166 = phi i64 [ %i.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit ], [ %i.ai, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %.sroa.0.1.i.i166 ; 3 uses
  %i.au = add nuw i64 %.sroa.0.1.i.i166, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520), !noalias !517
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %.val1.i.i30 = load i64, ptr %i.av, align 8, !alias.scope !521, !noalias !517, !noundef !12 ; 2 uses
  %i.aw = icmp eq i64 %.val1.i.i30, 0
  br i1 %i.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i32, label %bb.l

bb.l:                                             ; preds = %.lr.ph168
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %.val.i.i31 = load ptr, ptr %i.ax, align 8, !alias.scope !521, !noalias !517, !nonnull !12, !noundef !12
  %i.ay = mul nuw nsw i64 %.val1.i.i30, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i31, i64 noundef range(i64 1, -9223372036854775808) %i.ay, i64 noundef 4) #50, !noalias !522, !inline_history !490
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i32

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i32: ; preds = %bb.l, %.lr.ph168
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit unwind label %bb.m, !inline_history !490

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit, %bb.k
  %.val3.i = load i64, ptr %i.ar, align 8, !alias.scope !513, !noalias !508, !noundef !12 ; 2 uses
  %i.ba = icmp eq i64 %.val3.i, 0
  br i1 %i.ba, label %.body.i, label %bb.n

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i32
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !517, !inline_history !491
  unreachable

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge
  %.val2.i = load ptr, ptr %i.aq, align 8, !alias.scope !513, !noalias !508, !nonnull !12, !noundef !12
  %i.bc = mul nuw nsw i64 %.val3.i, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, -9223372036854775808) %i.bc, i64 noundef 8) #50, !noalias !517, !inline_history !492
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBG_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit.i
  %i.bd = mul nuw nsw i64 %i.af, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef range(i64 1, -9223372036854775808) %i.bd, i64 noundef 8) #50, !noalias !517, !inline_history !492
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i

bb.o:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !508, !inline_history !477
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i: ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBG_.exit.i
  %i.bf = icmp eq i64 %i.u, %i.r
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i: ; preds = %bb.r
  %i.bg = icmp eq i64 %i.bj, %i.r
  br i1 %i.bg, label %.body14, label %.lr.ph170

.body.i:                                          ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge ], [ %i.ap, %bb.n ]
  %i.bh = icmp eq i64 %i.u, %i.r
  br i1 %i.bh, label %.body14, label %.lr.ph170

.lr.ph170:                                        ; preds = %.body.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i
  %.sroa.0.1.i169 = phi i64 [ %i.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i ], [ %i.u, %.body.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %.sroa.0.1.i169 ; 5 uses
  %i.bj = add nuw i64 %.sroa.0.1.i169, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524), !noalias !508
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %.val1.i.i16 = load i64, ptr %i.bk, align 8, !alias.scope !525, !noalias !508, !noundef !12 ; 2 uses
  %i.bl = icmp eq i64 %.val1.i.i16, 0
  br i1 %i.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18, label %bb.p

bb.p:                                             ; preds = %.lr.ph170
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %.val.i.i17 = load ptr, ptr %i.bm, align 8, !alias.scope !525, !noalias !508, !nonnull !12, !noundef !12
  %i.bn = mul nuw nsw i64 %.val1.i.i16, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i17, i64 noundef range(i64 1, -9223372036854775808) %i.bn, i64 noundef 4) #50, !noalias !526, !inline_history !497
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18: ; preds = %bb.p, %.lr.ph170
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %bb.r unwind label %bb.q, !noalias !508, !inline_history !497

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bq)
          to label %.body20 unwind label %bb.s, !noalias !508, !inline_history !498

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i unwind label %bb.t, !inline_history !497

bb.s:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !508, !inline_history !497
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body20

.body20:                                          ; preds = %bb.q, %bb.t
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !508, !inline_history !499
  unreachable

.body14:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i, %.body.i
  %i.bu = mul nuw nsw i64 %i.r, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef range(i64 1, -9223372036854775808) %i.bu, i64 noundef 8) #50, !noalias !508
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %i.bv = mul nuw nsw i64 %i.r, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef range(i64 1, -9223372036854775808) %i.bv, i64 noundef 8) #50, !noalias !508
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit

bb.u:                                             ; preds = %.body11
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !505
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit
  %i.bx = icmp eq i64 %i.c, %1
  br i1 %i.bx, label %._crit_edge, label %.lr.ph67

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit, %bb.a
  ret void

bb.v:                                             ; preds = %.lr.ph172
  %i.by = add nuw nsw i64 %.sroa.0.1171, 1        ; 2 uses
  %i.bz = icmp eq i64 %i.by, %1
  br i1 %i.bz, label %._crit_edge173, label %.lr.ph172

.body:                                            ; preds = %.body14, %.body11
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body12, %.body11 ], [ %eh.lpad-body.i, %.body14 ]
  %i.ca = icmp eq i64 %i.c, %1
  br i1 %i.ca, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %.body, %bb.v
  %.sroa.0.1171 = phi i64 [ %i.by, %bb.v ], [ %i.c, %.body ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.1171
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.cb) #48
          to label %bb.v unwind label %bb.w

._crit_edge173:                                   ; preds = %bb.v, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.w:                                             ; preds = %.lr.ph172
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: noreturn nonlazybind uwtable
define hidden void @_RINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB4_8builtins11fish_indent13throwing_mainEB4_() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish3nix6isatty(i32 noundef 0)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins11fish_indent13throwing_mainEs_0E3newBL_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit, %bb.a
  %i.c = call fastcc noundef i32 @_RNvYNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent13throwing_mainINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_() #52
  call fastcc void @_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB6_8builtins11fish_indent13throwing_mainE0B6_() #52
  call void @_RNvNtCsaL1QbXo9JQH_3std7process4exit(i32 noundef %i.c) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 14)
  %i.d = load i64, ptr %i.a, align 8, !range !25, !noundef !12
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.l, %bb.k ], [ %i.l, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call { ptr, ptr } @_RNvNtCsaL1QbXo9JQH_3std9panicking9take_hook() ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 7 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 8 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50
  %i.j = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 97) 16, i64 noundef range(i64 1, 9) 8) #50 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins11fish_indent13throwing_mainEs_0E3newBL_.exit, !prof !16

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #53
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.m = load ptr, ptr %i.i, align 8, !invariant.load !12, !noalias !529 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  invoke void %i.m(ptr noundef nonnull %i.h)
          to label %bb.j unwind label %bb.l, !noalias !529

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !17, !invariant.load !12, !noalias !529 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !18, !invariant.load !12, !noalias !529
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #50, !noalias !529
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !12, !noalias !529 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !18, !invariant.load !12, !noalias !529
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #50, !noalias !529
  br label %.body

.body:                                            ; preds = %bb.l, %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins11fish_indent13throwing_mainEs_0E3newBL_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store ptr %i.h, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.y, align 8
  call void @_RNvNtCsaL1QbXo9JQH_3std9panicking8set_hook(ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @9)
  br label %bb.b
}

; Function Attrs: noreturn nonlazybind uwtable
define hidden void @_RINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB4_8builtins15fish_key_reader13throwing_mainEB4_() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish3nix6isatty(i32 noundef 0)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins15fish_key_reader13throwing_mainEs_0E3newBL_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit, %bb.a
  %i.c = call fastcc noundef i32 @_RNvYNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader13throwing_mainINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_() #52
  call fastcc void @_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB6_8builtins15fish_key_reader13throwing_mainE0B6_() #52
  call void @_RNvNtCsaL1QbXo9JQH_3std7process4exit(i32 noundef %i.c) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 14)
  %i.d = load i64, ptr %i.a, align 8, !range !25, !noundef !12
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.l, %bb.k ], [ %i.l, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call { ptr, ptr } @_RNvNtCsaL1QbXo9JQH_3std9panicking9take_hook() ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 7 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 8 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50
  %i.j = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 97) 16, i64 noundef range(i64 1, 9) 8) #50 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins15fish_key_reader13throwing_mainEs_0E3newBL_.exit, !prof !16

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #53
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
end_hunk_2
begin_hunk_3_@_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB6_8builtins15fish_key_reader13throwing_mainEs_0B6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ae, %bb.aa, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(18) %0, ptr %.0.val, ptr nofree readonly captures(none) %.8.val, i8 noundef range(i8 0, 30) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [18 x i8], align 1                ; 6 uses
  %i.c = alloca [3 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.e = zext nneg i8 %1 to i64
  %switch.gep41 = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_.466, i64 %i.e
  %switch.load42 = load i8, ptr %switch.gep41, align 1 ; 2 uses
  store i8 %1, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %switch.load42, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 0, ptr %i.g, align 1
  %i.h = icmp eq i8 %1, %switch.load42
  %narrow = select i1 %i.h, i8 1, i8 %switch.load
  %spec.select.1 = zext i8 %narrow to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.select.1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !12, !nonnull !12
  br label %switch.lookup43

switch.lookup43:                                  ; preds = %switch.lookup, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit
  %.sroa.021.017 = phi ptr [ %i.c, %switch.lookup ], [ %i.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.021.017, i64 1 ; 2 uses
  %i.m = load i8, ptr %.sroa.021.017, align 1, !range !39, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = zext nneg i8 %i.m to i64
  %switch.gep44 = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_.467, i64 %i.n
  %switch.load45 = load i8, ptr %switch.gep44, align 1
  %switch.ext46 = zext i8 %switch.load45 to i64
  %i.o = zext nneg i8 %i.m to i64
  %switch.gep47 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_.468, i64 %i.o
  %switch.load48 = load ptr, ptr %switch.gep47, align 8
  call void %i.k(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %switch.load48, i64 noundef %switch.ext46) #52
  %i.p = load ptr, ptr %i.a, align 8, !noundef !12
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, label %bb.a

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 3, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 3, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 3, ptr %i.s, align 1
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %0, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 6, ptr %.sroa.8.0..sroa_idx, align 1
  br label %bb.l

bb.a:                                             ; preds = %switch.lookup43
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight29parse_text_face_for_highlight(ptr noalias nofree noundef nonnull sret([18 x i8]) align 1 captures(none) dereferenceable(18) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.e

bb.b:                                             ; preds = %bb.h
  %.pr = load ptr, ptr %i.a, align 8, !alias.scope !1507 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.t = icmp eq ptr %.pr, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = atomicrmw sub ptr %.pr, i64 1 release, align 8, !noalias !1508
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit: ; preds = %switch.lookup43, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = icmp eq ptr %i.l, %i.i
  br i1 %i.w, label %._crit_edge, label %switch.lookup43

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !1509, !noundef !12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !1510
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #47
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57 unwind label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.b, align 1, !range !29, !noundef !12
  %.not54 = icmp eq i8 %i.ac, 2
  br i1 %.not54, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 1 dereferenceable(18) %i.b, i64 18, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !1511, !noundef !12 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !1512
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57: ; preds = %bb.f, %bb.e, %bb.g
  resume { ptr, i32 } %i.x
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !12 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !1518 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !1518 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1518 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1518 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.619.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us
  %i.p = add nuw i64 %.sroa.619.0.i.us18, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !12
  %i.t = load i8, ptr %i.r, align 1, !noundef !12
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !alias.scope !1516, !noalias !1517
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !alias.scope !1517, !noalias !1516
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !1516, !noalias !1517
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !1517, !noalias !1516
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5 ], [ false, %bb.a ], [ false, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.08, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB8_6decode19InputEventQueuerExt9parse_csis0_0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(20) initializes((0, 17)) %0, ptr nofree readonly captures(none) %.0.val, i32 noundef range(i32 0, 1114112) %1, i32 noundef range(i32 -1, 1114112) %2, i32 noundef range(i32 -1, 1114112) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load i32, ptr %i.c, align 4, !noundef !12 ; 2 uses
  %i.e = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 1) ; 2 uses
  %i.f = trunc i32 %i.e to i8                     ; 4 uses
  %i.g = and i8 %i.f, 1                           ; 2 uses
  %i.h = and i32 %i.e, 79
  %or.cond22 = icmp eq i32 %i.h, 65
  br i1 %or.cond22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0 = phi i8 [ %i.g, %bb.a ], [ %.23, %bb.c ]
  %.not = icmp eq i32 %2, -1
  %. = select i1 %.not, i32 0, i32 %2
  %.not21 = icmp eq i32 %3, -1
  %.sroa.018.0 = select i1 %.not21, i32 0, i32 %3
  %i.i = lshr i8 %i.f, 3
  %i.j = and i8 %i.i, 1
  %i.k = lshr i8 %i.f, 1
  %i.l = and i8 %i.k, 1
  %i.m = lshr i8 %i.f, 2
  %i.n = and i8 %i.m, 1
  %i.o = icmp ne i32 %i.d, 0
  store i32 %1, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.n, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.l, ptr %.sroa.516.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.j, ptr %.sroa.7.0..sroa_idx, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = zext i1 %i.o to i8
  store i8 %i.q, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %., ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.018.0, ptr %i.s, align 4
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_upper(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !33, !noundef !12
  %i.v = icmp eq i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = load i32, ptr %i.w, align 4, !range !33
  %i.y = icmp eq i32 %i.x, 0
  %spec.select.i = select i1 %i.y, i64 1, i64 2
  %.sroa.4.0.i = select i1 %i.v, i64 %spec.select.i, i64 3
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.z = call noundef zeroext i1 @_RINvYNtNtCs3oUPovFnLWP_4core4char11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator5eq_byINtNtB7_6option6OptioncENCINvYB3_BI_2eqB1t_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, i32 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.23 = select i1 %i.z, i8 %i.g, i8 0
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB8_6decode19InputEventQueuerExt9parse_csis2_0Ba_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = load i8, ptr %i.a, align 1, !range !14, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !13, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !align !13, !noundef !12
  %i.h = load ptr, ptr %i.e, align 8, !nonnull !12, !align !13, !noundef !12
  %i.i = tail call fastcc { i1, i8 } @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer18read_sequence_byteB8_(ptr noalias nofree noundef align 8 dereferenceable(176) %i.g, ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) ; 2 uses
  %i.j = extractvalue { i1, i8 } %i.i, 0
  %i.k = extractvalue { i1, i8 } %i.i, 1
  %i.l = zext i8 %i.k to i32
  %.sroa.04.0 = select i1 %i.j, i32 %i.l, i32 255 ; 2 uses
  %i.m = icmp samesign ult i32 %.sroa.04.0, 32
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.sroa.04.0, -32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.5.0 = phi i32 [ %i.n, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %i.o = icmp eq i32 %.sroa.5.0, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add i32 %.sroa.5.0, -1
  %i.q = zext i32 %i.p to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.3.0 = phi i64 [ %i.q, %bb.e ], [ undef, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtNtBf_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1524, !noalias !1525, !align !13, !noundef !12 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !1524, !noalias !1525
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
end_hunk_3
begin_hunk_4_@_RNvNtCs8frGy5WneL6_4fish6common19reformat_for_screen:.split
bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.ae:                                            ; preds = %.noexc85
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #48
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc85:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i, %.preheader100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val68 = load ptr, ptr %i.j, align 8, !nonnull !12, !noundef !12
  %.val69 = load i64, ptr %i.k, align 8, !noundef !12 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef range(i64 0, 4611686018427387904) %.val69)
          to label %.noexc89 unwind label %bb.ae

.noexc89:                                         ; preds = %.noexc85
  %i.ca = load i64, ptr %.sroa.448.0..sroa_idx, align 8, !alias.scope !2169, !noalias !2170, !noundef !12 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 2305843009213693952
  call void @llvm.assume(i1 %i.cb)
  %.not.i.i87 = icmp eq i64 %.val69, 0
  br i1 %.not.i.i87, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc89
  %i.cc = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !2169, !noalias !2170, !nonnull !12, !noundef !12
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ca
  %i.ce = shl nuw nsw i64 %.val69, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cd, ptr nonnull readonly align 4 %.val68, i64 %i.ce, i1 false)
  %.pre.i.i88 = load i64, ptr %.sroa.448.0..sroa_idx, align 8, !alias.scope !2169, !noalias !2170
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.noexc89
  %i.cf = phi i64 [ %.pre.i.i88, %bb.af ], [ %i.ca, %.noexc89 ]
  %i.cg = add i64 %i.cf, %.val69
  store i64 %i.cg, ptr %.sroa.448.0..sroa_idx, align 8, !alias.scope !2169, !noalias !2170
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp104.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc80, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.ak
  %.sroa.011.2 = phi i64 [ %.sroa.011.0138, %bb.ak ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ], [ %i.bg, %.noexc80 ]
  %.sroa.0.2 = phi i64 [ %i.ck, %bb.ak ], [ %.sroa.0.1137, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ], [ %.sroa.0.1121, %.noexc80 ] ; 2 uses
  %i.cj = icmp ult i64 %.sroa.0.2, %2
  br i1 %i.cj, label %.preheader101, label %._crit_edge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.ak:                                            ; preds = %.loopexit98, %bb.e
  %i.ck = add nuw i64 %.sroa.0.0139, 1
  br label %bb.aj

bb.al:                                            ; preds = %.body
  resume { ptr, i32 } %.pn66
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6common19valid_var_name_char(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish5wutil13fish_iswalnum(i32 noundef %0)
  %i.b = icmp eq i32 %0, 95
  %.sroa.0.0 = or i1 %i.b, %i.a
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish6common23get_omitted_newline_str() unnamed_addr #19 {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNtCs8frGy5WneL6_4fish6common19OMITTED_NEWLINE_STR monotonic, align 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish6common23init_special_chars_once() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads15is_forked_child() ; 0 uses
  %i.b = load atomic i32, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_(ptr noundef nonnull align 4 @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i: ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT, i64 4), align 4, !range !50, !noundef !12
  %.not.i = icmp eq i8 %i.d, -1
  br i1 %.not.i, label %_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit, label %bb.c

_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i
  %i.e = tail call noundef zeroext i1 @_RNvCs5UXtnEuoeIl_11fish_common18is_console_session() ; 2 uses
  %. = select i1 %i.e, ptr @260, ptr @258
  %.3 = select i1 %i.e, i32 42, i32 9679
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i, %_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit
  %.sink2 = phi ptr [ @262, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i ], [ %., %_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit ]
  %.sink = phi i32 [ 8226, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i ], [ %.3, %_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit ]
  store atomic ptr %.sink2, ptr @_RNvNtCs8frGy5WneL6_4fish6common19OMITTED_NEWLINE_STR monotonic, align 8
  store atomic i32 %.sink, ptr @_RNvCs5UXtnEuoeIl_11fish_common21OBFUSCATION_READ_CHAR monotonic, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6common26has_working_tty_timestamps() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads15is_forked_child() ; 0 uses
  %i.b = load atomic i32, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_(ptr noundef nonnull align 4 @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i: ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT, i64 4), align 4, !range !50, !noundef !12
  %i.e = icmp ne i8 %i.d, 1
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux(i8 noundef range(i8 0, 3) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads15is_forked_child() ; 0 uses
  %i.b = load atomic i32, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_(ptr noundef nonnull align 4 @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit: ; preds = %bb.a, %bb.b
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT, i64 4), align 4, !range !50, !noundef !12 ; 2 uses
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit
  %i.e = icmp eq i8 %0, 0
  %i.f = icmp eq i8 %i.d, %0
  %spec.select = or i1 %i.e, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit ], [ %spec.select, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac(double noundef %0) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  br i1 %i.a, label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %0, f0x43F0000000000000
  br i1 %i.b, label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @llvm.fptoui.sat.i64.f64(double %0) ; 4 uses
  switch i64 %i.c, label %.lr.ph [
    i64 0, label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit
    i64 1, label %.preheader.i._crit_edge
  ]

.preheader.i:                                     ; preds = %.lr.ph
  %i.d = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %i.e = add nuw i64 %i.f, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %i.c
  br i1 %exitcond.not.i, label %.preheader.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.preheader.i
  %.sroa.01.0.i8 = phi i64 [ %i.d, %.preheader.i ], [ 1, %bb.c ]
  %i.f = phi i64 [ %i.e, %.preheader.i ], [ 1, %bb.c ] ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i8, i64 %i.f) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit, label %.preheader.i

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %bb.c
  %.sroa.01.0.i.lcssa = phi i64 [ %i.c, %bb.c ], [ %i.d, %.preheader.i ]
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i.lcssa, i64 %i.c) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %i.l = uitofp i64 %i.k to double
  %i.m = select i1 %i.j, double +inf, double %i.l
  br label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit

_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit: ; preds = %.lr.ph, %bb.c, %.preheader.i._crit_edge, %bb.b, %bb.a
  %.sroa.0.0 = phi double [ +inf, %bb.b ], [ +qnan, %bb.a ], [ 1.000000e+00, %bb.c ], [ %i.m, %.preheader.i._crit_edge ], [ +inf, %.lr.ph ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr(double noundef %0, double noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, 0.000000e+00
  %i.c = fcmp olt double %1, 0.000000e+00
  %or.cond = or i1 %i.b, %i.c
  %i.d = fcmp olt double %0, %1
  %or.cond1 = or i1 %i.d, %or.cond
  br i1 %or.cond1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ogt double %0, f0x43F0000000000000
  %i.f = fcmp ogt double %1, f0x43F0000000000000
  %or.cond2 = or i1 %i.e, %i.f
  br i1 %or.cond2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @llvm.fptoui.sat.i64.f64(double %0) ; 5 uses
  %i.h = tail call i64 @llvm.fptoui.sat.i64.f64(double %1) ; 4 uses
  %i.i = lshr i64 %i.g, 1
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, %i.h
  br i1 %i.k, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.g
  %.sroa.03.0 = phi i64 [ %i.n, %bb.g ], [ %i.h, %bb.d ] ; 4 uses
  %.not.i28 = icmp eq i64 %.sroa.03.0, 0
  br i1 %.not.i28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.l = icmp ult i64 %i.g, %.sroa.03.0
  %i.m = sub nuw i64 %i.g, %.sroa.03.0            ; 2 uses
  br i1 %i.l, label %bb.i, label %.lr.ph.split

bb.g:                                             ; preds = %bb.e
  %i.n = sub nuw i64 %i.g, %i.h
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #54
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.sroa.07.030 = phi i64 [ %i.v, %bb.l ], [ 1, %.lr.ph ]
  %.sroa.0.01829 = phi i64 [ %i.o, %bb.l ], [ 1, %.lr.ph ] ; 4 uses
  %i.o = add i64 %.sroa.0.01829, 1
  %i.p = add i64 %.sroa.0.01829, %i.m             ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.k, label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.r = uitofp i64 %i.v to double
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.f, %._crit_edge.loopexit, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi double [ %i.r, %._crit_edge.loopexit ], [ +inf, %bb.a ], [ +qnan, %bb.b ], [ +inf, %bb.c ], [ 1.000000e+00, %bb.f ], [ +inf, %bb.j ]
  ret double %.sroa.0.0

bb.i:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #54
  unreachable

bb.j:                                             ; preds = %.lr.ph.split
  %i.s = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.07.030, i64 %i.p) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %.loopexit, label %bb.l, !prof !16

bb.k:                                             ; preds = %.lr.ph.split
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #54
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = udiv i64 %i.u, %.sroa.0.01829            ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.0.01829, %.sroa.03.0
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr3npr(double noundef %0, double noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, 0.000000e+00
  %i.c = fcmp olt double %1, 0.000000e+00
  %or.cond.i = or i1 %i.b, %i.c
  %i.d = fcmp olt double %0, %1
  %or.cond1.i = or i1 %i.d, %or.cond.i
  br i1 %or.cond1.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ogt double %0, f0x43F0000000000000
  %i.f = fcmp ogt double %1, f0x43F0000000000000
  %or.cond2.i = or i1 %i.e, %i.f
  br i1 %or.cond2.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @llvm.fptoui.sat.i64.f64(double %0) ; 5 uses
  %i.h = tail call i64 @llvm.fptoui.sat.i64.f64(double %1) ; 4 uses
  %i.i = lshr i64 %i.g, 1
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, %i.h
  br i1 %i.k, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.03.0.i = phi i64 [ %i.n, %bb.g ], [ %i.h, %bb.d ] ; 4 uses
  %.not.i28.i = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %.not.i28.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.l = icmp ult i64 %i.g, %.sroa.03.0.i
  %i.m = sub nuw i64 %i.g, %.sroa.03.0.i          ; 2 uses
  br i1 %i.l, label %bb.i, label %.lr.ph.split.i

bb.g:                                             ; preds = %bb.e
  %i.n = sub nuw i64 %i.g, %i.h
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #54
  unreachable

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.l
  %.sroa.07.030.i = phi i64 [ %i.v, %bb.l ], [ 1, %.lr.ph.i ]
  %.sroa.0.01829.i = phi i64 [ %i.o, %bb.l ], [ 1, %.lr.ph.i ] ; 4 uses
  %i.o = add i64 %.sroa.0.01829.i, 1
  %i.p = add i64 %.sroa.0.01829.i, %i.m           ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.k, label %bb.j

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %i.r = uitofp i64 %i.v to double
  br label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #54
  unreachable

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.s = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.07.030.i, i64 %i.p) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.l, !prof !16

bb.k:                                             ; preds = %.lr.ph.split.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #54
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = udiv i64 %i.u, %.sroa.0.01829.i          ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0.01829.i, %.sroa.03.0.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.split.i

_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit:      ; preds = %bb.j, %bb.a, %bb.b, %bb.c, %bb.f, %._crit_edge.loopexit.i
  %.sroa.0.0.i = phi double [ %i.r, %._crit_edge.loopexit.i ], [ +inf, %bb.a ], [ +qnan, %bb.b ], [ +inf, %bb.c ], [ 1.000000e+00, %bb.f ], [ +inf, %bb.j ]
  %i.w = fcmp olt double %1, 0.000000e+00
  br i1 %i.w, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit, label %bb.m

bb.m:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit
  %i.x = fcmp ogt double %1, f0x43F0000000000000
  br i1 %i.x, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = tail call i64 @llvm.fptoui.sat.i64.f64(double %1) ; 4 uses
  switch i64 %i.y, label %.lr.ph [
    i64 0, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit
    i64 1, label %.preheader.i.i._crit_edge
  ]

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.z = extractvalue { i64, i1 } %i.ac, 0        ; 2 uses
  %i.aa = add nuw i64 %i.ab, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.y
  br i1 %exitcond.not.i.i, label %.preheader.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.preheader.i.i
  %.sroa.01.0.i.i13 = phi i64 [ %i.z, %.preheader.i.i ], [ 1, %bb.n ]
  %i.ab = phi i64 [ %i.aa, %.preheader.i.i ], [ 1, %bb.n ] ; 2 uses
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i.i13, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit, label %.preheader.i.i

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %bb.n
  %.sroa.01.0.i.i.lcssa = phi i64 [ %i.y, %bb.n ], [ %i.z, %.preheader.i.i ]
  %i.ae = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i.i.lcssa, i64 %i.y) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %i.ag = extractvalue { i64, i1 } %i.ae, 0
  %i.ah = uitofp i64 %i.ag to double
  %i.ai = select i1 %i.af, double +inf, double %i.ah
  br label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit

_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit:      ; preds = %.lr.ph, %bb.n, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, %bb.m, %.preheader.i.i._crit_edge
  %.sroa.0.0.i1 = phi double [ +inf, %bb.m ], [ +qnan, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit ], [ 1.000000e+00, %bb.n ], [ %i.ai, %.preheader.i.i._crit_edge ], [ +inf, %.lr.ph ]
  %i.aj = fmul double %.sroa.0.0.i, %.sroa.0.0.i1
  ret double %i.aj
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0EB1J_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i
  %.sroa.04.0.i = phi i64 [ %i.h, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i = phi double [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i ], [ -inf, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %.val.i = load double, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %i.c = fcmp uno double %.sroa.02.0.i, 0.000000e+00
  br i1 %i.c, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = fcmp uno double %.val.i, 0.000000e+00
  br i1 %i.d, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %.sroa.02.0.i, %.val.i
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp ogt double %.sroa.02.0.i, %.val.i
  %spec.store.select.i.i = select i1 %i.f, double %.sroa.02.0.i, double %.val.i
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = bitcast double %.sroa.02.0.i to i64
  %.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.i.i, label %bb.f, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i

bb.f:                                             ; preds = %bb.e
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i

_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %.preheader
  %.sroa.0.0.i.i = phi double [ %spec.store.select.i.i, %bb.d ], [ %.val.i, %bb.b ], [ %.sroa.02.0.i, %bb.f ], [ %.val.i, %bb.e ], [ %.sroa.02.0.i, %.preheader ] ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0EB1J_.exit, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0EB1J_.exit: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i, %bb.a
  %.sroa.0.0.i = phi double [ -inf, %bb.a ], [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0EB1J_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i
  %.sroa.04.0.i = phi i64 [ %i.h, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i = phi double [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i ], [ +inf, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %.val.i = load double, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %i.c = fcmp uno double %.sroa.02.0.i, 0.000000e+00
  br i1 %i.c, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = fcmp uno double %.val.i, 0.000000e+00
  br i1 %i.d, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %.sroa.02.0.i, %.val.i
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp olt double %.sroa.02.0.i, %.val.i
  %spec.store.select.i.i = select i1 %i.f, double %.sroa.02.0.i, double %.val.i
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = bitcast double %.sroa.02.0.i to i64
  %.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.i.i, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i

_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %.preheader
  %.sroa.0.0.i.i = phi double [ %spec.store.select.i.i, %bb.d ], [ %.val.i, %bb.b ], [ %.sroa.02.0.i, %bb.f ], [ %.val.i, %bb.e ], [ %.sroa.02.0.i, %.preheader ] ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0EB1J_.exit, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0EB1J_.exit: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, %bb.a
  %.sroa.0.0.i = phi double [ +inf, %bb.a ], [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish8tinyexpr9te_interp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2179
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %1, ptr %i.c, align 8, !noalias !2179
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %2, ptr %i.d, align 8, !noalias !2179
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.e, align 8, !noalias !2179
  store i64 5, ptr %i.a, align 8, !noalias !2179
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 -1, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2179
  call fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a), !noalias !2180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !2181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2179
  %i.f = call fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !inline_history !2174 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.b, align 8, !range !44, !noundef !12 ; 3 uses
  %i.i = icmp ne i64 %i.h, 10
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 11
  br i1 %i.j, label %.lr.ph.i.i, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.0.08.i.i = phi double [ %.sroa.07.0.i.i, %bb.b ], [ %i.f, %bb.a ]
  %i.k = load i8, ptr %i.g, align 8, !range !36, !alias.scope !2182, !noundef !12 ; 2 uses
  %switch.i.i = icmp samesign ult i8 %i.k, 2
  br i1 %switch.i.i, label %bb.b, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread

bb.b:                                             ; preds = %.lr.ph.i.i
  call fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !inline_history !2174
  %i.l = call fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !inline_history !2174 ; 2 uses
  %i.m = icmp eq i8 %i.k, 0
  %i.n = fneg double %i.l
  %.sroa.07.0.p.i.i = select i1 %i.m, double %i.l, double %i.n
  %.sroa.07.0.i.i = fadd double %.sroa.0.08.i.i, %.sroa.07.0.p.i.i ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !range !44, !noundef !12 ; 3 uses
  %i.p = icmp ne i64 %i.o, 10
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.o, 11
  br i1 %i.q, label %.lr.ph.i.i, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit: ; preds = %bb.b, %bb.a
  %i.r = phi i64 [ %i.h, %bb.a ], [ %i.o, %bb.b ]
  %.sroa.0.0.lcssa.i.i = phi double [ %i.f, %bb.a ], [ %.sroa.07.0.i.i, %bb.b ]
  %i.s = icmp eq i64 %i.r, 5
  br i1 %i.s, label %bb.c, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread

bb.c:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit
  store double %.sroa.0.0.lcssa.i.i, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.t, align 8
  br label %bb.d

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread: ; preds = %.lr.ph.i.i, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = load i8, ptr %i.u, align 8, !range !45, !noundef !12 ; 2 uses
  %.not = icmp eq i8 %i.v, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.014.0.copyload = load i64, ptr %i.w, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.617.0..sroa_idx, i64 7, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.y = load i64, ptr %i.x, align 8, !noundef !12
  br label %bb.g

end_hunk_4
begin_hunk_5_@_RNvNtNtCs8frGy5WneL6_4fish5input6decode16invalid_sequence:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2330
  store i64 0, ptr %i.c, align 8, !noalias !2330
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2330
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2330
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.bg, align 8, !noalias !2330
  store ptr %i.c, ptr %i.b, align 8, !noalias !2330
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @768, ptr %i.bh, align 8, !noalias !2330
  %i.bi = invoke noundef zeroext i1 @_RNvXs_NtNtCs8frGy5WneL6_4fish5input6decodeNtB4_12DisplayBytesNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.q unwind label %bb.p, !noalias !2331

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #48
          to label %.body unwind label %bb.s, !noalias !2330

bb.q:                                             ; preds = %bb.o
  br i1 %i.bi, label %bb.r, label %bb.t, !prof !16

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @769, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @771) #54
          to label %.noexc.i unwind label %bb.p, !noalias !2330

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !2330
  unreachable

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !2332
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2332, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2332 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bl = icmp sgt i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.4.0.copyload, ptr %i.d, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bm, ptr %i.bp, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.u unwind label %bb.d

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bq = load i64, ptr %i.m, align 8, !alias.scope !2333, !noundef !12 ; 3 uses
  %i.br = load i64, ptr %i.j, align 8, !range !17, !alias.scope !2333, !noundef !12
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #47
          to label %bb.w unwind label %bb.d

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bt = load ptr, ptr %i.l, align 8, !alias.scope !2333, !nonnull !12, !noundef !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i8 10, ptr %i.bu, align 1
  %i.bv = add i64 %i.bq, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.m, align 8, !alias.scope !2333
  %i.bw = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bv)
          to label %bb.x unwind label %bb.d

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %.body, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.y ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.x
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.b

bb.aa:                                            ; preds = %bb.k
  unreachable

bb.ab:                                            ; preds = %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs8frGy5WneL6_4fish5input6decode9parse_hex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = and i64 %2, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = lshr exact i64 %2, 1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2339
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4611686018427387904) %i.e, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2339
  %i.f = load i64, ptr %i.a, align 8, !range !27, !noalias !2339, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !28, !noalias !2339, !noundef !12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !noalias !2339
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #53, !noalias !2339
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2339, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2339
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !2339
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !2339
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %i.n, align 8, !alias.scope !2339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i
  %.sroa.01.028.i = phi i64 [ %i.ao, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i ], [ 0, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.028.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !2341, !noalias !2340, !noundef !12 ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = icmp ugt i8 %i.q, 57
  %i.t = add nsw i32 %i.r, -65
  %i.u = and i32 %i.t, -33
  %i.v = add nuw nsw i32 %i.u, 10
  %i.w = add nsw i32 %i.r, -48
  %.sroa.02.0.i.i = select i1 %i.s, i32 %i.v, i32 %i.w ; 2 uses
  %i.x = icmp ult i32 %.sroa.02.0.i.i, 16
  br i1 %i.x, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = or disjoint i64 %.sroa.01.028.i, 1       ; 3 uses
  %i.z = icmp samesign ult i64 %i.y, %2
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !2341, !noalias !2340, !noundef !12 ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp ugt i8 %i.ab, 57
  %i.ae = add nsw i32 %i.ac, -65
  %i.af = and i32 %i.ae, -33
  %i.ag = add nuw nsw i32 %i.af, 10
  %i.ah = add nsw i32 %i.ac, -48
  %.sroa.02.0.i21.i = select i1 %i.ad, i32 %i.ag, i32 %i.ah ; 2 uses
  %i.ai = icmp ult i32 %.sroa.02.0.i21.i, 16
  br i1 %i.ai, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i, label %bb.j

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #54
          to label %.noexc1 unwind label %bb.i

.noexc1:                                          ; preds = %bb.g
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.f
  %i.aj = lshr exact i64 %.sroa.01.028.i, 1
  %i.ak = shl nuw nsw i32 %.sroa.02.0.i.i, 4
  %i.al = or disjoint i32 %.sroa.02.0.i21.i, %i.ak
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aj
  store i8 %i.am, ptr %i.an, align 1, !alias.scope !2340, !noalias !2341
  %i.ao = add nuw nsw i64 %.sroa.01.028.i, 2      ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ao, %2
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit

bb.h:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #48
          to label %common.resume unwind label %bb.n

.loopexit:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph.i, %bb.f
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.ap, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, %.loopexit, %bb.h
  ret void

bb.n:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, 8589934594) i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins6random6random(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [72 x i8], align 8                ; 11 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [72 x i8], align 8               ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 11 uses
  %i.al = alloca [72 x i8], align 8               ; 11 uses
  %i.am = alloca [136 x i8], align 8              ; 27 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = load ptr, ptr %2, align 8, !nonnull !12, !align !32, !noundef !12 ; 13 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !12 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr @315, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 104, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %3, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store ptr null, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr @358, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %i.an, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store i64 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store i64 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 5 uses
  store i64 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  store i32 63, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 134
  store i8 1, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 132
  store i8 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 133
  store i8 0, ptr %i.bf, align 1
  store i64 0, ptr %i.am, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  %i.bg = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.am)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #54
  unreachable

.body:                                            ; preds = %bb.dg, %bb.dc, %bb.cp, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %bb.aj, %bb.d, %bb.an, %bb.cc, %bb.dk, %bb.cy, %bb.cn, %bb.bo
  %.pn51 = phi { ptr, i32 } [ %.pn47, %bb.bo ], [ %i.ii, %bb.cy ], [ %i.jf, %bb.dk ], [ %i.hw, %bb.cn ], [ %i.hc, %bb.cc ], [ %i.dx, %bb.an ], [ %i.in, %bb.dc ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %i.hx, %bb.cp ], [ %i.dr, %bb.aj ], [ %i.gs, %bb.by ], [ %i.bh, %bb.d ], [ %i.iw, %bb.dg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.am) #48
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.invoke147, %.invoke, %bb.dp, %bb.dn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.cx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.ch, %bb.cf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit9.i, %bb.bb, %bb.as, %bb.aq, %bb.ag, %bb.aa, %bb.x, %bb.ds, %bb.dr, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0ECs8frGy5WneL6_4fish.exit94, %bb.ct, %bb.cl, %bb.ck, %bb.cj, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0ECs8frGy5WneL6_4fish.exit, %bb.bj, %bb.bq, %bb.ad, %bb.av, %bb.ac, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0ECs8frGy5WneL6_4fish.exit74, %bb.ab, %bb.z, %bb.r, %bb.p, %bb.n, %bb.h, %bb.g, %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  switch i32 %i.bg, label %bb.g [
    i32 -1, label %bb.f
    i32 104, label %bb.h
    i32 58, label %bb.i
    i32 59, label %bb.j
    i32 63, label %bb.k
  ], !prof !2376

bb.f:                                             ; preds = %bb.e
  %i.bi = load i64, ptr %i.ba, align 8, !noundef !12 ; 6 uses
  %i.bj = sub nuw nsw i64 %3, %i.bi               ; 3 uses
  %i.bk = icmp ult i64 %3, %i.bi
  br i1 %i.bk, label %.invoke147, label %bb.v

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @365, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #53
          to label %bb.m unwind label %bb.d

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ao, i64 noundef %i.aq)
          to label %bb.s unwind label %bb.d

bb.i:                                             ; preds = %bb.e
  %i.bl = load i64, ptr %i.ba, align 8, !noundef !12 ; 2 uses
  %i.bm = add i64 %i.bl, -1                       ; 3 uses
  %i.bn = icmp eq i64 %i.bl, 0
  br i1 %i.bn, label %.invoke147, label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.bo = load i64, ptr %i.ba, align 8, !noundef !12 ; 2 uses
  %i.bp = add i64 %i.bo, -1                       ; 3 uses
  %i.bq = icmp eq i64 %i.bo, 0
  br i1 %i.bq, label %.invoke147, label %bb.o

bb.k:                                             ; preds = %bb.e
end_hunk_5
begin_hunk_6_@_RNvNtNtCs8frGy5WneL6_4fish8builtins6random6random:bb.a
  unreachable

bb.dj:                                            ; preds = %bb.de
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !2400, !noalias !2401, !nonnull !12, !align !13, !noundef !12
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.jb = load i8, ptr %i.ja, align 8, !range !14, !alias.scope !2400, !noalias !2401, !noundef !12
  store ptr %i.iz, ptr %i.aj, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store i8 %i.jb, ptr %i.jc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.jd = add nsw i64 %i.bj, -1
  %i.je = invoke noundef i64 @_RINvYINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngENtNtB14_3rng6RngExt12random_rangejINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0, i64 noundef %i.jd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381)
          to label %bb.dl unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jf = landingpad { ptr, i32 }
          cleanup
  %.val61 = load ptr, ptr %i.aj, align 8, !nonnull !12, !align !13, !noundef !12
  %.val62 = load i8, ptr %i.jc, align 8, !range !14, !noundef !12
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish(ptr nonnull %.val61, i8 %.val62) #48
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dj
  %.val = load ptr, ptr %i.aj, align 8, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %.val60 = load i8, ptr %i.jc, align 8, !range !14, !noundef !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.jh = trunc nuw i8 %.val60 to i1
  br i1 %i.jh, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i98, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ji = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.jj = and i64 %i.ji, 9223372036854775807
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i98, label %bb.dn, !prof !15

bb.dn:                                            ; preds = %bb.dm
  %i.jl = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
          to label %.noexc99 unwind label %bb.d

.noexc99:                                         ; preds = %bb.dn
  br i1 %i.jl, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i98, label %bb.do

bb.do:                                            ; preds = %.noexc99
  store atomic i8 1, ptr %i.jg monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i98

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i98: ; preds = %bb.do, %.noexc99, %bb.dm, %bb.dl
  %i.jm = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.jn = icmp eq i32 %i.jm, 2
  br i1 %i.jn, label %bb.dp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit101, !prof !16

bb.dp:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i98
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit101 unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit101: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i98, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !nonnull !12, !align !13, !noundef !12
  %i.jq = add nuw nsw i64 %i.bi, 1
  %i.jr = add i64 %i.jq, %i.je                    ; 4 uses
  %.not50 = icmp ugt i64 %i.jr, %i.bi
  br i1 %.not50, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit101
  %i.js = icmp ult i64 %i.jr, %3
  br i1 %i.js, label %bb.ds, label %.invoke

bb.dr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit101
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #53
          to label %bb.m unwind label %bb.d

bb.ds:                                            ; preds = %bb.dq
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.jr ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !nonnull !12, !align !32, !noundef !12
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !noundef !12
  %i.jx = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ju, i64 noundef %i.jw)
          to label %bb.s unwind label %bb.d       ; 0 uses

.invoke:                                          ; preds = %bb.dq, %bb.q, %bb.o, %bb.l
  %i.jy = phi i64 [ %i.bs, %bb.q ], [ %i.bp, %bb.o ], [ %i.bm, %bb.l ], [ %i.jr, %bb.dq ]
  %i.jz = phi ptr [ @364, %bb.q ], [ @362, %bb.o ], [ @360, %bb.l ], [ @383, %bb.dq ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.jy, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jz) #53
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight12is_cd_option(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50
  %i.b = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 97) 96, i64 noundef range(i64 1, 9) 8) #50 ; 16 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #53
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr @384, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 6, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @385, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @386, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 9, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @387, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr @388, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 10, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @389, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 2, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.b, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 6, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.o, ptr %i.r, align 8
  %i.s = invoke noundef zeroext i1 @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1J_3any5checkBX_NCNvNtNtCs8frGy5WneL6_4fish9highlight9highlight12is_cd_option0E0INtNtNtB1R_3ops12control_flow11ControlFlowuEEB3k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.s

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight14color_variable(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull writeonly captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit.thread, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.a
  store i32 0, ptr %i.a, align 4
  br label %bb.b

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !range !33, !alias.scope !2420, !noundef !12 ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = icmp eq i32 %i.c, 36
  br i1 %i.d, label %.split, label %bb.b, !prof !47

.split:                                           ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit52

bb.b:                                             ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit.thread, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedccECs5UXtnEuoeIl_11fish_common(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @390, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #54
  unreachable

.critedge.preheader.split:                        ; preds = %bb.m, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit52
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0107, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit52 ], [ %1, %bb.m ] ; 2 uses
  %.sroa.022.0.lcssa = trunc i64 %.sroa.0.0.lcssa to i32 ; 2 uses
  br label %.critedge

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit52: ; preds = %.split, %bb.m
  %.sroa.0.0107 = phi i64 [ 0, %.split ], [ %i.h, %bb.m ] ; 11 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.0107
  %i.f = load i32, ptr %i.e, align 4, !range !33, !alias.scope !2421, !noundef !12
  %i.g = icmp eq i32 %i.f, 36
  br i1 %i.g, label %bb.c, label %.critedge.preheader.split

bb.c:                                             ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit52
  %i.h = add nuw nsw i64 %.sroa.0.0107, 1         ; 4 uses
  %i.i = icmp eq i64 %i.h, %1                     ; 2 uses
  br i1 %i.i, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54.thread, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !range !33, !alias.scope !2422, !noundef !12 ; 2 uses
  %i.l = icmp eq i32 %i.k, 36
  br i1 %i.l, label %bb.d, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54.thread

bb.d:                                             ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54.thread, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54
  %i.m = icmp samesign ult i64 %.sroa.0.0107, %3
  br i1 %i.m, label %bb.l, label %bb.k

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54.thread: ; preds = %bb.c, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54
  %.sroa.0.0.i5366 = phi i32 [ %i.k, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54 ], [ 0, %bb.c ] ; 3 uses
  %i.n = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish5wutil13fish_iswalnum(i32 noundef range(i32 0, 1114112) %.sroa.0.0.i5366)
  %i.o = icmp eq i32 %.sroa.0.0.i5366, 95
  %.sroa.0.0.i55 = or i1 %i.o, %i.n
  br i1 %.sroa.0.0.i55, label %bb.d, label %bb.e

bb.e:                                             ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit54.thread
  %i.p = icmp eq i32 %.sroa.0.0.i5366, 40
  %i.q = icmp samesign ult i64 %.sroa.0.0107, %3  ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.l, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0.0107
  store i32 720896, ptr %i.r, align 1
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0107, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #54
  unreachable

_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit: ; preds = %bb.aj, %bb.z, %.lr.ph.i, %middle.block, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread, %bb.h
  %.sroa.0.1 = phi i64 [ %i.h, %bb.h ], [ %.sroa.0.4109, %middle.block ], [ %.sroa.0.2.lcssa121, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread ], [ %.sroa.0.4109, %.lr.ph.i ], [ %i.bi, %bb.aj ], [ %.sroa.0.4109, %bb.z ]
  ret i64 %.sroa.0.1

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0107, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @392) #54
  unreachable

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0107, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @393) #54
  unreachable

bb.l:                                             ; preds = %bb.d, %bb.g
  %.sink = phi i32 [ 65536, %bb.g ], [ 720896, %bb.d ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0.0107
  store i32 %.sink, ptr %i.s, align 1
  %exitcond = icmp eq i64 %.sroa.0.0107, 2147483647
  br i1 %exitcond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.i, label %.critedge.preheader.split, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit52

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @394) #54
  unreachable

.critedge:                                        ; preds = %.critedge.preheader.split, %bb.w
  %.sroa.0.2 = phi i64 [ %i.al, %bb.w ], [ %.sroa.0.0.lcssa, %.critedge.preheader.split ] ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.t = icmp eq i64 %.sroa.0.2, %1
  br i1 %i.t, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit57, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.u = icmp ult i64 %.sroa.0.2, %1
  br i1 %i.u, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit57.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.2, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @882) #54, !noalias !2423
  unreachable

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit57: ; preds = %.critedge
  %i.v = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish5wutil13fish_iswalnum(i32 noundef range(i32 0, 1114112) 0)
  br i1 %i.v, label %bb.q, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit57.thread: ; preds = %bb.o
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.2
  %i.x = load i32, ptr %i.w, align 4, !range !33, !alias.scope !2423, !noundef !12 ; 3 uses
  %i.y = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish5wutil13fish_iswalnum(i32 noundef range(i32 0, 1114112) %i.x)
  %i.z = icmp eq i32 %i.x, 95
  %.sroa.0.0.i5868 = or i1 %i.z, %i.y
  br i1 %.sroa.0.0.i5868, label %bb.q, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit60

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit60: ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit57.thread
  %i.aa = icmp eq i32 %i.x, 92
  br i1 %i.aa, label %bb.r, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread

bb.q:                                             ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit57.thread, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit57
  %i.ab = icmp ult i64 %.sroa.0.2, %3
  br i1 %i.ab, label %bb.w, label %bb.al

bb.r:                                             ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit60
  %i.ac = add nuw i64 %.sroa.0.2, 1               ; 5 uses
  %i.ad = icmp eq i64 %i.ac, %1
  br i1 %i.ad, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62: ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.af = load i32, ptr %i.ae, align 4, !range !33, !alias.scope !2424, !noundef !12
  %i.ag = icmp eq i32 %i.af, 10
  br i1 %i.ag, label %bb.s, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread

bb.s:                                             ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62
  %i.ah = icmp ult i64 %.sroa.0.2, %3
  br i1 %i.ah, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0.2
  store i32 720896, ptr %i.ai, align 1
  %i.aj = icmp ult i64 %i.ac, %3
  br i1 %i.aj, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #54
  unreachable

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #54
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.q
  %.sink172 = phi i64 [ %.sroa.0.2, %bb.q ], [ %i.ac, %bb.t ]
  %.sink170 = phi i64 [ 1, %bb.q ], [ 2, %bb.t ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sink172
  store i32 720896, ptr %i.ak, align 1
  %i.al = add nuw nsw i64 %.sroa.0.2, %.sink170
  br label %.critedge

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread: ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit57, %bb.r, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit60
  %.sroa.0.2.lcssa121 = phi i64 [ %1, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit57 ], [ %.sroa.0.2, %bb.r ], [ %.sroa.0.2, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62 ], [ %.sroa.0.2, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit60 ] ; 2 uses
  %i.am = icmp sgt i32 %.sroa.022.0.lcssa, 0
  br i1 %i.am, label %.lr.ph, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit

.lr.ph:                                           ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread, %bb.aj
  %.sroa.0.4109 = phi i64 [ %i.bi, %bb.aj ], [ %.sroa.0.2.lcssa121, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread ] ; 16 uses
  %.sroa.036.0108 = phi i32 [ %i.an, %bb.aj ], [ 0, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish.exit62.thread ]
  %i.an = add nuw nsw i32 %.sroa.036.0108, 1      ; 2 uses
  %i.ao = icmp ult i64 %1, %.sroa.0.4109
  br i1 %i.ao, label %bb.x, label %bb.y, !prof !16

bb.x:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #54
  unreachable

bb.y:                                             ; preds = %.lr.ph
  %i.ap = sub nuw i64 %1, %.sroa.0.4109
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.4109
  %i.ar = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish10parse_util12slice_length(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aq, i64 noundef %i.ap) ; 2 uses
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = extractvalue { i64, i64 } %i.ar, 1      ; 2 uses
  %i.au = trunc nuw i64 %i.as to i1
  br i1 %i.au, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.av = icmp ult i64 %.sroa.0.4109, %3
  br i1 %i.av, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE9index_mutB1F_.exit, label %bb.ab, !prof !15

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.4109, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #54, !noalias !2425
  unreachable

_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE9index_mutB1F_.exit: ; preds = %bb.aa
  %i.aw = shl nuw nsw i64 %.sroa.0.4109, 2
  %i.ax = getelementptr i8, ptr %2, i64 %i.aw
  %i.ay = add nuw nsw i64 %.sroa.0.4109, 1        ; 2 uses
  %min.iters.check = icmp ult i64 %.sroa.0.4109, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE9index_mutB1F_.exit
  %n.vec = and i64 %i.ay, -8                      ; 3 uses
  %i.az = shl i64 %n.vec, 2
  %i.ba = getelementptr i8, ptr %2, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 65536), ptr %next.gep, align 1, !alias.scope !2426
  store <4 x i32> splat (i32 65536), ptr %i.bc, align 1, !alias.scope !2426
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !2418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE9index_mutB1F_.exit, %middle.block
  %.sroa.03.07.i.ph = phi ptr [ %2, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE9index_mutB1F_.exit ], [ %i.ba, %middle.block ]
end_hunk_6
begin_hunk_7_@_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight33autosuggest_validate_from_history:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i23: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.an

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, %bb.bl, %bb.bn
  %i.dv = invoke noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7history7history19all_paths_are_valid(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.by unwind label %bb.an

bb.by:                                            ; preds = %bb.bx
  br i1 %i.dv, label %bb.bz, label %bb.bi

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i27 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body17 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i27: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31 unwind label %bb.cc

.body17:                                          ; preds = %bb.bj, %bb.ca, %bb.cc, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cy, %bb.bj ], [ %i.dy, %bb.cc ], [ %i.dw, %bb.ca ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #48
          to label %common.resume unwind label %bb.ci

bb.cc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i27, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit34 unwind label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit34: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ch

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit37 unwind label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit37: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.e, %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit34, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit37
  %.sroa.0.2 = phi i1 [ true, %bb.am ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit37 ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit34 ], [ false, %bb.e ]
  ret i1 %.sroa.0.2

bb.ci:                                            ; preds = %.body17, %.body
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight8colorize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noundef nonnull %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [18 x i8], align 1                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [18 x i8], align 4                ; 9 uses
  %i.e = alloca [18 x i8], align 1                ; 3 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 16 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %4, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %2, ptr %i.i, align 8
  %i.k = icmp eq i64 %4, %2
  br i1 %i.k, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @474) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  %i.l = tail call { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @180), !noalias !2519 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @182, i64 32, i1 false)
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.m, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2519
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.n, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !2519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 3, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 3, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i8 3, ptr %i.q, align 2
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.d, align 4
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 1, ptr %.sroa.517.0..sroa_idx, align 4
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 6, ptr %.sroa.618.0..sroa_idx, align 1
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 -1, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.t, ptr noundef nonnull align 4 dereferenceable(18) %i.d, i64 18, i1 false)
  %.idx = shl nuw nsw i64 %4, 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.v = icmp eq i64 %4, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.022.061 = phi i8 [ 0, %.lr.ph ], [ %.sroa.022.1, %bb.x ] ; 2 uses
  %.sroa.021.060 = phi i8 [ 0, %.lr.ph ], [ %.sroa.021.1, %bb.x ] ; 2 uses
  %.sroa.020.059 = phi i8 [ 0, %.lr.ph ], [ %.sroa.020.1, %bb.x ] ; 2 uses
  %.sroa.019.058 = phi i8 [ 0, %.lr.ph ], [ %.sroa.019.1, %bb.x ] ; 2 uses
  %.sroa.0.057 = phi ptr [ %1, %.lr.ph ], [ %i.x, %bb.x ] ; 2 uses
  %.sroa.7.056 = phi i64 [ 0, %.lr.ph ], [ %9, %bb.x ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.057, align 4, !noalias !2520, !noundef !12 ; 5 uses
  %i.z = xor i32 %i.y, 55296
  %i.aa = add i32 %i.z, -1114112
  %i.ab = icmp ult i32 %i.aa, -1112064
  br i1 %i.ab, label %.split.i.i, label %7

.split.i.i:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2521
  store i32 %i.y, ptr %i.a, align 4, !noalias !2521
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @732) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.i.i
  unreachable

7:                                                ; preds = %bb.d
  %8 = icmp ult i32 %i.y, 1114112
  call void @llvm.assume(i1 %8)
  %9 = add nuw nsw i64 %.sroa.7.056, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %exitcond.not = icmp eq i64 %.sroa.7.056, %4
  br i1 %exitcond.not, label %bb.q, label %bb.p

.loopexit:                                        ; preds = %bb.r, %bb.s, %bb.u, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.f, %bb.h, %bb.q, %.split.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g) #48
          to label %.body unwind label %bb.y

._crit_edge:                                      ; preds = %bb.x, %bb.c
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13set_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.d)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %i.ad = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.c, align 8, !range !27, !noundef !12
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !28, !noundef !12 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.af, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.ai, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ah, i64 %i.aj) #53
          to label %bb.o unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ai, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.al = icmp ule i64 %i.ad, %i.ah
  call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ah, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.an, align 8
  %.not30 = icmp eq i64 %i.ad, 0
  br i1 %.not30, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.m, %bb.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 1 %i.ac, i64 %i.ad, i1 false)
  store i64 %i.ad, ptr %i.an, align 8
  br label %bb.j

.body:                                            ; preds = %bb.n, %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.e ], [ %i.aq, %bb.n ], [ %i.ao, %bb.k ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBV_9text_face8TextFaceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish9highlight9highlight22HighlightColorResolverEBH_.exit unwind label %bb.y

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtNtBV_9text_face8TextFaceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.o:                                             ; preds = %bb.q, %bb.h
  unreachable

bb.p:                                             ; preds = %7
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.7.056
  %i.as = load i32, ptr %i.ar, align 1            ; 5 uses
  store i32 %i.as, ptr %i.f, align 4
  %i.at = trunc i32 %i.as to i8                   ; 2 uses
  %i.au = icmp eq i8 %.sroa.019.058, %i.at
  %i.av = lshr i32 %i.as, 8
  %i.aw = trunc i32 %i.av to i8                   ; 2 uses
  %i.ax = icmp eq i8 %.sroa.022.061, %i.aw
  %or.cond35 = select i1 %i.au, i1 %i.ax, i1 false
  %i.ay = lshr i32 %i.as, 16
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %i.ba = icmp eq i8 %.sroa.020.059, %i.az
  %or.cond38 = select i1 %or.cond35, i1 %i.ba, i1 false
  %i.bb = lshr i32 %i.as, 24
  %i.bc = trunc nuw i32 %i.bb to i8               ; 2 uses
  %.not31 = icmp eq i8 %.sroa.021.060, %i.bc
  %or.cond40 = select i1 %or.cond38, i1 %.not31, i1 false
  br i1 %or.cond40, label %bb.t, label %bb.r

bb.q:                                             ; preds = %7
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @475) #53
          to label %bb.o unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver12resolve_spec(ptr noalias nofree noundef nonnull sret([18 x i8]) align 1 captures(address) dereferenceable(18) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.f, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %6)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r
  store i8 3, ptr %i.w, align 1
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13set_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.e)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %bb.s, %bb.p
  %.sroa.019.1 = phi i8 [ %.sroa.019.058, %bb.p ], [ %i.at, %bb.s ]
  %.sroa.020.1 = phi i8 [ %.sroa.020.059, %bb.p ], [ %i.az, %bb.s ]
  %.sroa.021.1 = phi i8 [ %.sroa.021.060, %bb.p ], [ %i.bc, %bb.s ]
  %.sroa.022.1 = phi i8 [ %.sroa.022.061, %bb.p ], [ %i.aw, %bb.s ]
  %i.bd = icmp eq i64 %9, %4
  %i.be = icmp eq i32 %i.y, 10
  %or.cond = and i1 %i.bd, %i.be
  br i1 %or.cond, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.w
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter7writech(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g, i32 noundef %i.y)
          to label %bb.x unwind label %.loopexit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.b, ptr noundef nonnull align 4 dereferenceable(18) %i.d, i64 18, i1 false)
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13set_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.b)
          to label %bb.w unwind label %.loopexit

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bf = icmp eq ptr %i.x, %i.u
  br i1 %i.bf, label %._crit_edge, label %bb.d

bb.y:                                             ; preds = %.body, %bb.e
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish9highlight9highlight22HighlightColorResolverEBH_.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup(i32 noundef range(i32 133, 1114112) %0) unnamed_addr #22 {
bb.a:
  %i.a = lshr i32 %0, 8
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.d
    i32 22, label %bb.b
    i32 32, label %bb.f
    i32 48, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 5760
  %i.c = zext i1 %i.b to i8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, 12288
  %i.e = zext i1 %i.d to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %0, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.c ], [ %i.i, %bb.d ], [ %i.c, %bb.b ], [ %i.o, %bb.f ], [ 0, %bb.a ]
  %i.j = trunc i8 %.sroa.0.0 to i1
  ret i1 %i.j

bb.f:                                             ; preds = %bb.a
  %i.k = and i32 %0, 255
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noundef !12
  %i.o = lshr i8 %i.n, 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvNtNtCs8frGy5WneL6_4fish8builtins6random6random8parse_ll(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
end_hunk_7
