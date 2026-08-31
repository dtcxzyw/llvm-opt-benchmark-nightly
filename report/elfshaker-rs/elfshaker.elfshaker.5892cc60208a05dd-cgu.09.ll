Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.09?download=true
inline.NumInlined: 469
inline.NumDeleted: 239
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB1W_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1A_6os_str5OsStrEEENtNtNtB2l_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB23_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1m_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1m_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTcbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTcbEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTcbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !range !29, !alias.scope !55, !noundef !5 ; 2 uses
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !55 ; 5 uses
  %i.h = icmp ne ptr %i.g, null
  %.sroa.0.0.i.i = select i1 %i.e, i1 %i.h, i1 false
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.i = icmp eq i64 %i.d, 0
  br i1 %i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !65 ; 6 uses
  %i.k = icmp eq ptr %i.g, null
  br i1 %i.k, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i) ]
  %i.l = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !invariant.load !5, !noalias !65 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.l(ptr noundef nonnull %i.g)
          to label %bb.e unwind label %bb.g, !noalias !65

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !30, !invariant.load !5, !noalias !65 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !31, !invariant.load !5, !noalias !65
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #24, !noalias !65
  br label %.thread.i.i

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !30, !invariant.load !5, !noalias !65 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.body.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !31, !invariant.load !5, !noalias !65
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #24, !noalias !65
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.g
  store i64 0, ptr %i.c, align 8, !alias.scope !66
  %i.x = extractvalue { ptr, i32 } %i.r, 0
  %i.y = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.x)
          to label %bb.j unwind label %bb.i, !noalias !55 ; 2 uses

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !55
  unreachable

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  store i64 0, ptr %i.c, align 8, !alias.scope !66
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.j:                                             ; preds = %.body.i.i.i.i.i.i
  %i.aa = extractvalue { ptr, ptr } %i.y, 0       ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.y, 1
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = invoke noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 125 to ptr))
          to label %bb.m unwind label %bb.l, !noalias !55

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.j, %.thread.i.i
  %i.ad = load ptr, ptr %i.b, align 8, !alias.scope !49, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not4.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i, label %bb.q

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.aa, ptr %i.ab) #26
          to label %.body.i unwind label %bb.p, !noalias !55

bb.m:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr %i.ac)
          to label %bb.n unwind label %bb.l, !noalias !55

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #27
          to label %bb.o unwind label %bb.l, !noalias !55

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !55
  unreachable

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.ag, i1 noundef zeroext %.sroa.0.0.i.i)
          to label %bb.u unwind label %bb.r, !noalias !49

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %i.ae, %bb.l ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.ai = load ptr, ptr %i.b, align 8, !alias.scope !70, !noundef !5 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.s

bb.s:                                             ; preds = %.body.i
  %i.ak = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !71
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.ae

bb.u:                                             ; preds = %bb.q
  %i.am = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !76
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.w, %bb.t, %bb.s, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.ao, %bb.w ], [ %eh.lpad-body.i, %bb.t ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.s ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #26
          to label %common.resume.i unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i: ; preds = %bb.v, %bb.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.ap = load i64, ptr %i.c, align 8, !range !29, !alias.scope !89, !noundef !5
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !89, !noundef !5 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !89 ; 6 uses
  %i.as = icmp eq ptr %.val.i.i.i, null
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.at = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !5, !noalias !90 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void %i.at(ptr noundef nonnull %.val.i.i.i)
          to label %bb.aa unwind label %bb.ac, !noalias !90

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !30, !invariant.load !5, !noalias !90 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !31, !invariant.load !5, !noalias !90
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.av, i64 noundef range(i64 1, 536870913) %i.ay) #24, !noalias !90
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit

bb.ac:                                            ; preds = %bb.z
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !30, !invariant.load !5, !noalias !90 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %common.resume.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !31, !invariant.load !5, !noalias !90
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bb, i64 noundef range(i64 1, 536870913) %i.be) #24, !noalias !90
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ad, %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.az, %bb.ac ], [ %i.az, %bb.ad ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.t
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i, %bb.x, %bb.aa, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !30, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !31, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !30, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !31, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !30, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !31, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
end_hunk_0
begin_hunk_1_@_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECs7BtpbLEd5q3_9elfshaker:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 14)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !range !32, !noundef !5
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.q, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.m, -1
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0Cs7BtpbLEd5q3_9elfshaker.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !312, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !312, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !312
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.g unwind label %bb.f, !noalias !312

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %.body35.thread unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !range !29, !noalias !312, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !312
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !312, !nonnull !5, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !312, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !312
  switch i64 %i.aa, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1, !alias.scope !315, !noalias !318, !noundef !5 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !315, !noalias !318
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %i.ac = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ab, %bb.j ]
  %cond.i.i.i = icmp eq i8 %i.ac, 43              ; 2 uses
  %i.ad = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.aa, %i.ad    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ae, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i90, i64 1
  %i.ag = add nsw i64 %.sroa.15.1.i.i.i89, -1     ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.k, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i90 = phi ptr [ %i.af, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.k ] ; 2 uses
  %.sroa.15.1.i.i.i89 = phi i64 [ %i.ag, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.k ]
  %.sroa.042.0.i.i.i88 = phi i64 [ %i.ap, %.preheader56.i.i.i ], [ 0, %bb.k ]
  %i.ah = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i88, i64 10) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.l, !prof !320

