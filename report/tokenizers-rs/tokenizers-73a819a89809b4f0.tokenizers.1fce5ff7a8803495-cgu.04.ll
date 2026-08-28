Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.04?download=true
inline.NumInlined: 1221
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7oYvdc6j6uT_9daachorse8bytewise22DoubleArrayAhoCorasickmEEECs2JiOgHzbbc7_10tokenizers:bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs7oYvdc6j6uT_9daachorse6OutputmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.f) #24
          to label %common.resume.i unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs7oYvdc6j6uT_9daachorse6OutputmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7oYvdc6j6uT_9daachorse8bytewise22DoubleArrayAhoCorasickmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs7oYvdc6j6uT_9daachorse6OutputmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume.i:                                  ; preds = %bb.h, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %.body.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7oYvdc6j6uT_9daachorse8bytewise22DoubleArrayAhoCorasickmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateEECs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs7oYvdc6j6uT_9daachorse6OutputmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !noundef !11 ; 4 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEBF_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7prepend7PrependEBH_.exit.i, %bb.g, %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils8SequenceEBH_.exit.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %i.a, -9223372036854775798
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.a, -9223372036854775808
  %i.e = icmp slt i64 %i.a, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 10
  switch i64 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEBF_.exit [
    i64 7, label %bb.c
    i64 10, label %bb.f
    i64 11, label %bb.g
    i64 12, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils8SequenceEBH_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils8SequenceEBH_.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEBF_.exit

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled11PrecompiledECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEBF_.exit

bb.g:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace7ReplaceEBH_(ptr noalias noundef align 8 dereferenceable(64) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEBF_.exit

bb.h:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7prepend7PrependEBH_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7prepend7PrependEBH_.exit.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !11 ; 5 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperEBF_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split5SplitEBH_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequence8SequenceEBH_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspace9MetaspaceEBH_.exit.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %i.a, 8
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.a, -2
  %i.e = icmp samesign ugt i64 %i.a, 1
  %i.f = select i1 %i.e, i64 %i.d, i64 6
  switch i64 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperEBF_.exit [
    i64 3, label %bb.c
    i64 5, label %bb.f
    i64 6, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspace9MetaspaceEBH_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume.i:                                  ; preds = %.body.i.i, %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.h, %bb.d ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspace9MetaspaceEBH_.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperEBF_.exit

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequence8SequenceEBH_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequence8SequenceEBH_.exit.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperEBF_.exit

bb.i:                                             ; preds = %bb.b
  %1 = icmp eq i64 %i.a, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %1, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.m, %bb.j
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split5SplitEBH_.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.p, %bb.n, %bb.k
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %bb.p ], [ %i.n, %bb.k ], [ %i.p, %bb.n ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs5_CsaiktC1pStS5_4onigNtB5_5RegexNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %.body.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split5SplitEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs5_CsaiktC1pStS5_4onigNtB5_5RegexNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !11 ; 4 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEBF_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEBF_.exit: ; preds = %bb.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequence8SequenceEBH_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders3ctc3CTCEBH_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspace9MetaspaceEBH_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders9wordpiece9WordPieceEBH_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpe10BPEDecoderEBH_.exit.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %i.a, 8
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.a, -2
  %i.e = icmp samesign ugt i64 %i.a, 1
  %i.f = select i1 %i.e, i64 %i.d, i64 6
  switch i64 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEBF_.exit [
    i64 0, label %bb.c
    i64 2, label %bb.f
    i64 3, label %bb.i
    i64 4, label %bb.l
    i64 5, label %bb.s
    i64 6, label %bb.v
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpe10BPEDecoderEBH_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume.i:                                  ; preds = %bb.t, %bb.p, %.body.i.i, %bb.j, %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.h, %bb.d ], [ %i.k, %bb.g ], [ %i.n, %bb.j ], [ %i.v, %bb.p ], [ %i.z, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpe10BPEDecoderEBH_.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEBF_.exit

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders9wordpiece9WordPieceEBH_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %common.resume.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders9wordpiece9WordPieceEBH_.exit.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEBF_.exit

bb.i:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspace9MetaspaceEBH_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %common.resume.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspace9MetaspaceEBH_.exit.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEBF_.exit

bb.l:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %.body.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.s, %bb.o ], [ %i.q, %bb.m ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.t) #24
          to label %common.resume.i unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders3ctc3CTCEBH_.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.r:                                             ; preds = %.body.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders3ctc3CTCEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEBF_.exit

bb.s:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequence8SequenceEBH_.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequence8SequenceEBH_.exit.i: ; preds = %bb.s
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEBF_.exit

bb.v:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace7ReplaceEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !11
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEEB13_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !noundef !11
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBY_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !36, !noundef !11
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBC_EECs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBC_EECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.d) #24
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBC_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.f)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(i8 %.0.val, ptr captures(address) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %0 = icmp eq i8 %.0.val, 0
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.a = load i64, ptr %.8.val, align 8, !range !43, !alias.scope !44, !noalias !45, !noundef !11
  switch i64 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !44, !noalias !45, !noundef !11 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !44, !noalias !45, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i, i64 noundef 1) #26, !noalias !48
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.f:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !44, !noalias !45, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g, !noalias !45

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #26, !noalias !45
  resume { ptr, i32 } %i.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #26, !noalias !45
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13TokenizerImplNtNtB12_6models12ModelWrapperNtNtB12_11normalizers17NormalizerWrapperNtNtB12_14pre_tokenizers19PreTokenizerWrapperNtNtB12_10processors20PostProcessorWrapperNtNtB12_8decoders14DecoderWrapperENtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB12_(ptr noalias noundef nonnull align 8 dereferenceable(1112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !49, !noundef !11
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13TokenizerImplNtNtBG_6models12ModelWrapperNtNtBG_11normalizers17NormalizerWrapperNtNtBG_14pre_tokenizers19PreTokenizerWrapperNtNtBG_10processors20PostProcessorWrapperNtNtBG_8decoders14DecoderWrapperEEBG_(ptr noalias noundef align 8 dereferenceable(1112) %0)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !50, !nonnull !11, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.c = load i64, ptr %.val.i, align 8, !range !43, !alias.scope !59, !noalias !50, !noundef !11
  switch i64 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !59, !noalias !50, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !59, !noalias !50, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i, i64 noundef 1) #26, !noalias !60
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !59, !noalias !50, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g, !noalias !50

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #26, !noalias !50
  resume { ptr, i32 } %i.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #26, !noalias !50
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !11
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !61, !nonnull !11, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.e = load i64, ptr %.val.i, align 8, !range !43, !alias.scope !70, !noalias !61, !noundef !11
  switch i64 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.f
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !70, !noalias !61, !noundef !11 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !70, !noalias !61, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i, i64 noundef 1) #26, !noalias !71
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.h:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !70, !noalias !61, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i, !noalias !61

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #26, !noalias !61
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #26, !noalias !61
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !11
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %common.resume.op

end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !232, !noundef !11
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.c
  ], !prof !233

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !11, !align !19, !noundef !11 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !21, !invariant.load !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !22, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #26
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !21, !invariant.load !11 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !22, !invariant.load !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #26
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #26
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace7ReplaceEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !234, !alias.scope !235, !noundef !11
  %1 = icmp eq i64 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %1, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.e, %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace14ReplacePatternEBH_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.c, %bb.c ], [ %i.e, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #24
          to label %.body2 unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace14ReplacePatternEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace14ReplacePatternEBH_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body2 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace14ReplacePatternEBH_.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.k

.body2:                                           ; preds = %bb.k, %bb.i, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.k ], [ %i.j, %bb.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs5_CsaiktC1pStS5_4onigNtB5_5RegexNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexEBH_.exit unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXs5_CsaiktC1pStS5_4onigNtB5_5RegexNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
  ret void

bb.l:                                             ; preds = %.body2, %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexEBH_.exit: ; preds = %.body2
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary15AddedVocabularyEBH_(ptr noalias noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit8 unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit: ; preds = %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit8: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit9 unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit8
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit9: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit10 unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, %bb.e
  %.pn4 = phi { ptr, i32 } [ %i.k, %bb.e ], [ %.pn2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7oYvdc6j6uT_9daachorse8bytewise22DoubleArrayAhoCorasickmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %0) #24
          to label %bb.f unwind label %bb.i

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit9
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit10: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit9
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7oYvdc6j6uT_9daachorse8bytewise22DoubleArrayAhoCorasickmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %0)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %.pn6 = phi { ptr, i32 } [ %i.m, %bb.g ], [ %.pn4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7oYvdc6j6uT_9daachorse8bytewise22DoubleArrayAhoCorasickmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.l) #24
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit10
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7oYvdc6j6uT_9daachorse8bytewise22DoubleArrayAhoCorasickmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.n)
  ret void

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit, %bb.b, %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.j:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_1
begin_hunk_2_@_RINvXs3_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBY_8plumbing6bridge8CallbackNtNtBY_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1080
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTTTmmElEjEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %i.i)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.i
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc2 unwind label %bb.b

