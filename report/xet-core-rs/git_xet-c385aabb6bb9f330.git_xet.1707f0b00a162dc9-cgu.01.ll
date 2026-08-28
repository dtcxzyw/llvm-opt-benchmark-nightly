Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.01?download=true
inline.NumInlined: 326
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorCodeECs1YANDSn9Kib_7git_xet:bb.a
    i64 1, label %bb.d
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.c, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs1YANDSn9Kib_7git_xet.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %.val2 to i64               ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit
    i64 1, label %bb.f
  ], !prof !66

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val2, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val2, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !70
  store i8 3, ptr %i.a, align 8, !alias.scope !70
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs1YANDSn9Kib_7git_xet.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec15TransferRequestEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #14
          to label %.body2 unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !12, !alias.scope !73, !noundef !5
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit unwind label %bb.h

.body2:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.h ], [ %i.h, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec25GitBatchApiResponseActionEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.j) #14
          to label %common.resume unwind label %bb.m

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs1YANDSn9Kib_7git_xet.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs1YANDSn9Kib_7git_xet.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs1YANDSn9Kib_7git_xet.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec25GitBatchApiResponseActionEBH_.exit unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.m, %bb.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %.body2, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec25GitBatchApiResponseActionEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
  ret void

bb.m:                                             ; preds = %.body2, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec23LFSProtocolRequestEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !76, !noundef !5
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.c
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.b
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.k, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_.exit
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !77, !alias.scope !78, !noundef !5
  %1 = icmp eq i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %1, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec11InitRequestEBH_.exit: ; preds = %bb.d, %bb.g
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %bb.b

bb.j:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec15TransferRequestEBH_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.i)
  br label %bb.b

bb.k:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec15TransferRequestEBH_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec25GitBatchApiResponseActionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECs1YANDSn9Kib_7git_xet.exit unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  ret void

bb.e:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECs1YANDSn9Kib_7git_xet.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #14
          to label %common.resume unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !81, !noundef !5
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtB2v_26GitLFSAuthenticateResponseNtB1l_11Deserialize11deserialize9___VisitorEB2z_:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #14
          to label %.body.i unwind label %bb.ah, !noalias !530

bb.aa:                                            ; preds = %.noexc42.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !noalias !540, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !540
  %.sroa.027.i.sroa.0.0.copyload = load i64, ptr %i.ab, align 8, !noalias !503
  %.sroa.027.i.sroa.4.0.copyload = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !503
  %i.cy = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !503
  br label %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtBb_26GitLFSAuthenticateResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBf_.exit

