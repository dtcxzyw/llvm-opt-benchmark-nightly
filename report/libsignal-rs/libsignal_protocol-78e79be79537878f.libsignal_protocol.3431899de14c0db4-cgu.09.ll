Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.09?download=true
inline.NumInlined: 347
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit11: ; preds = %bb.x
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.aa:                                            ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.ad, align 8            ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.af = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.af(ptr noundef nonnull %.val)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !17, !invariant.load !4 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !18, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit

bb.ae:                                            ; preds = %bb.ab
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !17, !invariant.load !4 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !18, !invariant.load !4
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit13: ; preds = %bb.ag
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error15SessionNotFoundEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgxBkk5gSRhY_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressENCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB2D_17InMemSessionStore22load_existing_sessions0ERNtNtNtB2H_5state7session13SessionRecordINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2H_5error19SignalProtocolErrorENCINvXso_B4Z_IB4X_INtNtCs6i54tJFfzR_5alloc3vec3VecB4i_EB5J_EINtNtNtB4_6traits7collect12FromIteratorIB4X_B4i_B5J_EE9from_iterBQ_E0B6B_EB2H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !31, !noalias !32
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !31, !noalias !32
  invoke void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec14spec_from_iterINtB4_3VecRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session13SessionRecordEINtB2_12SpecFromIterBT_INtNtNtCsgxBkk5gSRhY_4core4iter8adapters12GenericShuntINtNtB2s_3map3MapINtNtNtB2w_5slice4iter4IterRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressENCNvMs5_NtNtB10_7storage5inmemNtB56_17InMemSessionStore22load_existing_sessions0EINtNtB2w_6result6ResultNtNtB2w_7convert10InfallibleNtNtB10_5error19SignalProtocolErrorEEE9from_iterB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !8, !noundef !4
  %.not = icmp eq i64 %i.e, -2
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEEB1s_.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30
  %i.f = load i64, ptr %i.c, align 8, !range !8, !noundef !4
  %.not.not = icmp eq i64 %i.f, -2
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -2, ptr %0, align 8, !alias.scope !33
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session13SessionRecordEEB1e_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session13SessionRecordEEB1e_.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session13SessionRecordENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session13SessionRecordENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEEB1s_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session13SessionRecordENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session13SessionRecordEEB1e_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEEB1s_.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn10 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %.body
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEEB1s_.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureENvYB1n_NtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2Q_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3I_5accumjNtB5H_3Sum3sumIBO_BN_B4C_EE0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructureENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2e_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lenNCIB2W_jjjNCINvNtNtB3I_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB2c_5accumjNtB5J_3Sum3sumINtB2Y_3MapIB6b_BF_B3y_EB4F_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 112
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructurejjNvYBV_NtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2o_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapIB4Y_INtNtNtBa_5slice4iter4IterBV_EB2e_EB3k_EE0E0E0B11_.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.ew, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructurejjNvYBV_NtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2o_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapIB4Y_INtNtNtBa_5slice4iter4IterBV_EB2e_EB3k_EE0E0E0B11_.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %i.eu, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage23SenderKeyStateStructurejjNvYBV_NtNtCs43OB2dM8s8d_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2o_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4o_3Sum3sumINtB4_3MapIB4Y_INtNtNtBa_5slice4iter4IterBV_EB2e_EB3k_EE0E0E0B11_.exit.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.04.0.i ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !49, !noundef !4 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = or i32 %i.h, 1
  %i.k = zext i32 %i.j to i64
  %i.l = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = xor i64 %i.l, 63
  %i.n = mul nuw nsw i64 %i.m, 9
  %i.o = add nuw nsw i64 %i.n, 73
end_hunk_0
begin_hunk_1_@_RNvNtCs4tP8yUXWbFU_18libsignal_protocol12group_cipher14get_sender_key:bb.a
  %i.bb = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !209, !noundef !4 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bc, label %bb.aj, label %.thread135, !prof !10

bb.aj:                                            ; preds = %bb.ai
  %i.bg = load i64, ptr %i.bf, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.be, i64 %i.bg) #23
          to label %bb.f unwind label %bb.at

.thread135:                                       ; preds = %bb.ai
  %i.bh = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bi = icmp samesign ugt i64 %i.be, 35
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.bh, ptr noundef nonnull align 1 dereferenceable(36) @40, i64 36, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775784, ptr %i.bj, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bh, ptr %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 36, ptr %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 7, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %bb.ar, %.thread135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderChainKeyEBF_.exit121 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.at, %.loopexit.split-lp, %bb.n, %bb.r, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.al ], [ %i.ag, %bb.n ], [ %lpad.thr_comm, %bb.at ], [ %i.ai, %bb.r ], [ %.pn, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderChainKeyEBF_.exit121: ; preds = %bb.ak
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %bb.p

bb.an:                                            ; preds = %bb.d
  %i.bm = load i64, ptr %i.l, align 8, !range !5, !noundef !4
  %.not105 = icmp eq i64 %i.bm, -1
  br i1 %.not105, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ak

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bn = load atomic i64, ptr @_RNvCsdbmLU2M1sR8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 6
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp samesign ugt i64 %i.bn, 2
  br i1 %i.bp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %3, ptr %i.k, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs_NtCsS4eg1WQ3uw_4uuid3fmtNtB6_4UuidNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.q, ptr %i.bq, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs8_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @39, ptr %i.j, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 32, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @39, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 32, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @42, ptr %i.bu, align 8
  invoke void @_RINvNtCsdbmLU2M1sR8_3log13___private_api3loguNtB2_12GlobalLoggerECs4tP8yUXWbFU_18libsignal_protocol(ptr noundef nonnull @41, ptr noundef nonnull %i.k, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.as unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap, %bb.as
  %i.bv = phi i32 [ %2, %bb.ap ], [ %.pre, %bb.as ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775785, ptr %i.bw, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.u, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bv, ptr %.sroa.515.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.ak

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre = load i32, ptr %i.q, align 4
  br label %bb.ar

bb.at:                                            ; preds = %bb.aq, %bb.d, %bb.aj, %bb.ag, %bb.af
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderChainKeyEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p) #21
          to label %common.resume unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [176 x i8], align 8               ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [144 x i8], align 8               ; 10 uses
  %i.h = alloca [32 x i8], align 1                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMsa_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_7KeyPair19calculate_agreement(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
  %i.l = load i64, ptr %i.k, align 8, !range !11, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.08.0.copyload = load ptr, ptr %i.n, align 8 ; 5 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = ptrtoint ptr %.sroa.08.0.copyload to i64 ; 2 uses
  %trunc = trunc i64 %i.o to i8
  switch i8 %trunc, label %bb.ae [
    i8 0, label %bb.ai
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.e:                                             ; preds = %bb.c
  %i.q = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.h unwind label %bb.g       ; 2 uses

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29: ; preds = %bb.j, %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.w, %bb.i ], [ %i.w, %bb.j ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.49.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload, i64 noundef range(i64 1, 0) %.sroa.49.0.copyload, i64 noundef 1) #19
  br label %common.resume

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29

bb.h:                                             ; preds = %bb.e
  %i.t = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.q, 1        ; 3 uses
  %i.v = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef range(i64 1, 0) %i.u, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29

bb.k:                                             ; preds = %bb.h, %bb.o
  %.sink61 = phi ptr [ %i.ai, %bb.o ], [ %i.t, %bb.h ] ; 3 uses
  %.sink = phi { ptr, i64 } [ %i.ak, %bb.o ], [ %i.v, %bb.h ] ; 2 uses
  %.sink55 = phi i64 [ %i.aj, %bb.o ], [ %i.u, %bb.h ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink61) ]
  %i.y = extractvalue { ptr, i64 } %.sink, 0      ; 2 uses
  %i.z = extractvalue { ptr, i64 } %.sink, 1      ; 3 uses
  store ptr %.sroa.08.0.copyload, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.49.0.copyload, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sink61, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sink55, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.z, ptr %i.ae, align 8
  invoke void @_RNvXs0_NtCs6i54tJFfzR_5alloc5sliceSINtNtB7_5boxed3BoxShEINtB5_6ConcathE6concatCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 3)
          to label %bb.s unwind label %bb.r

bb.l:                                             ; preds = %bb.y, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31: ; preds = %bb.q, %bb.p, %bb.n
  %.pn16 = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.al, %bb.p ], [ %i.al, %bb.q ] ; 2 uses
  %i.ag = icmp eq i64 %.sroa.49.0.copyload, 0
  br i1 %i.ag, label %common.resume, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload, i64 noundef range(i64 1, 0) %.sroa.49.0.copyload, i64 noundef 1) #19
  br label %common.resume