.noexc2:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1080
  br label %_RINvXs6_NtCsgbNVBrIJ05E_5rayon3vecINtB6_5DrainTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBV_8plumbing6bridge8CallbackNtNtBV_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers.exit

bb.j:                                             ; preds = %bb.h
  %i.x = icmp ult i64 %i.i, %i.d
  br i1 %i.x, label %bb.l, label %_RINvXs6_NtCsgbNVBrIJ05E_5rayon3vecINtB6_5DrainTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBV_8plumbing6bridge8CallbackNtNtBV_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers.exit

bb.k:                                             ; preds = %bb.h
  store i64 %i.d, ptr %i.c, align 8, !noalias !1080
  br label %_RINvXs6_NtCsgbNVBrIJ05E_5rayon3vecINtB6_5DrainTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBV_8plumbing6bridge8CallbackNtNtBV_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers.exit

bb.l:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.q, align 8, !noalias !1080, !nonnull !11, !noundef !11 ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.h
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.i
  %i.ab = sub nuw nsw i64 %i.d, %i.i              ; 2 uses
  %i.ac = mul nuw nsw i64 %i.ab, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.aa, i64 %i.ac, i1 false), !noalias !1080
  %i.ad = add nuw nsw i64 %i.ab, %i.h
  store i64 %i.ad, ptr %i.c, align 8, !noalias !1080
  br label %_RINvXs6_NtCsgbNVBrIJ05E_5rayon3vecINtB6_5DrainTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBV_8plumbing6bridge8CallbackNtNtBV_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers.exit

bb.m:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1071
  unreachable

_RINvXs6_NtCsgbNVBrIJ05E_5rayon3vecINtB6_5DrainTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBV_8plumbing6bridge8CallbackNtNtBV_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.l, %bb.k, %bb.j, %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgbNVBrIJ05E_5rayon3vec8IntoIterTTTmmElEjEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvXs6_NtCsgbNVBrIJ05E_5rayon3vecINtB6_5DrainTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBV_8plumbing6bridge8CallbackNtNtBV_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.n ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgbNVBrIJ05E_5rayon3vec8IntoIterTTTmmElEjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvXs6_NtCsgbNVBrIJ05E_5rayon3vecINtB6_5DrainTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBV_8plumbing6bridge8CallbackNtNtBV_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.p:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB2q_16AddedTokenWithIdNtB1j_11Deserialize11deserialize9___VisitorEB2u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.3.i = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.986.i = alloca [7 x i8], align 1         ; 6 uses
  %.sroa.14.i = alloca [16 x i8], align 8         ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 13 uses
  %.sroa.18 = alloca [16 x i8], align 8           ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1088, !noalias !1093, !noundef !11 ; 2 uses
  %.promoted.i = load i64, ptr %i.u, align 8, !alias.scope !1085, !noalias !1097 ; 2 uses
  %i.x = icmp ult i64 %.promoted.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1088, !noalias !1093, !nonnull !11, !noundef !11
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aa = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ad, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !1100, !noundef !11
  switch i8 %i.ac, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !1101

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ad = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.ad, ptr %i.u, align 8, !alias.scope !1102, !noalias !1097
  %exitcond.not.i = icmp eq i64 %i.ad, %i.w
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 5, ptr %i.t, align 8
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bm

bb.d:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 8, !noundef !11
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  store i8 %i.ai, ptr %i.ag, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g, !prof !293

bb.e:                                             ; preds = %bb.b
  %i.ak = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80)
  br label %bb.bk

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 24, ptr %i.s, align 8
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bm

bb.g:                                             ; preds = %bb.d
  %i.an = add i64 %i.aa, 1
  store i64 %i.an, ptr %i.u, align 8, !alias.scope !1105
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %1, ptr %i.p, align 8, !noalias !1108
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 1, ptr %i.ao, align 8, !noalias !1108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1108
  store i64 0, ptr %i.o, align 8, !noalias !1108
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8, !noalias !1108
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 0, ptr %i.aq, align 8, !noalias !1108
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.986.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.665.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 33
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.838.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br label %.outer

.outer:                                           ; preds = %bb.ac, %bb.g
  %.sroa.412.0.i.ph = phi i32 [ %i.cs, %bb.ac ], [ undef, %bb.g ]
  %.not72.i = phi i1 [ false, %bb.ac ], [ true, %bb.g ]
  %.sroa.010.0.i.ph = phi i1 [ true, %bb.ac ], [ false, %bb.g ]
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.986.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1118
  invoke fastcc void @_RINvNvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB8_9MapAccesspENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.noexc.i unwind label %.loopexit.loopexit.i.loopexit, !noalias !1121

.noexc.i:                                         ; preds = %bb.h
  %i.av = load i8, ptr %i.h, align 8, !range !317, !noalias !1118, !noundef !11
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1118, !nonnull !11, !align !19, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1118
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread.i