bb.ab:                                            ; preds = %bb.v
  %i.cz = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error14invalid_lengthCs1YANDSn9Kib_7git_xet(i64 noundef 2, ptr noundef nonnull @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
          to label %bb.ac unwind label %bb.z, !noalias !530

bb.ac:                                            ; preds = %bb.ab, %bb.x, %bb.u
  %.sink80.i = phi ptr [ %i.cl, %bb.u ], [ %i.ct, %bb.x ], [ %i.cz, %bb.ab ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i unwind label %bb.ad, !noalias !530

bb.ad:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body.i unwind label %bb.ae, !noalias !530

bb.ae:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !530
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.s, !noalias !530

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.n, %bb.q, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i
  %.sroa.8.0 = phi ptr [ %.sink80.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet.exit.i.i ], [ %i.bx, %bb.n ], [ %i.cf, %bb.q ], [ %i.cu, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !503
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i unwind label %bb.af, !noalias !530

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.ag, !noalias !530

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !530
  unreachable

common.resume:                                    ; preds = %bb.du, %bb.aj, %.body148.i, %bb.dq, %bb.dt, %.body.i, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %.pn109.i, %.body148.i ], [ %.pn.i, %.body.i ], [ %i.dc, %bb.af ], [ %i.kb, %bb.dq ], [ %.pn109.i, %bb.dt ], [ %i.kg, %bb.du ], [ %i.dj, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab), !noalias !530
  br label %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtBb_26GitLFSAuthenticateResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBf_.exit

bb.ah:                                            ; preds = %bb.z, %.body.i
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !530
  unreachable

_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtBb_26GitLFSAuthenticateResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBf_.exit: ; preds = %bb.i, %bb.l, %bb.r, %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i
  %.sroa.11.sroa.0.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.l ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i ], [ %i.cy, %bb.aa ], [ undef, %bb.r ]
  %.sroa.1154.0 = phi i32 [ undef, %bb.i ], [ undef, %bb.l ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i ], [ %i.cx, %bb.aa ], [ undef, %bb.r ]
  %.sroa.8.1 = phi ptr [ %i.bl, %bb.i ], [ %i.bt, %bb.l ], [ %.sroa.8.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i ], [ %.sroa.027.i.sroa.4.0.copyload, %bb.aa ], [ %i.cg, %bb.r ]
  %.sroa.051.1 = phi i64 [ -1, %bb.i ], [ -1, %bb.l ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i ], [ %.sroa.027.i.sroa.0.0.copyload, %bb.aa ], [ -1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.df = load i8, ptr %i.ax, align 8, !noundef !5
  %i.dg = add i8 %i.df, 1
  store i8 %i.dg, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %.sroa.051.1, ptr %i.ag, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.11.sroa.0.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.6, i64 24, i1 false)
  %.sroa.1154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i32 %.sroa.1154.0, ptr %.sroa.1154.0..sroa_idx, align 8
  %i.dh = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.ak unwind label %bb.aj     ; 5 uses

bb.ai:                                            ; preds = %bb.ar, %bb.g
  %.sink = phi ptr [ %i.dr, %bb.ar ], [ %i.bf, %bb.g ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.di, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.ed

bb.aj:                                            ; preds = %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtBb_26GitLFSAuthenticateResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBf_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ag) #14
          to label %common.resume unwind label %bb.ao

bb.ak:                                            ; preds = %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtBb_26GitLFSAuthenticateResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBf_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 56, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %i.dh, ptr %i.dk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dl = load i64, ptr %i.ah, align 8, !range !12, !noundef !5 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, -1
  br i1 %i.dm, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not37 = icmp eq ptr %i.dh, null
  br i1 %.not37, label %.thread328, label %bb.an

.thread328:                                       ; preds = %bb.al
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  br label %.thread67

bb.am:                                            ; preds = %bb.ak
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !5, !align !89, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  %.not82 = icmp eq ptr %i.dh, null
  br i1 %.not82, label %.thread67, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ah)
  br label %.thread67

bb.ao:                                            ; preds = %bb.du, %bb.aj
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.thread67:                                        ; preds = %.thread328, %bb.an, %bb.ap, %bb.am
  %.sroa.09.073 = phi i64 [ -1, %bb.am ], [ -1, %bb.ap ], [ -1, %bb.an ], [ %i.dl, %.thread328 ]
  %.sroa.10.072 = phi ptr [ %i.do, %bb.am ], [ %i.do, %bb.ap ], [ %i.dh, %bb.an ], [ %.sroa.4.0.copyload, %.thread328 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr nonnull %i.dh)
  br label %.thread67

bb.aq:                                            ; preds = %.thread74, %.thread67
  %.sroa.10.1 = phi ptr [ %.sroa.10.072, %.thread67 ], [ %.sroa.10.279, %.thread74 ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.073, %.thread67 ], [ %.sroa.09.280, %.thread74 ] ; 2 uses
  %i.dq = icmp eq i64 %.sroa.09.1, -1
  br i1 %i.dq, label %bb.ea, label %bb.eb, !prof !269

bb.ar:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 24, ptr %i.af, align 8
  %i.dr = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ai

bb.as:                                            ; preds = %bb.f
  %i.ds = add i64 %i.aq, 1
  store i64 %i.ds, ptr %i.ak, align 8, !alias.scope !546
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %1, ptr %i.t, align 8, !noalias !549
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 1, ptr %i.dt, align 8, !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !549
  store i64 -1, ptr %i.s, align 8, !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !549
  store i64 -1, ptr %i.r, align 8, !noalias !549
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.640.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.743.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.622.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.cl, %bb.as
  %.sroa.4.0.i.ph = phi i32 [ %i.ir, %bb.cl ], [ undef, %bb.as ]
  %.not559 = phi i1 [ false, %bb.cl ], [ true, %bb.as ]
  %.sroa.046.0.i.ph = phi i1 [ true, %bb.cl ], [ false, %bb.as ]
  br label %bb.at