bb.n:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31

bb.o:                                             ; preds = %bb.d
  %i.ai = extractvalue { ptr, i64 } %i.p, 0       ; 3 uses
  %i.aj = extractvalue { ptr, i64 } %i.p, 1       ; 3 uses
  %i.ak = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.k unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31

bb.r:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #21
  br label %common.resume

bb.s:                                             ; preds = %bb.k
  %i.ao = icmp eq i64 %.sroa.49.0.copyload, 0
  br i1 %i.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload, i64 noundef range(i64 1, 0) %.sroa.49.0.copyload, i64 noundef 1) #19, !noalias !248
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ap = icmp eq i64 %.sink55, 0
  br i1 %i.ap, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink61, i64 noundef range(i64 1, 0) %.sink55, i64 noundef 1) #19, !noalias !248
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i: ; preds = %bb.u, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %i.aq = icmp eq i64 %i.z, 0
  br i1 %i.aq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef range(i64 1, 0) %i.z, i64 noundef 1) #19, !noalias !248
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.y, %bb.w
  %.pn18 = phi { ptr, i32 } [ %i.ar, %bb.w ], [ %i.az, %bb.y ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #21
          to label %common.resume unwind label %bb.l

bb.w:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit33, %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.av)
          to label %bb.x unwind label %bb.w

bb.x:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.aw, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @43, ptr %i.d, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 20, ptr %i.ax, align 8
  %i.ay = invoke noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull %i.h, i64 noundef 32)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !249
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.c, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #24, !srcloc !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %i.ba)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.l

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ay, label %bb.aa, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #23
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.aa
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !250
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.g, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.g) #24, !srcloc !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %i.bb)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit33 unwind label %bb.w

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit33: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bc, ptr noundef nonnull readonly dereferenceable(32) %4, ptr noundef nonnull readonly %i.bd)
          to label %_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.w

_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit33
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val.i = load i64, ptr %i.be, align 8, !alias.scope !251, !noundef !4 ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val8.i = load i64, ptr %i.bf, align 8, !alias.scope !251, !noundef !4 ; 6 uses
  %i.bg = sub i64 %.val8.i, %.val.i               ; 8 uses
  %.not.i = icmp eq i64 %.val8.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor0E0EB3g_.exit, label %iter.check

