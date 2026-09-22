Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_http_transport_reqwest-ace230cc2b728a46.opendal_http_transport_reqwest.ebf727c168c768d5-cgu.1?download=true
inline.NumInlined: 256
inline.NumDeleted: 158
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReECskg2ocPruTU7_30opendal_http_transport_reqwest:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %1, ptr %i.o, align 1
  store i64 %3, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.7.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.0, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.m, %bb.h ]
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !132
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.l, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !12, !invariant.load !8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #25
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit5.i, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !12, !invariant.load !8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #25
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit5.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit5.i: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr captures(address) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.0.val, align 8, !range !13, !alias.scope !141, !noundef !8
  %switch.i.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !142, !noundef !8
  switch i32 %i.d, label %bb.e [
    i32 3, label %.sink.split.i.i.i.i.i
    i32 2, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit
    i32 0, label %.sink.split.i.i.i.i.i
  ], !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #30
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.e
  unreachable

.sink.split.i.i.i.i.i:                            ; preds = %bb.d, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs9k3SxhrAWiO_3std9backtrace7CaptureECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.e)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #25
  resume { ptr, i32 } %i.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.c, %bb.d, %.sink.split.i.i.i.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #25
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !157, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !157, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTReNtNtCs6i54tJFfzR_5alloc6string6StringEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTReNtNtCs6i54tJFfzR_5alloc6string6StringEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.011.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val8.i.i = load i64, ptr %i.h, align 8, !alias.scope !159, !noalias !157 ; 2 uses
  %i.i = icmp eq i64 %.val8.i.i, 0
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTReNtNtCs6i54tJFfzR_5alloc6string6StringEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr i8, ptr %i.f, i64 24
  %.val9.i.i = load ptr, ptr %i.j, align 8, !alias.scope !158, !noalias !157, !nonnull !8, !noundef !8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !160
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTReNtNtCs6i54tJFfzR_5alloc6string6StringEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTReNtNtCs6i54tJFfzR_5alloc6string6StringEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %.lr.ph.i.i

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTReNtNtCs6i54tJFfzR_5alloc6string6StringEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !11, !alias.scope !161, !noundef !8 ; 2 uses
  %i.l = icmp eq i64 %.val, 0
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit4, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit
  %i.m = mul nuw i64 %.val, 40
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !162
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit4

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit4: ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB1U_4SyncEL_EECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !12, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #25
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.c, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit5, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !12, !invariant.load !8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #25
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit5

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit5: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !190, !noundef !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !195, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !195, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !195, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !195, !noundef !8
  invoke void %i.g(ptr noundef %i.e, ptr noundef %i.i, i64 noundef %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECskg2ocPruTU7_30opendal_http_transport_reqwest.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !199, !noundef !8
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !199, !nonnull !8, !align !9, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !199, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !199, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !199, !noundef !8
  invoke void %i.r(ptr noundef %i.o, ptr noundef %i.t, i64 noundef %i.v)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECskg2ocPruTU7_30opendal_http_transport_reqwest.exit unwind label %bb.d, !inline_history !1

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !203, !noundef !8
  %i.z = load ptr, ptr %i.w, align 8, !alias.scope !203, !nonnull !8, !align !9, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !203, !nonnull !8, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !203, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !203, !noundef !8
  tail call void %i.ab(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %i.af), !noalias !203, !inline_history !187
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9xqX0QiqdKy_14http_body_util11combinators7map_err6MapErrINtNtNtCsl7c65Kbohav_7reqwest10async_impl4body13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyENvYNtNtB4_7convert10InfallibleINtB3L_4IntoINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5g_4SyncEL_EE4intoEEB2F_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !225, !noundef !8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !228, !noundef !8
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !228, !nonnull !8, !align !9, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !228, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !228, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !228, !noundef !8
  tail call void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l), !noalias !228, !inline_history !216
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsl7c65Kbohav_7reqwest10async_impl4body13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyEEB1C_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !229
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsl7c65Kbohav_7reqwest10async_impl4body13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyEEB1C_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #29
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsl7c65Kbohav_7reqwest10async_impl4body13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyEEB1C_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsl7c65Kbohav_7reqwest10async_impl4body13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyEEB1C_.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !232
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method6MethodECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.a = load i8, ptr %0, align 8, !range !236, !alias.scope !235, !noundef !8
  %switch.i = icmp samesign ult i8 %i.a, 10
  br i1 %switch.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method5InnerECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !235, !noundef !8 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method5InnerECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !235, !nonnull !8, !noundef !8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #25, !noalias !235
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method5InnerECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs76KlaVGnJsc_4http6method5InnerECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a, %bb.b, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs9k3SxhrAWiO_3std9backtrace7CaptureECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !255, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !255, !noundef !8 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCs9k3SxhrAWiO_3std9backtrace14BacktraceFrameENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs9k3SxhrAWiO_3std9backtrace14BacktraceFrameECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs9k3SxhrAWiO_3std9backtrace14BacktraceFrameECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !258, !noalias !255, !nonnull !8, !noundef !8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !258, !noalias !255, !noundef !8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsl7c65Kbohav_7reqwest5error6decodeINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCsgxBkk5gSRhY_4core5error5ErrorNtNtB1g_6marker4SendNtB1N_4SyncEL_EECskg2ocPruTU7_30opendal_http_transport_reqwest:bb.a
  store i64 -1, ptr %i.a, align 8, !noalias !356
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !357
  %i.e = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 144, i64 noundef range(i64 1, 9) 8) #25, !noalias !357 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RINvMNtCsl7c65Kbohav_7reqwest5errorNtB3_5Error3newINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCsgxBkk5gSRhY_4core5error5ErrorNtNtB1p_6marker4SendNtB1W_4SyncEL_EECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #26
          to label %.noexc7.i unwind label %bb.c, !noalias !356