bb.at:                                            ; preds = %.backedge, %.outer
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !559
  invoke fastcc void @_RINvNvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9MapAccesspENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.noexc.i44 unwind label %.loopexit.loopexit.i.loopexit, !noalias !562

.noexc.i44:                                       ; preds = %bb.at
  %i.dy = load i8, ptr %i.i, align 8, !range !109, !noalias !559, !noundef !5
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.noexc.i44
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !559, !nonnull !5, !align !89, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !559
  br label %.loopexit

bb.av:                                            ; preds = %.noexc.i44
  %i.ec = load i8, ptr %i.du, align 1, !range !109, !noalias !559, !noundef !5
  %i.ed = trunc nuw i8 %i.ec to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !559
  br i1 %i.ed, label %bb.aw, label %bb.bh

bb.aw:                                            ; preds = %bb.av
  %i.ee = load ptr, ptr %i.t, align 8, !alias.scope !563, !noalias !564, !nonnull !5, !align !89, !noundef !5 ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 40 ; 11 uses
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !577, !noalias !580, !noundef !5
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !alias.scope !577, !noalias !580
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 0, ptr %i.ej, align 8, !alias.scope !585, !noalias !580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !586
  invoke void @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ee)
          to label %.noexc114.i unwind label %.loopexit.loopexit.i.loopexit, !noalias !562

.noexc114.i:                                      ; preds = %bb.aw
  %i.ek = load i64, ptr %i.h, align 8, !range !4, !noalias !586, !noundef !5 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2
  %i.em = load ptr, ptr %i.dv, align 8, !noalias !586 ; 13 uses
  br i1 %i.el, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %.noexc114.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !586 ; 2 uses
  %i.en = trunc nuw i64 %i.ek to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  br i1 %i.en, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bl [
    i64 6, label %bb.az
    i64 4, label %bb.ba
    i64 10, label %bb.bb
  ]

bb.az:                                            ; preds = %bb.ay
  %i.eo = load i32, ptr %i.em, align 1
  %i.ep = xor i32 %i.eo, 1684104552
  %i.eq = getelementptr i8, ptr %i.em, i64 4
  %i.er = load i16, ptr %i.eq, align 1
  %i.es = zext i16 %i.er to i32
  %i.et = xor i32 %i.es, 29285
  %i.eu = or i32 %i.ep, %i.et
  %i.ev = icmp ne i32 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.bi, label %bb.bl

bb.ba:                                            ; preds = %bb.ay
  %i.ey = load i32, ptr %i.em, align 1
  %i.ez = icmp ne i32 %i.ey, 1717924456
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.bj, label %bb.bl

bb.bb:                                            ; preds = %bb.ay
  %i.fc = load i64, ptr %i.em, align 1
  %i.fd = xor i64 %i.fc, 6877952597994535013
  %i.fe = getelementptr i8, ptr %i.em, i64 8
  %i.ff = load i16, ptr %i.fe, align 1
  %i.fg = zext i16 %i.ff to i64
  %i.fh = xor i64 %i.fg, 28265
  %i.fi = or i64 %i.fd, %i.fh
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.bk, label %bb.bl

