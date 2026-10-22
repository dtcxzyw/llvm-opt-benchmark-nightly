Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_load_balancing-58aa6fa8707f0f42.pingora_load_balancing.21c3f6b127470a61-cgu.04?download=true
inline.NumInlined: 508
inline.NumDeleted: 297
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2awuzAz5vY4_5tokio2io4util10buf_stream9BufStreamNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperEEECs2TJrahNLnPN_22pingora_load_balancing:bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.n:                                             ; preds = %bb.b
  invoke void @_RNvXs3_NtNtCs2awuzAz5vY4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i2.i.i.i.i.i = load i32, ptr %i.y, align 8, !alias.scope !59, !noundef !5 ; 2 uses
  %i.z = icmp eq i32 %.val2.i.i2.i.i.i.i.i, -1
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = tail call noundef i32 @close(i32 noundef %.val2.i.i2.i.i.i.i.i) #10 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i3.i.i.i.i.i = load i32, ptr %i.ab, align 8, !alias.scope !59, !noundef !5 ; 2 uses
  %i.ac = icmp eq i32 %.val.i.i3.i.i.i.i.i, -1
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio3net4unix6stream10UnixStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.invoke.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio3net4unix6stream10UnixStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.invoke.sink.split.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12registration12RegistrationECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #11
          to label %.body.i.i.i.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio3net4unix6stream10UnixStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.invoke.sink.split.i.i.i.i: ; preds = %bb.q, %bb.l
  %.val.i.i3.i.sink.i.i.i.i = phi i32 [ %.val.i.i.i.i.i.i.i, %bb.l ], [ %.val.i.i3.i.i.i.i.i, %bb.q ]
  %i.ae = tail call noundef i32 @close(i32 noundef %.val.i.i3.i.sink.i.i.i.i) #10 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio3net4unix6stream10UnixStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.invoke.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio3net4unix6stream10UnixStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.invoke.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio3net4unix6stream10UnixStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.invoke.sink.split.i.i.i.i, %bb.q, %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12registration12RegistrationECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream9RawStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio3net4unix6stream10UnixStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i, %bb.h, %bb.g
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.s ], [ %i.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i ], [ %i.k, %bb.g ], [ %i.k, %bb.h ], [ %i.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #11
          to label %.body.i.i.i unwind label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream9RawStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio3net4unix6stream10UnixStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.invoke.i.i.i.i, %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream9RawStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream9RawStreamECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i unwind label %bb.w

bb.v:                                             ; preds = %.body.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.w, %bb.t, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.w ], [ %i.ai, %bb.t ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #11
          to label %.body.i.i unwind label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio2io4util10buf_writer9BufWriterNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.aa

bb.z:                                             ; preds = %.body.i.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aa, %bb.x, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ar, %bb.aa ], [ %i.ao, %bb.x ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3.i.i = load i64, ptr %i.as, align 8, !alias.scope !60, !noundef !5 ; 2 uses
  %i.at = icmp eq i64 %.val3.i.i, 0
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.body.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val2.i.i = load ptr, ptr %i.au, align 8, !alias.scope !60, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %.val3.i.i, i64 noundef 1) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio2io4util10buf_writer9BufWriterNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1.i.i = load i64, ptr %i.av, align 8, !alias.scope !60, !noundef !5 ; 2 uses
  %i.aw = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio2io4util10buf_stream9BufStreamNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio2io4util10buf_writer9BufWriterNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !60, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio2io4util10buf_stream9BufStreamNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.ab, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !63, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !63, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #10, !noalias !63
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNECs2TJrahNLnPN_22pingora_load_balancing.exit
    i64 -9223372036854775806, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNECs2TJrahNLnPN_22pingora_load_balancing.exit
    i64 -9223372036854775807, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNECs2TJrahNLnPN_22pingora_load_balancing.exit
    i64 -9223372036854775808, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNECs2TJrahNLnPN_22pingora_load_balancing.exit
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNECs2TJrahNLnPN_22pingora_load_balancing.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer6TracerEECs2TJrahNLnPN_22pingora_load_balancing(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer6TracerECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer6TracerECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer6TracerECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer6TracerECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer7TracingEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #10
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer7TracingEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer7TracingEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !noundef !5 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8            ; 11 uses
  %.not.i = icmp eq ptr %.val, null               ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIBY_NtCsfsXztIhCltD_13pingora_error5ErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIBY_NtCsfsXztIhCltD_13pingora_error5ErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.g, %bb.n
  %.sink = phi i64 [ %i.y, %bb.n ], [ %i.m, %bb.g ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.k, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.sink, i64 noundef range(i64 1, 536870913) %i.p) #10
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.w, %bb.n ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %.val1)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIBY_NtCsfsXztIhCltD_13pingora_error5ErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIBY_NtCsfsXztIhCltD_13pingora_error5ErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.q = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.q(ptr noundef nonnull %.val)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIBY_NtCsfsXztIhCltD_13pingora_error5ErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIBY_NtCsfsXztIhCltD_13pingora_error5ErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.n:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.resume, label %common.resume.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIBY_NtCsfsXztIhCltD_13pingora_error5ErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6stream9TcpStreamINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2a_18TransportConnector10new_streamNtNtNtB2c_9upstreams4peer9BasicPeerE0s_0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2a_18TransportConnector10new_streamNtNtNtB2c_9upstreams4peer9BasicPeerE0s_0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !218, !nonnull !5, !noundef !5
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !218
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core9CoreStageNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1G_18TransportConnector10new_streamNtNtNtB1I_9upstreams4peer9BasicPeerE0s_0EECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.f) #11
          to label %.body.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.h = load i32, ptr %i.g, align 8, !range !13, !noundef !5
  switch i32 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtBL_18TransportConnector10new_streamNtNtNtBN_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.g

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.e, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 1872
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core7TrailerECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.m) #11
          to label %bb.q unwind label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.e, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 1888
  %.val.i.i = load ptr, ptr %i.n, align 8, !align !8, !noundef !5 ; 2 uses
  %i.o = icmp eq ptr %.val.i.i, null
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.p = getelementptr i8, ptr %.0.val, i64 1896
  %.val1.i.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  invoke void %i.r(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.i, !inline_history !0

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 1904 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !221, !noundef !5 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !222
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCs2awuzAz5vY4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t) #13
          to label %bb.q unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 1904 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !225, !noundef !5 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.ab = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !226
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCs2awuzAz5vY4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.o:                                             ; preds = %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1B_18TransportConnector10new_streamNtNtNtB1D_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %bb.m
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1920, i64 noundef 128) #10
  ret void

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.j, %bb.i, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.s, %bb.i ], [ %i.s, %bb.k ], [ %i.s, %bb.j ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1920, i64 noundef 128) #10
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !233, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !233 ; 6 uses
  %i.c = icmp eq ptr %.val.i, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !233 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !233

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !5, !noalias !233 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !7, !invariant.load !5, !noalias !233
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #10, !noalias !233
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !5, !noalias !233 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !7, !invariant.load !5, !noalias !233
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #10, !noalias !233
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.f
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %.0.val) #11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #10
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.e, %bb.d, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.p = load i64, ptr %.0.val, align 8, !range !11, !alias.scope !235, !noundef !5 ; 2 uses
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %0 = trunc nuw i64 %i.p to i1
  br i1 %0, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !237, !noundef !5 ; 2 uses
  %i.s = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !237, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #10, !noalias !237
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.j, %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #10
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs84JG9zk80ZV_4http7request5PartsEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(224) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 224, i64 noundef 8) #10
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 224, i64 noundef 8) #10
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs2TJrahNLnPN_22pingora_load_balancing(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !272, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !273
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.0.val) #11
          to label %.body.i unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEENtNtNtBK_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEENtNtNtBR_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %.body.i unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls6digest9SslDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEENtNtNtBR_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.body.i:                                          ; preds = %bb.j, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.n, %bb.j ], [ %i.g, %bb.e ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !275, !noundef !5 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.h

bb.h:                                             ; preds = %.body.i
  %i.l = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !276
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.r

bb.j:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !278, !noundef !5 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit7.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.r = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !279
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit7.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit7.i unwind label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.o, %bb.i, %bb.h, %.body.i
  %.pn2.i = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn.i, %bb.i ], [ %.pn.i, %.body.i ], [ %.pn.i, %bb.h ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !281, !noundef !5 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.w = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !282
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #13
          to label %bb.t unwind label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit7.i: ; preds = %bb.l, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12TimingDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !284, !noundef !5 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit7.i
  %i.ac = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !285
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest12SocketDigestE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.s

bb.r:                                             ; preds = %bb.n, %bb.i, %bb.d
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit7.i, %bb.q
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #10
  ret void

bb.t:                                             ; preds = %bb.s, %bb.n, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.s ], [ %.pn2.i, %bb.n ], [ %.pn2.i, %bb.m ], [ %.pn2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskeugdADtBsi_12pingora_core9protocols11raw_connect11ProxyDigestEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #10
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2r_18TransportConnector10new_streamNtNtNtB2t_9upstreams4peer9BasicPeerE0s_0EEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !13, !noundef !5
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1A_18TransportConnector10new_streamNtNtNtB1C_9upstreams4peer9BasicPeerE0s_0EEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtBL_18TransportConnector10new_streamNtNtNtBN_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1A_18TransportConnector10new_streamNtNtNtB1C_9upstreams4peer9BasicPeerE0s_0EEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.d
end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http3uri3UriECs2TJrahNLnPN_22pingora_load_balancing:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.b = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !408, !noundef !5
  %i.d = load ptr, ptr %.val2, align 8, !alias.scope !408, !nonnull !5, !align !8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !408, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !408, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !408, !noundef !5
  invoke void %i.f(ptr noundef %i.c, ptr noundef %i.h, i64 noundef %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %.body, !inline_history !369

.body:                                            ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 32, i64 noundef 8) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !413, !noundef !5
  %i.o = load ptr, ptr %i.l, align 8, !alias.scope !413, !nonnull !5, !align !8, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !413, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !413, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !413, !noundef !5
  invoke void %i.q(ptr noundef %i.n, ptr noundef %i.s, i64 noundef %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.d, !inline_history !378

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 32, i64 noundef 8) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri6scheme6SchemeECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri6scheme6SchemeECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs84JG9zk80ZV_4http8byte_str7ByteStrEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !418, !noundef !5
  %i.y = load ptr, ptr %i.v, align 8, !alias.scope !418, !nonnull !5, !align !8, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !418, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !418, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !418, !noundef !5
  invoke void %i.aa(ptr noundef %i.x, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs2TJrahNLnPN_22pingora_load_balancing.exit3 unwind label %bb.c, !inline_history !378

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.c ], [ %i.k, %.body ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !423, !noundef !5
  %i.ai = load ptr, ptr %i.af, align 8, !alias.scope !423, !nonnull !5, !align !8, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !423, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !423, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !423, !noundef !5
  invoke void %i.ak(ptr noundef %i.ah, ptr noundef %i.am, i64 noundef %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri4path12PathAndQueryECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.d, !inline_history !395

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri6scheme6SchemeECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs2TJrahNLnPN_22pingora_load_balancing.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri6scheme6SchemeECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !428, !noundef !5
  %i.at = load ptr, ptr %i.aq, align 8, !alias.scope !428, !nonnull !5, !align !8, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !noalias !428, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !428, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !428, !noundef !5
  tail call void %i.av(ptr noundef %i.as, ptr noundef %i.ax, i64 noundef %i.az), !noalias !428, !inline_history !404
  ret void

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs2TJrahNLnPN_22pingora_load_balancing.exit, %.body
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri4path12PathAndQueryECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http3uri9authority9AuthorityECs2TJrahNLnPN_22pingora_load_balancing.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.b = load i8, ptr %i.a, align 8, !range !435, !alias.scope !436, !noundef !5
  %switch.i.i = icmp samesign ult i8 %i.b, 11
  br i1 %switch.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !436, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !436, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #10, !noalias !436
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http3uri3UriECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(96) %0) #11
          to label %bb.f unwind label %bb.k

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http6method6MethodECs2TJrahNLnPN_22pingora_load_balancing.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(96) %0)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.g, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val4 = load ptr, ptr %i.h, align 8, !align !8, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs2TJrahNLnPN_22pingora_load_balancing(ptr %.val4) #11
          to label %common.resume unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load ptr, ptr %i.j, align 8, !align !8, !noundef !5 ; 4 uses
  %i.k = icmp eq ptr %.val, null
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.j

common.resume:                                    ; preds = %bb.f, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn2, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #10
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  ret void

bb.k:                                             ; preds = %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !447, !nonnull !5, !noundef !5
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !447
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !450, !nonnull !5, !noundef !5
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !450
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.d = shl nuw nsw i64 %.val2, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef 2) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECs2TJrahNLnPN_22pingora_load_balancing.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.body:                                            ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.i, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #11
          to label %common.resume unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.i:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !5
  %switch1 = icmp slt i64 %i.a, -9223372036854775805
  br i1 %switch1, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer11PeerOptionsECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !503, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #11
          to label %.body16 unwind label %bb.aj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !19, !alias.scope !504, !noundef !5
  %switch1.i = icmp slt i64 %i.i, -9223372036854775805
  br i1 %switch1.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2TJrahNLnPN_22pingora_load_balancing.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.body16 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer11PeerOptionsECs2TJrahNLnPN_22pingora_load_balancing:bb.a
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.body25, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #10
  br label %.body25