bb.j:                                             ; preds = %.noexc.i
  %i.az = load i8, ptr %i.ar, align 1, !range !317, !noalias !1118, !noundef !11
  %i.ba = trunc nuw i8 %i.az to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1118
  br i1 %i.ba, label %bb.k, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i.thread

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.986.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  br i1 %.sroa.010.0.i.ph, label %bb.ap, label %bb.al

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1118
  %i.bb = load ptr, ptr %i.p, align 8, !alias.scope !1122, !noalias !1123, !nonnull !11, !align !19, !noundef !11 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 8 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !1144, !noalias !1147, !noundef !11
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !alias.scope !1144, !noalias !1147
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %i.bg, align 8, !alias.scope !1148, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1149
  invoke void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bb)
          to label %.noexc76.i.a unwind label %.loopexit.loopexit.i.loopexit, !noalias !1121

.noexc76.i.a:                                     ; preds = %bb.k
  %i.bh = load i64, ptr %i.f, align 8, !range !35, !noalias !1149, !noundef !11 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2
  %i.bj = load ptr, ptr %i.as, align 8, !noalias !1149 ; 6 uses
  br i1 %i.bi, label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.thread4.i.i.i, label %bb.l

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.thread4.i.i.i: ; preds = %.noexc76.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1149
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i

bb.l:                                             ; preds = %.noexc76.i.a
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1149 ; 3 uses
  %i.bk = trunc nuw i64 %i.bh to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  br i1 %i.bk, label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.bl = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 2
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = load i16, ptr %i.bj, align 1
  %i.bn = icmp ne i16 %i.bm, 25705
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i8 13, ptr %i.g, align 8, !alias.scope !1153, !noalias !1154
  store ptr %i.bj, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1153, !noalias !1154
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1153, !noalias !1154
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i

bb.p:                                             ; preds = %bb.n
  %.sroa.10.0.copyload.pre.pre.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1156
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i: ; preds = %bb.p, %bb.o
  %.sroa.10.0.copyload.pre.i = phi ptr [ %.sroa.10.0.copyload.pre.pre.i, %bb.p ], [ %i.bj, %bb.o ]
  %.sroa.0.0.copyload.pr.i = phi i8 [ -1, %bb.p ], [ 13, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1118
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.i.i.i: ; preds = %bb.l
  invoke void @_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB8_16AddedTokenWithIdNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1z_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i)
          to label %.noexc77.i.a unwind label %.loopexit.loopexit.i.loopexit, !noalias !1121

.noexc77.i.a:                                     ; preds = %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.i.i.i
  %.pr.i.i.i = load i8, ptr %i.g, align 8, !noalias !1156 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1149
  %i.bq = icmp eq i8 %.pr.i.i.i, -2
  %.sroa.10.0.copyload.pre181.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1156 ; 3 uses
  br i1 %i.bq, label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i: ; preds = %.noexc77.i.a, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.thread4.i.i.i
  %i.br = phi ptr [ %i.bj, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.thread4.i.i.i ], [ %.sroa.10.0.copyload.pre181.i, %.noexc77.i.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1118
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread.i

.body.i:                                          ; preds = %.loopexit.loopexit.i.loopexit, %.loopexit.loopexit.i.loopexit.split-lp, %bb.ag, %bb.ad, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi100.i, %bb.ad ], [ %i.cy, %bb.ag ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp193.i, %.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1u_EEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.o) #24
          to label %common.resume unwind label %bb.ak, !noalias !1121

.loopexit.loopexit.i.loopexit:                    ; preds = %bb.h, %bb.k, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.loopexit.i.loopexit.split-lp:           ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.aa, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp193.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ap, %bb.al, %.loopexit101.i, %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i: ; preds = %.noexc77.i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.986.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.986.0..sroa_idx.i, i64 7, i1 false), !noalias !1156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1118
  %i.bs = icmp eq i8 %.pr.i.i.i, -3
  br i1 %i.bs, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread.i, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread.i: ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i, %bb.i
  %.sroa.10.089.i = phi ptr [ %i.ay, %bb.i ], [ %i.br, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i ], [ %.sroa.10.0.copyload.pre181.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.986.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  br label %bb.av

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i: ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i
  %.sroa.0.094.i = phi i8 [ %.pr.i.i.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i ], [ %.sroa.0.0.copyload.pr.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i ] ; 2 uses
  %.sroa.10.093.i = phi ptr [ %.sroa.10.0.copyload.pre181.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i ], [ %.sroa.10.0.copyload.pre.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.986.i, i64 7, i1 false), !noalias !1108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i, i64 16, i1 false), !noalias !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.986.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  %cond = icmp eq i8 %.sroa.0.094.i, -1
  br i1 %cond, label %bb.v, label %bb.q

bb.q:                                             ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.519.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, i64 7, i1 false), !noalias !1108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.721.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !1108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1108
  store i8 %.sroa.0.094.i, ptr %i.l, align 8, !noalias !1108
  store ptr %.sroa.10.093.i, ptr %.sroa.620.0..sroa_idx.i, align 8, !noalias !1108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1108
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1163, !noalias !1168, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !1175, !noalias !1176 ; 2 uses
  %i.bv = icmp ult i64 %.promoted.i.i.i.i, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.bw = load ptr, ptr %i.bc, align 8, !alias.scope !1163, !noalias !1168, !nonnull !11, !noundef !11
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.bx = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ca, %bb.s ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !1179, !noundef !11
  switch i8 %i.bz, label %bb.t [
    i8 32, label %bb.s
    i8 10, label %bb.s
    i8 9, label %bb.s
    i8 13, label %bb.s
    i8 58, label %bb.u
  ], !prof !1101

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.ca = add i64 %i.bx, 1                        ; 3 uses
  store i64 %i.ca, ptr %i.bd, align 8, !alias.scope !1180, !noalias !1176
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ca, %i.bu
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.r

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1183
  store i64 3, ptr %i.d, align 8, !noalias !1183
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc78.i.a unwind label %.loopexit.split-lp97.i, !noalias !1121

.noexc78.i.a:                                     ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1183
  br label %.loopexit101.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1183
  store i64 6, ptr %i.e, align 8, !noalias !1183
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc79.i unwind label %.loopexit.split-lp97.i, !noalias !1121

.noexc79.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1183
  br label %.loopexit101.i

bb.u:                                             ; preds = %bb.r
  %i.cd = add i64 %i.bx, 1
  store i64 %i.cd, ptr %i.bd, align 8, !alias.scope !1184, !noalias !1187
  invoke void @_RINvXsi_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentNtB6_14ContentVisitorNtNtCsboAIIHEtPkY_10serde_core2de15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2h_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bb)
          to label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit96.i, !noalias !1121

bb.v:                                             ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i
  br i1 %.not72.i, label %bb.x, label %bb.w, !prof !318

bb.w:                                             ; preds = %bb.v
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15duplicate_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 2)
          to label %bb.av unwind label %.loopexit.split-lp.i, !noalias !1121

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1108
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !1194, !noalias !1199, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !1207, !noalias !1208 ; 2 uses
  %i.ch = icmp ult i64 %.promoted.i.i.i.i.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x
  %i.ci = load ptr, ptr %i.bc, align 8, !alias.scope !1194, !noalias !1199, !nonnull !11, !noundef !11
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %i.cj = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cm, %bb.z ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !1211, !noundef !11
  switch i8 %i.cl, label %bb.aa [
    i8 32, label %bb.z
    i8 10, label %bb.z
    i8 9, label %bb.z
    i8 13, label %bb.z
    i8 58, label %bb.ab
  ], !prof !1101

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y
  %i.cm = add i64 %i.cj, 1                        ; 3 uses
  store i64 %i.cm, ptr %i.bd, align 8, !alias.scope !1212, !noalias !1208
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cm, %i.cg
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.y