iter.check:                                       ; preds = %_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol.exit
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !252, !nonnull !4, !noundef !4 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !252, !nonnull !4, !noundef !4 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bi = getelementptr nuw i8, ptr %.val.i.i, i64 %.val.i
  %i.bj = getelementptr i8, ptr %.val.i.i, i64 %.val8.i
  %i.bk = getelementptr nuw i8, ptr %.val1.i.i, i64 %.val.i
  %i.bl = getelementptr i8, ptr %.val1.i.i, i64 %.val8.i
  %bound0 = icmp ult ptr %i.bi, %i.bl
  %bound1 = icmp ult ptr %i.bk, %i.bj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check65 = icmp ult i64 %i.bg, 32
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %i.bg, 28
  %n.vec = and i64 %i.bg, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = add i64 %index, %.val.i                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.bn ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <16 x i8>, ptr %i.bp, align 1, !alias.scope !253, !noalias !251
  %wide.load66 = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !253, !noalias !251
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load67 = load <16 x i8>, ptr %i.bo, align 1, !alias.scope !254, !noalias !255
  %wide.load68 = load <16 x i8>, ptr %i.br, align 1, !alias.scope !254, !noalias !255
  %i.bs = xor <16 x i8> %wide.load67, %wide.load
  %i.bt = xor <16 x i8> %wide.load68, %wide.load66
  store <16 x i8> %i.bs, ptr %i.bo, align 1, !alias.scope !254, !noalias !255
  store <16 x i8> %i.bt, ptr %i.br, align 1, !alias.scope !254, !noalias !255
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor0E0EB3g_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !258

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec69 = and i64 %i.bg, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.bv = add i64 %index70, %.val.i               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.bv
  %wide.load71 = load <4 x i8>, ptr %i.bx, align 1, !alias.scope !253, !noalias !251
  %wide.load72 = load <4 x i8>, ptr %i.bw, align 1, !alias.scope !254, !noalias !255
  %i.by = xor <4 x i8> %wide.load72, %wide.load71
  store <4 x i8> %i.by, ptr %i.bw, align 1, !alias.scope !254, !noalias !255
  %index.next73 = add nuw i64 %index70, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next73, %n.vec69
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !246

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %i.bg, %n.vec69
  br i1 %cmp.n74, label %_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor0E0EB3g_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec69, %vec.epilog.middle.block ] ; 4 uses
  %i.ca = sub i64 %.val8.i, %.val.i
  %i.cb = xor i64 %.sroa.0.010.i.ph, -1
  %i.cc = add i64 %.val8.i, %i.cb
  %xtraiter = and i64 %i.ca, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cd = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.ce = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.ce
  %.val9.i.prol = load i8, ptr %i.cg, align 1, !noalias !251, !noundef !4
  %i.ch = load i8, ptr %i.cf, align 1, !alias.scope !259, !noalias !251, !noundef !4
  %i.ci = xor i8 %i.ch, %.val9.i.prol
  store i8 %i.ci, ptr %i.cf, align 1, !alias.scope !259, !noalias !251
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cd, %vec.epilog.scalar.ph.prol ]
  %i.cj = icmp eq i64 %i.cc, %.val.i
  br i1 %i.cj, label %_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor0E0EB3g_.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.cp, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ck = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.ck
  %.val9.i = load i8, ptr %i.cm, align 1, !noalias !251, !noundef !4
  %i.cn = load i8, ptr %i.cl, align 1, !alias.scope !259, !noalias !251, !noundef !4
  %i.co = xor i8 %i.cn, %.val9.i
  store i8 %i.co, ptr %i.cl, align 1, !alias.scope !259, !noalias !251
  %i.cp = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.reass ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %.reass
  %.val9.i.1 = load i8, ptr %i.cr, align 1, !noalias !251, !noundef !4
  %i.cs = load i8, ptr %i.cq, align 1, !alias.scope !259, !noalias !251, !noundef !4
  %i.ct = xor i8 %i.cs, %.val9.i.1
  store i8 %i.ct, ptr %i.cq, align 1, !alias.scope !259, !noalias !251
  %exitcond.not.i.1 = icmp eq i64 %i.cp, %i.bg
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor0E0EB3g_.exit, label %vec.epilog.scalar.ph, !llvm.loop !247

_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor0E0EB3g_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 1 dereferenceable(32) %i.h, i64 32, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor0E0EB3g_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29, %bb.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31, %bb.m, %bb.r, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.cv, %bb.ab ], [ %.pn, %bb.f ], [ %.pn18, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit ], [ %i.an, %bb.r ], [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29 ], [ %.pn16, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31 ], [ %.pn16, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RINvXs2_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor0E0EB3g_.exit
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ai, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  ret void

bb.ae:                                            ; preds = %bb.b
  unreachable

bb.af:                                            ; preds = %bb.b
  %.sroa.010.1.extract.shift = lshr i64 %i.o, 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.b
  %.sroa.7.sroa.5.0.extract.shift = and i64 %.sroa.49.0.copyload, -256
  br label %bb.ai

bb.ah:                                            ; preds = %bb.b
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %bb.ah, %bb.ag, %bb.af
  %.sroa.012.0 = phi i64 [ -9223372036854775798, %bb.ah ], [ -9223372036854775800, %bb.af ], [ -9223372036854775799, %bb.ag ], [ -9223372036854775801, %bb.b ]
  %.sroa.7.sroa.0.0 = phi i64 [ 0, %bb.ah ], [ %.sroa.010.1.extract.shift, %bb.af ], [ %.sroa.49.0.copyload, %bb.ag ], [ 0, %bb.b ]
  %.sroa.7.sroa.5.sroa.0.0 = phi i64 [ 0, %bb.ah ], [ 0, %bb.af ], [ %.sroa.7.sroa.5.0.extract.shift, %bb.ag ], [ 0, %bb.b ]
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7.sroa.0.0.insert.ext = and i64 %.sroa.7.sroa.0.0, 255
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.sroa.5.sroa.0.0, %.sroa.7.sroa.0.0.insert.ext
  store i64 %.sroa.7.sroa.0.0.insert.insert, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v226compute_authentication_tag(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %4, ptr noalias nofree noundef readonly captures(none) dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [176 x i8], align 8               ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 10 uses
  %i.g = alloca [16 x i8], align 1                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 15 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvMs8_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_10PrivateKey19calculate_agreement(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
  %i.k = load i64, ptr %i.i, align 8, !range !11, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.m, align 8 ; 2 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %.sroa.07.0.copyload to i64 ; 2 uses
  %trunc = trunc i64 %i.n to i8
  switch i8 %trunc, label %bb.aj [
    i8 0, label %bb.an
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.o = icmp sgt i64 %.sroa.48.0.copyload, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.48.0.copyload, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 8 uses
  store ptr %.sroa.07.0.copyload, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 19 uses
  store i64 %.sroa.48.0.copyload, ptr %i.q, align 8
  %i.r = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %4)
          to label %bb.e unwind label %bb.d       ; 2 uses

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.ad, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.r, %bb.q, %bb.n, %bb.m, %bb.g, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.bt, %bb.aa ], [ %i.bj, %bb.w ], [ %i.ax, %bb.r ], [ %i.an, %bb.n ], [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ %i.an, %bb.m ], [ %i.ax, %bb.q ], [ %i.bj, %bb.v ], [ %i.bt, %bb.z ], [ %i.cb, %bb.ad ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #21
          to label %common.resume unwind label %bb.t

bb.d:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit34, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit55, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit49, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit43, %bb.k, %bb.j, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.e:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, i64 } %i.r, 0        ; 5 uses
  %i.u = extractvalue { ptr, i64 } %i.r, 1        ; 7 uses
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.u)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  %i.v = load i64, ptr %i.q, align 8, !alias.scope !292, !noundef !4 ; 2 uses
  %i.w = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.w)
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit34, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef range(i64 1, 0) %i.u, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.h:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !292, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.t, i64 %i.u, i1 false)
  %.pre.i = load i64, ptr %i.q, align 8, !alias.scope !292
  %i.ab = add i64 %.pre.i, %i.u
  store i64 %i.ab, ptr %i.q, align 8, !alias.scope !292
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef range(i64 1, 0) %i.u, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit34

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit34: ; preds = %.noexc, %bb.h
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 32)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit34
  %i.ac = load i64, ptr %i.q, align 8, !alias.scope !293, !noundef !4 ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %i.p, align 8, !alias.scope !293, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 1 dereferenceable(32) %5, i64 32, i1 false)
  %i.ag = add nuw i64 %i.ac, 32
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !293
  br i1 %3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.u unwind label %bb.d       ; 2 uses