bb.bc:                                            ; preds = %bb.ax
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bl [
    i64 6, label %bb.bd
    i64 4, label %bb.be
    i64 10, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.fm = load i32, ptr %i.em, align 1
  %i.fn = xor i32 %i.fm, 1684104552
  %i.fo = getelementptr i8, ptr %i.em, i64 4
  %i.fp = load i16, ptr %i.fo, align 1
  %i.fq = zext i16 %i.fp to i32
  %i.fr = xor i32 %i.fq, 29285
  %i.fs = or i32 %i.fn, %i.fr
  %i.ft = icmp ne i32 %i.fs, 0
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.bi, label %bb.bl

bb.be:                                            ; preds = %bb.bc
  %i.fw = load i32, ptr %i.em, align 1
  %i.fx = icmp ne i32 %i.fw, 1717924456
  %i.fy = zext i1 %i.fx to i32
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.bj, label %bb.bl

bb.bf:                                            ; preds = %bb.bc
  %i.ga = load i64, ptr %i.em, align 1
  %i.gb = xor i64 %i.ga, 6877952597994535013
  %i.gc = getelementptr i8, ptr %i.em, i64 8
  %i.gd = load i16, ptr %i.gc, align 1
  %i.ge = zext i16 %i.gd to i64
  %i.gf = xor i64 %i.ge, 28265
  %i.gg = or i64 %i.gb, %i.gf
  %i.gh = icmp ne i64 %i.gg, 0
  %i.gi = zext i1 %i.gh to i32
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bk, label %bb.bl

bb.bg:                                            ; preds = %.noexc114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !586
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  br label %.loopexit

.body140.i:                                       ; preds = %.loopexit.loopexit.i.loopexit, %.loopexit.loopexit.i.loopexit.split-lp, %bb.da, %.body143.i, %.body127.i, %.body.i49, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i
  %.sroa.084.1.i = phi i8 [ %.sroa.084.5.i, %.body143.i ], [ 1, %.body.i49 ], [ 1, %.body127.i ], [ %.sroa.084.8.i, %bb.da ], [ %.sroa.084.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.i.loopexit.split-lp ], [ 1, %.loopexit.loopexit.i.loopexit ]
  %.sroa.086.1.i = phi i8 [ %.sroa.086.4.i, %.body143.i ], [ 1, %.body.i49 ], [ 1, %.body127.i ], [ %.sroa.086.4.i, %bb.da ], [ %.sroa.086.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.i.loopexit.split-lp ], [ 1, %.loopexit.loopexit.i.loopexit ] ; 2 uses
  %.pn107.i = phi { ptr, i32 } [ %.pn.i45, %.body143.i ], [ %eh.lpad-body.i, %.body.i49 ], [ %eh.lpad-body128.i, %.body127.i ], [ %i.jd, %bb.da ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp372.i, %.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.split-lp ] ; 2 uses
  %i.gk = load i64, ptr %i.r, align 8, !range !12, !noalias !549, !noundef !5
  %i.gl = icmp ne i64 %i.gk, -1
  %i.gm = trunc nuw i8 %.sroa.084.1.i to i1
  %or.cond5.i = select i1 %i.gl, i1 %i.gm, i1 false
  br i1 %or.cond5.i, label %bb.ds, label %.body148.i

.loopexit.loopexit.i.loopexit:                    ; preds = %bb.at, %bb.aw, %bb.bl, %bb.bq, %bb.ca
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

.loopexit.loopexit.i.loopexit.split-lp:           ; preds = %bb.ck
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.cj, %.loopexit.i.i.i131.i
  %lpad.loopexit.split-lp372.i = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i139.i, %bb.co, %bb.bz, %.loopexit.i.i.i120.i, %bb.bp, %.loopexit.i.i.i.i
  %.sroa.084.2.ph.i = phi i8 [ 1, %bb.co ], [ %.sroa.084.8.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i139.i ], [ 1, %bb.bp ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.invoke ], [ 1, %bb.bz ], [ 1, %.loopexit.i.i.i120.i ]
  %.sroa.086.2.ph.i = phi i8 [ 1, %bb.co ], [ %.sroa.086.4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i139.i ], [ 1, %bb.bp ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.invoke ], [ 1, %bb.bz ], [ 1, %.loopexit.i.i.i120.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

bb.bh:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !549
  %i.gn = load i64, ptr %i.s, align 8, !range !12, !noalias !549, !noundef !5
  %.not101.i = icmp eq i64 %i.gn, -1
  br i1 %.not101.i, label %bb.co, label %bb.cn

bb.bi:                                            ; preds = %bb.bd, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !586
  %i.go = load i64, ptr %i.s, align 8, !range !12, !noalias !549, !noundef !5
  %.not106.i = icmp eq i64 %i.go, -1
  br i1 %.not106.i, label %bb.bm, label %.invoke, !prof !110

bb.bj:                                            ; preds = %bb.be, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !586
  %i.gp = load i64, ptr %i.r, align 8, !range !12, !noalias !549, !noundef !5
  %.not105.i = icmp eq i64 %i.gp, -1
  br i1 %.not105.i, label %bb.bw, label %.invoke, !prof !110

bb.bk:                                            ; preds = %bb.bf, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !586
  br i1 %.not559, label %bb.cg, label %.invoke, !prof !110

bb.bl:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !586
  %i.gq = invoke fastcc noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs1YANDSn9Kib_7git_xet(ptr nonnull %i.ee)
          to label %bb.cm unwind label %.loopexit.loopexit.i.loopexit, !noalias !562 ; 2 uses

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !549
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !593, !noalias !596, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.eg, align 8, !alias.scope !603, !noalias !604 ; 2 uses
  %i.gt = icmp ult i64 %.promoted.i.i.i.i.i, %i.gs
  br i1 %i.gt, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bm
  %i.gu = load ptr, ptr %i.ef, align 8, !alias.scope !593, !noalias !596, !nonnull !5, !noundef !5
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %.lr.ph.i.i.i.i.i
  %i.gv = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.gy, %bb.bo ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !noalias !606, !noundef !5
  switch i8 %i.gx, label %bb.bp [
    i8 32, label %bb.bo
    i8 10, label %bb.bo
    i8 9, label %bb.bo
    i8 13, label %bb.bo
    i8 58, label %bb.bq
  ], !prof !472

bb.bo:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.gy = add i64 %i.gv, 1                        ; 3 uses
  store i64 %i.gy, ptr %i.eg, align 8, !alias.scope !607, !noalias !604
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gy, %i.gs
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bn

.loopexit.i.i.i.i:                                ; preds = %bb.bm, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !610
  store i64 3, ptr %i.f, align 8, !noalias !610
  %i.gz = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc115.i unwind label %.loopexit.split-lp.i, !noalias !562

.noexc115.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !610
  br label %.loopexit177.i

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !610
  store i64 6, ptr %i.g, align 8, !noalias !610
  %i.ha = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc116.i unwind label %.loopexit.split-lp.i, !noalias !562

.noexc116.i:                                      ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !610
  br label %.loopexit177.i

bb.bq:                                            ; preds = %bb.bn
  %i.hb = add i64 %i.gv, 1
  store i64 %i.hb, ptr %i.eg, align 8, !alias.scope !611, !noalias !614
  invoke void @_RINvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB5_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2n_4read9SliceReadEEB9_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ee)
          to label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i unwind label %.loopexit.loopexit.i.loopexit, !noalias !562

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i: ; preds = %bb.bq
  %.pr.i = load i64, ptr %i.q, align 8, !noalias !549 ; 3 uses
  %i.hc = icmp eq i64 %.pr.i, -1
  %.pre361.i = load ptr, ptr %.sroa.489.0..sroa_idx.i, align 8, !noalias !549 ; 3 uses
  br i1 %i.hc, label %.loopexit177.i, label %bb.br

.loopexit177.i:                                   ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i, %.noexc116.i, %.noexc115.i
  %i.hd = phi ptr [ %i.ha, %.noexc116.i ], [ %i.gz, %.noexc115.i ], [ %.pre361.i, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !549
  br label %.loopexit

bb.br:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i
  %.sroa.590.0.copyload.i = load i64, ptr %.sroa.590.0..sroa_idx.i, align 8, !noalias !549 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !549
  %i.he = load i64, ptr %i.s, align 8, !range !12, !alias.scope !615, !noalias !549, !noundef !5
  %i.hf = icmp eq i64 %i.he, -1
  br i1 %i.hf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEEB13_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i.i unwind label %bb.bt, !noalias !562

bb.bt:                                            ; preds = %bb.bs
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i49 unwind label %bb.bu, !noalias !562

bb.bu:                                            ; preds = %bb.bt
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !562
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEEB13_.exit.i unwind label %bb.bv, !noalias !562

bb.bv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i49

.body.i49:                                        ; preds = %bb.bv, %bb.bt
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hi, %bb.bv ], [ %i.hg, %bb.bt ]
  store i64 %.pr.i, ptr %i.s, align 8, !noalias !549
  store ptr %.pre361.i, ptr %.sroa.622.0..sroa_idx23.i, align 8, !noalias !549
  store i64 %.sroa.590.0.copyload.i, ptr %.sroa.7.0..sroa_idx25.i, align 8, !noalias !549
  br label %.body140.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEEB13_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i.i, %bb.br
  store i64 %.pr.i, ptr %i.s, align 8, !noalias !549
  store ptr %.pre361.i, ptr %.sroa.622.0..sroa_idx23.i, align 8, !noalias !549
  store i64 %.sroa.590.0.copyload.i, ptr %.sroa.7.0..sroa_idx25.i, align 8, !noalias !549
  br label %.backedge

bb.bw:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !549
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !624, !noalias !627, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i119.i = load i64, ptr %i.eg, align 8, !alias.scope !634, !noalias !635 ; 2 uses
  %i.hl = icmp ult i64 %.promoted.i.i.i.i119.i, %i.hk
  br i1 %i.hl, label %.lr.ph.i.i.i.i122.i, label %.loopexit.i.i.i120.i

.lr.ph.i.i.i.i122.i:                              ; preds = %bb.bw
  %i.hm = load ptr, ptr %i.ef, align 8, !alias.scope !624, !noalias !627, !nonnull !5, !noundef !5
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %.lr.ph.i.i.i.i122.i
  %i.hn = phi i64 [ %.promoted.i.i.i.i119.i, %.lr.ph.i.i.i.i122.i ], [ %i.hq, %bb.by ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !637, !noundef !5
  switch i8 %i.hp, label %bb.bz [
    i8 32, label %bb.by
    i8 10, label %bb.by
    i8 9, label %bb.by
    i8 13, label %bb.by
    i8 58, label %bb.ca
  ], !prof !472

bb.by:                                            ; preds = %bb.bx, %bb.bx, %bb.bx, %bb.bx
  %i.hq = add i64 %i.hn, 1                        ; 3 uses
  store i64 %i.hq, ptr %i.eg, align 8, !alias.scope !638, !noalias !635
  %exitcond.not.i.i.i.i123.i = icmp eq i64 %i.hq, %i.hk
  br i1 %exitcond.not.i.i.i.i123.i, label %.loopexit.i.i.i120.i, label %bb.bx

.loopexit.i.i.i120.i:                             ; preds = %bb.bw, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !641
  store i64 3, ptr %i.d, align 8, !noalias !641
  %i.hr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc124.i unwind label %.loopexit.split-lp.i, !noalias !562

.noexc124.i:                                      ; preds = %.loopexit.i.i.i120.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !641
  br label %.loopexit175.i

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !641
  store i64 6, ptr %i.e, align 8, !noalias !641
  %i.hs = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc125.i unwind label %.loopexit.split-lp.i, !noalias !562

.noexc125.i:                                      ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !641
  br label %.loopexit175.i

bb.ca:                                            ; preds = %bb.bx
  %i.ht = add i64 %i.hn, 1
  store i64 %i.ht, ptr %i.eg, align 8, !alias.scope !642, !noalias !645
  invoke void @_RINvXs6_NtNtCs6SYjS1KFWza_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ee)
          to label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i unwind label %.loopexit.loopexit.i.loopexit, !noalias !562

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.ca
  %.pr173.i = load i64, ptr %i.p, align 8, !noalias !549 ; 3 uses
  %i.hu = icmp eq i64 %.pr173.i, -1
  %.pre360.i = load ptr, ptr %.sroa.492.0..sroa_idx.i, align 8, !noalias !549 ; 3 uses
  br i1 %i.hu, label %.loopexit175.i, label %bb.cb

.loopexit175.i:                                   ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i, %.noexc125.i, %.noexc124.i
  %i.hv = phi ptr [ %i.hs, %.noexc125.i ], [ %i.hr, %.noexc124.i ], [ %.pre360.i, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !549
  br label %.loopexit

bb.cb:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i
  %.sroa.593.0.copyload.i = load i64, ptr %.sroa.593.0..sroa_idx.i, align 8, !noalias !549 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !549
  %i.hw = load i64, ptr %i.r, align 8, !range !12, !alias.scope !646, !noalias !549, !noundef !5
  %i.hx = icmp eq i64 %i.hw, -1
  br i1 %i.hx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs1YANDSn9Kib_7git_xet.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
end_hunk_1