.noexc7.i:                                        ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsl7c65Kbohav_7reqwest5error5InnerECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.a) #27
          to label %bb.e unwind label %bb.d, !noalias !356

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28, !noalias !356
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RINvMNtCsl7c65Kbohav_7reqwest5errorNtB3_5Error3newINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCsgxBkk5gSRhY_4core5error5ErrorNtNtB1p_6marker4SendNtB1W_4SyncEL_EECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !356
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !11, !alias.scope !360, !noundef !8 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !360
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !360
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i)
  %i.g = load i64, ptr %i.a, align 8, !range !15, !noalias !360, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !361, !noalias !360, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !360
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #26
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !360, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !360
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !360
  %i.n = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !360
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #4 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !374, !noalias !375
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !374, !noalias !375
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !375, !noalias !372
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !375, !noalias !372
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !374, !noalias !375
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !374, !noalias !375
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !375, !noalias !372
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !375, !noalias !372
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !368

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !372, !noalias !373
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !373, !noalias !372
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !372, !noalias !373
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !373, !noalias !372
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !372, !noalias !373
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !373, !noalias !372
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !372, !noalias !373
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !373, !noalias !372
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !378, !noalias !379
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !379, !noalias !378
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !378, !noalias !379
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !379, !noalias !378
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !371
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0Cskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.b = load ptr, ptr %.sroa.0.0.copyload, align 8, !alias.scope !386, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !386 ; 2 uses
  store ptr null, ptr %.sroa.0.0.copyload, align 8, !alias.scope !386
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cskg2ocPruTU7_30opendal_http_transport_reqwest.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30, !noalias !386
  unreachable

_RNCINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store ptr %i.b, ptr %.sroa.5.sroa.0.0.copyload, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  store ptr %i.d, ptr %i.e, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !395, !noalias !396 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !395, !noalias !396 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !395, !noalias !396
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !399, !noalias !400, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !399, !noalias !400 ; 2 uses
  store ptr null, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !399, !noalias !400
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCskg2ocPruTU7_30opendal_http_transport_reqwest.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30, !noalias !401
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30, !noalias !400
  unreachable