bb.k:                                             ; preds = %bb.i
  %i.ai = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.l unwind label %bb.d       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0      ; 5 uses
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1      ; 7 uses
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ak)
          to label %.noexc40 unwind label %bb.m

.noexc40:                                         ; preds = %bb.l
  %i.al = load i64, ptr %i.q, align 8, !alias.scope !294, !noundef !4 ; 2 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  %.not.i38 = icmp eq i64 %i.ak, 0
  br i1 %.not.i38, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit43, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = icmp eq i64 %i.ak, 0
  br i1 %i.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef range(i64 1, 0) %i.ak, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.o:                                             ; preds = %.noexc40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ap = load ptr, ptr %i.p, align 8, !alias.scope !294, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %i.aj, i64 %i.ak, i1 false)
  %.pre.i39 = load i64, ptr %i.q, align 8, !alias.scope !294
  %i.ar = add i64 %.pre.i39, %i.ak
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !294
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef range(i64 1, 0) %i.ak, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit43

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit43: ; preds = %.noexc40, %bb.o
  %i.as = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.p unwind label %bb.d       ; 2 uses

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit43
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 5 uses
  %i.au = extractvalue { ptr, i64 } %i.as, 1      ; 7 uses
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.au)
          to label %.noexc46 unwind label %bb.q

.noexc46:                                         ; preds = %bb.p
  %i.av = load i64, ptr %i.q, align 8, !alias.scope !295, !noundef !4 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, -1
  call void @llvm.assume(i1 %i.aw)
  %.not.i44 = icmp eq i64 %i.au, 0
  br i1 %.not.i44, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit49, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, 0) %i.au, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.s:                                             ; preds = %.noexc46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.az = load ptr, ptr %i.p, align 8, !alias.scope !295, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %i.at, i64 %i.au, i1 false)
  %.pre.i45 = load i64, ptr %i.q, align 8, !alias.scope !295
  %i.bb = add i64 %.pre.i45, %i.au
  store i64 %i.bb, ptr %i.q, align 8, !alias.scope !295
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, 0) %i.au, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit49

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit49: ; preds = %.noexc58, %.noexc46, %bb.ab, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bc = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.bd = load i64, ptr %i.q, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE7extractCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.bd)
          to label %bb.ac unwind label %bb.d

bb.t:                                             ; preds = %bb.ad, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.u:                                             ; preds = %bb.j
  %i.bf = extractvalue { ptr, i64 } %i.ah, 0      ; 5 uses
  %i.bg = extractvalue { ptr, i64 } %i.ah, 1      ; 7 uses
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.bg)
          to label %.noexc52 unwind label %bb.v

.noexc52:                                         ; preds = %bb.u
  %i.bh = load i64, ptr %i.q, align 8, !alias.scope !296, !noundef !4 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bi)
  %.not.i50 = icmp eq i64 %i.bg, 0
  br i1 %.not.i50, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit55, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef range(i64 1, 0) %i.bg, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.x:                                             ; preds = %.noexc52
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  %i.bl = load ptr, ptr %i.p, align 8, !alias.scope !296, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.bf, i64 %i.bg, i1 false)
  %.pre.i51 = load i64, ptr %i.q, align 8, !alias.scope !296
  %i.bn = add i64 %.pre.i51, %i.bg
  store i64 %i.bn, ptr %i.q, align 8, !alias.scope !296
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef range(i64 1, 0) %i.bg, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit55

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit55: ; preds = %.noexc52, %bb.x
  %i.bo = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.y unwind label %bb.d       ; 2 uses

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit55
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0      ; 5 uses
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1      ; 7 uses
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.bq)
          to label %.noexc58 unwind label %bb.z

.noexc58:                                         ; preds = %bb.y
  %i.br = load i64, ptr %i.q, align 8, !alias.scope !297, !noundef !4 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bs)
  %.not.i56 = icmp eq i64 %i.bq, 0
  br i1 %.not.i56, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit49, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = icmp eq i64 %i.bq, 0
  br i1 %i.bu, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef range(i64 1, 0) %i.bq, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.ab:                                            ; preds = %.noexc58
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.bv = load ptr, ptr %i.p, align 8, !alias.scope !297, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull readonly align 1 %i.bp, i64 %i.bq, i1 false)
  %.pre.i57 = load i64, ptr %i.q, align 8, !alias.scope !297
  %i.bx = add i64 %.pre.i57, %i.bq
  store i64 %i.bx, ptr %i.q, align 8, !alias.scope !297
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef range(i64 1, 0) %i.bq, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit49

bb.ac:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit49
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.by, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @45, ptr %i.d, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 27, ptr %i.bz, align 8
  %i.ca = invoke noundef zeroext i1 @_RNvMs_Cs7QbGsRJVG1P_4hkdfINtB4_11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EE17expand_multi_infoCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull %i.g, i64 noundef 16)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.f, ptr nonnull align 1 %i.c, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.f) #24, !srcloc !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %i.cc)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.t

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ca, label %bb.af, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, !prof !10

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #23
          to label %.noexc63 unwind label %bb.ad