.loopexit.i.i.i.i:                                ; preds = %bb.x, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1215
  store i64 3, ptr %i.b, align 8, !noalias !1215
  %i.cn = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc81.i.a unwind label %.loopexit.loopexit.split-lp.i, !noalias !1121

.noexc81.i.a:                                     ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1215
  br label %.loopexit196.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1215
  store i64 6, ptr %i.c, align 8, !noalias !1215
  %i.co = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc82.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !1121

.noexc82.i:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1215
  br label %.loopexit196.i

bb.ab:                                            ; preds = %bb.y
  %i.cp = add i64 %i.cj, 1
  store i64 %i.cp, ptr %i.bd, align 8, !alias.scope !1216, !noalias !1219
  invoke fastcc void @_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef align 8 dereferenceable(56) %i.bb)
          to label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuemECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit.loopexit.i.loopexit.split-lp, !noalias !1121

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuemECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.ab
  %.pre180.i = load i32, ptr %i.n, align 8, !range !1005, !noalias !1108
  %i.cq = trunc nuw i32 %.pre180.i to i1
  br i1 %i.cq, label %.loopexit196.i.loopexit, label %bb.ac

.loopexit196.i.loopexit:                          ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuemECs2JiOgHzbbc7_10tokenizers.exit.i
  %.pre = load ptr, ptr %i.at, align 8, !noalias !1108
  br label %.loopexit196.i

.loopexit196.i:                                   ; preds = %.noexc81.i.a, %.noexc82.i, %.loopexit196.i.loopexit
  %i.cr = phi ptr [ %.pre, %.loopexit196.i.loopexit ], [ %i.cn, %.noexc81.i.a ], [ %i.co, %.noexc82.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1108
  br label %bb.av

bb.ac:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuemECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cs = load i32, ptr %i.au, align 4, !noalias !1108, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1108
  br label %.outer

.loopexit96.i:                                    ; preds = %bb.u
  %lpad.loopexit98.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp97.i:                           ; preds = %bb.t, %.loopexit.i.i.i
  %lpad.loopexit.split-lp99.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp97.i, %.loopexit96.i
  %lpad.phi100.i = phi { ptr, i32 } [ %lpad.loopexit98.i, %.loopexit96.i ], [ %lpad.loopexit.split-lp99.i, %.loopexit.split-lp97.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.l) #24
          to label %.body.i unwind label %bb.ak, !noalias !1121

_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.u
  %.pr.i = load i8, ptr %i.k, align 8, !noalias !1108 ; 2 uses
  %i.ct = icmp eq i8 %.pr.i, -1
  br i1 %i.ct, label %.loopexit101.loopexit.i, label %bb.ae

.loopexit101.loopexit.i:                          ; preds = %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i
  %.pre.i = load ptr, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !1108
  br label %.loopexit101.i

.loopexit101.i:                                   ; preds = %.loopexit101.loopexit.i, %.noexc79.i, %.noexc78.i.a
  %i.cu = phi ptr [ %.pre.i, %.loopexit101.loopexit.i ], [ %i.cb, %.noexc78.i.a ], [ %i.cc, %.noexc79.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1108
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %bb.aj unwind label %.loopexit.split-lp.i, !noalias !1121

bb.ae:                                            ; preds = %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.636.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.463.0..sroa_idx.i, i64 7, i1 false), !noalias !1108
  %.sroa.564.0.copyload.i = load ptr, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !1108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.838.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.665.0..sroa_idx.i, i64 16, i1 false), !noalias !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1108
  store i8 %.pr.i, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !1108
  store ptr %.sroa.564.0.copyload.i, ptr %.sroa.737.0..sroa_idx.i, align 8, !noalias !1108
  %i.cv = load i64, ptr %i.aq, align 8, !alias.scope !1220, !noalias !1223, !noundef !11 ; 3 uses
  %i.cw = load i64, ptr %i.o, align 8, !range !21, !alias.scope !1220, !noalias !1223, !noundef !11
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1o_EEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ai unwind label %bb.ag, !noalias !1225

bb.ag:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBY_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m) #24
          to label %.body.i unwind label %bb.ah, !noalias !1121

bb.ah:                                            ; preds = %bb.ag
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1121
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %i.da = load ptr, ptr %i.ap, align 8, !alias.scope !1220, !noalias !1223, !nonnull !11, !noundef !11
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.db, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !1121
  %i.dc = add i64 %i.cv, 1
  store i64 %i.dc, ptr %i.aq, align 8, !alias.scope !1220, !noalias !1223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1108
  br label %bb.h

bb.aj:                                            ; preds = %.loopexit101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1108
  br label %bb.av

bb.ak:                                            ; preds = %bb.ad, %.body.i
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1121
  unreachable

bb.al:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1108
  invoke void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXs14_NtB28_5implsmNtB28_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 2)
          to label %bb.am unwind label %.loopexit.split-lp.i, !noalias !1121

bb.am:                                            ; preds = %bb.al
  %i.de = load i32, ptr %i.j, align 8, !range !1005, !noalias !1108, !noundef !11
  %i.df = trunc nuw i32 %i.de to i1
  br i1 %i.df, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !1108, !nonnull !11, !align !19, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1108
  br label %bb.av

bb.ao:                                            ; preds = %bb.am
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !noalias !1108, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1108
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i.thread
  %.sroa.042.0.i = phi i32 [ %i.dj, %bb.ao ], [ %.sroa.412.0.i.ph, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1108
  invoke void @_RINvXs6_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys_1__NtB2Z_10AddedTokenNtB1P_11Deserialize11deserialize9___VisitorEB33_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @77, i64 noundef 6)
          to label %bb.aq unwind label %.loopexit.split-lp.i, !noalias !1121

bb.aq:                                            ; preds = %bb.ap
  %i.dk = load i64, ptr %i.i, align 8, !range !16, !noalias !1108, !noundef !11 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !1108 ; 2 uses
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
end_hunk_2
begin_hunk_3_@_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings1_1__NtB2t_13PaddingParamsNtB1j_11Deserialize11deserialize9___VisitorEB2x_:bb.a