.body25:                                          ; preds = %bb.u, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VechEEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %.pn6 = phi { ptr, i32 } [ %.pn4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VechEEECs2TJrahNLnPN_22pingora_load_balancing.exit ], [ %i.al, %bb.t ], [ %i.al, %bb.u ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !509, !noundef !5 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.v

bb.v:                                             ; preds = %.body25
  %i.au = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !510
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtCskKLDkoKarTP_4core6marker4SendNtB1E_4SyncEL_E9drop_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ar) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.aj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer6TracerEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.s, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VechEEECs2TJrahNLnPN_22pingora_load_balancing.exit24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !511, !noundef !5 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit29, label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer6TracerEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.az = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !512
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit29

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtCskKLDkoKarTP_4core6marker4SendNtB1E_4SyncEL_E9drop_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit29 unwind label %bb.ab

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.v, %.body25, %bb.w, %bb.ab
  %.pn8 = phi { ptr, i32 } [ %i.bg, %bb.ab ], [ %.pn6, %bb.w ], [ %.pn6, %.body25 ], [ %.pn6, %bb.v ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !513, !noundef !5 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.be = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !514
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtBQ_6result6ResultuINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtBQ_6marker4SendNtB3P_4SyncEL_E9drop_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.aj

bb.ab:                                            ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit29: ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer6TracerEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !515, !noundef !5 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit32, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit29
  %i.bk = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !516
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit32

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtBQ_6result6ResultuINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtBQ_6marker4SendNtB3P_4SyncEL_E9drop_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit32 unwind label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.aa, %bb.ag
  %.pn10 = phi { ptr, i32 } [ %i.br, %bb.ag ], [ %.pn8, %bb.aa ], [ %.pn8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit ], [ %.pn8, %bb.z ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !517, !noundef !5 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputIBC_INtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB4i_4SyncEL_EEB4g_B4z_EL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.bp = atomicrmw add ptr %i.bn, i64 -1 release, align 8, !noalias !518
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputIBC_INtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB4i_4SyncEL_EEB4g_B4z_EL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputINtNtBR_6option6OptionINtNtB7_5boxed3BoxDNtNtBR_3any3AnyNtNtBR_6marker4SendNtB40_4SyncEL_EEB3Y_B4h_EL_E9drop_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bm) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputIBC_INtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB4i_4SyncEL_EEB4g_B4z_EL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit32: ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCskeugdADtBsi_12pingora_core10connectors2l47ConnectNtNtB4_6marker4SendNtB2t_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit29, %bb.ad
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !519, !noundef !5 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputIBC_INtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB4i_4SyncEL_EEB4g_B4z_EL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit34, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit32
  %i.bv = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !520
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputIBC_INtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB4i_4SyncEL_EEB4g_B4z_EL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit34

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputINtNtBR_6option6OptionINtNtB7_5boxed3BoxDNtNtBR_3any3AnyNtNtBR_6marker4SendNtB40_4SyncEL_EEB3Y_B4h_EL_E9drop_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bs) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputIBC_INtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB4i_4SyncEL_EEB4g_B4z_EL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit34

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputIBC_INtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB4i_4SyncEL_EEB4g_B4z_EL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit34: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit32, %bb.ah, %bb.ai
  ret void

