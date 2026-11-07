Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.07?download=true
inline.NumInlined: 366
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11CertificateEBJ_:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #25
          to label %.body4 unwind label %bb.p

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !79, !noundef !6
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body4 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.i

.body4:                                           ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.i ], [ %i.k, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate10SenderUuidEEB17_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #25
          to label %bb.j unwind label %bb.p

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate10SenderUuidEEB17_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %.body4
  %.pn2 = phi { ptr, i32 } [ %i.q, %bb.k ], [ %.pn, %.body4 ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate6SignerEEB17_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #25
          to label %common.resume unwind label %bb.p

bb.k:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !range !7, !alias.scope !80, !noundef !6
  %switch.i = icmp ugt i64 %i.s, -3
  br i1 %switch.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate6SignerEEB17_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.n ], [ %.pn2, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.m
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate6SignerEEB17_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate6SignerEEB17_.exit: ; preds = %bb.l, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  ret void

bb.p:                                             ; preds = %bb.j, %.body4, %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificate11CertificateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !83 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !alias.scope !84, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 !guid !85 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 !guid !86 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding16length_delimiter23decode_length_delimiterRShECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !91 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %i.e, align 8
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92
  store i64 -9223372036854775807, ptr %i.c, align 8, !noalias !92
  %i.g = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  %2 = ptrtoint ptr %i.g to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintRShECs4tP8yUXWbFU_18libsignal_protocol.exit.a

bb.c:                                             ; preds = %bb.a
  %i.h = load i8, ptr %0, align 1, !noalias !92, !noundef !6 ; 2 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %1, 10
  br i1 %i.j, label %bb.e, label %bb.f

_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i: ; preds = %bb.c
  %i.k = zext nneg i8 %i.h to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintRShECs4tP8yUXWbFU_18libsignal_protocol.exit.a

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92
  call fastcc void @_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #28, !noalias !92
  %i.l = load i64, ptr %i.b, align 8, !range !10, !noalias !92, !noundef !6
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 %1
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !noalias !92, !noundef !6
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %bb.e, label %3, !prof !9

3:                                                ; preds = %bb.f
  %4 = call { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowRShECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #29 ; 2 uses
  %5 = extractvalue { i64, ptr } %4, 0
  %6 = extractvalue { i64, ptr } %4, 1
  %7 = ptrtoint ptr %6 to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintRShECs4tP8yUXWbFU_18libsignal_protocol.exit.a

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !92, !nonnull !6, !align !11, !noundef !6
  %8 = ptrtoint ptr %i.s to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintRShECs4tP8yUXWbFU_18libsignal_protocol.exit.a

bb.h:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.n, align 8, !noalias !92, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !92, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  %i.w = icmp ult i64 %1, %i.v
  br i1 %i.w, label %bb.i, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintRShECs4tP8yUXWbFU_18libsignal_protocol.exit.a, !prof !12

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  store i64 %i.v, ptr %i.a, align 8, !noalias !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.x, align 8, !noalias !93
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #30, !noalias !93
  unreachable

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintRShECs4tP8yUXWbFU_18libsignal_protocol.exit.a: ; preds = %bb.h, %bb.b, %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i, %3, %bb.g
  %.sroa.6.0.i = phi i64 [ %2, %bb.b ], [ %i.k, %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i ], [ %8, %bb.g ], [ %7, %3 ], [ %i.t, %bb.h ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.i ], [ 1, %bb.g ], [ %5, %3 ], [ 0, %bb.h ]
  %9 = inttoptr i64 %.sroa.6.0.i to ptr
  %i.y = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.z = insertvalue { i64, ptr } %i.y, ptr %9, 1
  ret { i64, ptr } %i.z
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5int325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 !guid !100 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.not = icmp eq i8 %0, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !101, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !101, !nonnull !6, !noundef !6 ; 4 uses
  %i.e = getelementptr i8, ptr %.val.i, i64 8     ; 4 uses
  %.val1.i.i = load i64, ptr %i.e, align 8, !noalias !101, !noundef !6 ; 5 uses
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101
  store i64 -9223372036854775807, ptr %i.c, align 8, !noalias !101
  %i.g = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.val.i.i, align 1, !noalias !101, !noundef !6 ; 2 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.j, label %bb.f, label %bb.g

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.d
  %i.k = add i64 %.val1.i.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.l, ptr %.val.i, align 8, !alias.scope !102, !noalias !101, !captures !13
  store i64 %i.k, ptr %i.e, align 8, !alias.scope !102, !noalias !101
  %i.m = zext nneg i8 %i.h to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101
  call fastcc void @_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #28, !noalias !101
  %i.n = load i64, ptr %i.b, align 8, !range !10, !noalias !101, !noundef !6
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !noalias !101, !noundef !6
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !9

bb.h:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.p, align 8, !noalias !101, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.p, align 8, !noalias !101, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !101, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.y = load i64, ptr %i.e, align 8, !alias.scope !103, !noalias !101, !noundef !6 ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.j, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i, !prof !12

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  store i64 %i.x, ptr %i.a, align 8, !noalias !104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !noalias !104
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #30, !noalias !104
  unreachable

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i: ; preds = %bb.i
  %i.ab = load ptr, ptr %.val.i, align 8, !alias.scope !103, !noalias !101, !nonnull !6, !noundef !6
  %i.ac = sub nuw i64 %i.y, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  store ptr %i.ad, ptr %.val.i, align 8, !alias.scope !103, !noalias !101, !captures !13
  store i64 %i.ac, ptr %i.e, align 8, !alias.scope !103, !noalias !101
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.g
  %i.ae = tail call { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) #29 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = extractvalue { i64, ptr } %i.ae, 1      ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = trunc nuw i64 %i.af to i1
  br i1 %i.ai, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.ak, align 1
  store i64 -9223372036854775802, ptr %i.d, align 8
  %i.al = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11: ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit
  %.sroa.6.0.i14 = phi i64 [ %i.ah, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %i.m, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i ], [ %i.v, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i ]
  %i.am = trunc i64 %.sroa.6.0.i14 to i32
  store i32 %i.am, ptr %1, align 4
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread: ; preds = %bb.h, %bb.c, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11, %bb.k
  %.sroa.0.0 = phi ptr [ %i.al, %bb.k ], [ null, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11 ], [ %i.ag, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %i.u, %bb.h ], [ %i.g, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5int326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !105 {
bb.a:
  %i.a = shl i32 %0, 3
  %i.b = zext i32 %i.a to i64
  tail call fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
  %i.c = load i32, ptr %1, align 4, !noundef !6
  %i.d = sext i32 %i.c to i64
  tail call fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 %3) unnamed_addr #0 !guid !112 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.not = icmp eq i8 %0, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !113, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !113, !nonnull !6, !noundef !6 ; 4 uses
  %i.e = getelementptr i8, ptr %.val.i, i64 8     ; 4 uses
  %.val1.i.i = load i64, ptr %i.e, align 8, !noalias !113, !noundef !6 ; 5 uses
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113
  store i64 -9223372036854775807, ptr %i.c, align 8, !noalias !113
  %i.g = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.val.i.i, align 1, !noalias !113, !noundef !6 ; 2 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ugt i64 %.val1.i.i, 10
  br i1 %i.j, label %bb.f, label %bb.g

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.d
  %i.k = add i64 %.val1.i.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1
  store ptr %i.l, ptr %.val.i, align 8, !alias.scope !114, !noalias !113, !captures !13
  store i64 %i.k, ptr %i.e, align 8, !alias.scope !114, !noalias !113
  %i.m = zext nneg i8 %i.h to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  call fastcc void @_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #28, !noalias !113
  %i.n = load i64, ptr %i.b, align 8, !range !10, !noalias !113, !noundef !6
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.val.i.i, i64 %.val1.i.i
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !noalias !113, !noundef !6
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !9

bb.h:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.p, align 8, !noalias !113, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.p, align 8, !noalias !113, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !113, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.y = load i64, ptr %i.e, align 8, !alias.scope !115, !noalias !113, !noundef !6 ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.j, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i, !prof !12

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116
  store i64 %i.x, ptr %i.a, align 8, !noalias !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !noalias !116
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #30, !noalias !116
  unreachable

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i: ; preds = %bb.i
  %i.ab = load ptr, ptr %.val.i, align 8, !alias.scope !115, !noalias !113, !nonnull !6, !noundef !6
  %i.ac = sub nuw i64 %i.y, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  store ptr %i.ad, ptr %.val.i, align 8, !alias.scope !115, !noalias !113, !captures !13
  store i64 %i.ac, ptr %i.e, align 8, !alias.scope !115, !noalias !113
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.g
  %i.ae = tail call { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) #29 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = extractvalue { i64, ptr } %i.ae, 1      ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = trunc nuw i64 %i.af to i1
  br i1 %i.ai, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %i.ak, align 1
  store i64 -9223372036854775802, ptr %i.d, align 8
  %i.al = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11: ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit
  %.sroa.6.0.i14 = phi i64 [ %i.ah, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %i.m, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i ], [ %i.v, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i ]
  %i.am = trunc i64 %.sroa.6.0.i14 to i32
  store i32 %i.am, ptr %1, align 4
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread: ; preds = %bb.h, %bb.c, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11, %bb.k
  %.sroa.0.0 = phi ptr [ %i.al, %bb.k ], [ null, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread11 ], [ %i.ag, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %i.u, %bb.h ], [ %i.g, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint326encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !117 {
bb.a:
  %i.a = shl i32 %0, 3
  %i.b = zext i32 %i.a to i64
  tail call fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
  %i.c = load i32, ptr %1, align 4, !noundef !6
  %i.d = zext i32 %i.c to i64
  tail call fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef range(i64 -2147483648, 4294967296) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !122 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 36 uses
  %i.c = icmp ult i64 %0, 128
  br i1 %i.c, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.08.lcssa = phi i64 [ %0, %bb.a ], [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %bb.e ], [ 1, %bb.f ]
  %i.d = trunc nuw nsw i64 %.sroa.0.08.lcssa to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  store i8 %i.d, ptr %i.a, align 1, !noalias !123
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %0 to i8
  %i.f = or i8 %i.e, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store i8 %i.f, ptr %i.b, align 1, !noalias !124
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.g = lshr i64 %0, 7                           ; 2 uses
  %i.h = icmp ult i64 %0, 16384
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.g to i8
  %i.j = or i8 %i.i, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store i8 %i.j, ptr %i.b, align 1, !noalias !124
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.k = lshr i64 %0, 14                          ; 2 uses
  %i.l = icmp ult i64 %0, 2097152
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %i.k to i8
  %i.n = or i8 %i.m, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store i8 %i.n, ptr %i.b, align 1, !noalias !124
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.o = lshr i64 %0, 21                          ; 2 uses
  %i.p = icmp ult i64 %0, 268435456
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i64 %i.o to i8
  %i.r = or i8 %i.q, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store i8 %i.r, ptr %i.b, align 1, !noalias !124
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.s = lshr i64 %0, 28                          ; 2 uses
  %i.t = icmp ult i64 %0, 34359738368
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = trunc i64 %i.s to i8
  %i.v = or i8 %i.u, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store i8 %i.v, ptr %i.b, align 1, !noalias !124
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.w = lshr i64 %0, 35
  %i.x = trunc i64 %i.w to i8
  %i.y = or i8 %i.x, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store i8 %i.y, ptr %i.b, align 1, !noalias !124
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.z = lshr i64 %0, 42
  %i.aa = trunc i64 %i.z to i8
  %i.ab = or i8 %i.aa, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store i8 %i.ab, ptr %i.b, align 1, !noalias !124
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.ac = lshr i64 %0, 49
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = or i8 %i.ad, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store i8 %i.ae, ptr %i.b, align 1, !noalias !124
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.af = lshr i64 %0, 56
  %i.ag = trunc nuw i64 %i.af to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store i8 %i.ag, ptr %i.b, align 1, !noalias !124
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  br label %.loopexit
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowRShECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !125 {
.split:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.val, i64 10)
  %exitcond.not19 = icmp eq i64 %.val, 0
  br i1 %exitcond.not19, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %i.d = add nuw nsw i64 %.sroa.04.020, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.a, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775807, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

.lr.ph:                                           ; preds = %.split, %bb.a
  %.sroa.01.021 = phi i64 [ %i.k, %bb.a ], [ 0, %.split ]
  %.sroa.04.020 = phi i64 [ %i.d, %bb.a ], [ 0, %.split ] ; 3 uses
  %i.f = tail call noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  %i.g = and i8 %i.f, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = mul nuw nsw i64 %.sroa.04.020, 7
  %i.j = shl i64 %i.h, %i.i
  %i.k = or i64 %i.j, %.sroa.01.021               ; 2 uses
  %i.l = icmp sgt i8 %i.f, -1
  br i1 %i.l, label %bb.c, label %bb.a

bb.b:                                             ; preds = %bb.d, %bb.e, %._crit_edge
  %.sroa.4.0 = phi ptr [ %i.e, %._crit_edge ], [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  %.sroa.0.0 = phi i64 [ 1, %._crit_edge ], [ 1, %bb.e ], [ 0, %bb.d ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.n

bb.c:                                             ; preds = %.lr.ph
  %i.o = icmp eq i64 %.sroa.04.020, 9
  %i.p = icmp samesign ugt i8 %i.f, 1
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = inttoptr i64 %i.k to ptr
  br label %bb.b

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %i.b, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs4tP8yUXWbFU_18libsignal_protocol(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #3 !guid !137 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %i.c
  %bound1 = icmp ult ptr %1, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !140, !noalias !141
  %wide.load6 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !140, !noalias !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !142
  %wide.load8 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !142
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !140, !noalias !141
  store <2 x i64> %wide.load8, ptr %i.f, align 1, !alias.scope !140, !noalias !141
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !142
  store <2 x i64> %wide.load6, ptr %i.g, align 1, !alias.scope !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !132

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
  %i.i = or disjoint i64 %.sroa.0.04.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !alias.scope !138
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !alias.scope !139
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !alias.scope !138
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !alias.scope !139
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg
  br i1 %i.l, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !alias.scope !138
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !alias.scope !139
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !alias.scope !138
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !alias.scope !139
  %i.p = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !alias.scope !145
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !alias.scope !146
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !alias.scope !145
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !alias.scope !146
  %exitcond.not.1 = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !136
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !173 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %.val.i.i.i) ; 5 uses
  %.not50 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not50, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.c

.loopexit:                                        ; preds = %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.a, %bb.m
  ret void

_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.0.0.i.i.i), !noalias !174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @_RNvMNtCs17cqnTMcAHA_5bytes5bytesNtB2_5Bytes12try_into_mut(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = load i64, ptr %i.d, align 8, !range !10, !noundef !6
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %i.p = icmp ult i64 %i.i, %i.o
  br i1 %i.p, label %bb.r, label %bb.q

bb.d:                                             ; preds = %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol.exit
  %.sroa.042.0.copyload = load ptr, ptr %i.m, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.846.0.copyload = load i64, ptr %.sroa.846.0..sroa_idx, align 8 ; 8 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !175, !noundef !6 ; 3 uses
  %i.s = load i64, ptr %i.h, align 8, !alias.scope !175, !noundef !6 ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  br i1 %i.t, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw i64 %i.s, %i.r
  %.not.i17 = icmp ugt i64 %.sroa.846.0.copyload, %i.u
  br i1 %.not.i17, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.846.0.copyload, i1 noundef zeroext true)
          to label %.noexc18 unwind label %bb.n   ; 0 uses

.noexc18:                                         ; preds = %bb.f
  %.pre.i = load i64, ptr %i.q, align 8, !alias.scope !175 ; 2 uses
  %.pre1.i = load i64, ptr %i.h, align 8, !alias.scope !175
  %i.w = icmp ult i64 %.pre1.i, %.pre.i
  br i1 %i.w, label %.invoke, label %.thread.i

.thread.i:                                        ; preds = %.noexc18, %bb.e
  %i.x = phi i64 [ %.pre.i, %.noexc18 ], [ %i.r, %bb.e ]
  %i.y = load ptr, ptr %0, align 8, !alias.scope !175, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.846.0.copyload, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.aa = load i64, ptr %i.h, align 8, !alias.scope !177, !noundef !6 ; 2 uses
  %i.ab = load i64, ptr %i.q, align 8, !alias.scope !177, !noundef !6 ; 4 uses
  %i.ac = sub nuw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ad, label %.invoke, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.ae = icmp ugt i64 %.sroa.846.0.copyload, %i.ac
  br i1 %i.ae, label %bb.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.af = add i64 %i.ab, %.sroa.846.0.copyload    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ab
  br i1 %i.ag, label %bb.j, label %bb.o

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !178
  store i64 %.sroa.846.0.copyload, ptr %i.c, align 8, !noalias !178
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ac, ptr %i.ah, align 8, !noalias !178
  invoke void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #30
          to label %.noexc20 unwind label %bb.n

.noexc20:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #27
          to label %.noexc21 unwind label %bb.n

.noexc21:                                         ; preds = %bb.j
  unreachable

.invoke:                                          ; preds = %.noexc18, %.thread.i, %bb.d
  %i.ai = phi ptr [ @57, %.thread.i ], [ @5, %bb.d ], [ @42, %.noexc18 ]
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai) #27
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.k:                                             ; preds = %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol.exit
  invoke void @_RNvXs_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes9bytes_mut8BytesMutECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes9bytes_mut8BytesMutECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes9bytes_mut8BytesMutECs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit

bb.n:                                             ; preds = %.invoke, %bb.j, %bb.i, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.042.0.copyload) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.042.0.copyload, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !179, !nonnull !6, !noundef !6
  invoke void %i.am(ptr noundef %.sroa.11.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.846.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.p, !inline_history !158

bb.o:                                             ; preds = %bb.h
  store i64 %i.af, ptr %i.q, align 8, !alias.scope !177
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.042.0.copyload) ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.042.0.copyload, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !180, !nonnull !6, !noundef !6
  call void %i.ao(ptr noundef %.sroa.11.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.846.0.copyload), !noalias !180, !inline_history !163
  br label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %bb.c
  %i.aq = sub nuw i64 %i.i, %i.o
  %.not = icmp ugt i64 %.sroa.0.0.i.i.i, %i.aq
  br i1 %.not, label %bb.s, label %.lr.ph.preheader

bb.r:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #30
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ar = tail call noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0.i.i.i, i1 noundef zeroext true) ; 0 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q, %bb.s
  %.val.i.i27.pre = load ptr, ptr %1, align 8
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !181
  %.pre79 = load i64, ptr %i.h, align 8, !alias.scope !181
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.as = phi i64 [ %i.bn, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %.val.i.i.i, %.lr.ph.preheader ] ; 3 uses
  %i.at = phi i64 [ %i.bd, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %.pre79, %.lr.ph.preheader ] ; 2 uses
  %i.au = phi i64 [ %i.bi, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %i.av = phi ptr [ %i.bo, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %.val.i.i27.pre, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.0.i.i.i2666 = phi i64 [ %.sroa.0.0.i.i.i26, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %.sroa.0.0.i.i.i, %.lr.ph.preheader ] ; 11 uses
  %.sroa.8.065 = phi i64 [ %i.bp, %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %2, %.lr.ph.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.aw = icmp ult i64 %i.at, %i.au
  br i1 %i.aw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.ax = sub nuw i64 %i.at, %i.au
  %.not.i29 = icmp ugt i64 %.sroa.0.0.i.i.i2666, %i.ax
  br i1 %.not.i29, label %bb.v, label %.thread.i30

bb.u:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27, !noalias !182
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ay = tail call noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i.i.i2666, i1 noundef zeroext true), !noalias !183 ; 0 uses
  %.pre.i31 = load i64, ptr %i.n, align 8, !alias.scope !181 ; 2 uses
  %.pre1.i32 = load i64, ptr %i.h, align 8, !alias.scope !181
  %i.az = icmp ult i64 %.pre1.i32, %.pre.i31
  br i1 %i.az, label %bb.ab, label %.thread.i30

.thread.i30:                                      ; preds = %bb.v, %bb.t
  %i.ba = phi i64 [ %.pre.i31, %bb.v ], [ %i.au, %bb.t ]
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !181, !nonnull !6, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.av, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.i.i.i2666, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.bd = load i64, ptr %i.h, align 8, !alias.scope !185, !noundef !6 ; 3 uses
  %i.be = load i64, ptr %i.n, align 8, !alias.scope !185, !noundef !6 ; 4 uses
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i30
  %i.bg = sub nuw i64 %i.bd, %i.be                ; 2 uses
  %i.bh = icmp ugt i64 %.sroa.0.0.i.i.i2666, %i.bg
  br i1 %i.bh, label %bb.z, label %bb.y, !prof !12

bb.x:                                             ; preds = %.thread.i30
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !186
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bi = add i64 %i.be, %.sroa.0.0.i.i.i2666     ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.be
  br i1 %i.bj, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !187
  store i64 %.sroa.0.0.i.i.i2666, ptr %i.b, align 8, !noalias !187
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bg, ptr %i.bk, align 8, !noalias !187
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #30, !noalias !186
  unreachable

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #27, !noalias !186
  unreachable

bb.ab:                                            ; preds = %bb.v
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #27, !noalias !183
  unreachable

bb.ac:                                            ; preds = %bb.y
  store i64 %i.bi, ptr %i.n, align 8, !alias.scope !185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.bl = icmp ult i64 %i.as, %.sroa.0.0.i.i.i2666
  br i1 %i.bl, label %bb.ad, label %_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !12

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !189
  store i64 %.sroa.0.0.i.i.i2666, ptr %i.a, align 8, !noalias !189
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.as, ptr %i.bm, align 8, !noalias !189
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #30, !noalias !189
  unreachable

_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.ac
  %i.bn = sub nuw i64 %i.as, %.sroa.0.0.i.i.i2666 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.0.i.i.i2666 ; 2 uses
  store ptr %i.bo, ptr %1, align 8, !alias.scope !188, !noalias !190, !captures !13
  store i64 %i.bn, ptr %i.g, align 8, !alias.scope !188, !noalias !190
  %i.bp = sub nuw i64 %.sroa.8.065, %.sroa.0.0.i.i.i2666 ; 2 uses
  %.sroa.0.0.i.i.i26 = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bn) ; 2 uses
  %.not51 = icmp eq i64 %.sroa.0.0.i.i.i26, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.n, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ak, %bb.n ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_18LogicalFingerprintNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !191 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_18LogicalFingerprintNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !196 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !197, !noundef !6
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !197
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !197
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !197
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.b, %bb.c
  %i.d = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.i, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.i

bb.e:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !noalias !198
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 7)
          to label %_RNCINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_18LogicalFingerprintNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !198, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i) #25
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.f

_RNCINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_18LogicalFingerprintNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit: ; preds = %bb.e
  %i.h = load ptr, ptr %i.a, align 8, !noalias !198, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_RNCINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_18LogicalFingerprintNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.e, %bb.d ], [ %i.h, %_RNCINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_18LogicalFingerprintNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit ], [ null, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB6_8ChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBe_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !205 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !206
  store i8 8, ptr %i.a, align 1, !noalias !206
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !206
  %i.e = zext i32 %i.c to i64
  call fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef %i.e, ptr noalias nofree noundef align 8 dereferenceable(24) %1) #28, !noalias !207
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB6_8ChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBe_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !212 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 poison) ; 2 uses
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8, !noalias !213
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5)
          to label %_RNCINvXs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_8ChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bg_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !213, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i) #25
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.j, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_8ChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bg_.exit: ; preds = %bb.e
  %i.i = load ptr, ptr %i.b, align 8, !noalias !213, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvXs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_8ChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bg_.exit, %bb.d, %_RNCINvXs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_8ChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bg_.exit, %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.c, %bb.b ], [ null, %bb.c ], [ %i.i, %_RNCINvXs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_8ChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bg_.exit ], [ %i.l, %_RNCINvXs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_8ChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bg_.exit ], [ null, %bb.d ]
  ret ptr %.sroa.0.1

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8, !noalias !214
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 3)
          to label %_RNCINvXs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_8ChainKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bg_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val.i6 = load ptr, ptr %i.a, align 8, !noalias !214, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i6) #25
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
end_hunk_0
begin_hunk_1_@_RINvXsb_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB6_10MessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBe_:bb.a
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 7)
          to label %_RNCINvXsb_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_10MessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Bg_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val.i16 = load ptr, ptr %i.c, align 8, !noalias !237, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i16) #25
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsb_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_10MessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Bg_.exit: ; preds = %bb.o
  %i.x = load ptr, ptr %i.c, align 8, !noalias !237, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.r:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8, !noalias !238
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 2)
          to label %_RNCINvXsb_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_10MessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs1_0Bg_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i17 = load ptr, ptr %i.b, align 8, !noalias !238, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i17) #25
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsb_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_10MessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs1_0Bg_.exit: ; preds = %bb.r
  %i.aa = load ptr, ptr %i.b, align 8, !noalias !238, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.u:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8, !noalias !239
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 4)
          to label %_RNCINvXsb_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_10MessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs2_0Bg_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val.i18 = load ptr, ptr %i.a, align 8, !noalias !239, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i18) #25
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsb_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB8_10MessageKeyNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs2_0Bg_.exit: ; preds = %bb.u
  %i.ad = load ptr, ptr %i.a, align 8, !noalias !239, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXsm_NtCsaqW1JhJ9wur_8bitflags6traitsmNtNtB8_6parser8WriteHex9write_hexQNtNtCsgxBkk5gSRhY_4core3fmt9FormatterECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !240 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCsgxBkk5gSRhY_4core3fmtRmNtB6_8LowerHex3fmtCs4tP8yUXWbFU_18libsignal_protocol, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_RNvXNtCsgxBkk5gSRhY_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !270 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [56 x i8], align 8                ; 5 uses
  %i.l = alloca [56 x i8], align 8                ; 12 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %2, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 3 uses
  store i32 0, ptr %i.o, align 8, !alias.scope !271
  store i64 -2, ptr %i.l, align 8, !alias.scope !271
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 4 uses
  store i64 -2, ptr %i.p, align 8, !alias.scope !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8, !noalias !273
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 52 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, %bb.a
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !273, !nonnull !6, !align !11, !noundef !6
  %i.t = invoke noundef zeroext i1 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13has_remainingCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i)
          to label %.noexc unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  br i1 %i.t, label %bb.c, label %bb.aj

