Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.03?download=true
inline.NumInlined: 245
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_:bb.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit: ; preds = %bb.ad, %bb.ac, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit13, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit11, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit9, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol.exit7, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit5, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.ah, %bb.ae, %bb.af, %bb.y, %bb.v, %bb.s, %bb.p, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.ae ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.m, %bb.i ], [ %i.p, %bb.l ], [ %i.s, %bb.p ], [ %i.v, %bb.s ], [ %i.y, %bb.v ], [ %i.ab, %bb.y ], [ %i.al, %bb.af ], [ %i.as, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit3: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.k:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit5 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit5: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.n:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.a, -1
  br i1 %i.r, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.o
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.r:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol.exit7 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol.exit7: ; preds = %bb.r
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.u:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit9 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit9: ; preds = %bb.u
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.x:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit11 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit11: ; preds = %bb.x
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.aa:                                            ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.ad, align 8            ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.af = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.af(ptr noundef nonnull %.val)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !23, !invariant.load !5
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.ae:                                            ; preds = %bb.ab
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !23, !invariant.load !5
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #19
  br label %common.resume

bb.ag:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit13 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit13: ; preds = %bb.ag
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage15RecordStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !4, !alias.scope !26, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecIBC_hEEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #18
          to label %common.resume unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_hEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecIBC_hEEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecIBC_hEEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEEB13_.exit
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %.body15 unwind label %bb.ai

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body15 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit17 unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

.body15:                                          ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %.body19 unwind label %bb.ai

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body15

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit17: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit17
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body19 unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit17
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit21 unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState18take_ratchet_state:bb.a
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.613.0..sroa_idx, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.411.0.copyload.sink = phi ptr [ inttoptr (i64 -9223372036854775788 to ptr), %bb.b ], [ %i.g, %bb.c ]
  %.sroa.512.0.copyload.sink = phi i64 [ %i.j, %bb.b ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.411.0.copyload.sink, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.512.0.copyload.sink, ptr %i.l, align 8
  store i64 %i.d, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState19apply_ratchet_state(ptr noalias nofree noundef align 8 dereferenceable(344) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(176) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs4tP8yUXWbFU_18libsignal_protocol14double_ratchetNtB2_12RatchetState11apply_to_pb(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState19remote_identity_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %1) unnamed_addr #0 {
bb.a:
  %.sroa.1117.sroa.0 = alloca [9 x i8], align 8   ; 2 uses
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.g, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  call void @_RNvMNtCs4tP8yUXWbFU_18libsignal_protocol12identity_keyNtB2_11IdentityKey6decode(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.d)
  %i.j = load i64, ptr %i.b, align 8, !range !11, !noundef !5
  %.not = icmp eq i64 %i.j, -2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @12, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %i.l, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %i.m, i64 7, i1 false)
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx23, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.1117.sroa.0, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.6.0..sroa_idx, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.n, align 1
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store ptr %.sroa.422.0.copyload, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.1117.sroa.0, i64 9, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.sink = phi i8 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState19with_receiver_chain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(344) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(36) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.11.i.i = alloca [16 x i8], align 8       ; 5 uses
  %i.d = alloca [32 x i8], align 1                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [104 x i8], align 8               ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [104 x i8], align 8               ; 13 uses
  %.sroa.12.i = alloca [32 x i8], align 8         ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !72
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !71, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !72
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.a
  %i.q = load i64, ptr %i.f, align 8, !range !8, !noalias !72, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !9, !noalias !72, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %.noexc
  %i.v = load i64, ptr %i.u, align 8, !noalias !72
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #20
          to label %.noexc1 unwind label %bb.ac

.noexc1:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %i.u, align 8, !noalias !72, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, 31
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull readonly align 4 dereferenceable(36) %3, i64 32, i1 false), !noalias !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %i.p, ptr %i.y, align 8, !noalias !72
  store i64 %i.t, ptr %i.n, align 8, !noalias !72
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !72
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 32, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %i.z = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.e unwind label %bb.d, !noalias !73 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.ab = extractvalue { ptr, i64 } %i.z, 0       ; 5 uses
  %i.ac = extractvalue { ptr, i64 } %i.z, 1       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !72
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.f, !noalias !73

bb.f:                                             ; preds = %bb.i, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 1) #19, !noalias !73
  br label %bb.ab

bb.h:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.e, align 8, !range !8, !noalias !72, !noundef !5
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !9, !noalias !72, !noundef !5 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !72
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #20
          to label %bb.aa unwind label %bb.f, !noalias !73

bb.j:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !72, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = icmp ule i64 %i.ac, %i.ai
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !72
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !72
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit26.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %i.ab, i64 %i.ac, i1 false), !noalias !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !72
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 1) #19, !noalias !73
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit26.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit26.i: ; preds = %bb.k, %.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !72
  store i64 %i.ai, ptr %i.m, align 8, !noalias !72
  %.sroa.4.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx38.i, align 8, !noalias !72
  %.sroa.5.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx39.i, align 8, !noalias !72
  %.sroa.6.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx40.i, align 8, !noalias !72
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !72
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !72
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !72
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i, i64 32, i1 false), !noalias !72
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !74, !noundef !5 ; 5 uses
  %i.aq = load i64, ptr %i.an, align 8, !range !7, !alias.scope !74, !noundef !5
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit26.i
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.o unwind label %bb.m, !noalias !75

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.m) #18
          to label %.body unwind label %bb.n, !noalias !71

bb.n:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17, !noalias !71
  unreachable

bb.o:                                             ; preds = %bb.l, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit26.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !74, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw [104 x i8], ptr %i.av, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aw, ptr noundef nonnull align 8 dereferenceable(104) %i.m, i64 104, i1 false), !noalias !71
  %i.ax = add nsw i64 %i.ap, 1
  store i64 %i.ax, ptr %i.ao, align 8, !alias.scope !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !72
  %i.ay = icmp slt i64 %i.ap, 88686269585142075
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp sgt i64 %i.ap, 4
  br i1 %i.az, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.ba = load atomic i64, ptr @_RNvCsdbmLU2M1sR8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !72 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 6
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ugt i64 %i.ba, 2
  br i1 %i.bc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.be = load i64, ptr %i.bd, align 8, !range !4, !alias.scope !79, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.be, -1
  br i1 %.not.i.i.i, label %.thread37.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !79, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !79, !noundef !5
  invoke void @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey11deserialize(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi)
          to label %.noexc2 unwind label %bb.ac

.noexc2:                                          ; preds = %.noexc.i
  %i.bj = load i8, ptr %i.c, align 8, !range !12, !noalias !80, !noundef !5
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState18sender_ratchet_key.exit.thread18.i.i, label %bb.r

