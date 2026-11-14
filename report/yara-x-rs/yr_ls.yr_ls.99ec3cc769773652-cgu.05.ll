Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr_ls.yr_ls.99ec3cc769773652-cgu.05?download=true
inline.NumInlined: 259
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECsddkiMbsmfqo_5yr_ls:bb.a
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.k
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsddkiMbsmfqo_5yr_ls.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !320, !noundef !5
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 4, label %bb.e
    i8 5, label %bb.e
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %bb.e
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.f
    i8 13, label %bb.e
    i8 14, label %bb.i
    i8 15, label %bb.e
    i8 16, label %bb.e
    i8 17, label %bb.l
    i8 18, label %bb.e
    i8 19, label %bb.n
    i8 20, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentB19_EEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.sink.split:                         ; preds = %bb.m, %bb.o
  %.sink = phi ptr [ %i.o, %bb.o ], [ %i.l, %bb.m ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.p, %bb.o ], [ %i.m, %bb.m ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 32, i64 noundef 8) #19, !noalias !5
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.q, %bb.j, %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.j ], [ %i.c, %bb.c ], [ %i.f, %bb.g ], [ %i.r, %bb.q ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentB19_EEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentB19_EEECsddkiMbsmfqo_5yr_ls.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.e

bb.i:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.e

bb.l:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !321, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.m, !noalias !321, !inline_history !317

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 32, i64 noundef 8) #19, !noalias !321
  br label %bb.e

bb.n:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !322, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit3 unwind label %bb.o, !noalias !322, !inline_history !317

bb.o:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit3: ; preds = %bb.n
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 32, i64 noundef 8) #19, !noalias !322
  br label %bb.e