.noexc63:                                         ; preds = %bb.af
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(144) %i.f, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(144) %i.f) #24, !srcloc !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull %i.cd)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit65 unwind label %bb.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit65: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 16, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit65
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.ag ], [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit65
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.an, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  ret void

bb.aj:                                            ; preds = %bb.b
  unreachable

bb.ak:                                            ; preds = %bb.b
  %.sroa.09.1.extract.shift = lshr i64 %i.n, 8
  br label %bb.an

bb.al:                                            ; preds = %bb.b
  %.sroa.7.sroa.5.0.extract.shift = and i64 %.sroa.48.0.copyload, -256
  br label %bb.an

bb.am:                                            ; preds = %bb.b
  br label %bb.an

bb.an:                                            ; preds = %bb.b, %bb.am, %bb.al, %bb.ak
  %.sroa.011.0 = phi i64 [ -9223372036854775798, %bb.am ], [ -9223372036854775800, %bb.ak ], [ -9223372036854775799, %bb.al ], [ -9223372036854775801, %bb.b ]
  %.sroa.7.sroa.0.0 = phi i64 [ 0, %bb.am ], [ %.sroa.09.1.extract.shift, %bb.ak ], [ %.sroa.48.0.copyload, %bb.al ], [ 0, %bb.b ]
  %.sroa.7.sroa.5.sroa.0.0 = phi i64 [ 0, %bb.am ], [ 0, %bb.ak ], [ %.sroa.7.sroa.5.0.extract.shift, %bb.al ], [ 0, %bb.b ]
  store i64 %.sroa.011.0, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7.sroa.0.0.insert.ext = and i64 %.sroa.7.sroa.0.0, 255
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.sroa.5.sroa.0.0, %.sroa.7.sroa.0.0.insert.ext
  store i64 %.sroa.7.sroa.0.0.insert.insert, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ai
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs4tP8yUXWbFU_18libsignal_protocol3kemNtNtB2_9kyber102410ParametersNtB2_13DynParameters11decapsulateB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 4 uses
  %i.b = alloca [1568 x i8], align 1              ; 6 uses
  %i.c = alloca [3168 x i8], align 1              ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !308
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !306, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 3168
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !alias.scope !306, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.028.0.copyload.i = load i8, ptr %i.g, align 1, !noalias !308
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3167) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3167) %.sroa.2.0..sroa_idx.i, i64 3167, i1 false), !noalias !308
  store i8 %.sroa.028.0.copyload.i, ptr %i.c, align 1, !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !308
  %i.h = icmp eq i64 %4, 1568
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.035.0.copyload.i = load i8, ptr %3, align 1, !alias.scope !307
  %.sroa.236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1567) %.sroa.424.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(1567) %.sroa.236.0..sroa_idx.i, i64 1567, i1 false), !noalias !309
  store i8 %.sroa.035.0.copyload.i, ptr %i.b, align 1, !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !308
  call void @_RNvNtNtCseyFJilwn03E_14libcrux_ml_kem9mlkem10245kyber11decapsulate(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3168) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1568) %i.b), !noalias !308
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !310
  %i.i = call noundef dereferenceable_or_null(32) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 32, 1569) 32, i64 noundef 1) #19, !noalias !310 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !308
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 32) #23, !noalias !308
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0 = phi i64 [ -9223372036854775775, %bb.a ], [ -9223372036854775774, %bb.d ]
  %.sroa.5.0 = phi i64 [ %i.e, %bb.a ], [ %4, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !308
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.a, i64 range(i64 32, 1569) 32, i1 false), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !308
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 32, ptr %i.l, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs4tP8yUXWbFU_18libsignal_protocol3kemNtNtB2_9kyber102410ParametersNtB2_13DynParameters11encapsulateB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 35 uses
  %i.b = alloca [1600 x i8], align 1              ; 6 uses
  %i.c = alloca [1568 x i8], align 1              ; 5 uses
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val2 = load ptr, ptr %i.e, align 8            ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !327
  %i.g = icmp eq i64 %.val1, 1568
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1568) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1568) %.val, i64 1568, i1 false), !noalias !327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
end_hunk_1
begin_hunk_2_@_RNvXNtCs4tP8yUXWbFU_18libsignal_protocol3kemNtNtB2_9kyber102410ParametersNtB2_13DynParameters11encapsulateB4_:bb.a
  %i.at = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.au = trunc i32 %i.at to i8
  %i.av = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.aw = trunc i32 %i.av to i8
  %i.ax = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.ay = trunc i32 %i.ax to i8
  %i.az = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.ba = trunc i32 %i.az to i8
  %i.bb = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.be = trunc i32 %i.bd to i8
  %i.bf = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.bq = trunc i32 %i.bp to i8
  %i.br = tail call noundef i32 %.val2(ptr noundef nonnull %3) #25, !noalias !330, !inline_history !322
  %i.bs = trunc i32 %i.br to i8
  store i8 %i.i, ptr %i.a, align 1, !alias.scope !331, !noalias !327
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.m, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.o, ptr %.sroa.6.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.q, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.s, ptr %.sroa.8.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.u, ptr %.sroa.9.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.w, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.y, ptr %.sroa.11.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.aa, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.ac, ptr %.sroa.13.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.ae, ptr %.sroa.14.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.ag, ptr %.sroa.15.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.ai, ptr %.sroa.16.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.ak, ptr %.sroa.17.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.am, ptr %.sroa.18.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.19.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.ao, ptr %.sroa.19.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.aq, ptr %.sroa.20.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %i.as, ptr %.sroa.21.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.au, ptr %.sroa.22.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 %i.aw, ptr %.sroa.23.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %i.ay, ptr %.sroa.24.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %i.ba, ptr %.sroa.25.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.bc, ptr %.sroa.26.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %i.be, ptr %.sroa.27.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 %i.bg, ptr %.sroa.28.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i8 %i.bi, ptr %.sroa.29.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.30.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  store i8 %i.bk, ptr %.sroa.30.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.31.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 %i.bm, ptr %.sroa.31.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.32.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 %i.bo, ptr %.sroa.32.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.33.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i8 %i.bq, ptr %.sroa.33.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  %.sroa.34.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  store i8 %i.bs, ptr %.sroa.34.0..sroa_idx.i.i.i, align 1, !alias.scope !331, !noalias !327
  call void @_RNvNtNtCseyFJilwn03E_14libcrux_ml_kem9mlkem10245kyber11encapsulate(ptr noalias nofree noundef nonnull sret([1600 x i8]) align 1 captures(address) dereferenceable(1600) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1568) %i.c, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(32) %i.a), !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !327
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !332
  %i.bt = call noundef dereferenceable_or_null(32) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 32, 1569) 32, i64 noundef 1) #19, !noalias !332 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 32) #23, !noalias !327
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 range(i64 32, 1569) 32, i1 false), !noalias !327
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !333
  %i.bv = call noundef dereferenceable_or_null(1568) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 32, 1569) 1568, i64 noundef 1) #19, !noalias !333 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1568) #23
          to label %bb.f unwind label %bb.g, !noalias !327

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef range(i64 1, 0) 32, i64 noundef 1) #19, !noalias !327
  resume { ptr, i32 } %i.bx

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775775, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1568) %i.bv, ptr noundef nonnull readonly align 1 dereferenceable(1568) %i.b, i64 range(i64 32, 1569) 1568, i1 false), !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.by, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 32, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bv, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1568, ptr %.sroa.65.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs4tP8yUXWbFU_18libsignal_protocol3kemNtNtB2_9kyber102410ParametersNtB2_13DynParameters8generateB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [1568 x i8], align 1              ; 4 uses
  %i.c = alloca [3168 x i8], align 1              ; 4 uses
  %i.d = alloca [4736 x i8], align 1              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.e, align 8, !alias.scope !348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !349
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge7.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.f = tail call noundef i32 %.val(ptr noundef nonnull %2) #25, !noalias !350, !inline_history !347
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %storemerge7.i.i.i.i.i
  store i8 %i.g, ptr %i.h, align 1, !noalias !349
  %i.i = add nuw nsw i64 %storemerge7.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.i, 64
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvYDNtCsfNFcxEHTA3o_9rand_core9CryptoRngEL_NtNtCs4N9X91BVcYz_4rand3rng3Rng6randomAhj40_ECs4tP8yUXWbFU_18libsignal_protocol.exit.i, label %bb.b