_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState18sender_ratchet_key.exit.thread18.i.i: ; preds = %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80
  br label %.thread37.i

.thread37.i:                                      ; preds = %_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState18sender_ratchet_key.exit.thread18.i.i, %bb.q
  %.sroa.8.117.i.i = phi ptr [ @11, %_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState18sender_ratchet_key.exit.thread18.i.i ], [ @10, %bb.q ]
  %.sroa.12.116.i.i = phi i64 [ 32, %_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState18sender_ratchet_key.exit.thread18.i.i ], [ 20, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  br label %_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState18add_receiver_chain0Bb_.exit.i

bb.r:                                             ; preds = %.noexc2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) %i.bl, i64 7, i1 false), !noalias !77
  %.sroa.8.1..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.1.copyload.i.i = load ptr, ptr %.sroa.8.1..sroa_idx.i.i, align 8, !noalias !81
  %.sroa.12.1..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12.1.copyload.i.i = load i64, ptr %.sroa.12.1..sroa_idx.i.i, align 8, !noalias !81
  %.sroa.16.1..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.16.1..sroa_idx.i.i, i64 9, i1 false), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  store ptr %.sroa.8.1.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !77
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i64 %.sroa.12.1.copyload.i.i, ptr %.sroa.57.0..sroa_idx.i.i, align 1, !noalias !77
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.11.i.i, i64 9, i1 false), !noalias !77
  invoke void @_RINvCsiDBhRLMtIBd_3hex6encodeRShECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 32)
          to label %.noexc3 unwind label %bb.ac

.noexc3:                                          ; preds = %bb.r
  %.pr.i = load i64, ptr %i.k, align 8, !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  %i.bm = icmp eq i64 %.pr.i, -1
  br i1 %i.bm, label %._RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState18add_receiver_chain0Bb_.exit_crit_edge.i, label %bb.t

._RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState18add_receiver_chain0Bb_.exit_crit_edge.i: ; preds = %.noexc3
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !72
  %.phi.trans.insert41.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre42.i = load i64, ptr %.phi.trans.insert41.i, align 8, !noalias !72
  br label %_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState18add_receiver_chain0Bb_.exit.i

bb.s:                                             ; preds = %.noexc7, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !72
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainE6removeBL_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %.noexc4 unwind label %bb.ac

.noexc4:                                          ; preds = %bb.s
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.g)
          to label %.noexc5 unwind label %bb.ac

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !72
  br label %bb.ad

_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState18add_receiver_chain0Bb_.exit.i: ; preds = %._RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState18add_receiver_chain0Bb_.exit_crit_edge.i, %.thread37.i
  %i.bn = phi i64 [ %.pre42.i, %._RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState18add_receiver_chain0Bb_.exit_crit_edge.i ], [ %.sroa.12.116.i.i, %.thread37.i ]
  %i.bo = phi ptr [ %.pre.i, %._RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState18add_receiver_chain0Bb_.exit_crit_edge.i ], [ %.sroa.8.117.i.i, %.thread37.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !72
  store ptr %i.bo, ptr %i.b, align 8, !noalias !82
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bn, ptr %i.bp, align 8, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  store ptr %i.b, ptr %i.a, align 8, !noalias !82
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs4tP8yUXWbFU_18libsignal_protocol, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !82
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @1, ptr noundef nonnull %i.a)
          to label %.noexc6 unwind label %bb.ac

.noexc6:                                          ; preds = %_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState18add_receiver_chain0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !72
  br label %bb.u

bb.t:                                             ; preds = %.noexc3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !72
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !72
  %i.bq = load i64, ptr %i.ao, align 8, !alias.scope !70, !noundef !5 ; 2 uses
  store i64 %i.bq, ptr %i.j, align 8, !noalias !72
  %i.br = icmp ult i64 %i.bq, 88686269585142076
  call void @llvm.assume(i1 %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !72
  store ptr %i.l, ptr %i.i, align 8, !noalias !72
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.bs, align 8, !noalias !72
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !72
  store ptr @6, ptr %i.h, align 8, !noalias !72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 34, ptr %i.bt, align 8, !noalias !72
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @6, ptr %i.bu, align 8, !noalias !72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 34, ptr %i.bv, align 8, !noalias !72
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @5, ptr %i.bw, align 8, !noalias !72
  invoke void @_RINvNtCsdbmLU2M1sR8_3log13___private_api3loguNtB2_12GlobalLoggerECs4tP8yUXWbFU_18libsignal_protocol(ptr noundef nonnull @3, ptr noundef nonnull %i.i, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.w unwind label %bb.v, !noalias !71

bb.v:                                             ; preds = %bb.u
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState36clear_unacknowledged_pre_key_message:bb.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  store i64 -1, ptr %i.a, align 8
  br label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEBJ_.exit.i
  store i64 -1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !range !4, !alias.scope !113, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEEB15_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body10 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEEB15_.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body10

.body10:                                          ; preds = %bb.g, %bb.i
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.j, %bb.g ]
  store i64 -1, ptr %i.g, align 8
  br label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEBJ_.exit.i
  store i64 -1, ptr %i.g, align 8
  ret void

bb.j:                                             ; preds = %.body10, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body11, %.body10 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState36unacknowledged_pre_key_message_items(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %1) unnamed_addr #0 {
bb.a:
  %.sroa.1134.sroa.0 = alloca [9 x i8], align 8   ; 2 uses
  %.sroa.036 = alloca [7 x i8], align 1           ; 2 uses
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.10.sroa.0 = alloca [11 x i8], align 4    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.c = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.e = load i32, ptr %i.d, align 8, !range !114, !noundef !5 ; 2 uses
  %i.f = trunc nuw i32 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.h = load i32, ptr %i.g, align 4
  %.sroa.613.0 = select i1 %i.f, i32 %i.h, i32 undef
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.j = load i32, ptr %i.i, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  call void @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey11deserialize(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
  %i.o = load i8, ptr %i.a, align 8, !range !12, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i32 2, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @23, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 39, ptr %i.r, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.036, ptr noundef nonnull align 1 dereferenceable(7) %i.s, i64 7, i1 false)
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.452.0.copyload = load ptr, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.1134.sroa.0, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.654.0..sroa_idx, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.u = load i64, ptr %i.t, align 8, !range !4, !noundef !5
  %.not63 = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  %i.x = tail call { i64, i32 } @_RNvXs6_NtCs9k3SxhrAWiO_3std4timeNtB5_10SystemTimeINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddNtNtBS_4time8DurationE3add(i64 noundef 0, i32 noundef 0, i64 noundef %i.w, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) ; 2 uses
  br i1 %.not63, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.z = load i32, ptr %i.y, align 8, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.059.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  %.sroa.660.0 = phi i32 [ %i.z, %bb.f ], [ undef, %bb.e ]
  %.sroa.061.0 = phi ptr [ %i.ab, %bb.f ], [ null, %bb.e ]
  %.sroa.662.0 = phi i64 [ %i.ad, %bb.f ], [ undef, %bb.e ]
  %.sroa.039.0 = extractvalue { i64, i32 } %i.x, 0
  %.sroa.640.0 = extractvalue { i64, i32 } %i.x, 1
  %.sroa.10.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.10.sroa.0.4..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.036, i64 7, i1 false)
  store i32 %i.e, ptr %0, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.613.0, ptr %.sroa.52.0..sroa_idx, align 4
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.059.0, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.660.0, ptr %.sroa.74.0..sroa_idx, align 4
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.039.0, ptr %.sroa.85.0..sroa_idx, align 8
  %.sroa.96.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.640.0, ptr %.sroa.96.0..sroa_idx, align 8
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %.sroa.107.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(11) %.sroa.10.sroa.0, i64 11, i1 false)
  %.sroa.107.sroa.5.0..sroa.107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store ptr %.sroa.452.0.copyload, ptr %.sroa.107.sroa.5.0..sroa.107.0..sroa_idx.sroa_idx, align 1
  %.sroa.107.sroa.6.0..sroa.107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i64 %.sroa.553.0.copyload, ptr %.sroa.107.sroa.6.0..sroa.107.0..sroa_idx.sroa_idx, align 1
  %.sroa.107.sroa.7.0..sroa.107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.107.sroa.7.0..sroa.107.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.1134.sroa.0, i64 9, i1 false)
  %.sroa.118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.061.0, ptr %.sroa.118.0..sroa_idx, align 8
  %.sroa.129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.662.0, ptr %.sroa.129.0..sroa_idx, align 8
  %.sroa.1310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.j, ptr %.sroa.1310.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, i8 noundef %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %2, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %3, ptr noalias nofree noundef readonly captures(none) dereferenceable(32) %4, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %5, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.sroa.0 = alloca [96 x i8], align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.e ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %6) #18
          to label %bb.s unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, i64 } %i.h, 1        ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  store i64 %i.k, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.k, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %3)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.p, %bb.f ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %bb.b unwind label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.q = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = extractvalue { ptr, i64 } %i.o, 1        ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %i.r, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.r, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.aj, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #18
          to label %bb.e unwind label %bb.o