_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings1_1__NtBb_13PaddingParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1l_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB2Z_4read7StrReadEEBf_.exit: ; preds = %bb.s, %bb.z, %bb.ag, %bb.an, %bb.au, %bb.av, %bb.ax
  %.sroa.25.0 = phi i8 [ undef, %bb.s ], [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %bb.an ], [ undef, %bb.au ], [ undef, %bb.ax ], [ %i.cw, %bb.av ]
  %.sroa.24.0 = phi i32 [ undef, %bb.s ], [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %bb.an ], [ undef, %bb.au ], [ undef, %bb.ax ], [ %i.er, %bb.av ]
  %.sroa.23.0 = phi i32 [ undef, %bb.s ], [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %bb.an ], [ undef, %bb.au ], [ undef, %bb.ax ], [ %i.eb, %bb.av ]
  %.sroa.22.0 = phi i64 [ undef, %bb.s ], [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %bb.an ], [ undef, %bb.au ], [ undef, %bb.ax ], [ %.sroa.12.0.copyload.i, %bb.av ]
  %.sroa.21.0 = phi ptr [ undef, %bb.s ], [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %bb.an ], [ undef, %bb.au ], [ undef, %bb.ax ], [ %i.fd, %bb.av ]
  %.sroa.20.0 = phi i64 [ undef, %bb.s ], [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %bb.an ], [ undef, %bb.au ], [ undef, %bb.ax ], [ %i.fa, %bb.av ]
  %.sroa.19.0 = phi i64 [ undef, %bb.s ], [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %bb.an ], [ undef, %bb.au ], [ undef, %bb.ax ], [ %i.dl, %bb.av ]
  %.sroa.18.0 = phi i64 [ undef, %bb.s ], [ undef, %bb.z ], [ undef, %bb.ag ], [ undef, %bb.an ], [ undef, %bb.au ], [ undef, %bb.ax ], [ %i.df, %bb.av ]
  %.sroa.11.0 = phi i64 [ %i.cu, %bb.s ], [ %i.dk, %bb.z ], [ %i.dz, %bb.ag ], [ %i.ep, %bb.an ], [ %i.ff, %bb.au ], [ %i.fh, %bb.ax ], [ %i.cg, %bb.av ]
  %.sroa.055.0 = phi i64 [ 2, %bb.s ], [ 2, %bb.z ], [ 2, %bb.ag ], [ 2, %bb.an ], [ 2, %bb.au ], [ 2, %bb.ax ], [ %i.cc, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.fi = load i8, ptr %i.bj, align 8, !noundef !11
  %i.fj = add i8 %i.fi, 1
  store i8 %i.fj, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 %.sroa.055.0, ptr %i.as, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %.sroa.21.0, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store i64 %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i32 %.sroa.23.0, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  store i32 %.sroa.24.0, ptr %.sroa.24.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store i8 %.sroa.25.0, ptr %.sroa.25.0..sroa_idx, align 8
  %i.fk = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %1)
          to label %bb.ba unwind label %bb.az     ; 10 uses

bb.ay:                                            ; preds = %bb.bn, %bb.g
  %.sink = phi ptr [ %i.gd, %bb.bn ], [ %i.br, %bb.g ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.fl, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.fr

bb.az:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings1_1__NtBb_13PaddingParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1l_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB2Z_4read7StrReadEEBf_.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB13_(ptr noalias noundef align 8 dereferenceable(72) %i.as) #24
          to label %common.resume unwind label %bb.bg

bb.ba:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings1_1__NtBb_13PaddingParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1l_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB2Z_4read7StrReadEEBf_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull align 8 dereferenceable(72) %i.as, i64 72, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store ptr %i.fk, ptr %i.fn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.fo = load i64, ptr %i.at, align 8, !range !35, !noundef !11 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 2
  br i1 %i.fp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not36 = icmp eq ptr %i.fk, null
  br i1 %.not36, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit: ; preds = %bb.ba
  %i.fq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !11, !align !19, !noundef !11 ; 2 uses
  %.not1295 = icmp eq ptr %i.fk, null
  br i1 %.not1295, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit.thread, label %bb.bh

bb.bd:                                            ; preds = %bb.bb
  %i.fs = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fs)
          to label %common.resume unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bd
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fs)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit.thread

bb.bg:                                            ; preds = %bb.fc, %bb.az
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit.thread: ; preds = %bb.bc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit
  %.sroa.09.0892 = phi i64 [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.fo, %bb.bc ]
  %.sroa.10.0891 = phi ptr [ %i.fr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit ], [ %i.fr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.fk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.4.0.copyload, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.bm

bb.bh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  %i.fw = load i64, ptr %i.fk, align 8, !range !43, !alias.scope !1878, !noalias !1879, !noundef !11
  switch i64 %i.fw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.bi
    i64 1, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !1878, !noalias !1879, !noundef !11 ; 2 uses
  %i.fy = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.fy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !1878, !noalias !1879, !nonnull !11, !noundef !11
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i, i64 noundef 1) #26, !noalias !1882
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.bk:                                            ; preds = %bb.bh
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ga, align 8, !alias.scope !1878, !noalias !1879, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.bl, !noalias !1879

common.resume.sink.split:                         ; preds = %bb.bl, %bb.fn
  %.sink1293 = phi ptr [ %i.oe, %bb.fn ], [ %i.fk, %bb.bl ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ot, %bb.fn ], [ %i.gb, %bb.bl ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink1293, i64 noundef 40, i64 noundef 8) #26, !noalias !11
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.fc, %bb.az, %bb.be, %bb.fh, %.loopexit.i38, %bb.ey, %bb.fa
  %common.resume.op = phi { ptr, i32 } [ %i.ft, %bb.be ], [ %lpad.phi.i, %.loopexit.i38 ], [ %i.fm, %bb.az ], [ %i.nz, %bb.ey ], [ %.pn186.i, %bb.fa ], [ %i.of, %bb.fc ], [ %i.om, %bb.fh ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.bl:                                            ; preds = %bb.bk
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.bh, %bb.bi, %bb.bj, %bb.bk
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fk, i64 noundef 40, i64 noundef 8) #26, !noalias !1879
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit.thread

bb.bm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit48.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit.thread
  %.sroa.10.1 = phi ptr [ %.sroa.10.0891, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit.thread ], [ %.sroa.10.2897, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit48.thread ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.0892, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit.thread ], [ %.sroa.09.2898, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13PaddingParamsEBH_.exit48.thread ] ; 2 uses
  %i.gc = icmp eq i64 %.sroa.09.1, 2
  br i1 %i.gc, label %bb.fo, label %bb.fp, !prof !293

bb.bn:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 24, ptr %i.ar, align 8
  %i.gd = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.ay