bb.c:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !274, !noalias !275, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !276, !nonnull !6, !noundef !6 ; 4 uses
  %i.u = getelementptr i8, ptr %.val.i.i, i64 8   ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.u, align 8, !noalias !276, !noundef !6 ; 5 uses
  %i.v = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !277
  store i64 -9223372036854775807, ptr %i.f, align 8, !noalias !277
  %i.w = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f)
          to label %.noexc5 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !277
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr %.val.i.i.i, align 1, !noalias !276, !noundef !6 ; 2 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp ugt i64 %.val1.i.i.i, 10
  br i1 %i.z, label %bb.g, label %bb.h

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.e
  %i.aa = add i64 %.val1.i.i.i, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1
  store ptr %i.ab, ptr %.val.i.i, align 8, !alias.scope !278, !noalias !276, !captures !13
  store i64 %i.aa, ptr %i.u, align 8, !alias.scope !278, !noalias !276
  %i.ac = zext nneg i8 %i.x to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

bb.g:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !277
  invoke fastcc void @_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i) #28
          to label %.noexc6 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.g
  %i.ad = load i64, ptr %i.e, align 8, !range !10, !noalias !277, !noundef !6
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !276, !noundef !6
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.g, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i, !prof !9

bb.i:                                             ; preds = %.noexc6
  %i.aj = load ptr, ptr %i.q, align 8, !noalias !277, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !277
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.j:                                             ; preds = %.noexc6
  %i.ak = load i64, ptr %i.q, align 8, !noalias !277, !noundef !6
  %i.al = load i64, ptr %i.r, align 8, !noalias !277, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !277
  call void @llvm.experimental.noalias.scope.decl(metadata !279), !noalias !280
  %i.am = load i64, ptr %i.u, align 8, !alias.scope !279, !noalias !276, !noundef !6 ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.al
  br i1 %i.an, label %bb.k, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !281
  store i64 %i.al, ptr %i.d, align 8, !noalias !281
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !noalias !281
  invoke void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #30
          to label %.noexc7 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.k
  unreachable

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i: ; preds = %bb.j
  %i.ap = load ptr, ptr %.val.i.i, align 8, !alias.scope !279, !noalias !276, !nonnull !6, !noundef !6
  %i.aq = sub nuw i64 %i.am, %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.al
  store ptr %i.ar, ptr %.val.i.i, align 8, !alias.scope !279, !noalias !276, !captures !13
  store i64 %i.aq, ptr %i.u, align 8, !alias.scope !279, !noalias !276
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i: ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.sroa.6.0.i.ph11.i = phi i64 [ %i.ac, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i ], [ %i.ak, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i ] ; 2 uses
  %i.as = inttoptr i64 %.sroa.6.0.i.ph11.i to ptr
  br label %bb.l

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.h
  %i.at = invoke { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #29
          to label %.noexc8 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = extractvalue { i64, ptr } %i.at, 1      ; 3 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = trunc nuw i64 %i.au to i1
  br i1 %i.ax, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %.noexc8, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i
  %i.ay = phi ptr [ %i.as, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.av, %.noexc8 ]
  %.sroa.6.0.i15.i = phi i64 [ %.sroa.6.0.i.ph11.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.aw, %.noexc8 ] ; 3 uses
  %i.az = icmp ugt ptr %i.ay, inttoptr (i64 4294967295 to ptr)
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = and i64 %.sroa.6.0.i15.i, 7             ; 3 uses
  %switch.i = icmp samesign ult i64 %i.ba, 6
  br i1 %switch.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !282
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.6.0.i15.i, ptr %i.bb, align 8, !noalias !282
  store i64 -9223372036854775804, ptr %i.i, align 8, !noalias !282
  %i.bc = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.i)
          to label %.noexc9 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !282
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !282
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ba, ptr %i.bd, align 8, !noalias !282
  store i64 -9223372036854775805, ptr %i.g, align 8, !noalias !282
  %i.be = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g)
          to label %.noexc10 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !282
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.p:                                             ; preds = %bb.m
  %i.bf = trunc nuw i64 %.sroa.6.0.i15.i to i32
  %i.bg = lshr i32 %i.bf, 3                       ; 3 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !282
  store i64 -9223372036854775803, ptr %i.h, align 8, !noalias !282
  %i.bi = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h)
          to label %.noexc11 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !282
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i: ; preds = %.noexc8, %.noexc11, %.noexc10, %.noexc9, %bb.i, %.noexc5
  %.sroa.11.0.ph.i = phi ptr [ %i.w, %.noexc5 ], [ %i.bc, %.noexc9 ], [ %i.bi, %.noexc11 ], [ %i.be, %.noexc10 ], [ %i.aj, %bb.i ], [ %i.av, %.noexc8 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i) ]
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %.sroa.11.8.extract.trunc.i = trunc nuw nsw i64 %i.ba to i8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  switch i32 %i.bg, label %bb.s [
    i32 1, label %bb.t
    i32 2, label %bb.v
    i32 3, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.bj = invoke noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, i32 noundef %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 100)
          to label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.bk = load i32, ptr %i.o, align 8, !range !14, !alias.scope !284, !noundef !6
  %i.bl = trunc nuw i32 %i.bk to i1
  br i1 %i.bl, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.o, align 8, !alias.scope !284
  store i32 0, ptr %i.s, align 4, !alias.scope !284
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.u, %bb.t
  %i.bm = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, i32 poison)
          to label %.noexc13 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc13:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not8.i.i = icmp eq ptr %i.bm, null
  br i1 %.not8.i.i, label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.z