bb.i:                                             ; preds = %bb.k, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !9, !noundef !5 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.aa, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #20
          to label %bb.r unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = icmp samesign ugt i64 %i.z, 31
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.z, ptr %i.e, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ac, ptr noundef nonnull align 1 dereferenceable(32) %4, i64 32, i1 false)
  store i64 32, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -1, ptr %i.b, align 8
  %i.ai = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %5)
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure18PendingKyberPreKeyEEB15_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #18
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ak = zext i8 %1 to i32
  %i.al = extractvalue { ptr, i64 } %i.ai, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = extractvalue { ptr, i64 } %i.ai, 1      ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.0.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.0.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -1, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8
  %.sroa.0.sroa.0.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.sroa.0, i64 96, i1 false)
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.am, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.al, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.am, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.ak, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 340
  store i32 0, ptr %.sroa.15.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  ret void

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit, %bb.q, %bb.p, %bb.m, %bb.h, %bb.e, %bb.b
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.p:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure13PendingPreKeyEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #18
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit unwind label %bb.o

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_.exit: ; preds = %bb.q
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #18
          to label %bb.h unwind label %bb.o

bb.r:                                             ; preds = %bb.k
  unreachable

bb.s:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord11deserialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 8 captures(none) dereferenceable(368) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.528 = alloca [336 x i8], align 8         ; 4 uses
  %.sroa.521 = alloca [336 x i8], align 8         ; 2 uses
  %i.a = alloca [368 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage15RecordStructureNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr noalias nofree noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull align 8 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775788, ptr %i.f, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @2, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 40, ptr %.sroa.5.0..sroa_idx48, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.633.sroa.0.0.copyload = load i64, ptr %.sroa.633.0..sroa_idx, align 8
  %i.g = load <2 x i64>, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.633.sroa.4.0..sroa.633.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.528)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.528, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.633.sroa.4.0..sroa.633.0..sroa_idx.sroa_idx, i64 336, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %.sroa.633.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528)
  store i64 %i.b, ptr %0, align 8
  %.sroa.023.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.023.sroa.4.0..sroa_idx, align 8
  %.sroa.023.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.g, ptr %.sroa.023.sroa.5.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.521, i64 336, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.521, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.528, i64 336, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord13promote_state(ptr noalias nofree noundef align 8 dereferenceable(368) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(344) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke fastcc noundef zeroext i1 @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord27archive_current_state_inner(ptr noalias nofree noundef align 8 dereferenceable(368) %0)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.d
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.c, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !4, !alias.scope !117, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEB13_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEB13_.exit unwind label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEB13_.exit: ; preds = %bb.c, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.c, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false)
  ret void

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit: ; preds = %bb.e, %bb.b
  %.pn6 = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %bb.e ]
  resume { ptr, i32 } %.pn6

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord17set_session_state(ptr noalias nofree noundef align 8 dereferenceable(368) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(344) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !4, !alias.scope !120, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEB13_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.a, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false)
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEB13_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.a, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord19promote_old_session(ptr noalias nofree noundef align 8 dereferenceable(368) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(344) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [344 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecIBu_hEE6removeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.m
end_hunk_2
begin_hunk_3_@_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord19promote_old_session:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord21archive_current_state(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(368) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = tail call fastcc noundef zeroext i1 @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord27archive_current_state_inner(ptr noalias nofree noundef align 8 dereferenceable(368) %1)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvCsdbmLU2M1sR8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.d = icmp ult i64 %i.c, 6
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ugt i64 %i.c, 2
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  store i64 -2, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @6, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 34, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @6, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 34, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @26, ptr %i.i, align 8
  call void @_RINvNtCsdbmLU2M1sR8_3log13___private_api3loguNtB2_12GlobalLoggerECs4tP8yUXWbFU_18libsignal_protocol(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 97 to ptr), i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord23has_usable_sender_chain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 9)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(368) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load i64, ptr %i.c, align 8, !range !4, !alias.scope !131, !noundef !5
  %.not.i = icmp eq i64 %i.d, -1
  br i1 %.not.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %4, 1
  %.not7.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.g = load i64, ptr %i.f, align 8, !range !4, !alias.scope !131
  %.not8.i = icmp eq i64 %i.g, -1
  %or.cond.i = select i1 %.not7.i, i1 true, i1 %.not8.i
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !131, !noundef !5
  %i.j = tail call { i64, i32 } @_RNvXs6_NtCs9k3SxhrAWiO_3std4timeNtB5_10SystemTimeINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddNtNtBS_4time8DurationE3add(i64 noundef 0, i32 noundef 0, i64 noundef %i.i, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17), !noalias !132 ; 2 uses
  %i.k = extractvalue { i64, i32 } %i.j, 0
  %i.l = extractvalue { i64, i32 } %i.j, 1
  %i.m = tail call { i64, i32 } @_RNvXs6_NtCs9k3SxhrAWiO_3std4timeNtB5_10SystemTimeINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddNtNtBS_4time8DurationE3add(i64 noundef %i.k, i32 noundef %i.l, i64 noundef 2592000, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18), !noalias !132 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0        ; 2 uses
  %i.o = icmp eq i64 %i.n, %2
  br i1 %i.o, label %.split.i, label %bb.f

bb.e:                                             ; preds = %bb.f, %.split.i, %bb.c
  %i.p = and i32 %4, 2
  %.not9.i = icmp ne i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !131
  %i.s = icmp ult i32 %i.r, 4
  %or.cond14.i = select i1 %.not9.i, i1 %i.s, i1 false
  br i1 %or.cond14.i, label %bb.j, label %bb.g

.split.i:                                         ; preds = %bb.d
  %i.t = extractvalue { i64, i32 } %i.m, 1        ; 2 uses
  %i.u = icmp ult i32 %i.t, 1000000000
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ult i32 %i.t, %3
  br i1 %i.v, label %bb.j, label %bb.e

bb.f:                                             ; preds = %bb.d
  %i.w = icmp slt i64 %i.n, %2
  br i1 %i.w, label %bb.j, label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.x = and i32 %4, 4
  %.not10.i = icmp eq i32 %i.x, 0
  br i1 %.not10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !131, !noundef !5 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.e, %.split.i, %bb.f, %bb.h, %bb.i
  %.sink.i.sink = phi i8 [ 0, %bb.f ], [ 1, %bb.i ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %.split.i ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i.sink, ptr %i.ac, align 8
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord24local_identity_key_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(368) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.11.i = alloca [16 x i8], align 8         ; 5 uses
  %i.d = alloca [32 x i8], align 1                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.g, align 8, !alias.scope !140, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val54 = load i64, ptr %i.h, align 8, !alias.scope !140, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !142
  call void @_RNvMNtCs4tP8yUXWbFU_18libsignal_protocol12identity_keyNtB2_11IdentityKey6decode(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val54), !noalias !142
  %i.i = load i64, ptr %i.b, align 8, !range !11, !noalias !142, !noundef !5
  %.not.i.i = icmp eq i64 %i.i, -2
  br i1 %.not.i.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.d, ptr noundef nonnull align 8 dereferenceable(7) %i.j, i64 7, i1 false), !noalias !141
  %.sroa.7.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %.sroa.7.1.copyload.i = load ptr, ptr %.sroa.7.1..sroa_idx.i, align 1, !noalias !143
  %.sroa.10.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %.sroa.10.1.copyload.i = load i64, ptr %.sroa.10.1..sroa_idx.i, align 1, !noalias !143
  %.sroa.13.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.11.i, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.13.1..sroa_idx.i, i64 9, i1 false), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  store ptr %.sroa.7.1.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !141
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i64 %.sroa.10.1.copyload.i, ptr %.sroa.510.0..sroa_idx.i, align 1, !noalias !141
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.11.i, i64 9, i1 false), !noalias !141
  %i.k = call { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.d), !noalias !141 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 5 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !141
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.m, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %bb.d, !noalias !141

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef range(i64 1, 0) %i.m, i64 noundef 1) #19, !noalias !141
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i