bb.bo:                                            ; preds = %bb.f
  %i.ge = add i64 %i.bc, 1
  store i64 %i.ge, ptr %i.aw, align 8, !alias.scope !1883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %1, ptr %i.ab, align 8, !noalias !1886
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.gf, align 8, !noalias !1886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1886
  store i64 -1, ptr %i.aa, align 8, !noalias !1886
  %i.gg = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.654.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %.sroa.757.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.dm, %bb.bo
  %.sroa.437.0.i.ph = phi i32 [ %i.lz, %bb.dm ], [ undef, %bb.bo ]
  %.not1689 = phi i1 [ false, %bb.dm ], [ true, %bb.bo ]
  %.sroa.035.0.i.ph = phi i1 [ true, %bb.dm ], [ false, %bb.bo ]
  %.sroa.4.0.i.ph = phi i32 [ %.sroa.4.0.i.ph1698, %bb.dm ], [ undef, %bb.bo ]
  %.sroa.028.0.i.ph = phi i32 [ %.sroa.028.0.i.ph1699, %bb.dm ], [ 0, %bb.bo ]
  %.sroa.523.0.i.ph = phi i64 [ %.sroa.523.0.i.ph1709, %bb.dm ], [ undef, %bb.bo ]
  %.sroa.020.0.i.ph = phi i64 [ %.sroa.020.0.i.ph1710, %bb.dm ], [ 2, %bb.bo ]
  %.sroa.014.0.i.ph = phi i8 [ %.sroa.014.0.i.ph1717, %bb.dm ], [ 2, %bb.bo ]
  %.sroa.5.0.i.ph = phi i64 [ %.sroa.5.0.i.ph1724, %bb.dm ], [ undef, %bb.bo ]
  %.sroa.07.0.i.ph = phi i64 [ %.sroa.07.0.i.ph1725, %bb.dm ], [ 2, %bb.bo ]
  br label %.outer1697

.outer1697:                                       ; preds = %.outer, %bb.dg
  %.sroa.4.0.i.ph1698 = phi i32 [ %.sroa.4.0.i.ph, %.outer ], [ %i.ll, %bb.dg ] ; 2 uses
  %.sroa.028.0.i.ph1699 = phi i32 [ %.sroa.028.0.i.ph, %.outer ], [ 1, %bb.dg ] ; 3 uses
  %.sroa.523.0.i.ph1700 = phi i64 [ %.sroa.523.0.i.ph, %.outer ], [ %.sroa.523.0.i.ph1709, %bb.dg ]
  %.sroa.020.0.i.ph1701 = phi i64 [ %.sroa.020.0.i.ph, %.outer ], [ %.sroa.020.0.i.ph1710, %bb.dg ]
  %.sroa.014.0.i.ph1702 = phi i8 [ %.sroa.014.0.i.ph, %.outer ], [ %.sroa.014.0.i.ph1717, %bb.dg ]
  %.sroa.5.0.i.ph1703 = phi i64 [ %.sroa.5.0.i.ph, %.outer ], [ %.sroa.5.0.i.ph1724, %bb.dg ]
  %.sroa.07.0.i.ph1704 = phi i64 [ %.sroa.07.0.i.ph, %.outer ], [ %.sroa.07.0.i.ph1725, %bb.dg ]
  br label %.outer1708

.outer1708:                                       ; preds = %.outer1697, %bb.da
  %.sroa.523.0.i.ph1709 = phi i64 [ %.sroa.523.0.i.ph1700, %.outer1697 ], [ %i.kx, %bb.da ] ; 3 uses
  %.sroa.020.0.i.ph1710 = phi i64 [ %.sroa.020.0.i.ph1701, %.outer1697 ], [ %.pr209.i, %bb.da ] ; 5 uses
  %.sroa.014.0.i.ph1711 = phi i8 [ %.sroa.014.0.i.ph1702, %.outer1697 ], [ %.sroa.014.0.i.ph1717, %bb.da ]
  %.sroa.5.0.i.ph1712 = phi i64 [ %.sroa.5.0.i.ph1703, %.outer1697 ], [ %.sroa.5.0.i.ph1724, %bb.da ]
  %.sroa.07.0.i.ph1713 = phi i64 [ %.sroa.07.0.i.ph1704, %.outer1697 ], [ %.sroa.07.0.i.ph1725, %bb.da ]
  br label %.outer1716

.outer1716:                                       ; preds = %.outer1708, %bb.cu
  %.sroa.014.0.i.ph1717 = phi i8 [ %.sroa.014.0.i.ph1711, %.outer1708 ], [ %i.kj, %bb.cu ] ; 6 uses
  %.sroa.5.0.i.ph1718 = phi i64 [ %.sroa.5.0.i.ph1712, %.outer1708 ], [ %.sroa.5.0.i.ph1724, %bb.cu ]
  %.sroa.07.0.i.ph1719 = phi i64 [ %.sroa.07.0.i.ph1713, %.outer1708 ], [ %.sroa.07.0.i.ph1725, %bb.cu ]
  br label %.outer1723

.outer1723:                                       ; preds = %.outer1716, %bb.co
  %.sroa.5.0.i.ph1724 = phi i64 [ %.sroa.5.0.i.ph1718, %.outer1716 ], [ %i.jv, %bb.co ] ; 5 uses
  %.sroa.07.0.i.ph1725 = phi i64 [ %.sroa.07.0.i.ph1719, %.outer1716 ], [ %.pr208.i, %bb.co ] ; 7 uses
  br label %bb.bp

bb.bp:                                            ; preds = %.backedge, %.outer1723
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1896
  invoke fastcc void @_RINvNvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB8_9MapAccesspENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %.noexc.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit, !noalias !1899

.noexc.i:                                         ; preds = %bb.bp
  %i.gq = load i8, ptr %i.o, align 8, !range !317, !noalias !1896, !noundef !11
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.noexc.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !1896, !nonnull !11, !align !19, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1896
  br label %.loopexit

bb.br:                                            ; preds = %.noexc.i
  %i.gu = load i8, ptr %i.gg, align 1, !range !317, !noalias !1896, !noundef !11
  %i.gv = trunc nuw i8 %i.gu to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1896
  br i1 %i.gv, label %bb.bs, label %bb.cb

bb.bs:                                            ; preds = %bb.br
  %i.gw = load ptr, ptr %i.ab, align 8, !alias.scope !1900, !noalias !1901, !nonnull !11, !align !19, !noundef !11 ; 29 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 7 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 40 ; 20 uses
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !1914, !noalias !1917, !noundef !11
  %i.ha = add i64 %i.gz, 1
  store i64 %i.ha, ptr %i.gy, align 8, !alias.scope !1914, !noalias !1917
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i64 0, ptr %i.hb, align 8, !alias.scope !1922, !noalias !1917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1923
  invoke void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.gw)
          to label %.noexc137.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit, !noalias !1899

.noexc137.i:                                      ; preds = %bb.bs
  %i.hc = load i64, ptr %i.n, align 8, !range !35, !noalias !1923, !noundef !11
  %i.hd = icmp eq i64 %i.hc, 2
  %i.he = load ptr, ptr %i.gh, align 8, !noalias !1923, !nonnull !11, !noundef !11 ; 12 uses
  br i1 %i.hd, label %bb.ca, label %bb.bt