bb.v:                                             ; preds = %bb.r
  %i.bn = load i64, ptr %i.l, align 8, !range !7, !alias.scope !285, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.bn, -2
  br i1 %.not.i.i.i, label %bb.w, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit.i.i

bb.w:                                             ; preds = %bb.v
  store i64 -1, ptr %i.l, align 8, !alias.scope !285
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit.i.i: ; preds = %bb.w, %bb.v
  %i.bo = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message5mergeNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 100)
          to label %.noexc14 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc14:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit.i.i
  %.not7.i.i = icmp eq ptr %i.bo, null
  br i1 %.not7.i.i, label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.bp = load i64, ptr %i.p, align 8, !range !7, !alias.scope !286, !noundef !6
  %.not.i9.i.i = icmp eq i64 %i.bp, -2
  br i1 %.not.i9.i.i, label %bb.y, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit10.i.i

bb.y:                                             ; preds = %bb.x
  store i64 -1, ptr %i.p, align 8, !alias.scope !286
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit10.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit10.i.i: ; preds = %bb.y, %bb.x
  %i.bq = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message5mergeNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintQRShEBT_(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 100)
          to label %.noexc15 unwind label %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit10.i.i
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.af

bb.z:                                             ; preds = %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !287
  store ptr %i.bm, ptr %i.c, align 8, !noalias !288
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 7)
          to label %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i unwind label %bb.aa, !noalias !283

bb.aa:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  %.val.i.i6.i = load ptr, ptr %i.c, align 8, !noalias !288, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i.i6.i) #25
          to label %.body.thread unwind label %bb.ab, !noalias !283

bb.ab:                                            ; preds = %bb.aa
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !283
  unreachable

_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i: ; preds = %bb.z
  %i.bt = load ptr, ptr %i.c, align 8, !noalias !288, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !287
  br label %.loopexit

bb.ac:                                            ; preds = %.noexc14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !287
  store ptr %i.bo, ptr %i.b, align 8, !noalias !289
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 17)
          to label %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %.val.i11.i.i = load ptr, ptr %i.b, align 8, !noalias !289, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i11.i.i) #25
          to label %.body.thread unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i: ; preds = %bb.ac
  %i.bw = load ptr, ptr %i.b, align 8, !noalias !289, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !287
  br label %.loopexit

bb.af:                                            ; preds = %.noexc15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !287
  store ptr %i.bq, ptr %i.a, align 8, !noalias !290
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 18)
          to label %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Bc_.exit.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %.val.i12.i.i = load ptr, ptr %i.a, align 8, !noalias !290, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i12.i.i) #25
          to label %.body.thread unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Bc_.exit.i.i: ; preds = %bb.af
  %i.bz = load ptr, ptr %i.a, align 8, !noalias !290, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !287
  br label %.loopexit

_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i: ; preds = %bb.s, %.noexc15, %.noexc14, %.noexc13
  %.sroa.0.1.i.i = phi ptr [ null, %.noexc15 ], [ null, %.noexc14 ], [ null, %.noexc13 ], [ %i.bj, %bb.s ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i, label %bb.b, label %.loopexit

bb.ai:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body20

.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit10.i.i, %bb.b, %bb.g, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i, %bb.s, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultEBO_.exit.i.i, %bb.d, %bb.k, %bb.n, %bb.o, %bb.q
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit:                                        ; preds = %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Bc_.exit.i.i
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.11.0.ph.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i ], [ %i.bz, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Bc_.exit.i.i ], [ %i.bt, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i ], [ %i.bw, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i ], [ %.sroa.0.1.i.i, %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.ca, align 8
  store i64 -3, ptr %0, align 8
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit

bb.aj:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit: ; preds = %.loopexit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

.body.thread:                                     ; preds = %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa, %bb.ad, %bb.ag
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.bu, %bb.ad ], [ %i.bx, %bb.ag ], [ %i.br, %bb.aa ], [ %lpad.loopexit.split-lp106, %.body.thread22.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #25
          to label %bb.ai unwind label %bb.ak

bb.ak:                                            ; preds = %.body.thread
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7service22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !326 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 14 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %2, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  store i64 -1, ptr %i.o, align 8, !alias.scope !327
  store i64 0, ptr %i.l, align 8, !alias.scope !327
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  store i32 0, ptr %i.p, align 8, !alias.scope !327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8, !noalias !329
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, %bb.a
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !329, !nonnull !6, !align !11, !noundef !6
  %i.u = invoke noundef zeroext i1 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13has_remainingCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i)
          to label %.noexc unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  br i1 %i.u, label %bb.c, label %bb.al

bb.c:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !330, !noalias !331, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !332, !nonnull !6, !noundef !6 ; 4 uses
  %i.v = getelementptr i8, ptr %.val.i.i, i64 8   ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.v, align 8, !noalias !332, !noundef !6 ; 5 uses
  %i.w = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !333
  store i64 -9223372036854775807, ptr %i.f, align 8, !noalias !333
  %i.x = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f)
          to label %.noexc5 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !333
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr %.val.i.i.i, align 1, !noalias !332, !noundef !6 ; 2 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ugt i64 %.val1.i.i.i, 10
  br i1 %i.aa, label %bb.g, label %bb.h

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.e
  %i.ab = add i64 %.val1.i.i.i, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1
  store ptr %i.ac, ptr %.val.i.i, align 8, !alias.scope !334, !noalias !332, !captures !13
  store i64 %i.ab, ptr %i.v, align 8, !alias.scope !334, !noalias !332
  %i.ad = zext nneg i8 %i.y to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

bb.g:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !333
  invoke fastcc void @_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i) #28
          to label %.noexc6 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.g
  %i.ae = load i64, ptr %i.e, align 8, !range !10, !noalias !333, !noundef !6
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !332, !noundef !6
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.g, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i, !prof !9

bb.i:                                             ; preds = %.noexc6
  %i.ak = load ptr, ptr %i.q, align 8, !noalias !333, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !333
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.j:                                             ; preds = %.noexc6
  %i.al = load i64, ptr %i.q, align 8, !noalias !333, !noundef !6
  %i.am = load i64, ptr %i.r, align 8, !noalias !333, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !333
  call void @llvm.experimental.noalias.scope.decl(metadata !335), !noalias !336
  %i.an = load i64, ptr %i.v, align 8, !alias.scope !335, !noalias !332, !noundef !6 ; 3 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  br i1 %i.ao, label %bb.k, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !337
  store i64 %i.am, ptr %i.d, align 8, !noalias !337
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !noalias !337
  invoke void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #30
          to label %.noexc7 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.k
  unreachable

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i: ; preds = %bb.j
  %i.aq = load ptr, ptr %.val.i.i, align 8, !alias.scope !335, !noalias !332, !nonnull !6, !noundef !6
  %i.ar = sub nuw i64 %i.an, %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am
  store ptr %i.as, ptr %.val.i.i, align 8, !alias.scope !335, !noalias !332, !captures !13
  store i64 %i.ar, ptr %i.v, align 8, !alias.scope !335, !noalias !332
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i: ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.sroa.6.0.i.ph11.i = phi i64 [ %i.ad, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i ], [ %i.al, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i ] ; 2 uses
  %i.at = inttoptr i64 %.sroa.6.0.i.ph11.i to ptr
  br label %bb.l

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.h
  %i.au = invoke { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #29
          to label %.noexc8 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = trunc nuw i64 %i.av to i1
  br i1 %i.ay, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %.noexc8, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i
  %i.az = phi ptr [ %i.at, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.aw, %.noexc8 ]
  %.sroa.6.0.i15.i = phi i64 [ %.sroa.6.0.i.ph11.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.ax, %.noexc8 ] ; 3 uses
  %i.ba = icmp ugt ptr %i.az, inttoptr (i64 4294967295 to ptr)
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = and i64 %.sroa.6.0.i15.i, 7             ; 3 uses
  %switch.i = icmp samesign ult i64 %i.bb, 6
  br i1 %switch.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !338
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.6.0.i15.i, ptr %i.bc, align 8, !noalias !338
  store i64 -9223372036854775804, ptr %i.i, align 8, !noalias !338
  %i.bd = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.i)
          to label %.noexc9 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !338
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !338
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.bb, ptr %i.be, align 8, !noalias !338
  store i64 -9223372036854775805, ptr %i.g, align 8, !noalias !338
  %i.bf = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g)
          to label %.noexc10 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !338
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.p:                                             ; preds = %bb.m
  %i.bg = trunc nuw i64 %.sroa.6.0.i15.i to i32
  %i.bh = lshr i32 %i.bg, 3                       ; 3 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !338
  store i64 -9223372036854775803, ptr %i.h, align 8, !noalias !338
  %i.bj = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h)
          to label %.noexc11 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !338
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i: ; preds = %.noexc8, %.noexc11, %.noexc10, %.noexc9, %bb.i, %.noexc5
  %.sroa.11.0.ph.i = phi ptr [ %i.x, %.noexc5 ], [ %i.bd, %.noexc9 ], [ %i.bj, %.noexc11 ], [ %i.bf, %.noexc10 ], [ %i.ak, %bb.i ], [ %i.aw, %.noexc8 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i) ]
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %.sroa.11.8.extract.trunc.i = trunc nuw nsw i64 %i.bb to i8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  switch i32 %i.bh, label %bb.s [
    i32 1, label %bb.t
    i32 2, label %bb.v
    i32 3, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.bk = invoke noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, i32 noundef %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 100)
          to label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.bl = load i64, ptr %i.o, align 8, !range !5, !alias.scope !340, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.bl, -1
  br i1 %.not.i.i.i, label %bb.u, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.o, align 8, !alias.scope !340
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !alias.scope !340
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !340
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.u, %bb.t
  %i.bm = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 100)
          to label %.noexc13 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc13:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not8.i.i = icmp eq ptr %i.bm, null
  br i1 %.not8.i.i, label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.z

