Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_layer_timeout-370d210345ed1402.opendal_layer_timeout.97496dd2d301cbd1-cgu.2?download=true
inline.NumInlined: 241
inline.NumDeleted: 153
begin_hunk_0_@_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscZimOjL3zu7_21opendal_layer_timeout:bb.a
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCs9k3SxhrAWiO_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop() unnamed_addr #4 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call fastcc noundef ptr @_RNvYNtNtNtNtCs9k3SxhrAWiO_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef nonnull %i.a)
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscZimOjL3zu7_21opendal_layer_timeout(ptr %i.b)
  call void @_RNvNtCs9k3SxhrAWiO_3std7process5abort() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  switch i32 %i.b, label %bb.b [
    i32 3, label %.sink.split
    i32 2, label %bb.c
    i32 0, label %.sink.split
  ], !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23
  unreachable

.sink.split:                                      ; preds = %bb.a, %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs9k3SxhrAWiO_3std9backtrace7CaptureECscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB5_9DeleteDynEL_ENtB5_6Delete6deleteCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !13, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %3) #25
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio7compose3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB5_10ComposeDynEL_ENtB5_7Compose7composeCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef %3, i64 %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !13, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef %3, i64 %4) #25
  ret { ptr, ptr } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscZimOjL3zu7_21opendal_layer_timeout.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscZimOjL3zu7_21opendal_layer_timeout.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscZimOjL3zu7_21opendal_layer_timeout.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscZimOjL3zu7_21opendal_layer_timeout.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscZimOjL3zu7_21opendal_layer_timeout.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  br label %_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscZimOjL3zu7_21opendal_layer_timeout.exit

_RNvMs3_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0ENtNtB3v_8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %.sroa.5.i.i = alloca [40 x i8], align 8        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.pre.i.i = load i64, ptr %1, align 8, !range !12, !alias.scope !464
  %i.k = trunc nuw i64 %.pre.i.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !466
  br i1 %i.k, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.peel.i

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsc_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !467
  %i.l = load ptr, ptr %i.b, align 8, !noalias !466, !noundef !5 ; 2 uses
  %.not.i.i.peel.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.peel.i, label %bb.c, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.m = load i64, ptr %1, align 8, !range !12, !alias.scope !469, !noundef !5
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscZimOjL3zu7_21opendal_layer_timeout.exit.thread28.i.peel.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.o = load ptr, ptr %i.c, align 8, !alias.scope !472, !noundef !5 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !473
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscZimOjL3zu7_21opendal_layer_timeout.exit.thread28.i.peel.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #24
          to label %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscZimOjL3zu7_21opendal_layer_timeout.exit.thread28.i.peel.i unwind label %.loopexit.split-lp.i, !noalias !467

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.s = load ptr, ptr %i.e, align 8, !alias.scope !476, !noundef !5
  %i.t = load ptr, ptr %i.d, align 8, !alias.scope !476, !nonnull !5, !align !13, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !477, !nonnull !5, !noundef !5
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !476, !noundef !5
  %i.x = load i64, ptr %i.g, align 8, !alias.scope !476, !noundef !5
  invoke void %i.v(ptr noundef %i.s, ptr noundef %i.w, i64 noundef %i.x)
          to label %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscZimOjL3zu7_21opendal_layer_timeout.exit.thread28.i.peel.i unwind label %.loopexit.split-lp.i, !noalias !467, !inline_history !16