bb.bt:                                            ; preds = %.noexc137.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1923 ; 2 uses
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.ci [
    i64 8, label %bb.bu
    i64 9, label %bb.bv
    i64 18, label %bb.bw
    i64 6, label %bb.bx
    i64 11, label %bb.by
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.hf = load i64, ptr %i.he, align 1
  %i.hg = icmp ne i64 %i.hf, 8748072351715980403
  %i.hh = zext i1 %i.hg to i32
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.cc, label %bb.ci

bb.bv:                                            ; preds = %bb.bt
  %i.hj = load i64, ptr %i.he, align 1
  %i.hk = xor i64 %i.hj, 8028075781017200996
  %i.hl = getelementptr i8, ptr %i.he, i64 8
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = zext i8 %i.hm to i64
  %i.ho = xor i64 %i.hn, 110
  %i.hp = or i64 %i.hk, %i.ho
  %i.hq = icmp ne i64 %i.hp, 0
  %i.hr = zext i1 %i.hq to i32
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.cd, label %bb.bz

bb.bw:                                            ; preds = %bb.bt
  %i.ht = load i128, ptr %i.he, align 1
  %i.hu = xor i128 %i.ht, 126803280988707095102401723800542798192
  %i.hv = getelementptr i8, ptr %i.he, i64 16
  %i.hw = load i16, ptr %i.hv, align 1
  %i.hx = zext i16 %i.hw to i128
  %i.hy = xor i128 %i.hx, 26223
  %i.hz = or i128 %i.hu, %i.hy
  %i.ia = icmp ne i128 %i.hz, 0
  %i.ib = zext i1 %i.ia to i32
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.ce, label %bb.ci

bb.bx:                                            ; preds = %bb.bt
  %i.id = load i32, ptr %i.he, align 1
  %i.ie = xor i32 %i.id, 1600414064
  %i.if = getelementptr i8, ptr %i.he, i64 4
  %i.ig = load i16, ptr %i.if, align 1
  %i.ih = zext i16 %i.ig to i32
  %i.ii = xor i32 %i.ih, 25705
  %i.ij = or i32 %i.ie, %i.ii
  %i.ik = icmp ne i32 %i.ij, 0
  %i.il = zext i1 %i.ik to i32
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.cf, label %bb.ci

bb.by:                                            ; preds = %bb.bt
  %i.in = load i64, ptr %i.he, align 1
  %i.io = xor i64 %i.in, 7309475735945896304
  %i.ip = getelementptr i8, ptr %i.he, i64 3
  %i.iq = load i64, ptr %i.ip, align 1
  %i.ir = xor i64 %i.iq, 7235419165630755935
  %i.is = or i64 %i.io, %i.ir
  %i.it = icmp ne i64 %i.is, 0
  %i.iu = zext i1 %i.it to i32
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.cg, label %bb.ci

bb.bz:                                            ; preds = %bb.bv
  %i.iw = load i64, ptr %i.he, align 1
  %i.ix = xor i64 %i.iw, 7308057365946065264
  %i.iy = getelementptr i8, ptr %i.he, i64 8
  %i.iz = load i8, ptr %i.iy, align 1
  %i.ja = zext i8 %i.iz to i64
  %i.jb = xor i64 %i.ja, 110
  %i.jc = or i64 %i.ix, %i.jb
  %i.jd = icmp ne i64 %i.jc, 0
  %i.je = zext i1 %i.jd to i32
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.ch, label %bb.ci

bb.ca:                                            ; preds = %.noexc137.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1923
  br label %.loopexit

.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit: ; preds = %bb.bp, %bb.bs, %bb.ci, %bb.dr
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i38

.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit.split-lp: ; preds = %bb.cn
  %lpad.loopexit.split-lp1726 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i38

.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.split-lp: ; preds = %bb.ct
  %lpad.loopexit.split-lp1721 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i38

.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp: ; preds = %bb.cz
  %lpad.loopexit.split-lp1714 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i38

.loopexit.loopexit.i.loopexit.loopexit.split-lp:  ; preds = %bb.df
  %lpad.loopexit.split-lp1706 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i38

.loopexit.loopexit.i.loopexit.split-lp:           ; preds = %bb.dl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i38

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.dk, %.loopexit.i.i.i166.i, %bb.de, %.loopexit.i.i.i158.i, %bb.cs, %.loopexit.i.i.i142.i
  %lpad.loopexit.split-lp843.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i38

.loopexit.split-lp.i:                             ; preds = %bb.et, %bb.en, %bb.ei, %bb.ed, %bb.dy, %bb.dq, %.loopexit.i.i.i175.i, %.invoke.i, %bb.cy, %.loopexit.i.i.i150.i, %bb.cm, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i38

.loopexit.i38:                                    ; preds = %.loopexit.loopexit.i.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit, %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.loopexit.split-lp, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp843.i, %.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit.split-lp1706, %.loopexit.loopexit.i.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp1714, %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp1721, %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit ], [ %lpad.loopexit.split-lp1726, %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit.split-lp ] ; 2 uses
  %.pr.i = load i64, ptr %i.aa, align 8, !noalias !1886
  %.not127.i = icmp eq i64 %.pr.i, -1
  br i1 %.not127.i, label %common.resume, label %bb.fa

bb.cb:                                            ; preds = %bb.br
  %.not117.i = icmp eq i64 %.sroa.07.0.i.ph1725, 2
  br i1 %.not117.i, label %bb.dy, label %bb.ec

bb.cc:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1923
  %.not125.i = icmp eq i64 %.sroa.07.0.i.ph1725, 2
  br i1 %.not125.i, label %bb.cj, label %.invoke.i, !prof !318

bb.cd:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1923
  %.not124.i = icmp eq i8 %.sroa.014.0.i.ph1717, 2
  br i1 %.not124.i, label %bb.cp, label %.invoke.i, !prof !318

bb.ce:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1923
  %.not123.i = icmp eq i64 %.sroa.020.0.i.ph1710, 2
  br i1 %.not123.i, label %bb.cv, label %.invoke.i, !prof !318

bb.cf:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1923
  %.not1690 = icmp eq i32 %.sroa.028.0.i.ph1699, 0
  br i1 %.not1690, label %bb.db, label %.invoke.i, !prof !318

bb.cg:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1923
  br i1 %.not1689, label %bb.dh, label %.invoke.i, !prof !318

bb.ch:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1923
  %i.jg = load i64, ptr %i.aa, align 8, !range !16, !noalias !1886, !noundef !11
  %.not122.i = icmp eq i64 %i.jg, -1
  br i1 %.not122.i, label %bb.dn, label %.invoke.i, !prof !318

bb.ci:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1923
  %i.jh = invoke fastcc noundef align 8 ptr @_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers(ptr nonnull %i.gw)
          to label %bb.dx unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit, !noalias !1899 ; 2 uses

bb.cj:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1886
  call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !1930, !noalias !1935, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.gy, align 8, !alias.scope !1943, !noalias !1944 ; 2 uses
  %i.jk = icmp ult i64 %.promoted.i.i.i.i.i, %i.jj
  br i1 %i.jk, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cj
  %i.jl = load ptr, ptr %i.gx, align 8, !alias.scope !1930, !noalias !1935, !nonnull !11, !noundef !11
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.lr.ph.i.i.i.i.i
  %i.jm = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.jp, %bb.cl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !noalias !1947, !noundef !11
  switch i8 %i.jo, label %bb.cm [
    i8 32, label %bb.cl
    i8 10, label %bb.cl
    i8 9, label %bb.cl
    i8 13, label %bb.cl
    i8 58, label %bb.cn
  ], !prof !1101