bb.v:                                             ; preds = %bb.r
  %i.bn = load i64, ptr %i.l, align 8, !range !10, !alias.scope !341, !noundef !6
  %i.bo = trunc nuw i64 %i.bn to i1
  br i1 %i.bo, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 1, ptr %i.l, align 8, !alias.scope !341
  store i64 0, ptr %i.t, align 8, !alias.scope !341
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.w, %bb.v
  %i.bp = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint645mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 100)
          to label %.noexc14 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc14:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not7.i.i = icmp eq ptr %i.bp, null
  br i1 %.not7.i.i, label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.bq = load i32, ptr %i.p, align 8, !range !14, !alias.scope !342, !noundef !6
  %i.br = trunc nuw i32 %i.bq to i1
  br i1 %i.br, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %i.p, align 8, !alias.scope !342
  store i32 0, ptr %i.s, align 4, !alias.scope !342
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.y, %bb.x
  %i.bs = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, i32 poison)
          to label %.noexc15 unwind label %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.af

bb.z:                                             ; preds = %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !343
  store ptr %i.bm, ptr %i.c, align 8, !noalias !344
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 11)
          to label %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %.val.i.i6.i = load ptr, ptr %i.c, align 8, !noalias !344, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i.i6.i) #25
          to label %.body.thread unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i: ; preds = %bb.z
  %i.bv = load ptr, ptr %i.c, align 8, !noalias !344, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !343
  br label %.loopexit

bb.ac:                                            ; preds = %.noexc14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !343
  store ptr %i.bp, ptr %i.b, align 8, !noalias !345
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 9)
          to label %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %.val.i9.i.i = load ptr, ptr %i.b, align 8, !noalias !345, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i9.i.i) #25
          to label %.body.thread unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i: ; preds = %bb.ac
  %i.by = load ptr, ptr %i.b, align 8, !noalias !345, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !343
  br label %.loopexit

bb.af:                                            ; preds = %.noexc15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !343
  store ptr %i.bs, ptr %i.a, align 8, !noalias !346
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 9)
          to label %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Bc_.exit.i.i unwind label %bb.ag, !noalias !339

bb.ag:                                            ; preds = %bb.af
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %.val.i10.i.i = load ptr, ptr %i.a, align 8, !noalias !346, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i10.i.i) #25
          to label %.body.thread unwind label %bb.ah, !noalias !339

bb.ah:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !339
  unreachable

end_hunk_1
begin_hunk_2_@_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7service22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_:bb.a

.loopexit:                                        ; preds = %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Bc_.exit.i.i
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.11.0.ph.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i ], [ %i.cb, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Bc_.exit.i.i ], [ %i.bv, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_.exit.i.i ], [ %i.by, %_RNCINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB8_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Bc_.exit.i.i ], [ %.sroa.0.1.i.i, %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.cc, align 8
  store i64 2, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.ce = load i64, ptr %i.cd, align 8, !range !5, !alias.scope !347, !noundef !6
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7service22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %.body.thread24 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i: ; preds = %bb.ai
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7service22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit

bb.al:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7service22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7service22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBN_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i, %.loopexit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

.body.thread:                                     ; preds = %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.ag, %bb.aa
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.bz, %bb.ag ], [ %i.bt, %bb.aa ], [ %i.bw, %bb.ad ], [ %lpad.loopexit.split-lp112, %.body.thread28.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7service22DecryptionErrorMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.l) #25
          to label %.body.thread24 unwind label %bb.am

bb.am:                                            ; preds = %.body.thread
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7service7ContentNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !397 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 16 uses
  %i.p = alloca [192 x i8], align 8               ; 5 uses
  %i.q = alloca [192 x i8], align 8               ; 32 uses
  %i.r = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %2, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 -1, ptr %i.q, align 8, !alias.scope !398
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  store i64 -1, ptr %i.t, align 8, !alias.scope !398
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 4 uses
  store i64 -1, ptr %i.u, align 8, !alias.scope !398
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 4 uses
  store i64 -1, ptr %i.v, align 8, !alias.scope !398
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 4 uses
  store i64 -1, ptr %i.w, align 8, !alias.scope !398
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 4 uses
  store i64 -1, ptr %i.x, align 8, !alias.scope !398
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 144 ; 4 uses
  store i64 -1, ptr %i.y, align 8, !alias.scope !398
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 168 ; 4 uses
  store i64 -1, ptr %i.z, align 8, !alias.scope !398
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.r, ptr %i.o, align 8, !noalias !400
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.49.0..sroa_idx.i49.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %.sroa.510.0..sroa_idx.i50.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %.sroa.49.0..sroa_idx.i45.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %.sroa.510.0..sroa_idx.i46.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %.sroa.49.0..sroa_idx.i41.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %.sroa.510.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %.sroa.49.0..sroa_idx.i37.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %.sroa.510.0..sroa_idx.i38.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %.sroa.49.0..sroa_idx.i33.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.sroa.510.0..sroa_idx.i34.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.sroa.49.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.510.0..sroa_idx.i30.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sroa.49.0..sroa_idx.i25.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.510.0..sroa_idx.i26.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_7ContentNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, %bb.a
  %.val.i = load ptr, ptr %i.o, align 8, !noalias !400, !nonnull !6, !align !11, !noundef !6
  %i.ac = invoke noundef zeroext i1 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13has_remainingCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i)
          to label %.noexc unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  br i1 %i.ac, label %bb.c, label %bb.bi

bb.c:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !401, !noalias !402, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !403, !nonnull !6, !noundef !6 ; 4 uses
  %i.ad = getelementptr i8, ptr %.val.i.i, i64 8  ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.ad, align 8, !noalias !403, !noundef !6 ; 5 uses
  %i.ae = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !404
  store i64 -9223372036854775807, ptr %i.k, align 8, !noalias !404
  %i.af = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.k)
          to label %.noexc5 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !404
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.ag = load i8, ptr %.val.i.i.i, align 1, !noalias !403, !noundef !6 ; 2 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp ugt i64 %.val1.i.i.i, 10
  br i1 %i.ai, label %bb.g, label %bb.h

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.e
  %i.aj = add i64 %.val1.i.i.i, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1
  store ptr %i.ak, ptr %.val.i.i, align 8, !alias.scope !405, !noalias !403, !captures !13
  store i64 %i.aj, ptr %i.ad, align 8, !alias.scope !405, !noalias !403
  %i.al = zext nneg i8 %i.ag to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

bb.g:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !404
  invoke fastcc void @_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i) #28
          to label %.noexc6 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.g
  %i.am = load i64, ptr %i.j, align 8, !range !10, !noalias !404, !noundef !6
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !403, !noundef !6
  %i.ar = icmp sgt i8 %i.aq, -1
  br i1 %i.ar, label %bb.g, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i, !prof !9

bb.i:                                             ; preds = %.noexc6
  %i.as = load ptr, ptr %i.aa, align 8, !noalias !404, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !404
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.j:                                             ; preds = %.noexc6
  %i.at = load i64, ptr %i.aa, align 8, !noalias !404, !noundef !6
  %i.au = load i64, ptr %i.ab, align 8, !noalias !404, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !404
  call void @llvm.experimental.noalias.scope.decl(metadata !406), !noalias !407
  %i.av = load i64, ptr %i.ad, align 8, !alias.scope !406, !noalias !403, !noundef !6 ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  br i1 %i.aw, label %bb.k, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !408
  store i64 %i.au, ptr %i.i, align 8, !noalias !408
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !noalias !408
  invoke void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i) #30
          to label %.noexc7 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.k
  unreachable

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i: ; preds = %bb.j
  %i.ay = load ptr, ptr %.val.i.i, align 8, !alias.scope !406, !noalias !403, !nonnull !6, !noundef !6
  %i.az = sub nuw i64 %i.av, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.au
  store ptr %i.ba, ptr %.val.i.i, align 8, !alias.scope !406, !noalias !403, !captures !13
  store i64 %i.az, ptr %i.ad, align 8, !alias.scope !406, !noalias !403
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i: ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.sroa.6.0.i.ph11.i = phi i64 [ %i.al, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i ], [ %i.at, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i ] ; 2 uses
  %i.bb = inttoptr i64 %.sroa.6.0.i.ph11.i to ptr
  br label %bb.l

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.h
  %i.bc = invoke { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #29
          to label %.noexc8 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.bd = extractvalue { i64, ptr } %i.bc, 0
  %i.be = extractvalue { i64, ptr } %i.bc, 1      ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = trunc nuw i64 %i.bd to i1
  br i1 %i.bg, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %.noexc8, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i
  %i.bh = phi ptr [ %i.bb, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.be, %.noexc8 ]
  %.sroa.6.0.i15.i = phi i64 [ %.sroa.6.0.i.ph11.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.bf, %.noexc8 ] ; 3 uses
  %i.bi = icmp ugt ptr %i.bh, inttoptr (i64 4294967295 to ptr)
  br i1 %i.bi, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = and i64 %.sroa.6.0.i15.i, 7             ; 3 uses
  %switch.i = icmp samesign ult i64 %i.bj, 6
  br i1 %switch.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !409
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.6.0.i15.i, ptr %i.bk, align 8, !noalias !409
  store i64 -9223372036854775804, ptr %i.n, align 8, !noalias !409
  %i.bl = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.n)
          to label %.noexc9 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !409
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !409
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.bj, ptr %i.bm, align 8, !noalias !409
  store i64 -9223372036854775805, ptr %i.l, align 8, !noalias !409
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
          to label %.noexc10 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !409
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.p:                                             ; preds = %bb.m
  %i.bo = trunc nuw i64 %.sroa.6.0.i15.i to i32
  %i.bp = lshr i32 %i.bo, 3                       ; 3 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !409
  store i64 -9223372036854775803, ptr %i.m, align 8, !noalias !409
  %i.br = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.m)
          to label %.noexc11 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !409
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i: ; preds = %.noexc8, %.noexc11, %.noexc10, %.noexc9, %bb.i, %.noexc5
  %.sroa.11.0.ph.i = phi ptr [ %i.af, %.noexc5 ], [ %i.bl, %.noexc9 ], [ %i.br, %.noexc11 ], [ %i.bn, %.noexc10 ], [ %i.as, %bb.i ], [ %i.be, %.noexc8 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i) ]
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %.sroa.11.8.extract.trunc.i = trunc nuw nsw i64 %i.bj to i8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  switch i32 %i.bp, label %bb.s [
    i32 1, label %bb.t
    i32 2, label %bb.v
    i32 3, label %bb.x
    i32 4, label %bb.z
    i32 5, label %bb.ab
    i32 6, label %bb.ad
    i32 7, label %bb.af
    i32 8, label %bb.ah
  ]

bb.s:                                             ; preds = %bb.r
  %i.bs = invoke noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, i32 noundef %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 100)
          to label %_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_7ContentNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.bt = load i64, ptr %i.q, align 8, !range !5, !alias.scope !411, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.bt, -1
  br i1 %.not.i.i.i, label %bb.u, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.q, align 8, !alias.scope !411
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !alias.scope !411
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !411
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.u, %bb.t
  %i.bu = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 100)
          to label %.noexc13 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc13:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not23.i.i = icmp eq ptr %i.bu, null
  br i1 %.not23.i.i, label %_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_7ContentNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.aj

bb.v:                                             ; preds = %bb.r
  %i.bv = load i64, ptr %i.t, align 8, !range !5, !alias.scope !412, !noundef !6
  %.not.i24.i.i = icmp eq i64 %i.bv, -1
  br i1 %.not.i24.i.i, label %bb.w, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit27.i.i