bb.f:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !range !8, !noalias !141, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !9, !noalias !141, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.t, align 8, !noalias !141
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #20
          to label %bb.j unwind label %bb.d, !noalias !141

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.t, align 8, !noalias !141, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = icmp ule i64 %i.m, %i.s
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !141
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.l, i64 %i.m, i1 false), !noalias !141
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef range(i64 1, 0) %i.m, i64 noundef 1) #19, !noalias !141
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.n

bb.k:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @27, ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 24, ptr %.sroa.746.0..sroa_idx, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !142
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  store i64 -9223372036854775788, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @9, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %.sroa.552.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.x, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord24promote_matching_session(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(368) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [344 x i8], align 8               ; 7 uses
  %.sroa.6.i.i = alloca [320 x i8], align 8       ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [344 x i8], align 8               ; 4 uses
  %.sroa.531 = alloca [344 x i8], align 8         ; 5 uses
  %i.e = alloca [344 x i8], align 8               ; 14 uses
  %.sroa.9 = alloca [320 x i8], align 8           ; 6 uses
  %i.f = alloca [352 x i8], align 8               ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val51 = load i32, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.j = icmp eq i32 %.val51, 0
  %spec.select.i = select i1 %i.j, i32 2, i32 %.val51
  %i.k = icmp eq i32 %spec.select.i, %2
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val56 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val57 = load i64, ptr %i.m, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not.i = icmp eq i64 %4, %.val57
  br i1 %.not.i, label %bb.d, label %_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs4tP8yUXWbFU_18libsignal_protocol.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.o = getelementptr inbounds nuw i8, ptr %.val56, i64 %4
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %.val56, ptr noundef nonnull readonly %i.o)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !160 ; 2 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.411.0.copyload.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !160 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !160 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !160 ; 2 uses
  %i.p = icmp ult i64 %.sroa.512.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.p, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i, label %_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs4tP8yUXWbFU_18libsignal_protocol.exit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.411.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i
  %.sroa.01.018.i = phi i8 [ 1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i ], [ %i.w, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i ]
  %.sroa.512.017.i = phi i64 [ %.sroa.512.0.copyload.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i ], [ %i.s, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.512.017.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.411.0.copyload.i, i64 %.sroa.512.017.i
  %i.s = add i64 %.sroa.512.017.i, 1              ; 2 uses
  %.val.i = load i8, ptr %i.q, align 1, !noundef !5
  %.val10.i = load i8, ptr %i.r, align 1, !noundef !5
  %i.t = icmp eq i8 %.val.i, %.val10.i
  %i.u = zext i1 %i.t to i8
  %i.v = tail call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.u) #22
  %i.w = and i8 %i.v, %.sroa.01.018.i             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs4tP8yUXWbFU_18libsignal_protocol.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i