_RINvYDNtCsfNFcxEHTA3o_9rand_core9CryptoRngEL_NtNtCs4N9X91BVcYz_4rand3rng3Rng6randomAhj40_ECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.b
  call void @_RNvNtNtCseyFJilwn03E_14libcrux_ml_kem9mlkem10245kyber17generate_key_pair(ptr noalias nofree noundef nonnull sret([4736 x i8]) align 1 captures(address) dereferenceable(4736) %i.d, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(64) %i.a), !noalias !349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3168) %i.c, ptr noundef nonnull align 1 dereferenceable(3168) %i.d, i64 3168, i1 false), !noalias !349
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 3168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1568) %i.b, ptr noundef nonnull align 1 dereferenceable(1568) %i.j, i64 1568, i1 false), !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !349
  %i.k = call { ptr, i64 } @_RNvXs7_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_11KeyMaterialNtB5_6PublicEINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCseyFJilwn03E_14libcrux_ml_kem5types14MlKemPublicKeyKj620_EE4fromB7_(ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(1568) %i.b), !noalias !349 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 4 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 3 uses
  %i.n = invoke { ptr, i64 } @_RNvXs8_NtCs4tP8yUXWbFU_18libsignal_protocol3kemINtB5_11KeyMaterialNtB5_6SecretEINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCseyFJilwn03E_14libcrux_ml_kem5types15MlKemPrivateKeyKjc60_EE4fromB7_(ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(3168) %i.c)
          to label %_RINvXNtNtCs4tP8yUXWbFU_18libsignal_protocol3kem9kyber1024NtB3_10ParametersNtB5_10Parameters8generateDNtCsfNFcxEHTA3o_9rand_core9CryptoRngEL_EB7_.exit unwind label %bb.c, !noalias !349 ; 2 uses

bb.c:                                             ; preds = %_RINvYDNtCsfNFcxEHTA3o_9rand_core9CryptoRngEL_NtNtCs4N9X91BVcYz_4rand3rng3Rng6randomAhj40_ECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem11KeyMaterialNtBE_6PublicEEBG_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef range(i64 1, 0) %i.m, i64 noundef 1) #19, !noalias !349
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem11KeyMaterialNtBE_6PublicEEBG_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4tP8yUXWbFU_18libsignal_protocol3kem11KeyMaterialNtBE_6PublicEEBG_.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.o

_RINvXNtNtCs4tP8yUXWbFU_18libsignal_protocol3kem9kyber1024NtB3_10ParametersNtB5_10Parameters8generateDNtCsfNFcxEHTA3o_9rand_core9CryptoRngEL_EB7_.exit: ; preds = %_RINvYDNtCsfNFcxEHTA3o_9rand_core9CryptoRngEL_NtNtCs4N9X91BVcYz_4rand3rng3Rng6randomAhj40_ECs4tP8yUXWbFU_18libsignal_protocol.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.q = extractvalue { ptr, i64 } %i.n, 0
  %i.r = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.l, ptr %0, align 8, !alias.scope !349
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.s, align 8, !alias.scope !349
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.t, align 8, !alias.scope !349
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %i.u, align 8, !alias.scope !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsfkg6qDyjgHi_4hmac9block_apiINtB2_8HmacCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs4tP8yUXWbFU_18libsignal_protocol3kem9kyber1024NtB2_10ParametersNtB4_10Parameters11decapsulate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 4 uses
  %i.b = alloca [1568 x i8], align 1              ; 6 uses
  %i.c = alloca [3168 x i8], align 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.e, 3168
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.028.0.copyload = load i8, ptr %i.g, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3167) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3167) %.sroa.2.0..sroa_idx, i64 3167, i1 false)
  store i8 %.sroa.028.0.copyload, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = icmp eq i64 %3, 1568
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.i, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %.sroa.035.0.copyload = load i8, ptr %2, align 1
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1567) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1567) %.sroa.236.0..sroa_idx, i64 1567, i1 false)
  store i8 %.sroa.035.0.copyload, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCseyFJilwn03E_14libcrux_ml_kem9mlkem10245kyber11decapsulate(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3168) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1568) %i.b)
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !353
  %i.j = call noundef dereferenceable_or_null(32) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 32, 1569) 32, i64 noundef 1) #19, !noalias !353 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.l, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 32) #23
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.a, i64 range(i64 32, 1569) 32, i1 false)
  store ptr %i.j, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 32, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressENCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB2K_17InMemSessionStore22load_existing_sessions0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2O_5error19SignalProtocolErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2O_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !379, !nonnull !4, !align !7, !noundef !4 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !383, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !383, !nonnull !4, !noundef !4
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressENCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB2L_17InMemSessionStore22load_existing_sessions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2P_5error19SignalProtocolErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callRNtNtNtB2P_5state7session13SessionRecordINtNtNtB7_3ops12control_flow11ControlFlowB70_ENcNtB7E_5Break0E0B7E_EB2P_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %0, align 8, !alias.scope !383
  %.val8.i.i.i = load ptr, ptr %i.d, align 8, !noalias !384, !nonnull !4, !align !7, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !384
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !385, !noalias !382, !nonnull !4, !align !7, !noundef !4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !386, !noalias !387, !noundef !4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32
  %i.o = tail call noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val8.i.i.i), !noalias !387 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.p = lshr i64 %i.o, 57
  %i.q = trunc nuw nsw i64 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !390, !noalias !387, !noundef !4 ; 2 uses
  %i.t = load ptr, ptr %.val.i.i.i.i, align 8, !alias.scope !390, !noalias !387, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.am, %bb.f ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.o, %bb.c ], [ %i.an, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.s ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.w, align 1, !noalias !391 ; 2 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i, %i.v
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.not32.i.i.i.i.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not32.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i.i.i.i.i.i = phi i16 [ %i.al, %bb.e ], [ %i.y, %bb.d ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.aa
  %i.ac = and i64 %i.ab, %i.s
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [400 x i8], ptr %i.t, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -400
  %i.ag = tail call noundef zeroext i1 @_RNvXCsfBDUjroi3FF_9hashbrownNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressINtB2_10EquivalentBq_E10equivalentCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val8.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.af), !noalias !392
  br i1 %i.ag, label %_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.thread.i.i.i.i, label %bb.e, !prof !13

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.i.i.i.i, !prof !10

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = add i16 %.sroa.06.0.i33.i.i.i.i.i.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.06.0.i33.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.am = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i, 16  ; 2 uses
  %i.an = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.am
  br label %bb.d

_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -368
  br label %1

_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.b
  call void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val8.i.i.i), !noalias !384
  %i.ap = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !range !393, !noalias !387, !noundef !4
  %.sroa.03.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %i.aq, ptr %.sroa.03.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !384
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @17, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !384
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 22, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 8, !noalias !384
  %.sroa.0.0.copyload.pr.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !384 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !384 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i, label %1, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.i.i.i.i
  %i.ar = load i64, ptr %i.c, align 8, !range !8, !alias.scope !394, !noalias !395, !noundef !4
  %i.as = icmp eq i64 %i.ar, -2
  br i1 %i.as, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEEEB1O_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEEEB1O_.exit.i.i.i.i.i unwind label %bb.i, !noalias !396