bb.l:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.aj = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %i.ak = load i8, ptr %.sroa.0.1.i.i.i90, align 1, !alias.scope !315, !noalias !318, !noundef !5
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ugt i32 %i.am, 9
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = add i64 %i.aj, %i.ao                    ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.aj
  %or.cond.i.i = select i1 %i.an, i1 true, i1 %i.aq, !prof !321
  br i1 %or.cond.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !321

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.0.269.i.i.i = phi ptr [ %i.ax, %bb.m ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.aw, %bb.m ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.az, %bb.m ], [ 0, %.preheader.i.i.i ]
  %i.ar = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !315, !noalias !318, !noundef !5
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -48                  ; 2 uses
  %i.au = icmp ugt i32 %i.at, 9
  br i1 %i.au, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.av = mul i64 %.sroa.042.267.i.i.i, 10
  %i.aw = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = add i64 %i.av, %i.ay                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.l, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.j, %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.h ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.j ], [ 2097152, %bb.i ], [ 2097152, %bb.j ], [ %i.az, %bb.m ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.l ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.ap, %.preheader56.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00Cs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body35.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00Cs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc37 unwind label %bb.r

.noexc37:                                         ; preds = %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00Cs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.q:                                             ; preds = %.noexc37, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %.noexc37 ], [ 2097152, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bd = add i64 %.sroa.0.0.i, 1
  store atomic i64 %i.bd, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0Cs7BtpbLEd5q3_9elfshaker.exit

.body35:                                          ; preds = %.thread, %bb.w, %bb.r
  %.sroa.016.0 = phi i8 [ %.sroa.016.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.016.2, %.thread ]
  %.sroa.017.0 = phi i8 [ %.sroa.017.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.017.2, %.thread ] ; 2 uses
  %.sroa.018.0 = phi i1 [ false, %bb.w ], [ %.sroa.018.1, %bb.r ], [ false, %.thread ] ; 2 uses
  %.pn27 = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.bf, %bb.r ], [ %.pn.pn, %.thread ] ; 2 uses
  %i.be = trunc nuw i8 %.sroa.016.0 to i1
  br i1 %i.be, label %.body35.thread, label %bb.bb

bb.r:                                             ; preds = %bb.aw, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00Cs7BtpbLEd5q3_9elfshaker.exit.i, %bb.c, %bb.s, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0Cs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.017.1 = phi i8 [ 0, %bb.aw ], [ 1, %bb.s ], [ 1, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0Cs7BtpbLEd5q3_9elfshaker.exit ], [ 1, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00Cs7BtpbLEd5q3_9elfshaker.exit.i ], [ 1, %bb.c ] ; 2 uses
  %.sroa.018.1 = phi i1 [ false, %bb.aw ], [ false, %bb.s ], [ true, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0Cs7BtpbLEd5q3_9elfshaker.exit ], [ true, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00Cs7BtpbLEd5q3_9elfshaker.exit.i ], [ true, %bb.c ]
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body35

_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0Cs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.q, %bb.d, %bb.a
  %.sroa.02.0 = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i, %bb.q ], [ %i.p, %bb.d ]
  %i.bg = invoke noundef i64 @_RNvMNtNtCsaL1QbXo9JQH_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.s unwind label %bb.r

bb.s:                                             ; preds = %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0Cs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bh = invoke noundef nonnull ptr @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  store ptr %i.bh, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br i1 %4, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.y unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.bi, align 8
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx20, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.y

.thread:                                          ; preds = %bb.ax, %.body29.thread, %bb.ac, %bb.ba, %bb.x
  %.sroa.016.2 = phi i8 [ 1, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ] ; 2 uses
  %.sroa.017.2 = phi i8 [ 0, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.br, %bb.ba ], [ %i.bt, %bb.ac ], [ %i.bm, %bb.x ], [ %eh.lpad-body3059, %.body29.thread ], [ %eh.lpad-body3059, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.bj = load ptr, ptr %i.j, align 8, !alias.scope !334, !nonnull !5, !noundef !5
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !334
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.w, label %.body35

bb.w:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #28
          to label %.body35 unwind label %bb.az

bb.x:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %8 = ptrtoint ptr %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %8, ptr %i.bo, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !335
  %i.bp = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 48, i64 noundef 8) #24, !noalias !335 ; 6 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.z, label %bb.ad, !prof !320

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #27
          to label %.noexc39 unwind label %bb.aa

.noexc39:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #26
          to label %bb.ba unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ac:                                            ; preds = %bb.au
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.bp, ptr %i.h, align 8
  %i.bu = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %6, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %7, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.bp, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.cb)
          to label %bb.ah unwind label %bb.ay

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !338
  %i.cc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 56, i64 noundef 8) #24, !noalias !338 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ai, label %bb.al, !prof !320

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #27
          to label %.noexc40 unwind label %bb.aj

.noexc40:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EuEs_0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f) #26
          to label %.body29.thread unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body29:                                          ; preds = %bb.ar
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body29.thread

bb.al:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ch = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.ci = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ck = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  store ptr %i.ck, ptr %i.e, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cc, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @0, ptr %i.cm, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !341
  %i.cn = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 24, i64 noundef 8) #24, !noalias !341 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.an, label %bb.ar, !prof !320

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27
          to label %.noexc42 unwind label %bb.ao