_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %bb.c, %bb.d
  %.sroa.01.0.lcssa.sink.i = phi i8 [ 0, %bb.c ], [ 1, %bb.d ], [ %i.w, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i ]
  %i.x = tail call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %.sroa.01.0.lcssa.sink.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.w, %bb.v
  ret void

.body:                                            ; preds = %.loopexit109, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %.pn48 = phi { ptr, i32 } [ %i.at, %bb.m ], [ %lpad.loopexit111, %.loopexit109 ], [ %lpad.loopexit.split-lp197, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.aa = load i64, ptr %i.ab, align 8, !range !4, !noundef !5
  %.not182 = icmp eq i64 %i.aa, -1
  br i1 %.not182, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit89, label %bb.aa

.loopexit109:                                     ; preds = %bb.h, %bb.i, %bb.o
  %lpad.loopexit111 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.a, %_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 11 uses
  store i64 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val52 = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val53 = load i64, ptr %i.ad, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %.val53, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.val52, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.af = icmp eq i64 %.val53, 0
  br i1 %i.af, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.618.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %.sroa.411.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.h

.thread:                                          ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit64, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit64
  %.sroa.091.0135 = phi ptr [ %.val52, %.lr.ph ], [ %i.al, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit64 ] ; 3 uses
  %.sroa.8.0134 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit64 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.091.0135, i64 24 ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.091.0135, i64 8
  %.val.i.i = load ptr, ptr %i.am, align 8, !noalias !161, !nonnull !5, !noundef !5
  %i.an = getelementptr i8, ptr %.sroa.091.0135, i64 16
  %.val2.i.i = load i64, ptr %i.an, align 8, !noalias !161, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !162
  invoke void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(none) dereferenceable(344) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val2.i.i)
          to label %.noexc unwind label %.loopexit109

.noexc:                                           ; preds = %bb.h
  %i.ao = load i64, ptr %i.b, align 8, !range !4, !noalias !162, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1                   ; 2 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !noalias !162 ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull align 8 %i.aq)
          to label %bb.k unwind label %.loopexit109

bb.j:                                             ; preds = %.noexc
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !162
end_hunk_3
begin_hunk_4_@_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord24promote_matching_session:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.6.i.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br i1 %i.ap, label %bb.x, label %bb.n

bb.l:                                             ; preds = %.thread, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEEB15_.exit
  %i.as = load i64, ptr %i.ab, align 8, !range !4, !noundef !5
  %.not47 = icmp eq i64 %i.as, -1
  br i1 %.not47, label %bb.v, label %bb.u

bb.m:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.8.0134, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.ab, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.531, i64 344, i1 false)
  br label %.body

bb.n:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.623.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.9, i64 320, i1 false)
  store i64 %i.ao, ptr %i.e, align 8
  store ptr %.sroa.4.0.copyload.sink.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload.sink.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.val = load i32, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.au = icmp eq i32 %.val, 0
  %spec.select.i61 = select i1 %i.au, i32 2, i32 %.val
  %i.av = icmp eq i32 %spec.select.i61, %2
  br i1 %i.av, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.r
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit64 unwind label %.loopexit109

bb.p:                                             ; preds = %bb.n
  %.val54 = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val55 = load i64, ptr %i.aj, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i65 = icmp eq i64 %4, %.val55
  br i1 %.not.i65, label %bb.q, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.val54, i64 %4
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ak, ptr noundef nonnull readonly %.val54, ptr noundef nonnull readonly %i.aw)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.q
  %.sroa.0.0.copyload.i67 = load ptr, ptr %i.a, align 8, !noalias !164 ; 2 uses
  %.sroa.411.0.copyload.i69 = load ptr, ptr %.sroa.411.0..sroa_idx.i68, align 8, !noalias !164 ; 2 uses
  %.sroa.512.0.copyload.i71 = load i64, ptr %.sroa.512.0..sroa_idx.i70, align 8, !noalias !164 ; 2 uses
  %.sroa.7.0.copyload.i73 = load i64, ptr %.sroa.7.0..sroa_idx.i72, align 8, !noalias !164 ; 2 uses
  %i.ax = icmp ult i64 %.sroa.512.0.copyload.i71, %.sroa.7.0.copyload.i73
  br i1 %i.ax, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i74, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i74: ; preds = %.noexc81
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i67), "nonnull"(ptr %.sroa.411.0.copyload.i69) ]
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i75

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i75: ; preds = %.noexc82, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i74
  %.sroa.01.018.i76 = phi i8 [ 1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i74 ], [ %i.be, %.noexc82 ]
  %.sroa.512.017.i77 = phi i64 [ %.sroa.512.0.copyload.i71, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.lr.ph.i74 ], [ %i.bd, %.noexc82 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i67, i64 %.sroa.512.017.i77
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.411.0.copyload.i69, i64 %.sroa.512.017.i77
  %.val.i78 = load i8, ptr %i.ay, align 1, !noundef !5
  %.val10.i79 = load i8, ptr %i.az, align 1, !noundef !5
  %i.ba = icmp eq i8 %.val.i78, %.val10.i79
  %i.bb = zext i1 %i.ba to i8
  %i.bc = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.bb) #22
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc82:                                         ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i75
  %i.bd = add i64 %.sroa.512.017.i77, 1           ; 2 uses
  %i.be = and i8 %i.bc, %.sroa.01.018.i76         ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %i.bd, %.sroa.7.0.copyload.i73
  br i1 %exitcond.not.i80, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i75

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i: ; preds = %.noexc82, %.noexc81, %bb.p
  %.sroa.01.0.lcssa.sink.i66 = phi i8 [ 0, %bb.p ], [ 1, %.noexc81 ], [ %i.be, %.noexc82 ]
  %i.bf = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %.sroa.01.0.lcssa.sink.i66) #22
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.531, ptr noundef nonnull align 8 dereferenceable(344) %i.e, i64 344, i1 false)
  %i.bh = load i64, ptr %i.ab, align 8, !range !4, !alias.scope !165, !noundef !5
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEEB15_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.ab)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEEB15_.exit unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit64: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.bj = icmp eq ptr %i.al, %i.ae
  br i1 %i.bj, label %.thread, label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTjNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEEB15_.exit: ; preds = %bb.s, %bb.t
  store i64 %.sroa.8.0134, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.ab, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.531, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.l