bb.aj:                                            ; preds = %bb.af, %bb.aa, %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls8noop_tls11CertWrapperEEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringINtNtBK_3vec3VechEEECs2TJrahNLnPN_22pingora_load_balancing.exit, %.body
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtCs84JG9zk80ZV_4http7request5PartsRL0_NtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEp6OutputIBC_INtNtB12_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB4i_4SyncEL_EEB4g_B4z_EL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6socket9TcpSocketEEp6OutputINtNtB4_6result6ResultuINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtB4_6marker4SendNtB4p_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.af
  resume { ptr, i32 } %.pn10
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer9BasicPeerECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer11PeerOptionsECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(400) %0) #11
          to label %bb.f unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer11PeerOptionsECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(400) %0)
  ret void

bb.e:                                             ; preds = %.body
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.f:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12registration12RegistrationECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io12registrationNtB5_12RegistrationNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #11
          to label %bb.h unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.b = load i64, ptr %0, align 8, !range !18, !alias.scope !539, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = trunc nuw i64 %i.b to i1
  br i1 %1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !542, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !542
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !545, !nonnull !5, !noundef !5
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !545
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.a, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !548, !nonnull !5, !noundef !5
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !548
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12scheduled_io11ScheduledIoEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12scheduled_io11ScheduledIoEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !551, !nonnull !5, !noundef !5
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !551
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12scheduled_io11ScheduledIoEECs2TJrahNLnPN_22pingora_load_balancing.exit4

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECs2TJrahNLnPN_22pingora_load_balancing.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12scheduled_io11ScheduledIoEECs2TJrahNLnPN_22pingora_load_balancing.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12scheduled_io11ScheduledIoEECs2TJrahNLnPN_22pingora_load_balancing.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler6HandleECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io12scheduled_io11ScheduledIoEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core7TrailerECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !8, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !570, !noundef !5 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime4task24TaskHarnessScheduleHooksECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !571
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime4task24TaskHarnessScheduleHooksECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCs2awuzAz5vY4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime4task24TaskHarnessScheduleHooksECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !574, !noundef !5 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime4task24TaskHarnessScheduleHooksECs2TJrahNLnPN_22pingora_load_balancing.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.o = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !575
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime4task24TaskHarnessScheduleHooksECs2TJrahNLnPN_22pingora_load_balancing.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCs2awuzAz5vY4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime4task24TaskHarnessScheduleHooksECs2TJrahNLnPN_22pingora_load_balancing.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime4task24TaskHarnessScheduleHooksECs2TJrahNLnPN_22pingora_load_balancing.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio7runtime4task24TaskHarnessScheduleHooksECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !582, !noundef !5
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !583, !noundef !5
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit2, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit2 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !584, !noundef !5
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit3, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit
  tail call void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit2: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16client11HttpSessionECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !600, !noundef !5
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !600, !nonnull !5, !align !8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !600, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
end_hunk_3
begin_hunk_4_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16client11HttpSessionECs2TJrahNLnPN_22pingora_load_balancing:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.p(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !7, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.f:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #10
  br label %.body

.body:                                            ; preds = %bb.g, %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.v, %bb.f ], [ %i.v, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ab) #11
          to label %.body17 unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !601, !noundef !5
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !602, !noundef !5
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.body17, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %.body17 unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !603, !noundef !5
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.body17:                                          ; preds = %bb.m, %bb.j, %bb.i, %.body
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ao, %bb.m ], [ %i.af, %bb.j ], [ %i.af, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val12 = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %.val12) #11
          to label %bb.n unwind label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val11 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCskeugdADtBsi_12pingora_core9protocols6digest6DigestEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %.val11)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %.body17, %bb.o
  %.pn4 = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %.pn2, %.body17 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val14 = load ptr, ptr %i.aq, align 8, !align !8, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEECs2TJrahNLnPN_22pingora_load_balancing(ptr %.val14) #11
          to label %bb.q unwind label %bb.t

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14body10BodyReaderECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val13 = load ptr, ptr %i.as, align 8, !align !8, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http14ResponseHeaderEEECs2TJrahNLnPN_22pingora_load_balancing(ptr %.val13)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.r
  %.pn6 = phi { ptr, i32 } [ %i.au, %bb.r ], [ %.pn4, %bb.n ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val16 = load ptr, ptr %i.at, align 8, !align !8, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECs2TJrahNLnPN_22pingora_load_balancing(ptr %.val16) #11
          to label %bb.u unwind label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val15 = load ptr, ptr %i.av, align 8, !align !8, !noundef !5
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECs2TJrahNLnPN_22pingora_load_balancing(ptr %.val15)
  ret void

bb.t:                                             ; preds = %bb.q, %bb.n, %.body17, %bb.b, %.body
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.u:                                             ; preds = %bb.q
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2u_18TransportConnector10new_streamNtNtNtB2w_9upstreams4peer9BasicPeerE0s_0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !608
  store i32 2, ptr %i.d, align 8, !noalias !608
  %i.e = load i32, ptr %i.a, align 8, !range !13, !noalias !608, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !noalias !608

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2r_18TransportConnector10new_streamNtNtNtB2t_9upstreams4peer9BasicPeerE0s_0EEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #11
          to label %common.resume unwind label %bb.f, !noalias !608

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !608
  unreachable

_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !608
  %i.j = load i64, ptr %1, align 8, !range !18, !alias.scope !609, !noundef !5
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit
  ret void

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.g
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !612
  store i32 2, ptr %i.a, align 8, !noalias !612
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !612
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #10
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2u_18TransportConnector10new_streamNtNtNtB2w_9upstreams4peer9BasicPeerE0s_0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit
    i8 3, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2TJrahNLnPN_22pingora_load_balancing.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !625
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i, align 8
  store ptr %i.i, ptr %i.g, align 8, !noalias !626
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !626
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !627

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !625
  store i32 2, ptr %i.f, align 8, !noalias !625
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !625

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !625
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !625
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread.i.i unwind label %bb.e, !noalias !626 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12, !noalias !626
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.u = insertelement <2 x ptr> %i.t, ptr %i.s, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !625
  %.sroa.053.0.copyload.i.i = load i64, ptr %i.h, align 8, !noalias !626 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load <2 x ptr>, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !626 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !626
  switch i64 %.sroa.053.0.copyload.i.i, label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i [
    i64 2, label %bb.g
    i64 0, label %bb.h
  ], !prof !21

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi <2 x ptr> [ %i.u, %.thread.i.i ], [ %i.v, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !range !22, !noalias !626, !noundef !5
  br label %bb.h

end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs2TJrahNLnPN_22pingora_load_balancing:bb.a

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #10
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2u_18TransportConnector10new_streamNtNtNtB2w_9upstreams4peer9BasicPeerE0s_0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2u_18TransportConnector10new_streamNtNtNtB2w_9upstreams4peer9BasicPeerE0s_0EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !22, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2u_18TransportConnector10new_streamNtNtNtB2w_9upstreams4peer9BasicPeerE0s_0EEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !637
  store i32 2, ptr %i.d, align 8, !noalias !637
  %i.e = load i32, ptr %i.a, align 8, !range !13, !noalias !637, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.d unwind label %bb.e, !noalias !637

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2r_18TransportConnector10new_streamNtNtNtB2t_9upstreams4peer9BasicPeerE0s_0EEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #11
          to label %common.resume unwind label %bb.f, !noalias !637

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !637
  unreachable

_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !637
  %i.j = load i64, ptr %1, align 8, !range !18, !alias.scope !638, !noundef !5
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit
  ret void

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.g
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !641
  store i32 2, ptr %i.a, align 8, !noalias !641
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #10
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2u_18TransportConnector10new_streamNtNtNtB2w_9upstreams4peer9BasicPeerE0s_0EEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit
    i8 3, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2TJrahNLnPN_22pingora_load_balancing.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !654
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i, align 8
  store ptr %i.i, ptr %i.g, align 8, !noalias !655
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !655
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !656

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !654
  store i32 2, ptr %i.f, align 8, !noalias !654
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !654

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !654
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !654
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread.i.i unwind label %bb.e, !noalias !655 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12, !noalias !655
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.u = insertelement <2 x ptr> %i.t, ptr %i.s, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !654
  %.sroa.053.0.copyload.i.i = load i64, ptr %i.h, align 8, !noalias !655 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load <2 x ptr>, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !655 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !655
  switch i64 %.sroa.053.0.copyload.i.i, label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11poll_futureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i [
    i64 2, label %bb.g
    i64 0, label %bb.h
  ], !prof !21

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi <2 x ptr> [ %i.u, %.thread.i.i ], [ %i.v, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !range !22, !noalias !655, !noundef !5
  br label %bb.h

end_hunk_5
begin_hunk_6_@_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCs2TJrahNLnPN_22pingora_load_balancing:bb.a
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #10
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs_NtNtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler12multi_thread6handleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB4_6HandleENtNtBa_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2u_18TransportConnector10new_streamNtNtNtB2w_9upstreams4peer9BasicPeerE0s_0EEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2u_18TransportConnector10new_streamNtNtNtB2w_9upstreams4peer9BasicPeerE0s_0EEINtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !22, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2d_18TransportConnector10new_streamNtNtNtB2f_9upstreams4peer9BasicPeerE0s_0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2j_18TransportConnector10new_streamNtNtNtB2l_9upstreams4peer9BasicPeerE0s_0EEINtNtB1F_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2f_18TransportConnector10new_streamNtNtNtB2h_9upstreams4peer9BasicPeerE0s_0EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2a_18TransportConnector10new_streamNtNtNtB2c_9upstreams4peer9BasicPeerE0s_0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1824 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1824) %i.a, ptr noundef nonnull align 8 dereferenceable(1824) %i.d, i64 1824, i1 false), !noalias !666
  store i32 2, ptr %i.d, align 8, !noalias !666
  %i.e = load i32, ptr %i.a, align 8, !range !13, !noalias !666, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !noalias !666

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !13, !noalias !666, !noundef !5
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1C_18TransportConnector10new_streamNtNtNtB1E_9upstreams4peer9BasicPeerE0s_0EECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.a) #11
          to label %common.resume unwind label %bb.g, !noalias !666

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !666
  unreachable