.noexc42:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle10ThreadInitECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %.body29.thread unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.aq:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.ar:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cr = invoke { i64, ptr } @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef %.sroa.02.0, ptr noalias noundef nonnull align 8 %i.cn)
          to label %bb.as unwind label %.body29   ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.cs = extractvalue { i64, ptr } %i.cr, 0
  %i.ct = extractvalue { i64, ptr } %i.cr, 1      ; 2 uses
  %i.cu = trunc nuw i64 %i.cs to i1
  br i1 %i.cu, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cv, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.cw = load ptr, ptr %i.h, align 8, !alias.scope !350, !nonnull !5, !noundef !5
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !350
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.ac

bb.av:                                            ; preds = %bb.as
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.db = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %9 = ptrtoint ptr %i.da to i64
  %10 = ptrtoint ptr %i.db to i64
  store i64 %9, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %10, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit46

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit46: ; preds = %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.dc = load ptr, ptr %i.j, align 8, !alias.scope !363, !nonnull !5, !noundef !5
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !363
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit46

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit46 unwind label %bb.r

.body29.thread:                                   ; preds = %bb.ao, %bb.aj, %.body29, %bb.ay
  %eh.lpad-body3059 = phi { ptr, i32 } [ %i.cg, %.body29 ], [ %i.di, %bb.ay ], [ %i.ce, %bb.aj ], [ %i.cp, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.df = load ptr, ptr %i.h, align 8, !alias.scope !370, !nonnull !5, !noundef !5
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !370
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %.body29.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #28
          to label %.thread unwind label %bb.az

bb.ay:                                            ; preds = %bb.ag
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EuEs_0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g) #26
          to label %.body29.thread unwind label %bb.az

bb.az:                                            ; preds = %bb.be, %bb.ax, %bb.w, %.body35.thread, %bb.bg, %bb.ba, %bb.ay
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ba:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15ChildSpawnHooksECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #26
          to label %.thread unwind label %bb.az

bb.bb:                                            ; preds = %.body35.thread, %.body35
  %.pn2770 = phi { ptr, i32 } [ %.pn2771, %.body35.thread ], [ %.pn27, %.body35 ]
  %.sroa.018.068 = phi i1 [ %.sroa.018.069, %.body35.thread ], [ %.sroa.018.0, %.body35 ]
  %.sroa.017.066 = phi i8 [ %.sroa.017.067, %.body35.thread ], [ %.sroa.017.0, %.body35 ]
  %i.dk = trunc nuw i8 %.sroa.017.066 to i1
  br i1 %i.dk, label %bb.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit

.body35.thread:                                   ; preds = %bb.n, %bb.f, %.body35
  %.pn2771 = phi { ptr, i32 } [ %.pn27, %.body35 ], [ %i.ba, %bb.n ], [ %i.u, %bb.f ]
  %.sroa.018.069 = phi i1 [ %.sroa.018.0, %.body35 ], [ true, %bb.n ], [ true, %bb.f ]
  %.sroa.017.067 = phi i8 [ %.sroa.017.0, %.body35 ], [ 1, %bb.n ], [ 1, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker(ptr nonnull %6, ptr nonnull %7) #26
          to label %bb.bb unwind label %bb.az

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.bd, %bb.bc, %bb.be, %bb.bb
  br i1 %.sroa.018.068, label %bb.bg, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.dl = load ptr, ptr %i.k, align 8, !alias.scope !371, !noundef !5 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dn = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !374
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.az

bb.bf:                                            ; preds = %bb.bg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit
  resume { ptr, i32 } %.pn2770

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %bb.bf unwind label %bb.az
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1K_6marker4SendEL_EuEs_0IB1E_uE9call_once6vtableCs7BtpbLEd5q3_9elfshaker(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !379, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !379, !nonnull !5, !align !20, !noundef !5 ; 2 uses
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.5.0..sroa_idx.i, i64 16, i1 false)
  %1 = load <2 x i64>, ptr %0, align 8, !alias.scope !379
  store <2 x i64> %1, ptr %i.a, align 16, !noalias !379
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB2C_6marker4SendEL_EuEs_000uECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.b, !noalias !382

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.d, ptr nonnull %i.f) #26
          to label %.body26.i unwind label %bb.c, !noalias !382

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !382
  unreachable

_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !382
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1O_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %__rust_try.exit.i unwind label %bb.d, !noalias !379

bb.d:                                             ; preds = %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body26.i

.body26.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body27.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.g, %bb.b ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body27.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.f unwind label %bb.e, !noalias !379 ; 2 uses

bb.e:                                             ; preds = %.body26.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !379
  unreachable

bb.f:                                             ; preds = %.body26.i
  %i.m = extractvalue { ptr, ptr } %i.k, 0
  %i.n = extractvalue { ptr, ptr } %i.k, 1
  %2 = ptrtoint ptr %i.m to i64
  %3 = ptrtoint ptr %i.n to i64
  br label %__rust_try.exit.i