bb.u:                                             ; preds = %bb.l
  %i.bk = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.d, ptr noundef nonnull align 8 dereferenceable(344) %i.ab, i64 344, i1 false)
  call void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord19promote_old_session(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %1, i64 noundef %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(344) %i.d)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bl, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.v:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bm, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.w:                                             ; preds = %bb.u, %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.x:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.sink.i.i.i) ]
  store ptr %.sroa.4.0.copyload.sink.i.i.i, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload.sink.i.i.i, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.bo = load i64, ptr %i.ab, align 8, !range !4, !noundef !5
  %.not50 = icmp eq i64 %i.bo, -1
  br i1 %.not50, label %bb.w, label %bb.z

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.i75, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i, %bb.q
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.e)
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.aa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.z:                                             ; preds = %bb.x
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.ab)
  br label %bb.w

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit89: ; preds = %bb.aa, %.body
  resume { ptr, i32 } %.pn48

bb.aa:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage16SessionStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.ab)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEBH_.exit89 unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord25remote_identity_key_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(368) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1117.i.i = alloca [16 x i8], align 8     ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 2                ; 8 uses
  %.sroa.12.i.sroa.0 = alloca [9 x i8], align 8   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val54 = load i64, ptr %i.h, align 8, !alias.scope !176, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1117.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.i = icmp sgt i64 %.val54, -1
  tail call void @llvm.assume(i1 %i.i)
  %.not.i = icmp eq i64 %.val54, 0
  br i1 %.not.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.sroa.0)
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !178
  call void @_RNvMNtCs4tP8yUXWbFU_18libsignal_protocol12identity_keyNtB2_11IdentityKey6decode(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val54), !noalias !178
  %i.j = load i64, ptr %i.c, align 8, !range !11, !noalias !178, !noundef !5
  %.not.i.i = icmp eq i64 %i.j, -2
  br i1 %.not.i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.d, ptr noundef nonnull align 8 dereferenceable(6) %i.k, i64 6, i1 false), !noalias !179
  %.sroa.12.2..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.l = load i8, ptr %.sroa.12.2..sroa_idx.i, align 2, !noalias !180
  store i8 %i.l, ptr %.sroa.12.i.sroa.0, align 8, !noalias !180
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %.sroa.422.0.copyload.i.i = load ptr, ptr %.sroa.422.0..sroa_idx.i.i, align 1, !noalias !178 ; 2 uses
  %.sroa.5.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx23.i.i, align 1, !noalias !178
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.1117.i.i, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.6.0..sroa_idx.i.i, i64 9, i1 false), !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !178
  %.sroa.12.i.sroa.0.1..sroa_idx69 = getelementptr inbounds nuw i8, ptr %.sroa.12.i.sroa.0, i64 1
  store ptr %.sroa.422.0.copyload.i.i, ptr %.sroa.12.i.sroa.0.1..sroa_idx69, align 1, !alias.scope !177, !noalias !179
  %.sroa.12.i.sroa.0.0..sroa.12.i.sroa.0.0..sroa.12.i.sroa.0.0..sroa.12.i.sroa.0.0..sroa.12.0..sroa.12.0..sroa.12.8..sroa.5.0.copyload.pre.i = load ptr, ptr %.sroa.12.i.sroa.0, align 8, !noalias !179
  %i.m = ptrtoint ptr %.sroa.422.0.copyload.i.i to i64
  %i.n = lshr i64 %i.m, 56
  %i.o = trunc nuw i64 %i.n to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.sroa.0)
  %.sroa.618.sroa.4.0..sroa.618.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.618.sroa.4.0..sroa.618.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.1117.i.i, i64 9, i1 false), !noalias !179
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store ptr %.sroa.12.i.sroa.0.0..sroa.12.i.sroa.0.0..sroa.12.i.sroa.0.0..sroa.12.i.sroa.0.0..sroa.12.0..sroa.12.0..sroa.12.8..sroa.5.0.copyload.pre.i, ptr %.sroa.416.0..sroa_idx.i, align 2, !noalias !179
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i8 %i.o, ptr %.sroa.517.0..sroa_idx.i, align 2, !noalias !179
  %.sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.517.0..sroa_idx.sroa_idx.i, align 1, !noalias !179
  %i.p = call { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(32) %i.d), !noalias !181 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 5 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.g unwind label %bb.e, !noalias !181

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, 0) %i.r, i64 noundef 1) #19, !noalias !181
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.a, align 8, !range !8, !noalias !182, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !9, !noalias !182, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.y, align 8, !noalias !182
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #20
          to label %bb.k unwind label %bb.e, !noalias !181

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !182, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = icmp ule i64 %i.r, %i.x
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  %.not.i19.i = icmp eq i64 %i.r, 0
  br i1 %.not.i19.i, label %_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState25remote_identity_key_bytes0Bb_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %i.q, i64 %i.r, i1 false), !noalias !181
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, 0) %i.r, i64 noundef 1) #19, !noalias !181
  br label %_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState25remote_identity_key_bytes0Bb_.exit.i

bb.k:                                             ; preds = %bb.h
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.s

_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState25remote_identity_key_bytes0Bb_.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !179
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @28, ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 25, ptr %.sroa.746.0..sroa_idx, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !178
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1117.i.i)
  store i64 -9223372036854775788, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @12, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.552.0..sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState25remote_identity_key_bytes0Bb_.exit.i, %.thread
  %.sroa.11.0.ph = phi i64 [ undef, %.thread ], [ %i.r, %_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState25remote_identity_key_bytes0Bb_.exit.i ]
  %.sroa.7.0.ph = phi ptr [ undef, %.thread ], [ %i.aa, %_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState25remote_identity_key_bytes0Bb_.exit.i ]
  %.sroa.0.0.ph = phi i64 [ -1, %.thread ], [ %i.x, %_RNCNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB7_12SessionState25remote_identity_key_bytes0Bb_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1117.i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph, ptr %i.ac, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.ph, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.11.0.ph, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord26get_sender_chain_key_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(368) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.619.sroa.0.i.sroa.4 = alloca [9 x i8], align 1 ; 5 uses
  %.sroa.10.i.sroa.0 = alloca [11 x i8], align 8  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.sroa.0.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = load i64, ptr %i.d, align 8, !range !4, !alias.scope !192, !noundef !5
  %.not.i.i = icmp eq i64 %i.e, -1
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = load i64, ptr %i.f, align 8, !range !4, !alias.scope !192, !noundef !5
  %.not43.i.i = icmp eq i64 %i.g, -1
  br i1 %.not43.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !192, !noundef !5
  %i.j = icmp eq i64 %i.i, 32
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !192, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.8.4.copyload.i = load i32, ptr %i.l, align 1, !noalias !193
  %.sroa.10.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.10.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.4..sroa_idx.i, i64 3, i1 false), !noalias !193
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !194 ; 2 uses
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %.sroa.538.0.copyload.i.i = load i64, ptr %.sroa.538.0..sroa_idx.i.i, align 1, !noalias !194
  %.sroa.639.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.619.sroa.0.i.sroa.4, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.639.0..sroa_idx.i.i, i64 9, i1 false), !noalias !195
  %.sroa.10.i.sroa.0.3..sroa_idx61 = getelementptr inbounds nuw i8, ptr %.sroa.10.i.sroa.0, i64 3
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.10.i.sroa.0.3..sroa_idx61, align 1, !alias.scope !190, !noalias !195
  %.sroa.10.i.sroa.0.0..sroa.10.i.sroa.0.0..sroa.10.i.sroa.0.0..sroa.10.i.sroa.0.0..sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.8..sroa.417.0.copyload.i = load ptr, ptr %.sroa.10.i.sroa.0, align 8, !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !195
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !195
  %i.m = load i64, ptr %i.a, align 8, !range !8, !noalias !195, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.i, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !9, !noalias !195, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !195
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #20, !noalias !195
  unreachable