_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !666
  %i.l = load i64, ptr %1, align 8, !range !18, !alias.scope !667, !noundef !5
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit
  ret void

bb.j:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.h
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1824 x i8], align 8              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !670
  store i32 2, ptr %i.a, align 8, !noalias !670
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1824) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !670
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #10
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2a_18TransportConnector10new_streamNtNtNtB2c_9upstreams4peer9BasicPeerE0s_0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1872
  call void @_RNvMs6_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1824 x i8], align 8              ; 4 uses
  %i.b = alloca [1824 x i8], align 8              ; 7 uses
  %i.c = alloca [1824 x i8], align 8              ; 4 uses
  %i.d = alloca [1824 x i8], align 8              ; 7 uses
  %i.e = alloca [1824 x i8], align 8              ; 6 uses
  %i.f = alloca [1824 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit
    i8 3, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs2TJrahNLnPN_22pingora_load_balancing.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11poll_futureNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !683
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i, align 8
  store ptr %i.i, ptr %i.g, align 8, !noalias !684
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !684
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !685

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !683
  store i32 2, ptr %i.f, align 8, !noalias !683
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1824) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !683

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !683
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !683
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread.i.i unwind label %bb.e, !noalias !684 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12, !noalias !684
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.u = insertelement <2 x ptr> %i.t, ptr %i.s, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !683
  %.sroa.053.0.copyload.i.i = load i64, ptr %i.h, align 8, !noalias !684 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load <2 x ptr>, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !684 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !684
  switch i64 %.sroa.053.0.copyload.i.i, label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11poll_futureNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i [
    i64 2, label %bb.g
    i64 0, label %bb.h
  ], !prof !21

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi <2 x ptr> [ %i.u, %.thread.i.i ], [ %i.v, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !range !22, !noalias !684, !noundef !5
  br label %bb.h

end_hunk_6
begin_hunk_7_@_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs2TJrahNLnPN_22pingora_load_balancing:bb.a
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #10
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCs2awuzAz5vY4_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2a_18TransportConnector10new_streamNtNtNtB2c_9upstreams4peer9BasicPeerE0s_0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1824 x i8], align 8              ; 4 uses
  %i.b = alloca [1824 x i8], align 8              ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2a_18TransportConnector10new_streamNtNtNtB2c_9upstreams4peer9BasicPeerE0s_0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1824) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !22, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1824) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11cancel_taskNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2a_18TransportConnector10new_streamNtNtNtB2c_9upstreams4peer9BasicPeerE0s_0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE15try_read_outputCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1824 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1824) %i.a, ptr noundef nonnull align 8 dereferenceable(1824) %i.d, i64 1824, i1 false), !noalias !695
  store i32 2, ptr %i.d, align 8, !noalias !695
  %i.e = load i32, ptr %i.a, align 8, !range !13, !noalias !695, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %bb.e unwind label %bb.d, !noalias !695

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !13, !noalias !695, !noundef !5
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core5StageNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1C_18TransportConnector10new_streamNtNtNtB1E_9upstreams4peer9BasicPeerE0s_0EECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.a) #11
          to label %common.resume unwind label %bb.g, !noalias !695

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !695
  unreachable

