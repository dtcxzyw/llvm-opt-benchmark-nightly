Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web_codegen-dbd56de60332cffb.actix_web_codegen.339652bc31cd24bc-cgu.1?download=true
inline.NumInlined: 192
inline.NumDeleted: 85
begin_hunk_0_@_ZN3std9panicking12catch_unwind8do_catch17h5c77ef119ad0644aE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN3std9panicking12catch_unwind8do_catch17h5cb82118c574bdc8E(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN3std9panicking12catch_unwind8do_catch17h63fcec61131f4ccdE(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN3std9panicking12catch_unwind8do_catch17h6ec94e3df2aa6653E(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN3std9panicking12catch_unwind8do_catch17h782668666cde552dE(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN3std9panicking12catch_unwind8do_catch17h9101ff205b1f46ccE(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN3std9panicking12catch_unwind8do_catch17h92f24fd61934a0b0E(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN3std9panicking12catch_unwind8do_catch17h9affe8834780346eE(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN3std9panicking12catch_unwind8do_catch17ha85f0775b8f8c3c6E(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN3std9panicking12catch_unwind8do_catch17hfd9ea0d68d63555bE(ptr nofree writeonly captures(none) %0, ptr %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 0
  %i.d = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3syn5error5Error11new_spanned17h137ac53ae009a221E(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  invoke void @_ZN5quote9to_tokens8ToTokens17into_token_stream17hb62b671ba84cbe1dE(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1)
          to label %bb.c unwind label %3

bb.b:                                             ; preds = %bb.d, %bb.g, %3
  %.pn = phi { ptr, i32 } [ %i.d, %bb.g ], [ %i.c, %bb.d ], [ %4, %3 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9bfb39dbff728262E"(ptr align 8 %2) #23
          to label %bb.i unwind label %bb.h

3:                                                ; preds = %bb.a
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h51c5471d01e97b53E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %2)
          to label %bb.e unwind label %bb.g

bb.d:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN3syn5error5Error11new_spanned11new_spanned17h5e42c7fa57eb3fadE(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9bfb39dbff728262E"(ptr align 8 %2)
  ret void

bb.g:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.b) #23
          to label %bb.b unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3syn5error5Error11new_spanned17h32ac1fc82bd3bcbdE(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.d, align 8
  call void @_ZN5quote9to_tokens8ToTokens17into_token_stream17h9bc5a8e309ef3778E(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1)
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hbeedb16a6ea94ca5E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c)
          to label %bb.c unwind label %bb.d

bb.b:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  call void @_ZN3syn5error5Error11new_spanned11new_spanned17h5e42c7fa57eb3fadE(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.b) #23
          to label %bb.b unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3syn5error5Error11new_spanned17h4ee699ae7fa77067E(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  invoke void @_ZN5quote9to_tokens8ToTokens17into_token_stream17hfea44990017e1a46E(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1)
          to label %bb.c unwind label %3

bb.b:                                             ; preds = %bb.d, %bb.g, %3
  %.pn = phi { ptr, i32 } [ %i.d, %bb.g ], [ %i.c, %bb.d ], [ %4, %3 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9bfb39dbff728262E"(ptr align 8 %2) #23
          to label %bb.i unwind label %bb.h

3:                                                ; preds = %bb.a
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h51c5471d01e97b53E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %2)
          to label %bb.e unwind label %bb.g

bb.d:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN3syn5error5Error11new_spanned11new_spanned17h5e42c7fa57eb3fadE(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9bfb39dbff728262E"(ptr align 8 %2)
  ret void

bb.g:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.b) #23
          to label %bb.b unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3syn5error5Error11new_spanned17h8b89cf088c9994e7E(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.d, align 8
  call void @_ZN5quote9to_tokens8ToTokens17into_token_stream17hfdddcde953c4b566E(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1)
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hbeedb16a6ea94ca5E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c)
          to label %bb.c unwind label %bb.d

bb.b:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  call void @_ZN3syn5error5Error11new_spanned11new_spanned17h5e42c7fa57eb3fadE(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.b) #23
          to label %bb.b unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3syn5error5Error11new_spanned17he3f6d0daae83c034E(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.d, align 8
  call void @_ZN5quote9to_tokens8ToTokens17into_token_stream17hec945ec32a20a99aE(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1)
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hbeedb16a6ea94ca5E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.c)
          to label %bb.c unwind label %bb.d

bb.b:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  call void @_ZN3syn5error5Error11new_spanned11new_spanned17h5e42c7fa57eb3fadE(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.b) #23
          to label %bb.b unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3syn5parse11ParseBuffer16parse_terminated17h78004dfc4177e9f2E(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr %2) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$21parse_terminated_with17hf657aea5f7f22653E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3syn5parse12parse_scoped17h6da68c11abdc37e2E(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, i32 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = tail call { ptr, i64 } @_ZN3syn6buffer11TokenBuffer4new217h69885eb8f418b88fE(ptr align 8 %2), !noalias !18 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  store ptr %i.k, ptr %i.i, align 8, !noalias !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !18
  %i.n = invoke { ptr, ptr } @_ZN3syn6buffer11TokenBuffer5begin17h8bc2a2e77a1f9677E(ptr nonnull align 8 %i.i)
          to label %bb.d unwind label %bb.c, !noalias !18 ; 2 uses

bb.b:                                             ; preds = %.body.i, %bb.c
  %.pn8.i = phi { ptr, i32 } [ %i.o, %bb.c ], [ %.pn.i, %.body.i ]
  invoke void @"_ZN4core3ptr45drop_in_place$LT$syn..buffer..TokenBuffer$GT$17ha2c5f39d31101e00E"(ptr nonnull align 8 %i.i) #23
          to label %bb.y unwind label %bb.x, !noalias !18

bb.c:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$actix_web_codegen..route..RouteArgs$GT$17he5d50a9cca384565E.exit14.invoke.i", %bb.f, %bb.e, %bb.d, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.p = extractvalue { ptr, ptr } %i.n, 0
  %i.q = extractvalue { ptr, ptr } %i.n, 1
  store i8 0, ptr %i.g, align 8, !noalias !18
  invoke void @"_ZN4core4cell13Cell$LT$T$GT$3new17h9f2cf4d97a5700d5E"(ptr nonnull sret([16 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.e unwind label %bb.c, !noalias !18

bb.e:                                             ; preds = %bb.d
  %i.r = invoke ptr @"_ZN5alloc2rc11Rc$LT$T$GT$3new17hf3a2bae99c4249f4E"(ptr nonnull align 8 %i.h)
          to label %bb.f unwind label %bb.c, !noalias !18

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3syn5parse16new_parse_buffer17h646cae2183ea748eE(ptr nonnull sret([32 x i8]) align 8 %i.f, i32 %1, ptr %i.p, ptr %i.q, ptr %i.r)
          to label %bb.g unwind label %bb.c, !noalias !18

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN73_$LT$actix_web_codegen..route..RouteArgs$u20$as$u20$syn..parse..Parse$GT$5parse17h92f90f178bdf7326E"(ptr nonnull sret([40 x i8]) align 8 %i.d, ptr nonnull align 8 %i.f)
          to label %_ZN4core3ops8function6FnOnce9call_once17hb37f6471d5191e10E.exit.i unwind label %bb.h, !noalias !18

.body.i:                                          ; preds = %bb.v, %bb.s, %bb.k, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.ag, %bb.s ], [ %i.s, %bb.h ], [ %i.aj, %bb.v ]
  invoke void @"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17ha0509057ca8fcfb7E"(ptr nonnull align 8 %i.f) #23
          to label %bb.b unwind label %bb.x, !noalias !18

bb.h:                                             ; preds = %.invoke.i, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZN4core3ops8function6FnOnce9call_once17hb37f6471d5191e10E.exit.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.d, align 8, !noalias !19 ; 2 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hb37f6471d5191e10E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !18
  br label %"_ZN4core3ptr56drop_in_place$LT$actix_web_codegen..route..RouteArgs$GT$17he5d50a9cca384565E.exit14.invoke.i"

bb.j:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hb37f6471d5191e10E.exit.i
  %.sroa.6.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6.0.copyload18.i = load i64, ptr %.sroa.6.0..sroa_idx17.i, align 8, !noalias !18
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !18
  store i64 %i.t, ptr %i.e, align 8, !noalias !18
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  store i64 %.sroa.6.0.copyload18.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !18
  invoke void @_ZN3syn5parse11ParseBuffer16check_unexpected17hfbb40c7ac88d0ac1E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.l unwind label %bb.k, !noalias !18

bb.k:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.l, %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$actix_web_codegen..route..RouteArgs$GT$17he5d50a9cca384565E"(ptr nonnull align 8 %i.e) #23
          to label %.body.i unwind label %bb.x, !noalias !18

end_hunk_0
