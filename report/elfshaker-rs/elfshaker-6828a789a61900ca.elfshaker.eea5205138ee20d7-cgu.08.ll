Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.08?download=true
inline.NumInlined: 450
inline.NumDeleted: 193
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(272) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq8response8ResponseECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5error9TransportECskuiImRAV2ip_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !4, !alias.scope !433, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskuiImRAV2ip_9elfshaker.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.e, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs96EQFXyf2I9_3url3UrlEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(88) %i.h) #19
          to label %.body5.i unwind label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !range !4, !alias.scope !434, !noundef !5
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs96EQFXyf2I9_3url3UrlEECskuiImRAV2ip_9elfshaker.exit.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskuiImRAV2ip_9elfshaker.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs96EQFXyf2I9_3url3UrlECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.i)
          to label %.body5.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs96EQFXyf2I9_3url3UrlECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs96EQFXyf2I9_3url3UrlEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.k

.body5.i:                                         ; preds = %bb.k, %bb.i, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.p, %bb.k ], [ %i.l, %bb.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !435, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !435
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECskuiImRAV2ip_9elfshaker(ptr %.val3.i, ptr %.val4.i) #19
          to label %common.resume.i unwind label %bb.r

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs96EQFXyf2I9_3url3UrlECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs96EQFXyf2I9_3url3UrlEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs96EQFXyf2I9_3url3UrlECskuiImRAV2ip_9elfshaker.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskuiImRAV2ip_9elfshaker.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !435, !noundef !5 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val2.i = load ptr, ptr %i.r, align 8, !alias.scope !435 ; 6 uses
  %i.s = icmp eq ptr %.val.i, null
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5error9TransportECskuiImRAV2ip_9elfshaker.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs96EQFXyf2I9_3url3UrlEECskuiImRAV2ip_9elfshaker.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.t = load ptr, ptr %.val2.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.t(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5error9TransportECskuiImRAV2ip_9elfshaker.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !15, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5error9TransportECskuiImRAV2ip_9elfshaker.exit

bb.p:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %common.resume.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !15, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #21
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.q, %bb.p, %.body5.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.p ], [ %i.z, %bb.q ], [ %.pn.i, %.body5.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.r:                                             ; preds = %.body5.i, %.body.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5error9TransportECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.o, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs96EQFXyf2I9_3url3UrlEECskuiImRAV2ip_9elfshaker.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq7request7RequestECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !453, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !453
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent11AgentConfigEECskuiImRAV2ip_9elfshaker.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent11AgentConfigE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent11AgentConfigEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !456, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !457
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent10AgentStateE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #22
          to label %.body unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent11AgentConfigEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !460, !nonnull !5, !noundef !5
  %3 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !461
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5agent5AgentECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent11AgentConfigEECskuiImRAV2ip_9elfshaker.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent10AgentStateE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5agent5AgentECskuiImRAV2ip_9elfshaker.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #19
          to label %.body4 unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5agent5AgentECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsk6GKf1Xiy0l_4ureq5agent11AgentConfigEECskuiImRAV2ip_9elfshaker.exit.i, %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5agent5AgentECskuiImRAV2ip_9elfshaker.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body4 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq5agent5AgentECskuiImRAV2ip_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.j

.body4:                                           ; preds = %bb.j, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.j ], [ %i.m, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #19
          to label %.body9 unwind label %bb.p

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i8 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body9 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i8: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit12 unwind label %bb.m

.body9:                                           ; preds = %bb.m, %bb.k, %.body4
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body4 ], [ %i.u, %bb.m ], [ %i.r, %bb.k ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #19
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i8
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body9

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit12: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit12
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.body9, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.n ], [ %.pn2, %.body9 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderEECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit12
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  ret void

bb.p:                                             ; preds = %.body9, %.body4, %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk6GKf1Xiy0l_4ureq8response8ResponseECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs96EQFXyf2I9_3url3UrlECskuiImRAV2ip_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #19
          to label %.body9 unwind label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs96EQFXyf2I9_3url3UrlECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs96EQFXyf2I9_3url3UrlECskuiImRAV2ip_9elfshaker.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body9 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs96EQFXyf2I9_3url3UrlECskuiImRAV2ip_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.g

.body9:                                           ; preds = %bb.g, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.g ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #19
          to label %.body11 unwind label %bb.s

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body9

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body11 unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsk6GKf1Xiy0l_4ureq6header6HeaderEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.h
end_hunk_0