1:                                                ; preds = %_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.i.i.i.i, %_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.thread.i.i.i.i
  %.sroa.4.0.copyload6.i.i.i.i = phi ptr [ %i.ao, %_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.thread.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %_RNCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB7_17InMemSessionStore22load_existing_sessions0Bb_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload6.i.i.i.i) ]
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.pr.i.i.i.i, ptr %i.c, align 8, !alias.scope !381, !noalias !395
  %.sroa.58.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i.i.i, align 8, !alias.scope !381, !noalias !395
  %.sroa.611.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !397
  resume { ptr, i32 } %i.at

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEEEB1O_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  store i64 %.sroa.0.0.copyload.pr.i.i.i.i, ptr %i.c, align 8, !alias.scope !381, !noalias !395
  %.sroa.58.0..8.val.sroa_idx9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i.i.i, align 8, !alias.scope !381, !noalias !395
  %.sroa.611.0..8.val.sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611.0..8.val.sroa_idx12.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !397
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEEEB1O_.exit.i.i.i.i.i, %1
  %.sroa.4.1.i.i.i.i.i = phi ptr [ null, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEEEB1O_.exit.i.i.i.i.i ], [ %.sroa.4.0.copyload6.i.i.i.i, %1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !384
  br label %_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressENCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB2L_17InMemSessionStore22load_existing_sessions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2P_5error19SignalProtocolErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callRNtNtNtB2P_5state7session13SessionRecordINtNtNtB7_3ops12control_flow11ControlFlowB70_ENcNtB7E_5Break0E0B7E_EB2P_.exit

_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressENCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB2L_17InMemSessionStore22load_existing_sessions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2P_5error19SignalProtocolErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callRNtNtNtB2P_5state7session13SessionRecordINtNtNtB7_3ops12control_flow11ControlFlowB70_ENcNtB7E_5Break0E0B7E_EB2P_.exit: ; preds = %bb.a, %bb.j
  %.sroa.0.0.i = phi ptr [ %.sroa.4.1.i.i.i.i.i, %bb.j ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCsbwPL7qM37dJ_14libsignal_core7address15ProtocolAddressENCNvMs5_NtNtCs4tP8yUXWbFU_18libsignal_protocol7storage5inmemNtB2K_17InMemSessionStore22load_existing_sessions0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2O_5error19SignalProtocolErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !7, !noundef !4
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %.not = icmp eq i64 %i.c, -2
  %.val = load ptr, ptr %1, align 8, !nonnull !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %.sink = select i1 %.not, i64 %i.h, i64 0
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB3k_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3S_8for_each4callTjB1u_ENCINvMs1_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5p_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB5p_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !411
  call fastcc void @_RNvXs9_NtCs4tP8yUXWbFU_18libsignal_protocol11sender_keysNtB5_14SenderKeyStateNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #25, !noalias !410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !413, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !416, !nonnull !4, !align !7, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !416, !nonnull !4, !align !7, !noundef !4
  %i.h = load i64, ptr %i.g, align 8, !noalias !417, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !417, !nonnull !4, !noundef !4
  %i.k = getelementptr [112 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr [112 x i8], ptr %i.k, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !418
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !416, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !417, !noundef !4
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !noalias !417
  %i.q = icmp eq i64 %i.d, -1
  br i1 %i.q, label %bb.b, label %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2J_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3h_8for_each4callTjBV_ENCINvMs1_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB4M_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtB4M_4iter4IterBV_EEE0E0E0E0BZ_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !419
  unreachable

_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2J_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3h_8for_each4callTjBV_ENCINvMs1_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB4M_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtB4M_4iter4IterBV_EEE0E0E0E0BZ_.exit: ; preds = %bb.a
  %i.r = add nuw i64 %i.d, 1
  store i64 %i.r, ptr %i.c, align 8, !alias.scope !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !411
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStatemuNCNvMs2_B1w_NtB1w_15SenderKeyRecord21chain_ids_for_logging0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB4B_3VecmE14extend_trustedINtBT_3MapINtNtNtNtB4D_11collections9vec_deque4iter4IterB1u_EB2B_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.val = load i32, ptr %i.b, align 4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !429, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !429, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  store i32 %.val, ptr %i.g, align 4, !noalias !429
  %i.h = add i64 %i.f, 1
  store i64 %i.h, ptr %i.e, align 8, !alias.scope !429
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB46_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB3i_NCINvMB3l_B3i_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB65_9EnumeratepEB4u_4fold9enumerateB1D_uNCINvNvB4u_8for_each4callTjB1D_ENCINvMs1_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB7G_8VecDequeB1D_E10write_iterIB4h_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7G_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutB1H_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !449
  call fastcc void @_RNvXs9_NtCs4tP8yUXWbFU_18libsignal_protocol11sender_keysNtB5_14SenderKeyStateNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1), !noalias !448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !451, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !452, !noundef !4
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !noalias !452
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !455, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !458, !nonnull !4, !align !7, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !458, !nonnull !4, !align !7, !noundef !4
  %i.l = load i64, ptr %i.k, align 8, !noalias !459, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !459, !nonnull !4, !noundef !4
  %i.o = getelementptr [112 x i8], ptr %i.n, i64 %i.l
  %i.p = getelementptr [112 x i8], ptr %i.o, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !460
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !458, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !459, !noundef !4
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !noalias !459
  %i.u = icmp eq i64 %i.h, -1
  br i1 %i.u, label %bb.b, label %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned14clone_try_foldNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3E_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2P_NCINvMB2S_B2P_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5D_9EnumeratepEB42_4fold9enumerateB14_uNCINvNvB42_8for_each4callTjB14_ENCINvMs1_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB7e_8VecDequeB14_E10write_iterIB3P_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtB7e_4iter4IterB14_EEEEE0E0E0E0E0E0B18_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !461
  unreachable

_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned14clone_try_foldNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2f_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3E_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2P_NCINvMB2S_B2P_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5D_9EnumeratepEB42_4fold9enumerateB14_uNCINvNvB42_8for_each4callTjB14_ENCINvMs1_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB7e_8VecDequeB14_E10write_iterIB3P_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtB7e_4iter4IterB14_EEEEE0E0E0E0E0E0B18_.exit: ; preds = %bb.a
  %i.v = add nuw i64 %i.h, 1
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !455
  %i.w = load i64, ptr %i.c, align 8, !noalias !452, !noundef !4
  %i.x = icmp eq i64 %i.w, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !449
  ret i1 %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters9enumerateINtBY_9EnumeratepENtNtNtB12_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateuINtNtB9_12control_flow11ControlFlowTjB2F_EENCINvNvB1N_4find5checkB4l_NCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB2G_ENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B2I_NtB2I_15SenderKeyRecord12remove_state0E0E0E0INtB7_5FnMutTuB2F_EE8call_mutB2K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [33 x i8], align 1                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [33 x i8], align 1                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.f = load i64, ptr %.val1, align 8, !noalias !466, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !468, !nonnull !4, !align !469, !noundef !4
  %i.g = getelementptr i8, ptr %.val, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !noalias !468 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !468, !noundef !4
  %i.j = load i32, ptr %.val.i.i.i, align 4, !noalias !468, !noundef !4
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB1f_ENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B1h_NtB1h_15SenderKeyRecord12remove_state0E0E0B1j_.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !468
  call void @_RNvMs1_NtCs4tP8yUXWbFU_18libsignal_protocol11sender_keysNtB5_14SenderKeyState18signing_key_public(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.l = load i8, ptr %i.b, align 8, !range !9, !noalias !468, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_RNCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B16_NtB16_15SenderKeyRecord12remove_state0E0B18_.exit.thread2.i.i, label %_RNCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B16_NtB16_15SenderKeyRecord12remove_state0E0B18_.exit.i.i

_RNCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B16_NtB16_15SenderKeyRecord12remove_state0E0B18_.exit.thread2.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !468
  br label %_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB1f_ENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B1h_NtB1h_15SenderKeyRecord12remove_state0E0E0B1j_.exit.i

_RNCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B16_NtB16_15SenderKeyRecord12remove_state0E0B18_.exit.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.o, ptr noundef nonnull align 1 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !468
  store i8 1, ptr %i.c, align 1, !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !468
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.p, ptr noundef nonnull readonly align 1 dereferenceable(32) %.val1.i.i.i, i64 32, i1 false)
  store i8 1, ptr %i.a, align 1, !noalias !468
  %i.q = call noundef zeroext i1 @_RNvXs6_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKeyNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !468
  %spec.select.i.i = select i1 %i.q, ptr %1, ptr null
  br label %_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB1f_ENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B1h_NtB1h_15SenderKeyRecord12remove_state0E0E0B1j_.exit.i

_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB1f_ENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B1h_NtB1h_15SenderKeyRecord12remove_state0E0E0B1j_.exit.i: ; preds = %_RNCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B16_NtB16_15SenderKeyRecord12remove_state0E0B18_.exit.i.i, %_RNCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B16_NtB16_15SenderKeyRecord12remove_state0E0B18_.exit.thread2.i.i, %bb.a
  %i.r = phi ptr [ null, %bb.a ], [ %spec.select.i.i, %_RNCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B16_NtB16_15SenderKeyRecord12remove_state0E0B18_.exit.i.i ], [ null, %_RNCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B16_NtB16_15SenderKeyRecord12remove_state0E0B18_.exit.thread2.i.i ]
  %i.s = load i64, ptr %.val1, align 8, !noalias !466, !noundef !4 ; 2 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.c, label %_RNCINvNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB26_ENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B28_NtB28_15SenderKeyRecord12remove_state0E0E0E0B2a_.exit

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB1f_ENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B1h_NtB1h_15SenderKeyRecord12remove_state0E0E0B1j_.exit.i
  call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
  unreachable

_RNCINvNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB3R_NCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB26_ENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B28_NtB28_15SenderKeyRecord12remove_state0E0E0E0B2a_.exit: ; preds = %_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4find5checkTjRNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENCINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB1f_ENtCsgNxaXBj14db_9itertools9Itertools13find_positionNCNvMs2_B1h_NtB1h_15SenderKeyRecord12remove_state0E0E0B1j_.exit.i
  %i.u = insertvalue { i64, ptr } poison, i64 %i.f, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %i.r, 1
  %i.w = add nuw i64 %i.s, 1
  store i64 %i.w, ptr %.val1, align 8, !noalias !466
  ret { i64, ptr } %i.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1f_NtCsbwPL7qM37dJ_14libsignal_core7addressNtB6_15ProtocolAddressNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1q_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = mul i64 %i.b, %1
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.b, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1y_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = mul i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCs4tP8yUXWbFU_18libsignal_protocol5errorNtB5_19SignalProtocolErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.ac = icmp ne i64 %i.ab, -9223372036854775789
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = xor i64 %i.ab, -9223372036854775808     ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 35
  %i.af = select i1 %i.ae, i64 %i.ad, i64 19
  switch i64 %i.af, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.aa, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 15, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.al

bb.d:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.z, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 12, ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 23)
  br label %bb.al

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.y, align 8
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 25, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.al

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.x, align 8
  %i.ap = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 23, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.al

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.w, align 8
  %i.ar = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 29, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.al

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.v, align 8
  %i.at = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 26, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.al

bb.j:                                             ; preds = %bb.a
  %i.au = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 19)
  br label %bb.al

end_hunk_2