bb.p:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.p
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXNvCs6m2LFPinx2P_9async_lsp1__NtB5_9ErrorCodeNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtCsbbTh99npV2h_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 11 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i32, ptr %0, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.b = icmp sgt i32 %.val1, -1
  %.sroa.0.0.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val1, i1 false) ; 6 uses
  %i.c = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, 9999
  br i1 %i.c, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %bb.a
  %.sroa.09.0.lcssa.i.i.i.i.i = phi i64 [ 11, %bb.a ], [ 7, %.lr.ph.i.i.i.i.i ], [ 3, %.lr.ph.i.i.i.i.i.1 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i, %bb.a ], [ %i.f, %.lr.ph.i.i.i.i.i ], [ %3, %.lr.ph.i.i.i.i.i.1 ] ; 3 uses
  %i.d = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i, 99
  br i1 %i.d, label %bb.b, label %bb.c

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.e = urem i32 %.sroa.0.0.i.i.i.i.i, 10000
  %i.f = udiv i32 %.sroa.0.0.i.i.i.i.i, 10000     ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i32 %i.e to i16 ; 2 uses
  %i.g = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.h = shl nuw nsw i16 %i.g, 1
  %i.i = zext nneg i16 %i.h to i64
  %i.j = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.k = shl nuw nsw i16 %i.j, 1
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @39, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.o = load i16, ptr %i.m, align 1, !noalias !325
  store i16 %i.o, ptr %i.n, align 1, !alias.scope !325
  %i.p = getelementptr inbounds nuw i8, ptr @39, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.r = load i16, ptr %i.p, align 1, !noalias !325
  store i16 %i.r, ptr %i.q, align 1, !alias.scope !325
  %i.s = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, 99999999
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %2 = urem i32 %i.f, 10000
  %3 = udiv i32 %.sroa.0.0.i.i.i.i.i, 100000000
  %.lhs.trunc.i.i.i.i.i.1 = trunc nuw nsw i32 %2 to i16 ; 2 uses
  %4 = udiv i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %5 = shl nuw nsw i16 %4, 1
  %6 = zext nneg i16 %5 to i64
  %7 = urem i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %8 = shl nuw nsw i16 %7, 1
  %9 = zext nneg i16 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr @39, i64 %6
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %12 = load i16, ptr %10, align 1, !noalias !325
  store i16 %12, ptr %11, align 1, !alias.scope !325
  %13 = getelementptr inbounds nuw i8, ptr @39, i64 %9
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %15 = load i16, ptr %13, align 1, !noalias !325
  store i16 %15, ptr %14, align 1, !alias.scope !325
  br label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i to i16 ; 2 uses
  %i.t = urem i16 %.lhs.trunc24.i.i.i.i.i, 100
  %i.u = shl nuw nsw i16 %i.t, 1
  %i.v = zext nneg i16 %i.u to i64
  %i.w = udiv i16 %.lhs.trunc24.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i = zext nneg i16 %i.w to i32
  %i.x = add i64 %.sroa.09.0.lcssa.i.i.i.i.i, -2  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr @39, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.aa = load i16, ptr %i.y, align 1, !noalias !325
  store i16 %i.aa, ptr %i.z, align 1, !alias.scope !325
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i = phi i64 [ %i.x, %bb.b ], [ %.sroa.09.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i, %bb.b ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ab = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i, 10
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add i64 %.sroa.09.1.i.i.i.i.i, -2       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr @39, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.ah = load i16, ptr %i.af, align 1, !noalias !325
  store i16 %i.ah, ptr %i.ag, align 1, !alias.scope !325
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = add i64 %.sroa.09.1.i.i.i.i.i, -1       ; 2 uses
  %i.aj = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  %i.al = or disjoint i8 %i.aj, 48
  store i8 %i.al, ptr %i.ak, align 1, !alias.scope !325
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.09.2.i.i.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  br i1 %i.b, label %_RINvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer24serialize_newtype_structlECsddkiMbsmfqo_5yr_ls.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = add i64 %.sroa.09.2.i.i.i.i.i, -1       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  store i8 45, ptr %i.an, align 1, !alias.scope !325
  br label %_RINvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer24serialize_newtype_structlECsddkiMbsmfqo_5yr_ls.exit

_RINvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer24serialize_newtype_structlECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.f, %bb.g
  %.sroa.09.3.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i, %bb.f ], [ %i.am, %bb.g ] ; 2 uses
  %i.ao = sub i64 11, %.sroa.09.3.i.i.i.i.i       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i
  %i.aq = icmp ult i64 %i.ao, 12
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef range(i64 0, -9223372036854775808) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvCs6m2LFPinx2P_9async_lsps0_1__INtB5_10RawMessageRNtB5_7MessageENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtCsbbTh99npV2h_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !343, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !344
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = call noundef align 8 ptr @_RINvYINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap15serialize_entryeNtCs6m2LFPinx2P_9async_lsp10RpcVersionECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %_RNvXs6_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap3endCsddkiMbsmfqo_5yr_ls.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.h = load i64, ptr %.val, align 8, !range !346, !alias.scope !345, !noalias !347, !noundef !5 ; 2 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775807
  call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %i.h, -9223372036854775808       ; 2 uses
  %i.k = icmp ult i64 %i.j, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 1
  switch i64 %i.l, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.i
    i64 2, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !349
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !12, !alias.scope !350, !noalias !347, !noundef !5
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  store ptr %i.d, ptr %i.c, align 8, !noalias !349
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.q = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.s = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtB1Y_6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r) ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not21.i.i.i, label %bb.f, label %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtB1f_5value5ValueECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.m) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not22.i.i.i, label %bb.h, label %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.sroa.0.0.i.i.i = phi ptr [ null, %bb.h ], [ %i.s, %bb.e ], [ %i.q, %bb.d ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !349
  br label %_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit

bb.i:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !352
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !9, !alias.scope !353, !noalias !347, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !8, !alias.scope !353, !noalias !347, !noundef !5
  %.not25.i.i.i = icmp eq i64 %i.x, -1
  store ptr %i.d, ptr %i.b, align 8, !noalias !352
  %i.y = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %.val) ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not26.i.i.i, label %bb.j, label %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.j:                                             ; preds = %bb.i
  %.not.i2.i.i = icmp eq i64 %i.v, -1
  br i1 %.not.i2.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtB1f_5value5ValueEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.u) ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not28.i.i.i, label %bb.l, label %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not25.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtCs6m2LFPinx2P_9async_lsp13ResponseErrorEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.w) ; 2 uses
  %.not30.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not30.i.i.i, label %bb.n, label %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.sroa.0.0.i1.i.i = phi ptr [ null, %bb.n ], [ %i.y, %bb.i ], [ %i.z, %bb.k ], [ %i.aa, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !352
  br label %_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit

bb.o:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !355
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !12, !alias.scope !356, !noalias !347, !noundef !5
  store ptr %i.d, ptr %i.a, align 8, !noalias !355
  %i.ae = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtB1Y_6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ab) ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i3.i.i, label %bb.p, label %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.af = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %i.af, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtB1f_5value5ValueECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac) ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i.i.i, label %bb.r, label %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %.sroa.0.0.i4.i.i = phi ptr [ null, %bb.r ], [ %i.ae, %bb.o ], [ %i.ag, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !355
  br label %_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit

_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i ], [ %.sroa.0.0.i1.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i ], [ %.sroa.0.0.i4.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i ] ; 2 uses
end_hunk_0