__rust_try.exit.i:                                ; preds = %bb.f, %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i
  %4 = phi i64 [ %3, %bb.f ], [ undef, %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i ] ; 2 uses
  %5 = phi i64 [ %2, %bb.f ], [ 0, %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !379, !nonnull !5, !noundef !5 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.r = load i64, ptr %i.q, align 8, !range !29, !alias.scope !387, !noalias !379, !noundef !5
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.g

bb.g:                                             ; preds = %__rust_try.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.t, align 8, !alias.scope !387, !noalias !379, !noundef !5 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.u, align 8, !alias.scope !387, !noalias !379 ; 6 uses
  %i.v = icmp eq ptr %.val.i.i, null
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.w = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !390 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.w(ptr noundef nonnull %.val.i.i)
          to label %bb.j unwind label %bb.l, !noalias !390

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !30, !invariant.load !5, !noalias !390 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !31, !invariant.load !5, !noalias !390
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #24, !noalias !390
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !30, !invariant.load !5, !noalias !390 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !31, !invariant.load !5, !noalias !390
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #24, !noalias !390
  br label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.k, %bb.j, %bb.g, %__rust_try.exit.i
  store i64 1, ptr %i.q, align 8, !noalias !379
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %5, ptr %.sroa.57.0..sroa_idx8.i, align 8, !noalias !379
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %4, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !379
  store ptr %i.p, ptr %i.b, align 8, !noalias !379
  %i.ai = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !391
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.n, label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuEs_0Cs7BtpbLEd5q3_9elfshaker.exit

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28, !noalias !379
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuEs_0Cs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit25.i: ; preds = %bb.p, %bb.o
  resume { ptr, i32 } %i.ac

bb.o:                                             ; preds = %bb.m, %bb.l
  store i64 1, ptr %i.q, align 8, !noalias !379
  store i64 %5, ptr %i.t, align 8, !noalias !379
  store i64 %4, ptr %i.u, align 8, !noalias !379
  %i.ak = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !396
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit25.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit25.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuEs_0Cs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !379
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs1_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_9JoinInneruE4joinCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  invoke void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread4join(i64 noundef %i.b)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !413, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !413
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.i = cmpxchg ptr %i.h, i64 1, i64 -1 acquire monotonic, align 8
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread, !prof !414

_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %.val acquire, align 8
  %i.l = icmp eq i64 %i.k, 1
  store atomic i64 1, ptr %i.h release, align 8
  br i1 %i.l, label %bb.e, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread, !prof !415

_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread: ; preds = %bb.d, %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
          to label %bb.f unwind label %bb.b

bb.e:                                             ; preds = %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit
  %i.m = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.n, align 8
  %i.o = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.o, label %bb.g, label %bb.i, !prof !416

bb.f:                                             ; preds = %bb.i, %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.p = load ptr, ptr %0, align 8, !alias.scope !429, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !429
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7 unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
          to label %bb.f unwind label %bb.b

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.t = load ptr, ptr %i.g, align 8, !alias.scope !436, !nonnull !5, !noundef !5
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !436
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7: ; preds = %bb.g, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.w = load ptr, ptr %i.g, align 8, !alias.scope !443, !nonnull !5, !noundef !5
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !443
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit9

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit9

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit9: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7, %bb.l
  %i.z = insertvalue { ptr, ptr } poison, ptr %.sroa.4.0.copyload, 0
  %i.aa = insertvalue { ptr, ptr } %i.z, ptr %.sroa.5.0.copyload, 1
  ret { ptr, ptr } %i.aa

bb.m:                                             ; preds = %bb.n, %bb.k, %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit, %bb.n, %bb.j, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.s, %bb.k ], [ %i.c, %bb.n ], [ %i.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit ]
  resume { ptr, i32 } %.pn

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !450, !nonnull !5, !noundef !5
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !450
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE9move_tailCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !range !30, !noundef !5
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.b, !prof !320

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = add i64 %i.d, %1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.k
  %i.p = mul nuw nsw i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  store i64 %i.k, ptr %i.c, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.g, i64 noundef %1, i64 noundef 8, i64 noundef 24)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvNtCs7BtpbLEd5q3_9elfshaker4show3run(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
end_hunk_1
begin_hunk_2_@_RNvNtCs7BtpbLEd5q3_9elfshaker4show3run:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %bb.i
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.558.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 %i.be, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13find_snapshot(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.al, ptr noundef nonnull align 8 %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb)
          to label %bb.p unwind label %bb.o

.body105:                                         ; preds = %bb.s, %bb.o, %.body103
  %.pn97 = phi { ptr, i32 } [ %.pn95, %.body103 ], [ %i.bl, %bb.o ], [ %i.bq, %bb.s ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ao) #26
          to label %.body108 unwind label %bb.df

bb.o:                                             ; preds = %bb.dl, %bb.cr, %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body105

bb.p:                                             ; preds = %bb.n
  %i.bm = load i64, ptr %i.al, align 8, !range !112, !noundef !5 ; 2 uses
  %.not82 = icmp eq i64 %i.bm, -2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.612, ptr noundef nonnull align 8 dereferenceable(48) %i.bn, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br i1 %.not82, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.612, i64 48, i1 false)
  store i64 %i.bm, ptr %i.n, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !454
  %i.bo = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 56, i64 noundef 8) #24, !noalias !454 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.r, label %bb.do, !prof !320

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #27
          to label %.noexc114 unwind label %bb.s

.noexc114:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.n) #26
          to label %.body105 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.612, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository10load_index(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.aj, ptr noundef nonnull align 8 %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %bb.w unwind label %bb.v

.body103:                                         ; preds = %bb.z, %bb.v, %.body152
  %.pn95 = phi { ptr, i32 } [ %.pn93, %.body152 ], [ %i.bs, %bb.v ], [ %i.by, %bb.z ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.am) #26
          to label %.body105 unwind label %bb.df

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit143, %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.w:                                             ; preds = %bb.u
  %i.bt = load i64, ptr %i.aj, align 8, !range !32, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.618, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 56, i1 false)
  br i1 %i.bu, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.618, i64 56, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !457
  %i.bw = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 56, i64 noundef 8) #24, !noalias !457 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.y, label %bb.dm, !prof !320

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #27
          to label %.noexc116 unwind label %bb.z