bb.w:                                             ; preds = %bb.v
  store i64 0, ptr %i.t, align 8, !alias.scope !412
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i25.i.i, align 8, !alias.scope !412
  store i64 0, ptr %.sroa.510.0..sroa_idx.i26.i.i, align 8, !alias.scope !412
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit27.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit27.i.i: ; preds = %bb.w, %bb.v
  %i.bw = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 100)
          to label %.noexc14 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc14:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit27.i.i
  %.not22.i.i = icmp eq ptr %i.bw, null
  br i1 %.not22.i.i, label %_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_7ContentNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.am

bb.x:                                             ; preds = %bb.r
  %i.bx = load i64, ptr %i.u, align 8, !range !5, !alias.scope !413, !noundef !6
  %.not.i28.i.i = icmp eq i64 %i.bx, -1
  br i1 %.not.i28.i.i, label %bb.y, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit31.i.i

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr %i.u, align 8, !alias.scope !413
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i29.i.i, align 8, !alias.scope !413
  store i64 0, ptr %.sroa.510.0..sroa_idx.i30.i.i, align 8, !alias.scope !413
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit31.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit31.i.i: ; preds = %bb.y, %bb.x
  %i.by = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 100)
          to label %.noexc15 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit31.i.i
  %.not21.i.i = icmp eq ptr %i.by, null
  br i1 %.not21.i.i, label %_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_7ContentNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.ap

bb.z:                                             ; preds = %bb.r
  %i.bz = load i64, ptr %i.v, align 8, !range !5, !alias.scope !414, !noundef !6
  %.not.i32.i.i = icmp eq i64 %i.bz, -1
  br i1 %.not.i32.i.i, label %bb.aa, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit35.i.i

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.v, align 8, !alias.scope !414
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i33.i.i, align 8, !alias.scope !414
  store i64 0, ptr %.sroa.510.0..sroa_idx.i34.i.i, align 8, !alias.scope !414
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit35.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit35.i.i: ; preds = %bb.aa, %bb.z
  %i.ca = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 100)
          to label %.noexc16 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc16:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit35.i.i
  %.not20.i.i = icmp eq ptr %i.ca, null
  br i1 %.not20.i.i, label %_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_7ContentNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.as

bb.ab:                                            ; preds = %bb.r
  %i.cb = load i64, ptr %i.w, align 8, !range !5, !alias.scope !415, !noundef !6
  %.not.i36.i.i = icmp eq i64 %i.cb, -1
  br i1 %.not.i36.i.i, label %bb.ac, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit39.i.i

bb.ac:                                            ; preds = %bb.ab
  store i64 0, ptr %i.w, align 8, !alias.scope !415
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i37.i.i, align 8, !alias.scope !415
  store i64 0, ptr %.sroa.510.0..sroa_idx.i38.i.i, align 8, !alias.scope !415
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit39.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit39.i.i: ; preds = %bb.ac, %bb.ab
  %i.cc = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 100)
          to label %.noexc17 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc17:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit39.i.i
  %.not19.i.i = icmp eq ptr %i.cc, null
  br i1 %.not19.i.i, label %_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_7ContentNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.av

bb.ad:                                            ; preds = %bb.r
  %i.cd = load i64, ptr %i.x, align 8, !range !5, !alias.scope !416, !noundef !6
  %.not.i40.i.i = icmp eq i64 %i.cd, -1
  br i1 %.not.i40.i.i, label %bb.ae, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit43.i.i

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %i.x, align 8, !alias.scope !416
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i41.i.i, align 8, !alias.scope !416
  store i64 0, ptr %.sroa.510.0..sroa_idx.i42.i.i, align 8, !alias.scope !416
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit43.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit43.i.i: ; preds = %bb.ae, %bb.ad
  %i.ce = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 100)
          to label %.noexc18 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc18:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit43.i.i
  %.not18.i.i = icmp eq ptr %i.ce, null
  br i1 %.not18.i.i, label %_RINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_7ContentNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i, label %bb.ay

bb.af:                                            ; preds = %bb.r
  %i.cf = load i64, ptr %i.y, align 8, !range !5, !alias.scope !417, !noundef !6
  %.not.i44.i.i = icmp eq i64 %i.cf, -1
end_hunk_2
begin_hunk_3_@_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRmECs4tP8yUXWbFU_18libsignal_protocol:bb.a
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !680 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.523.i.i.i = alloca [24 x i8], align 8    ; 5 uses
  %.sroa.517.i.i.i = alloca [24 x i8], align 8    ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 20 uses
  %i.w = alloca [128 x i8], align 8               ; 5 uses
  %i.x = alloca [128 x i8], align 8               ; 21 uses
  %i.y = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %2, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 4 uses
  store i64 -1, ptr %i.aa, align 8, !alias.scope !681
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 120 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !alias.scope !681
  store i64 0, ptr %i.x, align 8, !alias.scope !681
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 4 uses
  store i64 -1, ptr %i.ac, align 8, !alias.scope !681
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 9 uses
  store i64 2, ptr %i.ad, align 8, !alias.scope !681
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 11 uses
  store i64 -2, ptr %i.ae, align 8, !alias.scope !681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.y, ptr %i.v, align 8, !noalias !683
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.53.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.49.0..sroa_idx.i19.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.510.0..sroa_idx.i20.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 124 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  br label %bb.b

bb.b:                                             ; preds = %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, %bb.a
  %.val.i = load ptr, ptr %i.v, align 8, !noalias !683, !nonnull !6, !align !11, !noundef !6
  %i.ar = invoke noundef zeroext i1 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13has_remainingCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i)
          to label %.noexc unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  br i1 %i.ar, label %bb.c, label %bb.ck

bb.c:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !684, !noalias !685, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !686, !nonnull !6, !noundef !6 ; 4 uses
  %i.as = getelementptr i8, ptr %.val.i.i, i64 8  ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.as, align 8, !noalias !686, !noundef !6 ; 5 uses
  %i.at = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !687
  store i64 -9223372036854775807, ptr %i.r, align 8, !noalias !687
  %i.au = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.r)
          to label %.noexc5 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !687
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.av = load i8, ptr %.val.i.i.i, align 1, !noalias !686, !noundef !6 ; 2 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = icmp ugt i64 %.val1.i.i.i, 10
  br i1 %i.ax, label %bb.g, label %bb.h

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.e
  %i.ay = add i64 %.val1.i.i.i, -1
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1
  store ptr %i.az, ptr %.val.i.i, align 8, !alias.scope !688, !noalias !686, !captures !13
  store i64 %i.ay, ptr %i.as, align 8, !alias.scope !688, !noalias !686
  %i.ba = zext nneg i8 %i.av to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

bb.g:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !687
  invoke fastcc void @_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i) #28
          to label %.noexc6 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.g
  %i.bb = load i64, ptr %i.q, align 8, !range !10, !noalias !687, !noundef !6
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bd = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !noalias !686, !noundef !6
  %i.bg = icmp sgt i8 %i.bf, -1
  br i1 %i.bg, label %bb.g, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i, !prof !9

bb.i:                                             ; preds = %.noexc6
  %i.bh = load ptr, ptr %i.af, align 8, !noalias !687, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !687
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.j:                                             ; preds = %.noexc6
  %i.bi = load i64, ptr %i.af, align 8, !noalias !687, !noundef !6
  %i.bj = load i64, ptr %i.ag, align 8, !noalias !687, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !687
  call void @llvm.experimental.noalias.scope.decl(metadata !689), !noalias !690
  %i.bk = load i64, ptr %i.as, align 8, !alias.scope !689, !noalias !686, !noundef !6 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  br i1 %i.bl, label %bb.k, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !691
  store i64 %i.bj, ptr %i.p, align 8, !noalias !691
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !noalias !691
  invoke void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p) #30
          to label %.noexc7 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.k
  unreachable

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i: ; preds = %bb.j
  %i.bn = load ptr, ptr %.val.i.i, align 8, !alias.scope !689, !noalias !686, !nonnull !6, !noundef !6
  %i.bo = sub nuw i64 %i.bk, %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bj
  store ptr %i.bp, ptr %.val.i.i, align 8, !alias.scope !689, !noalias !686, !captures !13
  store i64 %i.bo, ptr %i.as, align 8, !alias.scope !689, !noalias !686
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i: ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.sroa.6.0.i.ph11.i = phi i64 [ %i.ba, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i ], [ %i.bi, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i ] ; 2 uses
  %i.bq = inttoptr i64 %.sroa.6.0.i.ph11.i to ptr
  br label %bb.l

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.h
  %i.br = invoke { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #29
          to label %.noexc8 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = extractvalue { i64, ptr } %i.br, 1      ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = trunc nuw i64 %i.bs to i1
  br i1 %i.bv, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %.noexc8, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i
  %i.bw = phi ptr [ %i.bq, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.bt, %.noexc8 ]
  %.sroa.6.0.i15.i = phi i64 [ %.sroa.6.0.i.ph11.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.bu, %.noexc8 ] ; 3 uses
  %i.bx = icmp ugt ptr %i.bw, inttoptr (i64 4294967295 to ptr)
  br i1 %i.bx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = and i64 %.sroa.6.0.i15.i, 7             ; 3 uses
  %switch.i = icmp samesign ult i64 %i.by, 6
  br i1 %switch.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !692
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.6.0.i15.i, ptr %i.bz, align 8, !noalias !692
  store i64 -9223372036854775804, ptr %i.u, align 8, !noalias !692
  %i.ca = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.u)
          to label %.noexc9 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !692
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !692
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.by, ptr %i.cb, align 8, !noalias !692
  store i64 -9223372036854775805, ptr %i.s, align 8, !noalias !692
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.s)
          to label %.noexc10 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !692
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.p:                                             ; preds = %bb.m
  %i.cd = trunc nuw i64 %.sroa.6.0.i15.i to i32
  %i.ce = lshr i32 %i.cd, 3                       ; 6 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !692
  store i64 -9223372036854775803, ptr %i.t, align 8, !noalias !692
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.t)
          to label %.noexc11 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !692
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i: ; preds = %.noexc8, %.noexc11, %.noexc10, %.noexc9, %bb.i, %.noexc5
  %.sroa.11.0.ph.i = phi ptr [ %i.au, %.noexc5 ], [ %i.ca, %.noexc9 ], [ %i.cg, %.noexc11 ], [ %i.cc, %.noexc10 ], [ %i.bh, %bb.i ], [ %i.bt, %.noexc8 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i) ]
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %.sroa.11.8.extract.trunc.i = trunc nuw nsw i64 %i.by to i8 ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  switch i32 %i.ce, label %bb.s [
    i32 1, label %bb.t
    i32 2, label %bb.v
    i32 3, label %bb.x
    i32 4, label %bb.z
    i32 5, label %bb.ab
    i32 8, label %bb.ab
    i32 6, label %bb.av
    i32 7, label %bb.av
  ]

bb.s:                                             ; preds = %bb.r
  %i.ch = invoke noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, i32 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef 100)
          to label %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.ci = load i64, ptr %i.aa, align 8, !range !5, !alias.scope !694, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i, label %bb.u, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtCs6i54tJFfzR_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.aa, align 8, !alias.scope !694
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !alias.scope !694
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !694
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtCs6i54tJFfzR_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtCs6i54tJFfzR_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.u, %bb.t
  %i.cj = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6string5mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef 100)
          to label %.noexc13 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc13:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtCs6i54tJFfzR_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not17.i.i = icmp eq ptr %i.cj, null
  br i1 %.not17.i.i, label %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, label %bb.br

bb.v:                                             ; preds = %bb.r
  %i.ck = load i32, ptr %i.ab, align 8, !range !14, !alias.scope !695, !noundef !6
  %i.cl = trunc nuw i32 %i.ck to i1
  br i1 %i.cl, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.ab, align 8, !alias.scope !695
  store i32 0, ptr %i.aq, align 4, !alias.scope !695
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.w, %bb.v
  %i.cm = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, i32 poison)
          to label %.noexc14 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc14:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not16.i.i = icmp eq ptr %i.cm, null
  br i1 %.not16.i.i, label %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, label %bb.bu

bb.x:                                             ; preds = %bb.r
  %i.cn = load i64, ptr %i.x, align 8, !range !10, !alias.scope !696, !noundef !6
  %i.co = trunc nuw i64 %i.cn to i1
  br i1 %i.co, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 1, ptr %i.x, align 8, !alias.scope !696
  store i64 0, ptr %i.ap, align 8, !alias.scope !696
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.y, %bb.x
  %i.cp = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7fixed645mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef 100)
          to label %.noexc15 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not15.i.i = icmp eq ptr %i.cp, null
  br i1 %.not15.i.i, label %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, label %bb.bx

bb.z:                                             ; preds = %bb.r
  %i.cq = load i64, ptr %i.ac, align 8, !range !5, !alias.scope !697, !noundef !6
  %.not.i18.i.i = icmp eq i64 %i.cq, -1
  br i1 %.not.i18.i.i, label %bb.aa, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.ac, align 8, !alias.scope !697
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i19.i.i, align 8, !alias.scope !697
  store i64 0, ptr %.sroa.510.0..sroa_idx.i20.i.i, align 8, !alias.scope !697
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.aa, %bb.z
  %i.cr = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef 100)
          to label %.noexc16 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc16:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not14.i.i = icmp eq ptr %i.cr, null
  br i1 %.not14.i.i, label %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, label %bb.ca