_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store ptr %i.b, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !400
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !400
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBR_6marker4SendNtB2E_4SyncEL_EINtNtBR_4hash18BuildHasherDefaultNtB1W_8IdHasherEE6insertCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !420, !noalias !421 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !424, !noalias !425, !noundef !8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBU_6marker4SendNtB2H_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtB1Z_8IdHasherEE0ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = invoke { i64, i64 } @_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBU_6marker4SendNtB2H_4SyncEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtB1Z_8IdHasherEE0EB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBU_6marker4SendNtB2H_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtB1Z_8IdHasherEE0ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i unwind label %bb.l ; 0 uses

_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBU_6marker4SendNtB2H_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtB1Z_8IdHasherEE0ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !422, !noalias !426, !nonnull !8, !noundef !8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.g, align 8, !alias.scope !422, !noalias !426, !noundef !8 ; 4 uses
  %i.h = lshr i64 %.val.i.i, 57
  %i.i = trunc nuw nsw i64 %i.h to i8             ; 3 uses
  %i.j = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i128, ptr %1, align 8, !alias.scope !423, !noalias !427
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBU_6marker4SendNtB2H_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtB1Z_8IdHasherEE0ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i
  %.pn.i.i = phi i64 [ %.val.i.i, %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBU_6marker4SendNtB2H_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtB1Z_8IdHasherEE0ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i ], [ %i.aj, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBU_6marker4SendNtB2H_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtB1Z_8IdHasherEE0ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i ], [ %.sroa.4.124.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBU_6marker4SendNtB2H_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtB1Z_8IdHasherEE0ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i ], [ %.sroa.04.126.i.i, %bb.f ]
  %i.l = phi i64 [ 0, %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBU_6marker4SendNtB2H_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtB1Z_8IdHasherEE0ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i ], [ %i.ai, %bb.f ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !428 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, %i.k
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not32.i.i = icmp eq i16 %i.o, 0
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.033.i.i = phi i16 [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.021.i.i, %i.q
  %i.s = and i64 %i.r, %.val7.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  %.val2.i.i.i = load i128, ptr %i.v, align 8, !noalias !429
  %i.w = icmp eq i128 %.val.i.i.i.i, %.val2.i.i.i
  br i1 %i.w, label %bb.i, label %bb.d, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !16

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i16 %.sroa.01.033.i.i, -1
  %i.y = and i16 %i.x, %.sroa.01.033.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread28.i.i, !prof !16

.thread28.i.i:                                    ; preds = %bb.e
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.0.021.i.i, %i.ac
  %i.ae = and i64 %i.ad, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.ae, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ai = add i64 %i.l, 16                        ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.0.021.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.125.i.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !423, !noundef !8 ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.k, !prof !16

bb.h:                                             ; preds = %bb.g
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !423
  %i.an = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ao, 0
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aq
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !430
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !8, !noundef !8
  %i.at = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !8, !align !9, !noundef !8
  store ptr %2, ptr %i.ar, align 8
  store ptr %3, ptr %i.at, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.3.0 = phi ptr [ undef, %bb.k ], [ %i.au, %bb.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.k ], [ %i.as, %bb.i ]
  %i.av = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.aw = insertvalue { ptr, ptr } %i.av, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.aw

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i8 [ %.pre, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.aq, %bb.h ], [ %.sroa.4.125.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.az = and i8 %i.ax, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bc = and i64 %i.bb, %.val7.i
  store i8 %i.i, ptr %i.ay, align 1, !noalias !430
  %i.bd = getelementptr i8, ptr %.val.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store i8 %i.i, ptr %i.be, align 1, !noalias !430
  %i.bf = load <2 x i64>, ptr %i.b, align 8, !alias.scope !431, !noalias !432
  %i.bg = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ba, i64 0
  %i.bh = sub <2 x i64> %i.bf, %i.bg
  store <2 x i64> %i.bh, ptr %i.b, align 8, !alias.scope !431, !noalias !432
  %i.bi = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bj = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !431
  %.sroa.411.0..sroa_idx = getelementptr inbounds i8, ptr %i.bj, i64 -16
  store ptr %2, ptr %.sroa.411.0..sroa_idx, align 8, !noalias !431
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bj, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !431
  br label %bb.j

bb.l:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB1U_4SyncEL_EECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr nonnull %2, ptr nonnull %3) #27
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bl
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call noundef ptr @_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) #25
  br label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.f = tail call noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef 1) #25
  br label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit

end_hunk_1
begin_hunk_2_@_RNvXsZ_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_str:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !504, !noalias !505, !noundef !8 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !alias.scope !504, !noalias !505, !noundef !8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.thread.i.i, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i, !prof !16

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !506, !noalias !505, !noundef !8 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !506, !noalias !505, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !506
  br label %_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6i54tJFfzR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !506, !noalias !505
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtNtCsl7c65Kbohav_7reqwest10async_impl4bodyINtB5_13IntoBytesBodyNtCskg2ocPruTU7_30opendal_http_transport_reqwest14HttpBufferBodyENtCsa5pOSVVJaQf_9http_body4Body10poll_frameB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %.sroa.55 = alloca [88 x i8], align 8           ; 3 uses
  %i.a = alloca [96 x i8], align 8                ; 3 uses
  call void @_RNvXs4_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB5_14HttpBufferBodyNtCsa5pOSVVJaQf_9http_body4Body10poll_frame(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !507, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, -3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -3, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  switch i64 %i.b, label %bb.e [
    i64 -2, label %bb.d
    i64 -1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  store i64 -2, ptr %0, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, i64 88, i1 false)
  br label %_RINvMNtCsa5pOSVVJaQf_9http_body5frameINtB3_5FrameNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE8map_dataNvYBL_INtNtCsgxBkk5gSRhY_4core7convert4IntoBL_E4intoBL_ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, i64 32, i1 false)
  br label %_RINvMNtCsa5pOSVVJaQf_9http_body5frameINtB3_5FrameNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE8map_dataNvYBL_INtNtCsgxBkk5gSRhY_4core7convert4IntoBL_E4intoBL_ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

_RINvMNtCsa5pOSVVJaQf_9http_body5frameINtB3_5FrameNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE8map_dataNvYBL_INtNtCsgxBkk5gSRhY_4core7convert4IntoBL_E4intoBL_ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.e, %bb.f
  store i64 %i.b, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.55, i64 88, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_RINvMNtCsa5pOSVVJaQf_9http_body5frameINtB3_5FrameNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE8map_dataNvYBL_INtNtCsgxBkk5gSRhY_4core7convert4IntoBL_E4intoBL_ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCskzxhmhyEueV_12futures_util3fnsINtB5_7MapOkFnNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE4fromEINtB5_6FnMut1INtNtB1R_6result6ResultB2n_NtNtCsl7c65Kbohav_7reqwest5error5ErrorEE8call_mutCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !noundef !8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !9, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCskzxhmhyEueV_12futures_util3fnsNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE4fromINtB4_6FnMut1B28_E8call_mutCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtCskzxhmhyEueV_12futures_util3fnsINtB5_8MapErrFnNCNCNvXs2_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtB12_16ReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0s1_0EINtB5_6FnMut1INtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB2e_6buffer6BufferNtNtCsl7c65Kbohav_7reqwest5error5ErrorEE8call_mutB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !15, !noundef !8
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !align !9, !noundef !8
  tail call void @_RNvXs_NtCskzxhmhyEueV_12futures_util3fnsNCNCNvXs2_Cskg2ocPruTU7_30opendal_http_transport_reqwestNtBM_16ReqwestTransportNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport13HttpTransport5fetch0s1_0INtB4_6FnMut1NtNtCsl7c65Kbohav_7reqwest5error5ErrorE8call_mutBM_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noalias noundef nonnull align 8 %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !516, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !518, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !518, !nonnull !8, !noundef !8 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !519
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !520
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i