.noexc116:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m) #26
          to label %.body103 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ab:                                            ; preds = %bb.w
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.565.0..sroa_idx, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.423.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.618, i64 56, i1 false)
  store i64 %i.bt, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ak, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !5, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !5
  invoke void @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex16resolve_snapshot(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %i.cd)
          to label %bb.ad unwind label %bb.ac

.body152:                                         ; preds = %bb.di, %.body121, %bb.ac, %.body
  %.pn93 = phi { ptr, i32 } [ %.pn91, %.body121 ], [ %eh.lpad-body, %.body ], [ %i.ce, %bb.ac ], [ %i.hm, %bb.di ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.ak) #26
          to label %.body103 unwind label %bb.df

bb.ac:                                            ; preds = %bb.dj, %bb.cq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit, %bb.af, %bb.ab
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.ad:                                            ; preds = %bb.ab
  %i.cf = load i64, ptr %i.ad, align 8, !range !32, !noundef !5
  %.not83 = icmp eq i64 %i.cf, -1
  br i1 %.not83, label %bb.af, label %bb.ae, !prof !320

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.ch, i64 %i.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.ch, ptr %i.l, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ck, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.af, ptr %i.cm, align 8
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1y_NtB1y_9PackIndex20entries_from_handlesB16_E0ENtB1y_9FileEntryINtNtB6_6result6ResultzNtB1y_9PackErrorENCINvXso_B3y_IB3w_INtNtCs1xwejQucwHj_5alloc3vec3VecB3f_EB3S_EINtNtNtB4_6traits7collect12FromIteratorIB3w_B3f_B3S_EE9from_iterBQ_E0B4r_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l)
          to label %bb.ai unwind label %bb.ah

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #27
          to label %bb.ag unwind label %bb.ac

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.an, %bb.ae
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.al, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.ah ], [ %i.cs, %bb.al ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #26
          to label %.body152 unwind label %bb.df

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.co = load i64, ptr %i.ag, align 8, !range !460, !noundef !5 ; 2 uses
  %.not84 = icmp eq i64 %i.co, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.066.0.copyload = load i64, ptr %i.cp, align 8 ; 3 uses
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.467.0.copyload = load i64, ptr %.sroa.467.0..sroa_idx, align 8 ; 5 uses
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.568.0.copyload = load i64, ptr %.sroa.568.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not84, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.744.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.778.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 %i.co, ptr %i.k, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.066.0.copyload, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.467.0.copyload, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.568.0.copyload, ptr %.sroa.643.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !461
  %i.cq = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 48, i64 noundef 8) #24, !noalias !461 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.ak, label %bb.dh, !prof !320

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #27
          to label %.noexc118 unwind label %bb.al

.noexc118:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k) #26
          to label %.body unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.an:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %1 = icmp ne i64 %.sroa.467.0.copyload, 0
  call void @llvm.assume(i1 %1)
  %2 = icmp ult i64 %.sroa.568.0.copyload, 144115188075855872
  call void @llvm.assume(i1 %2)
  %i.cu = icmp sgt i64 %.sroa.066.0.copyload, -1
  call void @llvm.assume(i1 %i.cu)
  %.idx = shl nuw nsw i64 %.sroa.568.0.copyload, 6
  %3 = add nuw i64 %.idx, %.sroa.467.0.copyload
  store i64 %.sroa.467.0.copyload, ptr %i.ah, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.467.0.copyload, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.066.0.copyload, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %3, ptr %.sroa.7.0..sroa_idx, align 8
  invoke void @_RINvXs1c_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB7_7HashMapNtNtNtBd_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorTB15_B1y_EE9from_iterINtNtNtB2q_8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1y_ENCNvNtCs7BtpbLEd5q3_9elfshaker4show3run0EEB55_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.ao unwind label %bb.ah

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body121 unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body121:                                         ; preds = %bb.cv, %bb.ap, %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit
  %.pn91 = phi { ptr, i32 } [ %.pn.pn.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit ], [ %i.cv, %bb.ap ], [ %i.cx, %bb.as ], [ %i.gv, %bb.cv ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %.body152 unwind label %bb.df

bb.as:                                            ; preds = %bb.cw, %bb.aq, %bb.cp, %bb.av, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body121

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.db = load i64, ptr %i.da, align 8, !noundef !5
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db
  store ptr %i.cz, ptr %i.ab, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.dc, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ai, ptr %i.de, align 8
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs1xwejQucwHj_5alloc6string6StringENCNvNtCs7BtpbLEd5q3_9elfshaker4show3runs_0ENtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtB6_6option6OptionzENCINvXsI_B3E_IB3C_INtNtB1B_3vec3VecB2R_EEINtNtNtB4_6traits7collect12FromIteratorIB3C_B2R_EE9from_iterBQ_E0B4h_EB2g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab)
          to label %bb.at unwind label %bb.as

bb.at:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.df = load i64, ptr %i.ac, align 8, !range !32, !noundef !5
  %.not85 = icmp eq i64 %i.df, -1
  br i1 %.not85, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.dg = invoke noundef nonnull ptr @_RNvNtNtCs3SRGcsf4wgR_4rand4rngs6thread3rng()
          to label %bb.ay unwind label %bb.ax     ; 4 uses