_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !695
  %i.l = load i64, ptr %1, align 8, !range !18, !alias.scope !696, !noundef !5
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit
  ret void

bb.j:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNCNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB7_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtBb_9scheduler12multi_thread6handle6HandleEE11take_output0Cs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.h
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE21drop_join_handle_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1824 x i8], align 8              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !699
  store i32 2, ptr %i.a, align 8, !noalias !699
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1824) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !699
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #10
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !7, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #10
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4core4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB2a_18TransportConnector10new_streamNtNtNtB2c_9upstreams4peer9BasicPeerE0s_0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1872
  call void @_RNvMs6_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1824 x i8], align 8              ; 4 uses
  %i.b = alloca [1824 x i8], align 8              ; 7 uses
  %i.c = alloca [1824 x i8], align 8              ; 4 uses
  %i.d = alloca [1824 x i8], align 8              ; 7 uses
  %i.e = alloca [1824 x i8], align 8              ; 6 uses
  %i.f = alloca [1824 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCs2TJrahNLnPN_22pingora_load_balancing.exit
    i8 3, label %_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE10poll_innerCs2TJrahNLnPN_22pingora_load_balancing.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11poll_futureNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !712
  store ptr null, ptr %.sroa.14.8..sroa_idx.i.i, align 8
  store ptr %i.i, ptr %i.g, align 8, !noalias !713
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !713
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !714

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !712
  store i32 2, ptr %i.f, align 8, !noalias !712
  invoke void @_RNvMs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CoreNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1824) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !712

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !712
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !712
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread.i.i unwind label %bb.e, !noalias !713 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12, !noalias !713
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.r = extractvalue { ptr, ptr } %i.p, 0
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.u = insertelement <2 x ptr> %i.t, ptr %i.s, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !712
  %.sroa.053.0.copyload.i.i = load i64, ptr %i.h, align 8, !noalias !713 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = load <2 x ptr>, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !713 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !713
  switch i64 %.sroa.053.0.copyload.i.i, label %_RINvNtNtNtCs2awuzAz5vY4_5tokio7runtime4task7harness11poll_futureNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1a_18TransportConnector10new_streamNtNtNtB1c_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing.exit.i [
    i64 2, label %bb.g
    i64 0, label %bb.h
  ], !prof !21

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi <2 x ptr> [ %i.u, %.thread.i.i ], [ %i.v, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !range !22, !noalias !713, !noundef !5
  br label %bb.h

end_hunk_7