_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !518 ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %.val5.i.i = load ptr, ptr %i.x, align 8, !noalias !518, !nonnull !8, !align !9, !noundef !8 ; 5 uses
  %i.y = load ptr, ptr %.val5.i.i, align 8, !invariant.load !8, !noalias !518 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !518

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !11, !invariant.load !8, !noalias !518 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !12, !invariant.load !8, !noalias !518
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #25, !noalias !518
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !11, !invariant.load !8, !noalias !518 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit5.i.i.i.i, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !12, !invariant.load !8, !noalias !518
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #25, !noalias !518
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit5.i.i.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ae

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.ak = icmp eq i64 %i.v, 0
  br i1 %i.ak, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i, label %bb.d

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i, %bb.b
  %i.al = icmp slt i64 %i.b, 576460752303423487
  tail call void @llvm.assume(i1 %i.al)
  %i.am = shl i64 %i.b, 5                         ; 2 uses
  %i.an = add i64 %i.am, 32                       ; 2 uses
  %i.ao = add nsw i64 %i.b, 17
  %i.ap = add i64 %i.ao, %i.an                    ; 4 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  %i.ar = icmp ult i64 %i.ap, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aq)
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i
  %i.at = load ptr, ptr %0, align 8, !alias.scope !516, !nonnull !8, !noundef !8
  %i.au = sub nuw nsw i64 -32, %i.am
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 16) #25, !noalias !516
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECskg2ocPruTU7_30opendal_http_transport_reqwest.exit

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %bb.a, %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBH_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBH_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i1 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !545, !noundef !8
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !545, !nonnull !8, !align !9, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !545, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !545, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !545, !noundef !8
  invoke void %i.n(ptr noundef %i.k, ptr noundef %i.p, i64 noundef %i.r)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i unwind label %bb.b, !noalias !540, !inline_history !531

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit7.i: ; preds = %.lr.ph3
  %i.s = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.h, %i.d
  br i1 %i.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.s, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i2 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !550, !noundef !8
  %i.aa = load ptr, ptr %i.x, align 8, !alias.scope !550, !nonnull !8, !align !9, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !550, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !550, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !550, !noundef !8
  invoke void %i.ac(ptr noundef %i.z, ptr noundef %i.ae, i64 noundef %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit7.i unwind label %bb.c, !noalias !540, !inline_history !531

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit7.i._crit_edge: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit7.i, %bb.b
  resume { ptr, i32 } %i.u

bb.c:                                             ; preds = %.lr.ph3
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28, !noalias !540
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBH_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBJ_5value11HeaderValueEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskg2ocPruTU7_30opendal_http_transport_reqwest(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBH_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBH_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i
  %.sroa.0.0.i14 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.0.i14 ; 12 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i14, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !583, !noundef !8 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !588, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !588, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !588, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !588, !noundef !8
  invoke void %i.o(ptr noundef %i.m, ptr noundef %i.q, i64 noundef %i.s)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i unwind label %bb.c, !noalias !589, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !593, !noundef !8
  %i.x = load ptr, ptr %i.u, align 8, !alias.scope !593, !nonnull !8, !align !9, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !noalias !593, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !593, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !593, !noundef !8
  invoke void %i.z(ptr noundef %i.w, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %.body.i unwind label %bb.d, !noalias !589, !inline_history !1

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header4name10HeaderNameECskg2ocPruTU7_30opendal_http_transport_reqwest.exit.i.i: ; preds = %bb.b, %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !597, !noundef !8
  %i.ah = load ptr, ptr %i.ae, align 8, !alias.scope !597, !nonnull !8, !align !9, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
end_hunk_2