bb.av:                                            ; preds = %bb.at
  %i.dh = invoke { ptr, ptr } @_RNvXsi_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorEL_EINtNtBW_7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 54)
          to label %bb.aw unwind label %bb.as     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.di = extractvalue { ptr, ptr } %i.dh, 0
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.cw, %bb.aw
  %.sroa.9.0 = phi ptr [ %i.dj, %bb.aw ], [ %.sroa.9.2, %bb.cw ]
  %.sroa.0.0 = phi ptr [ %i.di, %bb.aw ], [ %.sroa.0.2, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125 unwind label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.body101, %bb.de, %bb.dd, %bb.bh, %.thread167, %bb.bc, %bb.bd, %bb.dg, %bb.ax
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hl, %bb.dg ], [ %i.ec, %bb.bc ], [ %i.dk, %bb.ax ], [ %i.ec, %bb.bd ], [ %i.ep, %bb.bh ], [ %i.he, %bb.de ], [ %eh.lpad-body132166, %.thread167 ], [ %i.he, %bb.dd ], [ %eh.lpad-body102, %.body101 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #26
          to label %.body121 unwind label %bb.df

bb.ax:                                            ; preds = %bb.be, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130, %bb.au
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit

bb.ay:                                            ; preds = %bb.au
  store ptr %i.dg, ptr %i.x, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 336 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 272
  %.pre.i = load i64, ptr %i.dm, align 16, !alias.scope !464, !noalias !467
  br label %bb.az

bb.az:                                            ; preds = %.noexc127, %bb.ay
  %i.do = phi i64 [ %.pre.i, %bb.ay ], [ %i.dz, %.noexc127 ] ; 2 uses
  %.sroa.0.06.i = phi i64 [ 0, %bb.ay ], [ %i.ea, %.noexc127 ] ; 3 uses
  %i.dp = icmp ugt i64 %i.do, 63
  br i1 %i.dp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXs2_NtNtCs3SRGcsf4wgR_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtCs9KyBnLVnQBL_9rand_core2os5OsRngENtNtB1W_5block12BlockRngCore8generateCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.dn, ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.dl)
          to label %.noexc126 unwind label %bb.bc

.noexc126:                                        ; preds = %bb.ba
  store i64 0, ptr %i.dm, align 16, !alias.scope !469, !noalias !467
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc126, %bb.az
  %i.dq = phi i64 [ %i.do, %bb.az ], [ 0, %.noexc126 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dq
  %i.ds = sub nuw nsw i64 64, %i.dq
  %i.dt = sub nuw nsw i64 32, %.sroa.0.06.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.06.i
  %i.dv = invoke { i64, i64 } @_RINvNtCs9KyBnLVnQBL_9rand_core5impls15fill_via_chunksmECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef nonnull %i.du, i64 noundef %i.dt)
          to label %.noexc127 unwind label %bb.bc ; 2 uses

.noexc127:                                        ; preds = %bb.bb
  %i.dw = extractvalue { i64, i64 } %i.dv, 0
  %i.dx = extractvalue { i64, i64 } %i.dv, 1
  %i.dy = load i64, ptr %i.dm, align 16, !alias.scope !464, !noalias !467, !noundef !5
  %i.dz = add i64 %i.dy, %i.dw                    ; 2 uses
  store i64 %i.dz, ptr %i.dm, align 16, !alias.scope !464, !noalias !467
  %i.ea = add i64 %i.dx, %.sroa.0.06.i            ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 32
  br i1 %i.eb, label %bb.az, label %_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCs7BtpbLEd5q3_9elfshaker.exit

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.ed = load ptr, ptr %i.x, align 8, !alias.scope !481, !nonnull !5, !noundef !5 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !481, !noundef !5
  %i.ef = add i64 %i.ee, -1                       ; 2 uses
  store i64 %i.ef, ptr %i.ed, align 8, !noalias !481
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.bd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding12ReseedingRngNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtCs9KyBnLVnQBL_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.noexc127
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.eh = load ptr, ptr %i.x, align 8, !alias.scope !491, !nonnull !5, !noundef !5 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !491, !noundef !5
  %i.ej = add i64 %i.ei, -1                       ; 2 uses
  store i64 %i.ej, ptr %i.eh, align 8, !noalias !491
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130

bb.be:                                            ; preds = %_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding12ReseedingRngNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtCs9KyBnLVnQBL_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130 unwind label %bb.ax

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130: ; preds = %_RNvXs0_NtCs9KyBnLVnQBL_9rand_core5blockINtB5_8BlockRngINtNtNtCs3SRGcsf4wgR_4rand4rngs9reseeding13ReseedingCoreNtNtCsk7dPvB7o3En_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore10fill_bytesCs7BtpbLEd5q3_9elfshaker.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(32) %i.y, i64 32, i1 false)
  invoke void @_RINvCs7s9T68JqHVf_3hex6encodeAhj20_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.w)
          to label %bb.bf unwind label %bb.ax

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvNtCsaL1QbXo9JQH_3std3env8temp_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.bg unwind label %bb.dg

bb.bg:                                            ; preds = %bb.bf
  %i.el = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !5, !noundef !5
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef %i.eo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
end_hunk_2
begin_hunk_3_@_RNvNtCs7BtpbLEd5q3_9elfshaker4show3run:bb.a
  br label %bb.cg

bb.bv:                                            ; preds = %.noexc139
  %i.fu = load i32, ptr %i.fh, align 4, !range !499, !noalias !492, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !492
  store i32 %i.fu, ptr %i.g, align 4, !noalias !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !492
  %i.fv = invoke noundef nonnull align 8 ptr @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stdout()
          to label %bb.bx unwind label %bb.bw, !noalias !492