bb.g:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @29, ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 26, ptr %.sroa.746.0..sroa_idx, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.10.8..sroa.10.8..sroa.10.8..sroa.10.16..i = phi i64 [ 24, %bb.c ], [ 20, %bb.b ], [ 24, %bb.d ]
  %.sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.8..i = phi ptr [ @13, %bb.c ], [ @10, %bb.b ], [ @14, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.sroa.0.i.sroa.4)
  store i64 -9223372036854775788, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.8..i, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.8..sroa.10.8..sroa.10.8..sroa.10.16..i, ptr %.sroa.552.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.t = lshr i64 %i.s, 40
  %i.u = trunc nuw i64 %i.t to i24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !7, !noalias !195, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !195, !nonnull !5, !noundef !5 ; 6 uses
  %i.z = icmp samesign ugt i64 %i.w, 31
  tail call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  store i32 %.sroa.8.4.copyload.i, ptr %i.y, align 1, !noalias !195
  %.sroa.513.0..sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %.sroa.10.i.sroa.0.0..sroa.10.i.sroa.0.0..sroa.10.i.sroa.0.0..sroa.10.i.sroa.0.0..sroa.10.0..sroa.10.0..sroa.10.0..sroa.10.8..sroa.417.0.copyload.i, ptr %.sroa.513.0..sroa.5.8..sroa_idx.i, align 1, !noalias !195
  %.sroa.614.0..sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i24 %i.u, ptr %.sroa.614.0..sroa.5.8..sroa_idx.i, align 1, !noalias !195
  %.sroa.614.0..sroa.5.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 15
  store i64 %.sroa.538.0.copyload.i.i, ptr %.sroa.614.0..sroa.5.8..sroa_idx.sroa_idx.i, align 1, !noalias !195
  %.sroa.619.sroa.0.i.sroa.4.0..sroa.715.0..sroa.5.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.619.sroa.0.i.sroa.4.0..sroa.715.0..sroa.5.8..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.619.sroa.0.i.sroa.4, i64 9, i1 false), !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.sroa.0.i.sroa.4)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.aa, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 32, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_13SessionRecord27archive_current_state_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [344 x i8], align 8               ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  store i64 -1, ptr %i.d, align 8
  %.not = icmp ne i64 %.sroa.01.0.copyload, -1    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.01.0.copyload, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.6.0..sroa_idx, i64 336, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.g = icmp ult i64 %i.f, 384307168202282326
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp samesign ugt i64 %i.f, 39
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.i = phi i64 [ %i.f, %bb.b ], [ %i.j, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit ] ; 4 uses
  invoke void @_RNvMs1_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB5_12SessionState36clear_unacknowledged_pre_key_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.c)
end_hunk_4
begin_hunk_5_@_RNvMsi_NtCs4tP8yUXWbFU_18libsignal_protocol3kemNtB5_7KeyPair23from_public_and_private:bb.a
  store ptr %i.k, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 3168, ptr %.sroa.626.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem3KeyNtBE_6PublicEEBG_.exit61, %bb.n
  ret void

bb.p:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) 1568, i64 noundef 1) #19
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsj_NtCs4tP8yUXWbFU_18libsignal_protocol3kemNtB5_10Ciphertext9serialize(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 5 uses
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !9, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e, !prof !10

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #20
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = icmp ule i64 %i.f, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i8 8, ptr %i.n, align 1
  store i64 1, ptr %i.q, align 8, !alias.scope !280
  %i.r = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.e)
          to label %.noexc2 unwind label %bb.i

.noexc2:                                          ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !alias.scope !281, !noundef !5 ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc2
  %i.u = load ptr, ptr %i.p, align 8, !alias.scope !281, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.r, i64 %i.e, i1 false)
  %.pre.i = load i64, ptr %i.q, align 8, !alias.scope !281
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc2
  %i.w = phi i64 [ %.pre.i, %bb.f ], [ %i.s, %.noexc2 ]
  %i.x = add i64 %i.w, %i.e
  store i64 %i.x, ptr %i.q, align 8, !alias.scope !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.y = call { ptr, i64 } @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE16into_boxed_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.y

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm

bb.i:                                             ; preds = %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7sessionNtB2_19InvalidSessionErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvNtCs4tP8yUXWbFU_18libsignal_protocol3kem1__NtB7_7KeyTypeNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 13) #23
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs4tP8yUXWbFU_18libsignal_protocol3kem7KeyTypeNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !284, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !284, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !noalias !284, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 13) #23, !noalias !284, !inline_history !285
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session19InvalidSessionErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !288, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !288, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !288
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state13signed_prekeyINtNtB9_3kem3KeyNtB15_6PublicENtB5_8KeySerde9serialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { ptr, i64 } @_RNvMsa_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6PublicE9serializeB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 5 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, 0) %i.d, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #20
          to label %bb.h unwind label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.d, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.c, i64 %i.d, i1 false)
  store i64 %i.d, ptr %i.p, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, 0) %i.d, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit4

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit4: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvXs4_NtCs4tP8yUXWbFU_18libsignal_protocol3kemNtB5_6PublicNtB5_7KeyKind10key_length() unnamed_addr #2 {
bb.a:
  ret i64 1568
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state13signed_prekeyINtNtB9_3kem3KeyNtB15_6SecretENtB5_8KeySerde9serialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.val4 = load ptr, ptr %1, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.e, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = add i64 %.val5, 1                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !10

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = load i64, ptr %2, align 8, !range !9, !noundef !5
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %4, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %3, i64 %i.j) #20
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %6 = load i64, ptr %5, align 8, !range !7, !noundef !5 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %7, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp ule i64 %i.f, %6
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %6, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i8 8, ptr %i.k, align 1
  store i64 1, ptr %i.n, align 8, !alias.scope !293
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.val5)
          to label %.noexc2.i unwind label %bb.g