bb.ab:                                            ; preds = %bb.r, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !699
  store i32 %i.ce, ptr %i.o, align 4, !noalias !700
  switch i32 %i.ce, label %bb.ac [
    i32 5, label %bb.ad
    i32 8, label %bb.ae
  ], !prof !701

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !700
  store ptr %i.o, ptr %i.k, align 8, !noalias !700
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs8_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !700
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
          to label %.noexc17 unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cs = load i64, ptr %i.ae, align 8, !range !7, !alias.scope !702, !noundef !6
  %switch.i.i.i = icmp ugt i64 %i.cs, -3
  br i1 %switch.i.i.i, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.ct = load i64, ptr %i.ae, align 8, !range !7, !alias.scope !702, !noundef !6 ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.ct, -1
  br i1 %cond.i.i.i, label %bb.ao, label %bb.an

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !700
  store i64 0, ptr %i.n, align 8, !noalias !700
  store ptr inttoptr (i64 1 to ptr), ptr %i.am, align 8, !noalias !700
  store i64 0, ptr %i.an, align 8, !noalias !700
  %i.cu = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef 100)
          to label %bb.ah unwind label %bb.al, !noalias !703 ; 2 uses

bb.ag:                                            ; preds = %bb.ad
  %i.cv = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef 100)
          to label %_RINvMsa_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificateNtB6_6Signer5mergeQRShEBe_.exit.i.i unwind label %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.af
end_hunk_3
begin_hunk_4_@_RINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEBb_:bb.a
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %.val.i29.i.i = load ptr, ptr %i.b, align 8, !noalias !716, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i29.i.i) #25
          to label %.body.thread unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs2_0Be_.exit.i.i: ; preds = %bb.cd
  %i.ej = load ptr, ptr %i.b, align 8, !noalias !716, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !699
  br label %.loopexit

bb.cg:                                            ; preds = %_RINvMs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificateNtB6_10SenderUuid5mergeQRShEBe_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !699
  store ptr %.sroa.0.0.i21.i.i, ptr %i.a, align 8, !noalias !717
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 11)
          to label %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs3_0Be_.exit.i.i unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %.val.i30.i.i = load ptr, ptr %i.a, align 8, !noalias !717, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i30.i.i) #25
          to label %.body.thread unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs3_0Be_.exit.i.i: ; preds = %bb.cg
  %i.em = load ptr, ptr %i.a, align 8, !noalias !717, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !699
  br label %.loopexit

_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i: ; preds = %bb.s, %_RINvMs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificateNtB6_10SenderUuid5mergeQRShEBe_.exit.i.i, %_RINvMsa_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificateNtB6_6Signer5mergeQRShEBe_.exit.i.i, %.noexc16, %.noexc15, %.noexc14, %.noexc13
  %.sroa.0.1.i.i = phi ptr [ null, %_RINvMs3_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificateNtB6_10SenderUuid5mergeQRShEBe_.exit.i.i ], [ null, %_RINvMsa_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificateNtB6_6Signer5mergeQRShEBe_.exit.i.i ], [ null, %.noexc13 ], [ null, %.noexc14 ], [ null, %.noexc15 ], [ null, %.noexc16 ], [ %i.ch, %bb.s ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i, label %bb.b, label %.loopexit

bb.cj:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body30

.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i22.i.i, %bb.b, %bb.g, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i, %bb.s, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionNtNtCs6i54tJFfzR_5alloc6string6StringE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionyE18get_or_insert_withNvYyNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %bb.ag, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i.i, %bb.an, %bb.ao, %bb.az, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i.i, %bb.bj, %bb.d, %bb.k, %bb.n, %bb.o, %bb.q, %bb.ac
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit:                                        ; preds = %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit.i.i, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit.i.i, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs3_0Be_.exit.i.i, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs2_0Be_.exit.i.i, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs1_0Be_.exit.i.i, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Be_.exit.i.i
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.11.0.ph.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i ], [ %i.ed, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs0_0Be_.exit.i.i ], [ %i.eg, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs1_0Be_.exit.i.i ], [ %i.ej, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs2_0Be_.exit.i.i ], [ %i.em, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs3_0Be_.exit.i.i ], [ %i.dx, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit.i.i ], [ %i.ea, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit.i.i ], [ %.sroa.0.1.i.i, %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %i.x, i64 128, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.en, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11CertificateEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.w)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBP_.exit

bb.ck:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.x, i64 128, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBP_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBP_.exit: ; preds = %.loopexit, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

.body.thread:                                     ; preds = %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj, %bb.al, %.body.i.i.i.i, %bb.bc, %.thread36.sink.split.i.i.i, %bb.bg, %bb.bm, %bb.bq, %bb.bs, %bb.bv, %bb.by, %bb.cb, %bb.ce, %bb.ch
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.eh, %bb.ce ], [ %i.ek, %bb.ch ], [ %i.dk, %bb.bc ], [ %i.du, %bb.bq ], [ %i.dr, %bb.bm ], [ %i.dn, %bb.bg ], [ %i.cw, %bb.aj ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.ee, %bb.cb ], [ %i.eb, %bb.by ], [ %i.dy, %bb.bv ], [ %i.dv, %bb.bs ], [ %.pn29.pn.ph.i.i.i, %.thread36.sink.split.i.i.i ], [ %i.cy, %bb.al ], [ %lpad.loopexit.split-lp242, %.body.thread32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11CertificateEBJ_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.x) #25
          to label %bb.cj unwind label %bb.cl

bb.cl:                                            ; preds = %.body.thread
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificate11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !749 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 13 uses
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  store i32 0, ptr %i.n, align 8, !alias.scope !750
  store i64 -1, ptr %i.k, align 8, !alias.scope !750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.l, ptr %i.i, align 8, !noalias !752
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, %bb.a
  %.val.i = load ptr, ptr %i.i, align 8, !noalias !752, !nonnull !6, !align !11, !noundef !6
  %i.r = invoke noundef zeroext i1 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13has_remainingCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i)
          to label %.noexc unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  br i1 %i.r, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !753, !noalias !754, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !755, !nonnull !6, !noundef !6 ; 4 uses
  %i.s = getelementptr i8, ptr %.val.i.i, i64 8   ; 4 uses
  %.val1.i.i.i = load i64, ptr %i.s, align 8, !noalias !755, !noundef !6 ; 5 uses
  %i.t = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !756
  store i64 -9223372036854775807, ptr %i.e, align 8, !noalias !756
  %i.u = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
          to label %.noexc5 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !756
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr %.val.i.i.i, align 1, !noalias !755, !noundef !6 ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp ugt i64 %.val1.i.i.i, 10
  br i1 %i.x, label %bb.g, label %bb.h

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.e
  %i.y = add i64 %.val1.i.i.i, -1
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1
  store ptr %i.z, ptr %.val.i.i, align 8, !alias.scope !757, !noalias !755, !captures !13
  store i64 %i.y, ptr %i.s, align 8, !alias.scope !757, !noalias !755
  %i.aa = zext nneg i8 %i.v to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

bb.g:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !756
  invoke fastcc void @_RNvNtNtCs43OB2dM8s8d_5prost8encoding6varint19decode_varint_slice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i) #28
          to label %.noexc6 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.g
  %i.ab = load i64, ptr %i.d, align 8, !range !10, !noalias !756, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %.val.i.i.i, i64 %.val1.i.i.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !noalias !755, !noundef !6
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %bb.g, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i, !prof !9

bb.i:                                             ; preds = %.noexc6
  %i.ah = load ptr, ptr %i.o, align 8, !noalias !756, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !756
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.j:                                             ; preds = %.noexc6
  %i.ai = load i64, ptr %i.o, align 8, !noalias !756, !noundef !6
  %i.aj = load i64, ptr %i.p, align 8, !noalias !756, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !756
  call void @llvm.experimental.noalias.scope.decl(metadata !758), !noalias !759
  %i.ak = load i64, ptr %i.s, align 8, !alias.scope !758, !noalias !755, !noundef !6 ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.k, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !760
  store i64 %i.aj, ptr %i.c, align 8, !noalias !760
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !noalias !760
  invoke void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #30
          to label %.noexc7 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.k
  unreachable

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i: ; preds = %bb.j
  %i.an = load ptr, ptr %.val.i.i, align 8, !alias.scope !758, !noalias !755, !nonnull !6, !noundef !6
  %i.ao = sub nuw i64 %i.ak, %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  store ptr %i.ap, ptr %.val.i.i, align 8, !alias.scope !758, !noalias !755, !captures !13
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !758, !noalias !755
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i: ; preds = %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.sroa.6.0.i.ph11.i = phi i64 [ %i.aa, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i ], [ %i.ai, %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol.exit6.i.i ] ; 2 uses
  %i.aq = inttoptr i64 %.sroa.6.0.i.ph11.i to ptr
  br label %bb.l

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.h
  %i.ar = invoke { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #29
          to label %.noexc8 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = extractvalue { i64, ptr } %i.ar, 1      ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = trunc nuw i64 %i.as to i1
  br i1 %i.av, label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %.noexc8, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i
  %i.aw = phi ptr [ %i.aq, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.at, %.noexc8 ]
  %.sroa.6.0.i15.i = phi i64 [ %.sroa.6.0.i.ph11.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread12.i ], [ %i.au, %.noexc8 ] ; 3 uses
  %i.ax = icmp ugt ptr %i.aw, inttoptr (i64 4294967295 to ptr)
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = and i64 %.sroa.6.0.i15.i, 7             ; 3 uses
  %switch.i = icmp samesign ult i64 %i.ay, 6
  br i1 %switch.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !761
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.6.0.i15.i, ptr %i.az, align 8, !noalias !761
  store i64 -9223372036854775804, ptr %i.h, align 8, !noalias !761
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h)
          to label %.noexc9 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !761
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !761
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ay, ptr %i.bb, align 8, !noalias !761
  store i64 -9223372036854775805, ptr %i.f, align 8, !noalias !761
  %i.bc = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f)
          to label %.noexc10 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !761
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.p:                                             ; preds = %bb.m
  %i.bd = trunc nuw i64 %.sroa.6.0.i15.i to i32
  %i.be = lshr i32 %i.bd, 3                       ; 3 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !761
  store i64 -9223372036854775803, ptr %i.g, align 8, !noalias !761
  %i.bg = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g)
          to label %.noexc11 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !761
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i: ; preds = %.noexc8, %.noexc11, %.noexc10, %.noexc9, %bb.i, %.noexc5
  %.sroa.11.0.ph.i = phi ptr [ %i.u, %.noexc5 ], [ %i.ba, %.noexc9 ], [ %i.bg, %.noexc11 ], [ %i.bc, %.noexc10 ], [ %i.ah, %bb.i ], [ %i.at, %.noexc8 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.ph.i) ]
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %.sroa.11.8.extract.trunc.i = trunc nuw nsw i64 %i.ay to i8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  switch i32 %i.be, label %bb.s [
    i32 1, label %bb.t
    i32 2, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.bh = invoke noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, i32 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 100)
          to label %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.bi = load i32, ptr %i.n, align 8, !range !14, !alias.scope !763, !noundef !6
  %i.bj = trunc nuw i32 %i.bi to i1
  br i1 %i.bj, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.n, align 8, !alias.scope !763
  store i32 0, ptr %i.q, align 4, !alias.scope !763
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.u, %bb.t
  %i.bk = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint325mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i32 poison)
          to label %.noexc13 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc13:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not5.i.i = icmp eq ptr %i.bk, null
  br i1 %.not5.i.i, label %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.bl = load i64, ptr %i.k, align 8, !range !5, !alias.scope !764, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.bl, -1
  br i1 %.not.i.i.i, label %bb.w, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

bb.w:                                             ; preds = %bb.v
  store i64 0, ptr %i.k, align 8, !alias.scope !764
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !alias.scope !764
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !764
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.w, %bb.v
  %i.bm = invoke noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6) %.sroa.11.8.extract.trunc.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 100)
          to label %.noexc14 unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc14:                                         ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, label %bb.aa

bb.x:                                             ; preds = %.noexc13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !765
  store ptr %i.bk, ptr %i.b, align 8, !noalias !766
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 2)
          to label %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit.i.i unwind label %bb.y, !noalias !762

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %.val.i.i6.i = load ptr, ptr %i.b, align 8, !noalias !766, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i.i6.i) #25
          to label %.body.thread unwind label %bb.z, !noalias !762

bb.z:                                             ; preds = %bb.y
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !762
  unreachable

_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit.i.i: ; preds = %bb.x
  %i.bp = load ptr, ptr %i.b, align 8, !noalias !766, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !765
  br label %.loopexit

bb.aa:                                            ; preds = %.noexc14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !765
  store ptr %i.bm, ptr %i.a, align 8, !noalias !767
  invoke void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 3)
          to label %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %.val.i6.i.i = load ptr, ptr %i.a, align 8, !noalias !767, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %.val.i6.i.i) #25
          to label %.body.thread unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit.i.i: ; preds = %bb.aa
  %i.bs = load ptr, ptr %i.a, align 8, !noalias !767, !nonnull !6, !align !11, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !765
  br label %.loopexit