bb.bw:                                            ; preds = %bb.bz, %bb.bx, %bb.bv
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bx:                                            ; preds = %bb.bv
  store ptr %i.fv, ptr %i.e, align 8, !noalias !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !500
  invoke void @_RINvXs_NtNtNtCs1xwejQucwHj_5alloc2io4copy14specializationNtNtCsaL1QbXo9JQH_3std2fs4FileNtB5_13SpecCopyInner4copyNtNtNtBX_2io5stdio6StdoutECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc20.i unwind label %bb.bw, !noalias !492

.noexc20.i:                                       ; preds = %bb.bx
  %i.fx = load i64, ptr %i.a, align 8, !range !297, !noalias !500, !noundef !5 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 2
  br i1 %i.fy, label %.thread.i, label %bb.by

.thread.i:                                        ; preds = %.noexc20.i
  %i.fz = load ptr, ptr %i.fi, align 8, !noalias !500, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !500
  br label %bb.cb

bb.by:                                            ; preds = %.noexc20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !500
  %i.ga = trunc nuw i64 %i.fx to i1
  br i1 %i.ga, label %bb.bz, label %.thread27.i

bb.bz:                                            ; preds = %bb.by
  %i.gb = invoke { i64, ptr } @_RINvNtNtNtCs1xwejQucwHj_5alloc2io4copy7generic12generic_copyNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtB10_2io5stdio6StdoutECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ca unwind label %bb.bw, !noalias !492 ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.gc = extractvalue { i64, ptr } %i.gb, 0
  %i.gd = trunc nuw i64 %i.gc to i1
  br i1 %i.gd, label %.loopexit30.i, label %.thread27.i

.loopexit30.i:                                    ; preds = %bb.ca
  %i.ge = extractvalue { i64, ptr } %i.gb, 1
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit30.i, %.thread.i
  %.sroa.6.1.i26.i = phi ptr [ %i.fz, %.thread.i ], [ %i.ge, %.loopexit30.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !492
  store ptr %.sroa.6.1.i26.i, ptr %i.c, align 8, !noalias !492
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !492
  %i.gf = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 8, i64 noundef 8) #24, !noalias !492 ; 3 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.cc, label %bb.cf, !prof !320

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc22.i unwind label %bb.cd, !noalias !492

.noexc22.i:                                       ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %bb.ch unwind label %bb.ce, !noalias !492

bb.ce:                                            ; preds = %bb.cd
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !492
  unreachable

.thread27.i:                                      ; preds = %bb.ca, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !492
  %.val16.i = load i32, ptr %i.g, align 4, !range !499, !noalias !492, !noundef !5
  %i.gj = call noundef i32 @close(i32 noundef %.val16.i) #24, !noalias !492 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !492
  %i.gk = icmp eq ptr %i.fj, %i.fd
  br i1 %i.gk, label %.loopexit, label %bb.bq

bb.cf:                                            ; preds = %bb.cb
  store ptr %.sroa.6.1.i26.i, ptr %i.gf, align 8, !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !492
  %.val.i = load i32, ptr %i.g, align 4, !range !499, !noalias !492, !noundef !5
  %i.gl = call noundef i32 @close(i32 noundef %.val.i) #24, !noalias !492 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit15.i
  %.sroa.0.0.i = phi ptr [ %i.fq, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit15.i ], [ %i.gf, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !492
  br label %.loopexit

bb.ch:                                            ; preds = %bb.cd, %bb.bw
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fw, %bb.bw ], [ %i.gh, %bb.cd ]
  %.val17.i = load i32, ptr %i.g, align 4, !range !499, !noalias !492, !noundef !5
  %i.gm = call noundef i32 @close(i32 noundef %.val17.i) #24, !noalias !492 ; 0 uses
  br label %.thread167

.loopexit:                                        ; preds = %.thread27.i, %bb.cg, %bb.bp, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit.i
  %.sroa.5.1.i = phi ptr [ @5, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit.i ], [ @3, %bb.cg ], [ undef, %bb.bp ], [ undef, %.thread27.i ] ; 8 uses
  %.sroa.0.1.i = phi ptr [ %i.ex, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit.i ], [ %.sroa.0.0.i, %bb.cg ], [ null, %bb.bp ], [ null, %.thread27.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.gn = invoke noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs14remove_dir_allNtNtB4_4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.cj unwind label %bb.ci     ; 3 uses

bb.ci:                                            ; preds = %.loopexit
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body101

.body101:                                         ; preds = %bb.cm, %bb.ci
  %eh.lpad-body102 = phi { ptr, i32 } [ %i.go, %bb.ci ], [ %i.gr, %bb.cm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker(ptr %.sroa.0.1.i, ptr %.sroa.5.1.i) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

bb.cj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not86 = icmp eq ptr %i.gn, null
  br i1 %.not86, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.gn, ptr %i.j, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.gp = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 8, i64 noundef 8) #24 ; 5 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.cl, label %bb.cy, !prof !320

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc140 unwind label %bb.cm

.noexc140:                                        ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
          to label %.body101 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.co:                                            ; preds = %bb.cj
  %.not87 = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not87, label %bb.cp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa)
          to label %bb.cq unwind label %bb.as

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit143 unwind label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit143: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.ak)
          to label %bb.cr unwind label %bb.v