.noexc2.i:                                        ; preds = %bb.e
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !294, !noundef !5 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1
  call void @llvm.assume(i1 %i.p)
  %.not.i.i = icmp eq i64 %.val5, 0
  br i1 %.not.i.i, label %_RNvMsa_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6SecretE9serializeB7_.exit, label %bb.f

bb.f:                                             ; preds = %.noexc2.i
  %i.q = load ptr, ptr %i.m, align 8, !alias.scope !294, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %.val4, i64 %.val5, i1 false)
  %.pre.i.i = load i64, ptr %i.n, align 8, !alias.scope !294
  br label %_RNvMsa_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6SecretE9serializeB7_.exit

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.g ], [ %i.y, %bb.j ], [ %i.y, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RNvMsa_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6SecretE9serializeB7_.exit: ; preds = %.noexc2.i, %bb.f
  %i.t = phi i64 [ %.pre.i.i, %bb.f ], [ %i.o, %.noexc2.i ]
  %i.u = add i64 %i.t, %.val5
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.v = call { ptr, i64 } @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE16into_boxed_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 5 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.x, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.l, %_RNvMsa_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6SecretE9serializeB7_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef range(i64 1, 0) %i.x, i64 noundef 1) #19
  br label %common.resume

bb.k:                                             ; preds = %_RNvMsa_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6SecretE9serializeB7_.exit
  %i.aa = load i64, ptr %i.d, align 8, !range !8, !noundef !5
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !noundef !5 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr %i.ae, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.af) #20
          to label %bb.o unwind label %bb.i

bb.m:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = icmp ule i64 %i.x, %i.ad
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.ad, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.aj, align 8
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit6, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.w, i64 %i.x, i1 false)
  store i64 %i.x, ptr %i.aj, align 8
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef range(i64 1, 0) %i.x, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit6

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit6: ; preds = %bb.m, %bb.n
  ret void

bb.o:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvXs5_NtCs4tP8yUXWbFU_18libsignal_protocol3kemNtB5_6SecretNtB5_7KeyKind10key_length() unnamed_addr #2 {
bb.a:
  ret i64 3168
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCs4tP8yUXWbFU_18libsignal_protocol5state13signed_prekeyNtNtB9_3kem7KeyPairNtB5_12KeyPairSerde23from_public_and_private(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsi_NtCs4tP8yUXWbFU_18libsignal_protocol3kemNtB5_7KeyPair23from_public_and_private(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs7_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_11KeyMaterialNtB5_6PublicEINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCseyFJilwn03E_14libcrux_ml_kem5types14MlKemPublicKeyKj620_EE4fromB7_(ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(1568) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !297
  %i.a = tail call noundef dereferenceable_or_null(1568) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 32, 9223372036854775807) 1568, i64 noundef 1) #19, !noalias !297 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1568) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1568) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1568) %0, i64 range(i64 32, 9223372036854775807) 1568, i1 false)
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 1568, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_11KeyMaterialNtB5_6SecretEINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCseyFJilwn03E_14libcrux_ml_kem5types15MlKemPrivateKeyKjc60_EE4fromB7_(ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(3168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !300
  %i.a = tail call noundef dereferenceable_or_null(3168) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 32, 9223372036854775807) 3168, i64 noundef 1) #19, !noalias !300 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 3168) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3168) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(3168) %0, i64 range(i64 32, 9223372036854775807) 3168, i1 false)
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 3168, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsA_NvNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session1__NtB7_28SessionUsabilityRequirementsNtNtCsgxBkk5gSRhY_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !304
  store i32 %i.b, ptr %i.a, align 4, !noalias !304
  %i.c = call noundef zeroext i1 @_RNvXsq_NtNtCsgxBkk5gSRhY_4core3fmt3nummNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !304
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsB_NvNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session1__NtB7_28SessionUsabilityRequirementsNtNtCsgxBkk5gSRhY_4core3fmt5Octal3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store i32 %i.b, ptr %i.a, align 4, !noalias !309
  %i.c = call noundef zeroext i1 @_RNvXss_NtNtCsgxBkk5gSRhY_4core3fmt3nummNtB7_5Octal3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsC_NvNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session1__NtB7_28SessionUsabilityRequirementsNtNtCsgxBkk5gSRhY_4core3fmt8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !314
  store i32 %i.b, ptr %i.a, align 4, !noalias !314
  %i.c = call noundef zeroext i1 @_RNvXsu_NtNtCsgxBkk5gSRhY_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !314
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsD_NvNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session1__NtB7_28SessionUsabilityRequirementsNtNtCsgxBkk5gSRhY_4core3fmt8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  store i32 %i.b, ptr %i.a, align 4, !noalias !319
  %i.c = call noundef zeroext i1 @_RNvXsw_NtNtCsgxBkk5gSRhY_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NvNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session1__NtB5_16InternalBitFlagsNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %0, align 4, !noundef !5   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @35, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsu_NtNtCsgxBkk5gSRhY_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5
  %i.h = call noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @36, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !324
  store i32 %i.c, ptr %i.a, align 4, !noalias !324
  %i.i = call noundef zeroext i1 @_RINvNtCsaqW1JhJ9wur_8bitflags6parser9to_writerNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session28SessionUsabilityRequirementsQNtNtCsgxBkk5gSRhY_4core3fmt9FormatterEBO_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !324
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session1__NtB5_16InternalBitFlagsNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !5
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @_RINvNtCsaqW1JhJ9wur_8bitflags6parser9to_writerNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session28SessionUsabilityRequirementsQNtNtCsgxBkk5gSRhY_4core3fmt9FormatterEBO_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6PublicEINtNtCsgxBkk5gSRhY_4core7convert7TryFromRShE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775801, ptr %0, align 8, !alias.scope !331
  br label %_RNvMsa_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6PublicE11deserializeB7_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !332, !noundef !5 ; 2 uses
  %i.c = icmp eq i8 %i.b, 8
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %2, 1569
  br i1 %.not.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775777, ptr %0, align 8, !alias.scope !331
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !331
  br label %_RNvMsa_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6PublicE11deserializeB7_.exit

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775775, ptr %0, align 8, !alias.scope !331
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !331
  br label %_RNvMsa_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_3KeyNtB5_6PublicE11deserializeB7_.exit

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !333
  %i.d = tail call noundef dereferenceable_or_null(1568) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 32, 9223372036854775807) 1568, i64 noundef 1) #19, !noalias !333 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1568) #20, !noalias !334
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1568) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(1568) %i.f, i64 range(i64 32, 9223372036854775807) 1568, i1 false), !noalias !331
end_hunk_5