_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscZimOjL3zu7_21opendal_layer_timeout.exit.thread28.i.peel.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  store i64 0, ptr %1, align 8, !alias.scope !478
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.peel.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.peel.i: ; preds = %_RINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flatten17and_then_or_clearNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscZimOjL3zu7_21opendal_layer_timeout.exit.thread28.i.peel.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !466
  %i.y = load ptr, ptr %i.h, align 8, !alias.scope !479, !noundef !5
  %.not.i4.i.peel.i = icmp eq ptr %i.y, null
  br i1 %.not.i4.i.peel.i, label %.loopexit5.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.peel.i
  %i.z = load ptr, ptr %i.i, align 8, !alias.scope !480, !nonnull !5, !noundef !5
  %i.aa = load ptr, ptr %i.j, align 8, !alias.scope !480, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %.loopexit5.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i: ; preds = %bb.h, %bb.o
  %.sink18.i = phi ptr [ %i.ar, %bb.o ], [ %i.aa, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink18.i, i64 40
  store ptr %i.ac, ptr %i.j, align 8, !alias.scope !480
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sink18.i, i64 40, i1 false), !noalias !481
  store i64 1, ptr %1, align 8, !alias.scope !482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i, i64 40, i1 false), !noalias !481
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !484
  call void @_RNvXsc_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !467
  %i.ad = load ptr, ptr %i.b, align 8, !noalias !484, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.i, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.ae = load i64, ptr %1, align 8, !range !12, !alias.scope !486, !noundef !5
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.ag = load ptr, ptr %i.c, align 8, !alias.scope !489, !noundef !5 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.ai = load ptr, ptr %i.e, align 8, !alias.scope !492, !noundef !5
  %i.aj = load ptr, ptr %i.d, align 8, !alias.scope !492, !nonnull !5, !align !13, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !493, !nonnull !5, !noundef !5
  %i.am = load ptr, ptr %i.f, align 8, !alias.scope !492, !noundef !5
  %i.an = load i64, ptr %i.g, align 8, !alias.scope !492, !noundef !5
  invoke void %i.al(ptr noundef %i.ai, ptr noundef %i.am, i64 noundef %i.an)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i unwind label %.loopexit4.i, !noalias !467, !inline_history !16

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !494
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i unwind label %.loopexit4.i, !noalias !467

common.resume.i.i:                                ; preds = %bb.v, %bb.n
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.n ], [ %i.bo, %bb.v ]
  resume { ptr, i32 } %common.resume.op.i.i

.loopexit4.i:                                     ; preds = %bb.m, %bb.k
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %bb.g, %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit4.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit4.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 0, ptr %1, align 8, !alias.scope !464
  br label %common.resume.i.i

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i, %bb.b
  %.lcssa.i = phi ptr [ %i.l, %bb.b ], [ %i.ad, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i ]
  %.sroa.8.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0.copyload12.i.i = load ptr, ptr %.sroa.8.0..sroa_idx11.i.i, align 8, !noalias !495
  %.sroa.9.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.9.0.copyload14.i.i = load i64, ptr %.sroa.9.0..sroa_idx13.i.i, align 8, !noalias !495
  %.sroa.10.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0.copyload16.i.i = load ptr, ptr %.sroa.10.0..sroa_idx15.i.i, align 8, !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !484
  br label %bb.w

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  store i64 0, ptr %1, align 8, !alias.scope !464
  %.pre.i = load ptr, ptr %i.h, align 8, !alias.scope !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !484
  %.not.i4.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i4.i.i, label %.loopexit5.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i
  %i.aq = load ptr, ptr %i.i, align 8, !alias.scope !480, !nonnull !5, !noundef !5
  %i.ar = load ptr, ptr %i.j, align 8, !alias.scope !480, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aq
  br i1 %i.as, label %.loopexit5.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i, !llvm.loop !441

.loopexit5.i:                                     ; preds = %bb.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i, %bb.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEECscZimOjL3zu7_21opendal_layer_timeout.exit.i.peel.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !498
  %i.au = load i64, ptr %i.at, align 8, !range !12, !alias.scope !499, !noundef !5
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.p, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23: ; preds = %.loopexit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !498
  br label %_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit

bb.p:                                             ; preds = %.loopexit5.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  call void @_RNvXsc_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aw), !noalias !500
  %i.ax = load ptr, ptr %i.a, align 8, !noalias !498, !noundef !5 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i6.i.i, label %bb.q, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.ay = load i64, ptr %i.at, align 8, !range !12, !alias.scope !502, !noundef !5
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.ba = load ptr, ptr %i.aw, align 8, !alias.scope !505, !noundef !5 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !508, !noundef !5
  %i.bf = load ptr, ptr %i.bc, align 8, !alias.scope !508, !nonnull !5, !align !13, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !509, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !508, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !508, !noundef !5
  invoke void %i.bh(ptr noundef %i.be, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 unwind label %bb.v, !noalias !500, !inline_history !16

bb.t:                                             ; preds = %bb.r
  %i.bm = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !510
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.u, label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aw) #24
          to label %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 unwind label %bb.v, !noalias !500

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30: ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  store i64 0, ptr %i.at, align 8, !alias.scope !499
  %.sroa.7.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload32 = load ptr, ptr %.sroa.7.0..sroa_idx31, align 8, !noalias !499
  %.sroa.8.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0.copyload34 = load i64, ptr %.sroa.8.0..sroa_idx33, align 8, !noalias !499
  %.sroa.10.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0.copyload36 = load ptr, ptr %.sroa.10.0..sroa_idx35, align 8, !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !498
  br label %_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.at, align 8, !alias.scope !499
  br label %common.resume.i.i