bb.cr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.am)
          to label %bb.cs unwind label %bb.o

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ao)
          to label %bb.ct unwind label %bb.h

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar)
  br label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit, %bb.ct
  %.sroa.9.1 = phi ptr [ %.sroa.9.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit ], [ undef, %bb.ct ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit ], [ null, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.gt = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.gu = insertvalue { ptr, ptr } %i.gt, ptr %.sroa.9.1, 1
  ret { ptr, ptr } %i.gu

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.dc, %bb.db, %bb.cy, %bb.co
  %.sroa.9.2 = phi ptr [ %.sroa.5.1.i, %bb.co ], [ @3, %bb.cy ], [ @3, %bb.db ], [ @3, %bb.dc ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.1.i, %bb.co ], [ %i.gp, %bb.cy ], [ %i.gp, %bb.db ], [ %i.gp, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.cw unwind label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body121 unwind label %bb.cx

bb.cw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.as

bb.cx:                                            ; preds = %bb.cv
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cy:                                            ; preds = %bb.ck
  store ptr %i.gn, ptr %i.gp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gx = icmp eq ptr %.sroa.0.1.i, null
  br i1 %i.gx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i) ]
  %i.gy = load ptr, ptr %.sroa.5.1.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void %i.gy(ptr noundef nonnull %.sroa.0.1.i)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !range !30, !invariant.load !5 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !range !31, !invariant.load !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1.i, i64 noundef range(i64 1, -9223372036854775808) %i.ha, i64 noundef range(i64 1, 536870913) %i.hd) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs7BtpbLEd5q3_9elfshaker.exit

bb.dd:                                            ; preds = %bb.da
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !range !30, !invariant.load !5 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i, i64 16
  %i.hj = load i64, ptr %i.hi, align 8, !range !31, !invariant.load !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1.i, i64 noundef range(i64 1, -9223372036854775808) %i.hg, i64 noundef range(i64 1, 536870913) %i.hj) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154
  %.sroa.9.3 = phi ptr [ @21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154 ], [ %.sroa.9.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit ]
  %.sroa.0.3 = phi ptr [ %i.cq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154 ], [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.ak)
          to label %bb.dl unwind label %bb.v

bb.df:                                            ; preds = %bb.bd, %.body121, %.body101, %bb.dg, %.thread167, %bb.bh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit, %.body, %.body152, %.body103, %.body105, %.body108
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread167:                                       ; preds = %.thread170.loopexit, %.thread170.loopexit.split-lp, %bb.bj, %bb.ch, %bb.bt, %bb.bn
  %eh.lpad-body132166 = phi { ptr, i32 } [ %i.fs, %bb.bt ], [ %i.eq, %bb.bj ], [ %eh.lpad-body.i, %bb.ch ], [ %i.ez, %bb.bn ], [ %lpad.loopexit, %.thread170.loopexit ], [ %lpad.loopexit.split-lp, %.thread170.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

bb.dg:                                            ; preds = %bb.bf
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3SRGcsf4wgR_4rand4rngs6thread9ThreadRngECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.df

bb.dh:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cq, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body152 unwind label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154 unwind label %bb.ac

bb.dk:                                            ; preds = %bb.di
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit154: ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125

bb.dl:                                            ; preds = %bb.dm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125
  %.sroa.9.4 = phi ptr [ @5, %bb.dm ], [ %.sroa.9.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125 ]
  %.sroa.0.4 = phi ptr [ %i.bw, %bb.dm ], [ %.sroa.0.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.am)
          to label %bb.dn unwind label %bb.o

bb.dm:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.618, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  br label %bb.dl

bb.dn:                                            ; preds = %bb.do, %bb.dl
  %.sroa.9.5 = phi ptr [ @5, %bb.do ], [ %.sroa.9.4, %bb.dl ]
  %.sroa.0.5 = phi ptr [ %i.bo, %bb.do ], [ %.sroa.0.4, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ao)
          to label %bb.dp unwind label %bb.h

bb.do:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612)
  br label %bb.dn

bb.dp:                                            ; preds = %bb.ds, %bb.dn
  %.sroa.9.6 = phi ptr [ @5, %bb.ds ], [ %.sroa.9.5, %bb.dn ]
  %.sroa.0.6 = phi ptr [ %i.bh, %bb.ds ], [ %.sroa.0.5, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body108, %bb.dq
  %common.resume.op = phi { ptr, i32 } [ %i.ho, %bb.dq ], [ %.pn99, %.body108 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.dp
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %bb.cu

bb.ds:                                            ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.dp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs7BtpbLEd5q3_9elfshaker4show7get_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i4 = alloca [16 x i8], align 8         ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  %i.c = alloca [640 x i8], align 8               ; 5 uses
  %i.d = alloca [640 x i8], align 8               ; 8 uses
  %i.e = alloca [640 x i8], align 8               ; 4 uses
  %i.f = alloca [640 x i8], align 8               ; 5 uses
  %i.g = alloca [640 x i8], align 8               ; 8 uses
  %i.h = alloca [640 x i8], align 8               ; 4 uses
  %i.i = alloca [712 x i8], align 8               ; 4 uses
  %i.j = alloca [712 x i8], align 8               ; 5 uses
  %i.k = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB3_7Command3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4)
  call void @_RINvMs0_NtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB6_7Command5aboutReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB3_3Arg3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([640 x i8]) align 8 captures(address) dereferenceable(640) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 8)
          to label %bb.b unwind label %.body.thread18
end_hunk_3