bb.cl:                                            ; preds = %bb.ck, %bb.ck, %bb.ck, %bb.ck
  %i.jp = add i64 %i.jm, 1                        ; 3 uses
  store i64 %i.jp, ptr %i.gy, align 8, !alias.scope !1948, !noalias !1944
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.jp, %i.jj
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ck

.loopexit.i.i.i.i:                                ; preds = %bb.cj, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1951
  store i64 3, ptr %i.l, align 8, !noalias !1951
  %i.jq = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc138.i unwind label %.loopexit.split-lp.i, !noalias !1899

.noexc138.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1951
  br label %.loopexit216.i

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1951
  store i64 6, ptr %i.m, align 8, !noalias !1951
  %i.jr = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc139.i unwind label %.loopexit.split-lp.i, !noalias !1899

.noexc139.i:                                      ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1951
  br label %.loopexit216.i

bb.cn:                                            ; preds = %bb.ck
  %i.js = add i64 %i.jm, 1
  store i64 %i.js, ptr %i.gy, align 8, !alias.scope !1952, !noalias !1955
  invoke void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB5_15PaddingStrategyNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2i_4read7StrReadEEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.gw)
          to label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding15PaddingStrategyEB25_.exit.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.loopexit.split-lp, !noalias !1899

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding15PaddingStrategyEB25_.exit.i: ; preds = %bb.cn
  %.pr208.i = load i64, ptr %i.z, align 8, !noalias !1886 ; 2 uses
  %i.jt = icmp eq i64 %.pr208.i, 2
  br i1 %i.jt, label %.loopexit216.loopexit.i, label %bb.co

.loopexit216.loopexit.i:                          ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding15PaddingStrategyEB25_.exit.i
  %.pre826.i = load ptr, ptr %i.gp, align 8, !noalias !1886
  br label %.loopexit216.i

.loopexit216.i:                                   ; preds = %.loopexit216.loopexit.i, %.noexc139.i, %.noexc138.i
  %i.ju = phi ptr [ %.pre826.i, %.loopexit216.loopexit.i ], [ %i.jq, %.noexc138.i ], [ %i.jr, %.noexc139.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1886
  br label %.loopexit

bb.co:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding15PaddingStrategyEB25_.exit.i
  %i.jv = load i64, ptr %i.gp, align 8, !noalias !1886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1886
  br label %.outer1723

bb.cp:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1886
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !1962, !noalias !1967, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i141.i = load i64, ptr %i.gy, align 8, !alias.scope !1975, !noalias !1976 ; 2 uses
  %i.jy = icmp ult i64 %.promoted.i.i.i.i141.i, %i.jx
  br i1 %i.jy, label %.lr.ph.i.i.i.i144.i, label %.loopexit.i.i.i142.i

.lr.ph.i.i.i.i144.i:                              ; preds = %bb.cp
  %i.jz = load ptr, ptr %i.gx, align 8, !alias.scope !1962, !noalias !1967, !nonnull !11, !noundef !11
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cr, %.lr.ph.i.i.i.i144.i
  %i.ka = phi i64 [ %.promoted.i.i.i.i141.i, %.lr.ph.i.i.i.i144.i ], [ %i.kd, %bb.cr ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !1979, !noundef !11
  switch i8 %i.kc, label %bb.cs [
    i8 32, label %bb.cr
    i8 10, label %bb.cr
    i8 9, label %bb.cr
    i8 13, label %bb.cr
    i8 58, label %bb.ct
  ], !prof !1101

bb.cr:                                            ; preds = %bb.cq, %bb.cq, %bb.cq, %bb.cq
  %i.kd = add i64 %i.ka, 1                        ; 3 uses
  store i64 %i.kd, ptr %i.gy, align 8, !alias.scope !1980, !noalias !1976
  %exitcond.not.i.i.i.i145.i = icmp eq i64 %i.kd, %i.jx
  br i1 %exitcond.not.i.i.i.i145.i, label %.loopexit.i.i.i142.i, label %bb.cq

.loopexit.i.i.i142.i:                             ; preds = %bb.cp, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1983
  store i64 3, ptr %i.j, align 8, !noalias !1983
  %i.ke = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc146.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !1899

.noexc146.i:                                      ; preds = %.loopexit.i.i.i142.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1983
  br label %.loopexit852.i

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1983
  store i64 6, ptr %i.k, align 8, !noalias !1983
  %i.kf = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc147.i unwind label %.loopexit.loopexit.split-lp.i, !noalias !1899

.noexc147.i:                                      ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1983
  br label %.loopexit852.i

bb.ct:                                            ; preds = %bb.cq
  %i.kg = add i64 %i.ka, 1
  store i64 %i.kg, ptr %i.gy, align 8, !alias.scope !1984, !noalias !1987
  invoke void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB5_16PaddingDirectionNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2i_4read7StrReadEEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.gw)
          to label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding16PaddingDirectionEB25_.exit.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.loopexit.split-lp, !noalias !1899

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding16PaddingDirectionEB25_.exit.i: ; preds = %bb.ct
  %.pre825.i = load i8, ptr %i.y, align 8, !range !317, !noalias !1886
  %i.kh = trunc nuw i8 %.pre825.i to i1
  br i1 %i.kh, label %.loopexit852.i.loopexit, label %bb.cu

.loopexit852.i.loopexit:                          ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding16PaddingDirectionEB25_.exit.i
  %.pre858 = load ptr, ptr %i.gn, align 8, !noalias !1886
  br label %.loopexit852.i

.loopexit852.i:                                   ; preds = %.noexc146.i, %.noexc147.i, %.loopexit852.i.loopexit
  %i.ki = phi ptr [ %.pre858, %.loopexit852.i.loopexit ], [ %i.ke, %.noexc146.i ], [ %i.kf, %.noexc147.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1886
  br label %.loopexit

bb.cu:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding16PaddingDirectionEB25_.exit.i
  %i.kj = load i8, ptr %i.go, align 1, !range !317, !noalias !1886, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1886
  br label %.outer1716

bb.cv:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1886
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !1994, !noalias !1999, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i149.i = load i64, ptr %i.gy, align 8, !alias.scope !2007, !noalias !2008 ; 2 uses
  %i.km = icmp ult i64 %.promoted.i.i.i.i149.i, %i.kl
  br i1 %i.km, label %.lr.ph.i.i.i.i152.i, label %.loopexit.i.i.i150.i

.lr.ph.i.i.i.i152.i:                              ; preds = %bb.cv
  %i.kn = load ptr, ptr %i.gx, align 8, !alias.scope !1994, !noalias !1999, !nonnull !11, !noundef !11
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cx, %.lr.ph.i.i.i.i152.i
  %i.ko = phi i64 [ %.promoted.i.i.i.i149.i, %.lr.ph.i.i.i.i152.i ], [ %i.kr, %bb.cx ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !noalias !2011, !noundef !11
  switch i8 %i.kq, label %bb.cy [
    i8 32, label %bb.cx
    i8 10, label %bb.cx
    i8 9, label %bb.cx
    i8 13, label %bb.cx
    i8 58, label %bb.cz
  ], !prof !1101

bb.cx:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.kr = add i64 %i.ko, 1                        ; 3 uses
end_hunk_3