_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %bb.p
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !499
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !499
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread
  %.sroa.0.120 = phi ptr [ %.lcssa.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %i.ax, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ]
  %.sroa.7.118 = phi ptr [ %.sroa.8.0.copyload12.i.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %.sroa.7.0.copyload, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ]
  %.sroa.8.116 = phi i64 [ %.sroa.9.0.copyload14.i.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %.sroa.8.0.copyload, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ] ; 2 uses
  %.sroa.10.114 = phi ptr [ %.sroa.10.0.copyload16.i.i, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread ], [ %.sroa.10.0.copyload, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit ]
  %.val22.in = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val22 = load ptr, ptr %.val22.in, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bp = load i64, ptr %.val22, align 8, !noalias !513, !noundef !5
  %i.bq = add i64 %i.bp, %.sroa.8.116
  store i64 %i.bq, ptr %.val22, align 8, !noalias !513
  br label %_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit

_RNvMs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0E10do_inspectCscZimOjL3zu7_21opendal_layer_timeout.exit: ; preds = %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23, %bb.w
  %.sroa.0.121 = phi ptr [ null, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.0.120, %bb.w ], [ null, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  %.sroa.7.119 = phi ptr [ %.sroa.7.0.copyload32, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.7.118, %bb.w ], [ undef, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  %.sroa.8.117 = phi i64 [ %.sroa.8.0.copyload34, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.8.116, %bb.w ], [ undef, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  %.sroa.10.115 = phi ptr [ %.sroa.10.0.copyload36, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread30 ], [ %.sroa.10.114, %bb.w ], [ undef, %_RNvXs9_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENtNtNtB9_6traits8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout.exit.thread23 ]
  store ptr %.sroa.0.121, ptr %0, align 8, !alias.scope !513
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.119, ptr %.sroa.7.0..sroa_idx2, align 8, !alias.scope !513
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.117, ptr %.sroa.8.0..sroa_idx4, align 8, !alias.scope !513
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.115, ptr %.sroa.10.0..sroa_idx6, align 8, !alias.scope !513
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !13, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCsgxBkk5gSRhY_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs1h_NtCs6i54tJFfzR_5alloc4syncINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtBB_7flatten7FlattenINtNtNtB8_3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2p_B2n_INtNtNtBD_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1s_E0EINtB6_10ToArcSliceB4b_E12to_arc_sliceCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.512.i.i.i.i.i.i = alloca i64, align 8    ; 3 uses
  %.sroa.713.i.i.i.i.i.i = alloca i64, align 8    ; 3 uses
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [136 x i8], align 8               ; 17 uses
  %.sroa.516.i.i.i.i = alloca i64, align 8        ; 3 uses
  %.sroa.717.i.i.i.i = alloca i64, align 8        ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [136 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(136) %0, i64 136, i1 false), !alias.scope !590, !noalias !591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !594
  invoke fastcc void @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspectINtB5_7InspectINtNtB7_7flatten7FlattenINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2h_B2f_INtNtNtB9_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB14_E0ENtNtB3v_8iterator8Iterator4nextCscZimOjL3zu7_21opendal_layer_timeout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e)
          to label %bb.c unwind label %bb.b, !noalias !595

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !noalias !594, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !594 ; 2 uses
  %.sroa.6.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx9.i.i.i.i, align 8, !noalias !594 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !594 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.717.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.h = load i64, ptr %i.e, align 8, !range !12, !alias.scope !599, !noalias !600, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECscZimOjL3zu7_21opendal_layer_timeout.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !599, !noalias !601, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
end_hunk_0