_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i: ; preds = %bb.s, %.noexc14, %.noexc13
  %.sroa.0.1.i.i = phi ptr [ null, %.noexc14 ], [ null, %.noexc13 ], [ %i.bh, %bb.s ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i, label %bb.b, label %.loopexit

.body.thread23:                                   ; preds = %bb.ae, %.body.thread
  %eh.lpad-body21 = phi { ptr, i32 } [ %eh.lpad-body22, %.body.thread ], [ %i.bw, %bb.ae ]
  resume { ptr, i32 } %eh.lpad-body21

.body.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %bb.b, %bb.g, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.i, %bb.s, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionmE18get_or_insert_withNvYmNtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %bb.d, %bb.k, %bb.n, %bb.o, %bb.q
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit:                                        ; preds = %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit.i.i, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit.i.i
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.11.0.ph.i, %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i ], [ %i.bp, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Be_.exit.i.i ], [ %i.bs, %_RNCINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB8_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEs_0Be_.exit.i.i ], [ %.sroa.0.1.i.i, %_RINvXs3_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB6_11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBc_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.bt, align 8
  store i64 -2, ptr %0, align 8
  %i.bu = load i64, ptr %i.j, align 8, !range !5, !alias.scope !768, !noundef !6
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificate11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShE0EBP_.exit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.body.thread23 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bx = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNvXs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB5_7ContentNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt:bb.a
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 12, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.m, ptr %i.f, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 12, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.o, ptr %i.e, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 12, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.q, ptr %i.d, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 15, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.s, ptr %i.c, align 8
  %i.t = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 14, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.u, ptr %i.b, align 8
  %i.v = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.w, ptr %i.a, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i1 %i.y
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtB5_11CertificateNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !859 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.h, ptr %i.f, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.j, ptr %i.e, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 13, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 7, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.m, ptr %i.c, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.b, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.q, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %i.s
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtB5_11CertificateNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !860 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chainNtB5_8ChainKeyNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !861 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.b, align 8, !captures !13
  %i.e = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !captures !13
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NvXs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtBb_7ContentNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB5_s5_13ScalarWrapperB1e_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !862 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf5chunkCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality !guid !863 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = insertvalue { ptr, i64 } poison, ptr %.val.i.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %.val1.i.i)
  %i.e = insertvalue { ptr, i64 } %i.b, i64 %.sroa.0.0.i, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 !guid !866 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !867, !noundef !6 ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !867
  store i64 %1, ptr %i.a, align 8, !noalias !867
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !867
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #30, !noalias !867
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.val.i, align 8, !alias.scope !867, !nonnull !6, !noundef !6
  %i.i = sub nuw i64 %i.e, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %1
  store ptr %i.j, ptr %.val.i, align 8, !alias.scope !867, !captures !13
  store i64 %i.i, ptr %i.d, align 8, !alias.scope !867
  %i.k = sub nuw i64 %i.c, %1
  store i64 %i.k, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf9remainingCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality !guid !868 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !6, !align !11, !noundef !6
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val.i.i)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NvXs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtBa_7ContentNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB4_s_13ScalarWrapperB1d_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !869 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NvXs5_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificateNtBa_11CertificateNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB4_s_13ScalarWrapperB1L_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !870 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !16, !noundef !6 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !range !14, !noundef !6
  %i.e = trunc nuw i32 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %storemerge = select i1 %i.e, ptr %i.f, ptr null
  store ptr %storemerge, ptr %i.b, align 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NvXs5_NtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificateNtBa_11CertificateNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB4_s_13ScalarWrapperB1L_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !871 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.d, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.c
  store ptr %., ptr %i.b, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NvXse_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtBa_22DecryptionErrorMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtNtB4_s_13ScalarWrapperB1t_3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !872 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !10, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %storemerge = select i1 %i.e, ptr %i.f, ptr null
  store ptr %storemerge, ptr %i.b, align 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificateNtB5_6SignerNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !873 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8, !captures !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 2)
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82)
  %i.i = call noundef zeroext i1 @_RNvMs2_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8, !captures !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 11)
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  %i.k = call noundef zeroext i1 @_RNvMs2_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB5_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(56) initializes((48, 52)) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !878 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.a, align 8
  %i.b = load i64, ptr %0, align 8, !range !7, !alias.scope !879, !noundef !6
  %switch.i = icmp ugt i64 %i.b, -3
  br i1 %switch.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i unwind label %bb.c

end_hunk_5
begin_hunk_6_@_RNvXse_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB5_20CombinedFingerprintsNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt:bb.a
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.c, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 17, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXse_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB5_22DecryptionErrorMessageNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !887 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.c, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsgxBkk5gSRhY_4core3fmtSNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyNtB5_5Debug3fmtBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !888 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyINtNtNtBa_5slice4iter4IterB14_EEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs17cqnTMcAHA_5bytes3buf4take4TakeQQRShENtNtB7_8buf_impl3Buf13has_remainingCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 personality ptr @rust_eh_personality !guid !891 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !892, !nonnull !6, !align !11, !noundef !6
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !892, !nonnull !6, !align !11, !noundef !6
  %i.a = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !892, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !892, !noundef !6
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val.i.i.i)
  %i.d = icmp ne i64 %.sroa.0.0.i.i, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !910 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i32, ptr %i.d, align 8, !range !14, !alias.scope !911, !noundef !6
  %i.f = trunc nuw i32 %i.e to i1                 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB11_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB15_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.val.i.i = load i32, ptr %i.g, align 4, !alias.scope !912, !noundef !6
  %i.h = or i32 %.val.i.i, 1
  %i.i = zext i32 %i.h to i64
  %i.j = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = mul nuw nsw i64 %i.k, 9
  %i.m = add nuw nsw i64 %i.l, 73
  %i.n = lshr i64 %i.m, 6
  %i.o = add nuw nsw i64 %i.n, 1
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB11_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB15_.exit.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB11_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB15_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.p = load i64, ptr %1, align 8, !range !7, !alias.scope !911, !noundef !6 ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 -2, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBP_.exit.i
    i64 -1, label %_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i.i
  ]

bb.c:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB11_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB15_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i.i = load i64, ptr %i.q, align 8, !alias.scope !913 ; 3 uses
  %i.r = or i64 %.val5.i.i, 1
  %i.s = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = xor i64 %i.s, 63
  %i.u = mul nuw nsw i64 %i.t, 9
  %i.v = add nuw nsw i64 %i.u, 73
  %i.w = lshr i64 %i.v, 6
  %i.x = icmp sgt i64 %.val5.i.i, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw i64 %.val5.i.i, 1
  %i.z = add nuw i64 %i.y, %i.w
  br label %_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i.i

_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i.i: ; preds = %bb.c, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB11_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB15_.exit.i
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.z, %bb.c ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB11_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB15_.exit.i ] ; 2 uses
  %i.aa = or i64 %.sroa.02.0.i.i.i.i.i.i, 1
  %i.ab = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 73
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add nuw i64 %.sroa.02.0.i.i.i.i.i.i, 1
  %i.ah = add nuw i64 %i.ag, %i.af
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBP_.exit.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBP_.exit.i: ; preds = %_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB11_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB15_.exit.i
  %.sroa.02.0.i7.i = phi i64 [ %i.ah, %_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0Bb_.exit.i.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRmE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB11_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB15_.exit.i ]
  %i.ai = add nuw i64 %.sroa.02.0.i7.i, %.sroa.02.0.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !7, !alias.scope !911, !noundef !6 ; 2 uses
  switch i64 %i.ak, label %bb.d [
    i64 -2, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBP_.exit.i
    i64 -1, label %_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i.i
  ]

bb.d:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBP_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i11.i = load i64, ptr %i.al, align 8, !alias.scope !914 ; 3 uses
  %i.am = or i64 %.val5.i11.i, 1
  %i.an = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = xor i64 %i.an, 63
  %i.ap = mul nuw nsw i64 %i.ao, 9
  %i.aq = add nuw nsw i64 %i.ap, 73
  %i.ar = lshr i64 %i.aq, 6
  %i.as = icmp sgt i64 %.val5.i11.i, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw i64 %.val5.i11.i, 1
  %i.au = add nuw i64 %i.at, %i.ar
  br label %_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i.i

_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i.i: ; preds = %bb.d, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBP_.exit.i
  %.sroa.02.0.i.i.i.i.i12.i = phi i64 [ %i.au, %bb.d ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBP_.exit.i ] ; 2 uses
  %i.av = or i64 %.sroa.02.0.i.i.i.i.i12.i, 1
  %i.aw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = xor i64 %i.aw, 63
  %i.ay = mul nuw nsw i64 %i.ax, 9
  %i.az = add nuw nsw i64 %i.ay, 73
  %i.ba = lshr i64 %i.az, 6
  %i.bb = add nuw i64 %.sroa.02.0.i.i.i.i.i12.i, 1
  %i.bc = add nuw i64 %i.bb, %i.ba
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBP_.exit.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBP_.exit.i: ; preds = %_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i.i, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBP_.exit.i
  %.sroa.02.0.i13.i = phi i64 [ %i.bc, %_RNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB7_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0Bb_.exit.i.i ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EBP_.exit.i ]
  %i.bd = add i64 %.sroa.02.0.i13.i, %i.ai        ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.ai
  br i1 %i.be, label %bb.e, label %_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB5_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit

bb.e:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBP_.exit.i
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #27, !noalias !911
  unreachable

_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB5_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintE6map_orjNCNvXsc_BL_NtBL_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens0_0EBP_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.bd, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bf = load i64, ptr %i.b, align 8, !range !10, !noundef !6
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !17, !noundef !6 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bg, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB5_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.bk = load i64, ptr %i.bj, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.bi, i64 %i.bk) #30
  unreachable

bb.g:                                             ; preds = %_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB5_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.bl = load ptr, ptr %i.bj, align 8, !nonnull !6, !noundef !6
  %i.bm = icmp ule i64 %i.bd, %i.bi
  tail call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bi, ptr %i.c, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.bo, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  br i1 %i.f, label %bb.h, label %.noexc1

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !917
  store i8 8, ptr %i.a, align 1, !noalias !917
  invoke void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !917
  %i.bq = load i32, ptr %i.bp, align 4, !alias.scope !918, !noundef !6
  %i.br = zext i32 %i.bq to i64
  invoke fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %.noexc1 unwind label %bb.k

.noexc1:                                          ; preds = %.noexc, %bb.g
  %.not.i = icmp eq i64 %i.p, -2
  br i1 %.not.i, label %.noexc2, label %bb.i

bb.i:                                             ; preds = %.noexc1
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message6encodeNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintINtNtCs6i54tJFfzR_5alloc3vec3VechEEBU_(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc2 unwind label %bb.k

.noexc2:                                          ; preds = %bb.i, %.noexc1
  %.not1.i = icmp eq i64 %i.ak, -2
  br i1 %.not1.i, label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit, label %bb.j

bb.j:                                             ; preds = %.noexc2
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message6encodeNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintINtNtCs6i54tJFfzR_5alloc3vec3VechEEBU_(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.noexc, %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #25
          to label %bb.m unwind label %bb.l

_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB6_20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit: ; preds = %.noexc2, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bs
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7service22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !936 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !5, !alias.scope !937, !noundef !6
  %.not.i = icmp eq i64 %i.e, -1                  ; 2 uses
  br i1 %.not.i, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRINtNtCs6i54tJFfzR_5alloc3vec3VechEE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB1y_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB1C_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.f, align 8, !alias.scope !938, !noundef !6 ; 3 uses
  %i.g = or i64 %.val.i.i, 1
  %i.h = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = xor i64 %i.h, 63
  %i.j = mul nuw nsw i64 %i.i, 9
  %i.k = add nuw nsw i64 %i.j, 73
  %i.l = lshr i64 %i.k, 6
  %i.m = icmp sgt i64 %.val.i.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw i64 %.val.i.i, 1
  %i.o = add nuw i64 %i.n, %i.l
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRINtNtCs6i54tJFfzR_5alloc3vec3VechEE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB1y_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB1C_.exit.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRINtNtCs6i54tJFfzR_5alloc3vec3VechEE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB1y_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB1C_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.p = load i64, ptr %1, align 8, !range !10, !alias.scope !937, !noundef !6
  %i.q = trunc nuw i64 %i.p to i1                 ; 2 uses
  br i1 %i.q, label %bb.c, label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRyE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB11_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EB15_.exit.i

bb.c:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRINtNtCs6i54tJFfzR_5alloc3vec3VechEE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB1y_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB1C_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i4.i = load i64, ptr %i.r, align 8, !alias.scope !939, !noundef !6
  %i.s = or i64 %.val.i4.i, 1
  %i.t = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = xor i64 %i.t, 63
  %i.v = mul nuw nsw i64 %i.u, 9
  %i.w = add nuw nsw i64 %i.v, 73
  %i.x = lshr i64 %i.w, 6
  %i.y = add nuw nsw i64 %i.x, 1
  br label %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRyE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB11_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EB15_.exit.i

_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRyE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB11_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EB15_.exit.i: ; preds = %bb.c, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRINtNtCs6i54tJFfzR_5alloc3vec3VechEE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB1y_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB1C_.exit.i
  %.sroa.02.0.i5.i = phi i64 [ %i.y, %bb.c ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRINtNtCs6i54tJFfzR_5alloc3vec3VechEE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB1y_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len0EB1C_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !range !14, !alias.scope !937, !noundef !6
  %i.ab = trunc nuw i32 %i.aa to i1               ; 2 uses
  br i1 %i.ab, label %bb.d, label %_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB5_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit

bb.d:                                             ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRyE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB11_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EB15_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val.i7.i = load i32, ptr %i.ac, align 4, !alias.scope !940, !noundef !6
  %i.ad = or i32 %.val.i7.i, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = xor i64 %i.af, 63
  %i.ah = mul nuw nsw i64 %i.ag, 9
  %i.ai = add nuw nsw i64 %i.ah, 73
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = add nuw nsw i64 %i.aj, 1
  br label %_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB5_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit

_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB5_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit: ; preds = %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRyE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB11_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EB15_.exit.i, %bb.d
  %.sroa.02.0.i8.i = phi i64 [ %i.ak, %bb.d ], [ 0, %_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionRyE6map_orjNCNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB11_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lens_0EB15_.exit.i ]
  %i.al = add nuw i64 %.sroa.02.0.i5.i, %.sroa.02.0.i.i
  %i.am = add nuw i64 %i.al, %.sroa.02.0.i8.i     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.am, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.an = load i64, ptr %i.b, align 8, !range !10, !noundef !6
  %i.ao = trunc nuw i64 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !17, !noundef !6 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB5_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.as = load i64, ptr %i.ar, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.aq, i64 %i.as) #30
  unreachable

bb.f:                                             ; preds = %_RNvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB5_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message11encoded_len.exit
  %i.at = load ptr, ptr %i.ar, align 8, !nonnull !6, !noundef !6
  %i.au = icmp ule i64 %i.am, %i.aq
  tail call void @llvm.assume(i1 %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.aq, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.aw, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  br i1 %.not.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g, %bb.f
  br i1 %i.q, label %bb.h, label %.noexc2

bb.h:                                             ; preds = %.noexc
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint646encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.h, %.noexc
  br i1 %i.ab, label %bb.i, label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit

bb.i:                                             ; preds = %.noexc2
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !943
  store i8 24, ptr %i.a, align 1, !noalias !943
  invoke void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !943
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !944, !noundef !6
  %i.ba = zext i32 %i.az to i64
  invoke fastcc void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13encode_varintINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i64 noundef %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc3, %bb.i, %bb.h, %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #25
          to label %bb.l unwind label %bb.k

_RINvXsc_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7serviceNtB6_22DecryptionErrorMessageNtNtCs43OB2dM8s8d_5prost7message7Message10encode_rawINtNtCs6i54tJFfzR_5alloc3vec3VechEEBa_.exit: ; preds = %.noexc2, %.noexc3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bb
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6string5mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes5mergeINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReBF_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint18decode_varint_slowQRShECs1YsMTEqGlh_4spqr(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8Cs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs17cqnTMcAHA_5bytes5bytesNtB2_5Bytes12try_into_mut(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes6encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEBM_ECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtCs43OB2dM8s8d_5prost8encoding10skip_fieldQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7fixed645mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message6encodeNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintINtNtCs6i54tJFfzR_5alloc3vec3VechEEBU_(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding7message5mergeNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintQRShEBT_(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint646encodeINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding6uint645mergeQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_CsS4eg1WQ3uw_4uuidNtB5_4UuidNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1o_NtCsgxBkk5gSRhY_4core3fmtRmNtB6_8LowerHex3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCsgxBkk5gSRhY_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs43OB2dM8s8d_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13has_remainingCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRRINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRRNtNtCs6i54tJFfzR_5alloc6string6StringNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRRmNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRRyNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs6i54tJFfzR_5alloc6string6StringNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate10SenderUuidENtB6_5Debug3fmtB12_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate6SignerENtB6_5Debug3fmtB12_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRmNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintENtB6_5Debug3fmtBY_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyINtNtNtBa_5slice4iter4IterB14_EEB1e_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { cold }
attributes #26 = { nounwind }
attributes #27 = { noinline noreturn }
attributes #28 = { inlinehint }
attributes #29 = { noinline }
attributes #30 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{i64 1254136399641343898}
!5 = !{i64 -1, i64 -9223372036854775808}
!6 = !{}
!7 = !{i64 -2, i64 -9223372036854775808}
!8 = !{i64 0, i64 3}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i64 0, i64 2}
!11 = !{i64 8}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"address", !"read_provenance"}
!14 = !{i32 0, i32 2}
!15 = !{i8 1, i8 0}
!16 = !{i64 4}
!17 = !{i64 0, i64 -9223372036854775807}
!18 = !{i64 1674603371753823225}
!19 = !{i64 -797578885183034952}
!20 = !{i64 -8227177313015995773}
!21 = !{i64 2194866567382043921}
!22 = !{i64 64250820513908010}
!23 = !{i64 3507615600522968670}
!24 = distinct !{!24, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error5InnerECs4tP8yUXWbFU_18libsignal_protocol"}
!25 = distinct !{!25, !24, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error5InnerECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!26 = distinct !{!26, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECs4tP8yUXWbFU_18libsignal_protocol"}
!27 = distinct !{!27, !26, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!28 = distinct !{!28, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs4tP8yUXWbFU_18libsignal_protocol"}
!29 = distinct !{!29, !28, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!30 = !{i64 2124283442215692384}
!31 = !{i64 0, i64 -9223372036854775795}
!32 = !{!27, !25}
!33 = !{!29, !27, !25}
!34 = !{i64 -7849905729390140828}
!35 = distinct !{!35, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintEEB13_"}
!36 = distinct !{!36, !35, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintEEB13_: argument 0"}
!37 = distinct !{!37, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintEEB13_"}
!38 = distinct !{!38, !37, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint18LogicalFingerprintEEB13_: argument 0"}
!39 = !{i64 3252935936718162982}
!40 = !{!36}
!41 = !{!38}
!42 = distinct !{!42, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!43 = distinct !{!43, !42, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!44 = !{i64 1558020121371565054}
!45 = !{!43}
!46 = distinct !{!46, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!47 = distinct !{!47, !46, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!48 = distinct !{!48, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!49 = distinct !{!49, !48, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!50 = distinct !{!50, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!51 = distinct !{!51, !50, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!52 = distinct !{!52, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!53 = distinct !{!53, !52, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!54 = distinct !{!54, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!55 = distinct !{!55, !54, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!56 = distinct !{!56, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!57 = distinct !{!57, !56, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!58 = distinct !{!58, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!59 = distinct !{!59, !58, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!60 = distinct !{!60, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!61 = distinct !{!61, !60, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!62 = !{i64 -3892138875616583449}
!63 = !{!47}
!64 = !{!49}
!65 = !{!51}
!66 = !{!53}
!67 = !{!55}
!68 = !{!57}
!69 = !{!59}
!70 = !{!61}
!71 = distinct !{!71, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol"}
!72 = distinct !{!72, !71, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!73 = distinct !{!73, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!74 = distinct !{!74, !73, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!75 = distinct !{!75, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate6SignerEEB17_"}
!76 = distinct !{!76, !75, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate6SignerEEB17_: argument 0"}
!77 = !{i64 167757596894702497}
!78 = !{!72}
!79 = !{!74}
!80 = !{!76}
!81 = distinct !{!81, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!82 = distinct !{!82, !81, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!83 = !{i64 6055786993448572278}
!84 = !{!82}
!85 = !{i64 -5374534493303651981}
!86 = !{i64 5320798286924375331}
!87 = distinct !{!87, i1 true, !"_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintRShECs4tP8yUXWbFU_18libsignal_protocol"}
!88 = distinct !{!88, !87, !"_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintRShECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!89 = distinct !{!89, i1 true, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!90 = distinct !{!90, !89, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!91 = !{i64 8968741501076356738}
!92 = !{!88}
!93 = !{!90, !88}
!94 = distinct !{!94, i1 true, !"_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol"}
!95 = distinct !{!95, !94, !"_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!96 = distinct !{!96, i1 true, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!97 = distinct !{!97, !96, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!98 = distinct !{!98, i1 true, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!99 = distinct !{!99, !98, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!100 = !{i64 7772301661224703783}
!101 = !{!95}
!102 = !{!97}
!103 = !{!99}
!104 = !{!99, !95}
!105 = !{i64 -1172446178403460123}
!106 = distinct !{!106, i1 true, !"_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol"}
!107 = distinct !{!107, !106, !"_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!108 = distinct !{!108, i1 true, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!109 = distinct !{!109, !108, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!110 = distinct !{!110, i1 true, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!111 = distinct !{!111, !110, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!112 = !{i64 -2788554894672007508}
!113 = !{!107}
!114 = !{!109}
!115 = !{!111}
!116 = !{!111, !107}
!117 = !{i64 2568660187053016204}
!118 = distinct !{!118, i1 true, !"_RNvYINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtNtCs17cqnTMcAHA_5bytes3buf7buf_mut6BufMut6put_u8Cs4tP8yUXWbFU_18libsignal_protocol"}
!119 = distinct !{!119, !118, !"_RNvYINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtNtCs17cqnTMcAHA_5bytes3buf7buf_mut6BufMut6put_u8Cs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvYINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtNtCs17cqnTMcAHA_5bytes3buf7buf_mut6BufMut6put_u8Cs4tP8yUXWbFU_18libsignal_protocol"}
!121 = distinct !{!121, !120, !"_RNvYINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtNtCs17cqnTMcAHA_5bytes3buf7buf_mut6BufMut6put_u8Cs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!122 = !{i64 -2055442548357176372}
!123 = !{!119}
!124 = !{!121}
!125 = !{i64 -8959256566125149134}
!126 = distinct !{!126, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs4tP8yUXWbFU_18libsignal_protocol"}
!127 = distinct !{!127, !126, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!128 = distinct !{!128, !126, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!129 = distinct !{!129, i1 false, !"LVerDomain"}
!130 = distinct !{!130, !129}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !143, !144}
!133 = distinct !{!133, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs4tP8yUXWbFU_18libsignal_protocol"}
!134 = distinct !{!134, !133, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs4tP8yUXWbFU_18libsignal_protocol: argument 0:It1"}
!135 = distinct !{!135, !133, !"_RINvNtCsgxBkk5gSRhY_4core3ptr10swap_chunkKj8_ECs4tP8yUXWbFU_18libsignal_protocol: argument 1:It1"}
!136 = distinct !{!136, !143}
!137 = !{i64 -4757941995385504313}
!138 = !{!127}
!139 = !{!128}
!140 = !{!127, !130}
!141 = !{!131}
!142 = !{!128, !131}
!143 = !{!"llvm.loop.isvectorized", i32 1}
!144 = !{!"llvm.loop.unroll.runtime.disable"}
!145 = !{!134}
!146 = !{!135}
!147 = distinct !{!147, i1 true, !"_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol"}
!148 = distinct !{!148, !147, !"_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf13copy_to_bytesCs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!149 = distinct !{!149, i1 true, !"_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut17extend_from_slice"}
!150 = distinct !{!150, !149, !"_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut17extend_from_slice: argument 0"}
!151 = distinct !{!151, i1 true, !"_RNvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut"}
!152 = distinct !{!152, !151, !"_RNvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut: argument 0"}
!153 = distinct !{!153, !149, !"_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut17extend_from_slice: argument 1"}
!154 = distinct !{!154, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECs4tP8yUXWbFU_18libsignal_protocol"}
!155 = distinct !{!155, !154, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!156 = distinct !{!156, i1 true, !"_RNvXs1_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop"}
!157 = distinct !{!157, !156, !"_RNvXs1_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop: argument 0"}
!158 = distinct !{null}
!159 = distinct !{!159, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECs4tP8yUXWbFU_18libsignal_protocol"}
!160 = distinct !{!160, !159, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!161 = distinct !{!161, i1 true, !"_RNvXs1_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop"}
!162 = distinct !{!162, !161, !"_RNvXs1_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop: argument 0"}
!163 = distinct !{null, null}
!164 = distinct !{!164, i1 true, !"_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut17extend_from_slice"}
!165 = distinct !{!165, !164, !"_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut17extend_from_slice: argument 0"}
!166 = distinct !{!166, !164, !"_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut17extend_from_slice: argument 1"}
!167 = distinct !{!167, i1 true, !"_RNvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut"}
!168 = distinct !{!168, !167, !"_RNvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut: argument 0"}
!169 = distinct !{!169, i1 true, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance"}
!170 = distinct !{!170, !169, !"_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance: argument 0"}
!171 = distinct !{!171, i1 true, !"_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol"}
!172 = distinct !{!172, !171, !"_RNvXs_NtNtCs17cqnTMcAHA_5bytes3buf4takeINtB4_4TakeQRShENtNtB6_8buf_impl3Buf7advanceCs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!173 = !{i64 720131288826451015}
!174 = !{!148}
!175 = !{!150}
!176 = !{!152}
!177 = !{!152, !150}
!178 = !{!152, !150, !153}
!179 = !{!157, !155}
!180 = !{!162, !160}
!181 = !{!165}
!182 = !{!165, !166}
!183 = !{!166}
!184 = !{!168}
!185 = !{!168, !165}
!186 = !{!168, !166}
!187 = !{!168, !165, !166}
!188 = !{!170}
!189 = !{!170, !172}
!190 = !{!172}
!191 = !{i64 8339245310295239399}
!192 = distinct !{!192, i1 true, !"_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol"}
!193 = distinct !{!193, !192, !"_RINvMNtCsgxBkk5gSRhY_4core6optionINtB3_6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!194 = distinct !{!194, i1 true, !"_RNCINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_18LogicalFingerprintNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_"}
!195 = distinct !{!195, !194, !"_RNCINvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprintNtB8_18LogicalFingerprintNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShE0Bc_: argument 0"}
end_hunk_6
