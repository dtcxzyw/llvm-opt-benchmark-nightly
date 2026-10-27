Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.03?download=true
inline.NumInlined: 2062
inline.NumDeleted: 1232
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs31YAwBA1AlL_19xet_core_structures5error9CoreErrorECs9SMuO7kbZ2K_7git_xet:bb.a
  %i.x = icmp ne i64 %i.w, 1095216660480
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.assume(i1 %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !1741
  store i8 3, ptr %i.b, align 8, !alias.scope !1741
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.i, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.l:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.l
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.o:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit6 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit6: ; preds = %bb.o
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.ba, %bb.az, %bb.aw, %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit.i, %bb.aj, %bb.f, %bb.e, %bb.b, %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECs9SMuO7kbZ2K_7git_xet.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit18, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit16, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit14, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.r:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit8 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit8: ; preds = %bb.r
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.u:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit10 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit10: ; preds = %bb.u
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.x:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit12 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit12: ; preds = %bb.x
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.aa:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit14 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit14: ; preds = %bb.aa
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.ad:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit16 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit16: ; preds = %bb.ad
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.ag:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit18 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit18: ; preds = %bb.ag
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.aj:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.ay, align 8, !range !1742, !noundef !8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.az, align 8           ; 4 uses
  %i.ba = icmp ne i64 %.val3, 6
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %.val3, 7
  br i1 %i.bb, label %bb.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bc = ptrtoint ptr %.val4 to i64              ; 2 uses
  %i.bd = and i64 %i.bc, 3
  switch i64 %i.bd, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit.i
    i64 3, label %bb.al
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit.i
    i64 1, label %bb.am
  ], !prof !19

bb.al:                                            ; preds = %bb.ak
  %i.be = icmp ult ptr %.val4, inttoptr (i64 188978561024 to ptr)
  %i.bf = and i64 %i.bc, 1095216660480
  %i.bg = icmp ne i64 %i.bf, 1095216660480
  tail call void @llvm.assume(i1 %i.be)
  tail call void @llvm.assume(i1 %i.bg)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.bh = getelementptr i8, ptr %.val4, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !alias.scope !1743
  store i8 3, ptr %i.a, align 8, !alias.scope !1743
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.an:                                            ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !20, !alias.scope !1744, !noundef !8
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %i.bl, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.ar:                                            ; preds = %bb.an
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash5error13DataHashErrorECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.ao, %bb.ar
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.au:                                            ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.br)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.av:                                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !1745, !noundef !8
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.bu, align 8, !alias.scope !1745, !noundef !8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.bv, align 8, !alias.scope !1745 ; 6 uses
  %i.bw = icmp eq ptr %.val.i, null
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.bx = load ptr, ptr %.val1.i, align 8, !invariant.load !8, !noalias !1745 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void %i.bx(ptr noundef nonnull %.val.i)
          to label %bb.az unwind label %bb.bb, !noalias !1745

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !9, !invariant.load !8, !noalias !1745 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !10, !invariant.load !8, !noalias !1745
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #11, !noalias !1745
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorECs9SMuO7kbZ2K_7git_xet.exit

bb.bb:                                            ; preds = %bb.ay
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !9, !invariant.load !8, !noalias !1745 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !10, !invariant.load !8, !noalias !1745
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.cf, i64 noundef range(i64 1, 536870913) %i.ci) #11, !noalias !1745
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs942S7uueXw1_7tracing4span4SpanECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 2
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs942S7uueXw1_7tracing4span5InnerEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !range !15, !alias.scope !1760, !noundef !8
  %i.d = invoke noundef zeroext i1 @_RNvMs2_NtCs94TQx44N27d_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.c)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs942S7uueXw1_7tracing4span5InnerEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #14
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs942S7uueXw1_7tracing4span5InnerEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1767, !nonnull !8, !noundef !8
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !1767
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs942S7uueXw1_7tracing4span5InnerEECs9SMuO7kbZ2K_7git_xet.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs942S7uueXw1_7tracing4span5InnerEECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs942S7uueXw1_7tracing4span5InnerEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs9SMuO7kbZ2K_7git_xet.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE15try_read_outputCs9SMuO7kbZ2K_7git_xet:bb.a

_RNCNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2g_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3R_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1G_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3V_13deduplication8chunking7ChunkerEE0EENtNtB14_8schedule16BlockingScheduleE11take_output0Cs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2522
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !13, !alias.scope !2523, !noundef !8
  %.not.i = icmp eq i64 %i.n, -2
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2g_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3R_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1G_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3V_13deduplication8chunking7ChunkerEE0EENtNtB14_8schedule16BlockingScheduleE11take_output0Cs9SMuO7kbZ2K_7git_xet.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit
  ret void

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RNCNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2g_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3R_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1G_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3V_13deduplication8chunking7ChunkerEE0EENtNtB14_8schedule16BlockingScheduleE11take_output0Cs9SMuO7kbZ2K_7git_xet.exit, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE21drop_join_handle_slowCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2526
  store i32 2, ptr %i.a, align 8, !noalias !2526
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2e_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3P_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1E_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3T_13deduplication8chunking7ChunkerEE0EENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2526
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !10, !invariant.load !8
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !10, !invariant.load !8
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskIBC_NCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2M_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB4n_17SingleFileCleaner19add_data_chunk_impl000TINtNtBG_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB4r_13deduplication8chunking7ChunkerEE0EENtNtB24_8schedule16BlockingScheduleEEECs9SMuO7kbZ2K_7git_xet(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_RNvMs6_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE4pollCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 8 uses
  %i.e = alloca [88 x i8], align 8                ; 11 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [80 x i8], align 8                ; 10 uses
  %.sroa.716.i.i = alloca [32 x i8], align 8      ; 5 uses
  %.sroa.12.sroa.7.i.i = alloca [32 x i8], align 8 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit
    i8 3, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.w, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCsUrhh0HcRih_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2539
  store ptr %i.i, ptr %i.g, align 8, !noalias !2540
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.l, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !2540
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !2540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2540
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2e_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3P_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1E_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3T_13deduplication8chunking7ChunkerEE0EENtNtB12_8schedule16BlockingScheduleE4pollCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !2541

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2539
  store i32 2, ptr %i.f, align 8, !noalias !2539
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2e_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3P_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1E_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3T_13deduplication8chunking7ChunkerEE0EENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !2539

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !2539
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2539
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !2540 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12, !noalias !2540
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2539
  %.sroa.074.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !2540 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2540 ; 2 uses
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.13.0.copyload.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !2540 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.14.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !2540
  %.sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.14.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2540
  %.sroa.14.sroa.7.0..sroa.14.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.14.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.14.sroa.7.0..sroa.14.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2540
  %.sroa.14.sroa.8.0..sroa.14.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.sroa.8.0..sroa.14.0..sroa_idx.sroa_idx.i.i, i64 32, i1 false), !noalias !2540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2540
  switch i64 %.sroa.13.0.copyload.i.i, label %bb.h [
    i64 -2, label %bb.g
    i64 -1, label %bb.w
  ], !prof !24

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.091101.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.8.0.copyload.i.i, %bb.f ]
  %.sroa.074.093100.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.074.0.copyload.i.i, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8, !range !15, !noalias !2540, !noundef !8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.716.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.sroa.7.i.i, i64 32, i1 false), !noalias !2540
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.7.0.i.i = phi ptr [ %.sroa.14.sroa.7.0.copyload.i.i, %bb.h ], [ %.sroa.8.091101.i.i, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.14.sroa.6.0.copyload.i.i, %bb.h ], [ %.sroa.074.093100.i.i, %bb.g ]
  %.sroa.6.sroa.0.0.i.i = phi i64 [ %.sroa.14.sroa.0.0.copyload.i.i, %bb.h ], [ %i.v, %bb.g ]
  %.sroa.012.sroa.5.0.i.i = phi ptr [ %.sroa.8.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.012.sroa.0.0.i.i = phi ptr [ %.sroa.074.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.13.0.copyload.i.i, %bb.h ], [ -1, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2542
  store ptr %.sroa.012.sroa.0.0.i.i, ptr %i.w, align 8, !noalias !2540
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.012.sroa.5.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2540
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.5.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2540
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.6.sroa.0.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !2540
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2540
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.6.sroa.7.0.i.i, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2540
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.716.i.i, i64 32, i1 false), !noalias !2540
  store i32 1, ptr %i.e, align 8, !noalias !2542
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2e_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3P_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1E_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3T_13deduplication8chunking7ChunkerEE0EENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e)
          to label %.thread107.i.i unwind label %bb.j, !noalias !2540

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.y)
          to label %bb.l unwind label %bb.k, !noalias !2540 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12, !noalias !2540
  unreachable

.thread107.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2542
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { ptr, ptr } %i.z, 0       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = extractvalue { ptr, ptr } %i.z, 1       ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !8, !noalias !2540 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ad(ptr noundef nonnull %i.ab)
          to label %bb.n unwind label %bb.p, !noalias !2540

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !9, !invariant.load !8, !noalias !2540 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !10, !invariant.load !8, !noalias !2540
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, -9223372036854775808) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #11, !noalias !2540
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !9, !invariant.load !8, !noalias !2540 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !10, !invariant.load !8, !noalias !2540
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #11, !noalias !2540
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aj

bb.r:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2e_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3P_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1E_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3T_13deduplication8chunking7ChunkerEE0EENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ar)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2g_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3R_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1G_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3V_13deduplication8chunking7ChunkerEE0EENtNtB14_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet.exit.i

bb.v:                                             ; preds = %bb.s
  %i.au = extractvalue { ptr, ptr } %i.as, 0
  %i.av = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  br label %_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2g_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3R_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1G_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3V_13deduplication8chunking7ChunkerEE0EENtNtB14_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet.exit.i

_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2g_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3R_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1G_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3V_13deduplication8chunking7ChunkerEE0EENtNtB14_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ %i.av, %bb.v ], [ undef, %bb.u ]
  %.sroa.63.0.i.i = phi ptr [ %i.au, %bb.v ], [ null, %bb.u ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !15, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2e_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3P_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1E_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3T_13deduplication8chunking7ChunkerEE0EENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  %i.aw = call noundef i8 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.aw, label %default.unreachable [
    i8 3, label %bb.y
    i8 0, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread12
    i8 1, label %bb.ad
    i8 2, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit
  ]

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread12: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

bb.x:                                             ; preds = %bb.o, %bb.n, %.thread107.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2e_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3P_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1E_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3T_13deduplication8chunking7ChunkerEE0EENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread8

bb.ac:                                            ; preds = %bb.z
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread8

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread8: ; preds = %bb.ab, %bb.ac
  %.sroa.8.0.i1.i = phi ptr [ %i.bc, %bb.ac ], [ undef, %bb.ab ]
  %.sroa.63.0.i2.i = phi ptr [ %i.bb, %bb.ac ], [ null, %bb.ab ]
  %.sroa.02.0.in.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i4.i = load i64, ptr %.sroa.02.0.in.i3.i, align 8, !range !15, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i5.i, align 8
  %.sroa.5.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.02.0.i4.i, ptr %.sroa.5.0..sroa_idx.i6.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.8.0.i1.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2e_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3P_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1E_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3T_13deduplication8chunking7ChunkerEE0EENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread6

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread: ; preds = %_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2g_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3R_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1G_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3V_13deduplication8chunking7ChunkerEE0EENtNtB14_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet.exit.i, %bb.x, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread8
  call fastcc void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE8completeCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

bb.ad:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvYNtNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking8schedule16BlockingScheduleNtNtB8_4task8Schedule9yield_nowCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, ptr noundef nonnull %0)
  %i.bd = call noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.bd, label %bb.ae, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskIBC_NCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2M_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB4n_17SingleFileCleaner19add_data_chunk_impl000TINtNtBG_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB4r_13deduplication8chunking7ChunkerEE0EENtNtB24_8schedule16BlockingScheduleEEECs9SMuO7kbZ2K_7git_xet(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.a, %bb.ae, %bb.ad, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread12, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread6, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread
  ret void

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread6: ; preds = %bb.a, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskIBC_NCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2M_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB4n_17SingleFileCleaner19add_data_chunk_impl000TINtNtBG_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB4r_13deduplication8chunking7ChunkerEE0EENtNtB24_8schedule16BlockingScheduleEEECs9SMuO7kbZ2K_7git_xet(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE8completeCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2546
  store i32 2, ptr %i.a, align 8, !noalias !2546
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2e_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3P_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1E_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3T_13deduplication8chunking7ChunkerEE0EENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE15try_read_outputCs9SMuO7kbZ2K_7git_xet:bb.a

_RNCNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1H_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3i_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3m_13deduplication8chunking7ChunkerEE0ENtNtB14_8schedule16BlockingScheduleE11take_output0Cs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2667
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !13, !alias.scope !2668, !noundef !8
  %.not.i = icmp eq i64 %i.n, -2
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1H_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3i_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3m_13deduplication8chunking7ChunkerEE0ENtNtB14_8schedule16BlockingScheduleE11take_output0Cs9SMuO7kbZ2K_7git_xet.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit
  ret void

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCsjHtSR7YjKD4_8xet_data13deduplication8chunking7ChunkerENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RNCNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1H_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3i_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3m_13deduplication8chunking7ChunkerEE0ENtNtB14_8schedule16BlockingScheduleE11take_output0Cs9SMuO7kbZ2K_7git_xet.exit, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE21drop_join_handle_slowCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2671
  store i32 2, ptr %i.a, align 8, !noalias !2671
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1F_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3g_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3k_13deduplication8chunking7ChunkerEE0ENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2671
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !10, !invariant.load !8
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #11
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !10, !invariant.load !8
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #11
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2I_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB4j_17SingleFileCleaner19add_data_chunk_impl000TINtNtBG_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB4n_13deduplication8chunking7ChunkerEE0ENtNtB24_8schedule16BlockingScheduleEEECs9SMuO7kbZ2K_7git_xet(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9SMuO7kbZ2K_7git_xet.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_RNvMs6_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE4pollCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 8 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 8 uses
  %i.e = alloca [112 x i8], align 8               ; 11 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [80 x i8], align 8                ; 10 uses
  %.sroa.716.i.i = alloca [32 x i8], align 8      ; 5 uses
  %.sroa.12.sroa.7.i.i = alloca [32 x i8], align 8 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = tail call noundef i8 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.r
    i8 2, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit
    i8 3, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread6
  ]

default.unreachable:                              ; preds = %bb.w, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtNtNtCsUrhh0HcRih_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.k, align 8
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2684
  store ptr %i.i, ptr %i.g, align 8, !noalias !2685
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.l, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !noalias !2685
  %.sroa.14.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.14.8..sroa_idx.i.i, align 8, !noalias !2685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2685
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1F_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3g_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3k_13deduplication8chunking7ChunkerEE0ENtNtB12_8schedule16BlockingScheduleE4pollCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.f unwind label %bb.c, !noalias !2686

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2684
  store i32 2, ptr %i.f, align 8, !noalias !2684
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1F_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3g_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3k_13deduplication8chunking7ChunkerEE0ENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !2684

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !2684
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2684
  %i.p = extractvalue { ptr, i32 } %i.n, 0
  %i.q = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.p)
          to label %.thread.i.i unwind label %bb.e, !noalias !2685 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12, !noalias !2685
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2684
  %.sroa.074.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !2685 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2685 ; 2 uses
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.13.0.copyload.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !2685 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.14.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !2685
  %.sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.14.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2685
  %.sroa.14.sroa.7.0..sroa.14.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.14.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.14.sroa.7.0..sroa.14.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2685
  %.sroa.14.sroa.8.0..sroa.14.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.sroa.8.0..sroa.14.0..sroa_idx.sroa_idx.i.i, i64 32, i1 false), !noalias !2685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2685
  switch i64 %.sroa.13.0.copyload.i.i, label %bb.h [
    i64 -2, label %bb.g
    i64 -1, label %bb.w
  ], !prof !24

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %.sroa.8.091101.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %.sroa.8.0.copyload.i.i, %bb.f ]
  %.sroa.074.093100.i.i = phi ptr [ %i.s, %.thread.i.i ], [ %.sroa.074.0.copyload.i.i, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8, !range !15, !noalias !2685, !noundef !8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.716.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.sroa.7.i.i, i64 32, i1 false), !noalias !2685
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.sroa.7.0.i.i = phi ptr [ %.sroa.14.sroa.7.0.copyload.i.i, %bb.h ], [ %.sroa.8.091101.i.i, %bb.g ]
  %.sroa.6.sroa.6.0.i.i = phi ptr [ %.sroa.14.sroa.6.0.copyload.i.i, %bb.h ], [ %.sroa.074.093100.i.i, %bb.g ]
  %.sroa.6.sroa.0.0.i.i = phi i64 [ %.sroa.14.sroa.0.0.copyload.i.i, %bb.h ], [ %i.v, %bb.g ]
  %.sroa.012.sroa.5.0.i.i = phi ptr [ %.sroa.8.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.012.sroa.0.0.i.i = phi ptr [ %.sroa.074.0.copyload.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.13.0.copyload.i.i, %bb.h ], [ -1, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2687
  store ptr %.sroa.012.sroa.0.0.i.i, ptr %i.w, align 8, !noalias !2685
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.012.sroa.5.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2685
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.5.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2685
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.6.sroa.0.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !2685
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.6.sroa.6.0.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2685
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.6.sroa.7.0.i.i, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2685
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.716.i.i, i64 32, i1 false), !noalias !2685
  store i32 1, ptr %i.e, align 8, !noalias !2687
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1F_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3g_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3k_13deduplication8chunking7ChunkerEE0ENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.e)
          to label %.thread107.i.i unwind label %bb.j, !noalias !2685

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.y)
          to label %bb.l unwind label %bb.k, !noalias !2685 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12, !noalias !2685
  unreachable

.thread107.i.i:                                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2687
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.ab = extractvalue { ptr, ptr } %i.z, 0       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = extractvalue { ptr, ptr } %i.z, 1       ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !8, !noalias !2685 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ad(ptr noundef nonnull %i.ab)
          to label %bb.n unwind label %bb.p, !noalias !2685

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !9, !invariant.load !8, !noalias !2685 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !10, !invariant.load !8, !noalias !2685
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, -9223372036854775808) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #11, !noalias !2685
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !9, !invariant.load !8, !noalias !2685 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !10, !invariant.load !8, !noalias !2685
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #11, !noalias !2685
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet.exit4.i.i.i.i: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.aj

bb.r:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1F_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3g_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3k_13deduplication8chunking7ChunkerEE0ENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ar)
          to label %bb.v unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1H_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3i_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3m_13deduplication8chunking7ChunkerEE0ENtNtB14_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet.exit.i

bb.v:                                             ; preds = %bb.s
  %i.au = extractvalue { ptr, ptr } %i.as, 0
  %i.av = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  br label %_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1H_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3i_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3m_13deduplication8chunking7ChunkerEE0ENtNtB14_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet.exit.i

_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1H_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3i_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3m_13deduplication8chunking7ChunkerEE0ENtNtB14_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.8.0.i.i = phi ptr [ %i.av, %bb.v ], [ undef, %bb.u ]
  %.sroa.63.0.i.i = phi ptr [ %i.au, %bb.v ], [ null, %bb.u ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !15, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1F_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3g_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3k_13deduplication8chunking7ChunkerEE0ENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  %i.aw = call noundef i8 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.aw, label %default.unreachable [
    i8 3, label %bb.y
    i8 0, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread12
    i8 1, label %bb.ad
    i8 2, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit
  ]

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread12: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

bb.x:                                             ; preds = %bb.o, %bb.n, %.thread107.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1F_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3g_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3k_13deduplication8chunking7ChunkerEE0ENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #12
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread8

bb.ac:                                            ; preds = %bb.z
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread8

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread8: ; preds = %bb.ab, %bb.ac
  %.sroa.8.0.i1.i = phi ptr [ %i.bc, %bb.ac ], [ undef, %bb.ab ]
  %.sroa.63.0.i2.i = phi ptr [ %i.bb, %bb.ac ], [ null, %bb.ab ]
  %.sroa.02.0.in.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i4.i = load i64, ptr %.sroa.02.0.in.i3.i, align 8, !range !15, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i5.i, align 8
  %.sroa.5.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.02.0.i4.i, ptr %.sroa.5.0..sroa_idx.i6.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.63.0.i2.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i7.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.8.0.i1.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i8.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1F_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3g_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3k_13deduplication8chunking7ChunkerEE0ENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread6

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread: ; preds = %_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1H_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3i_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3m_13deduplication8chunking7ChunkerEE0ENtNtB14_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet.exit.i, %bb.x, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread8
  call fastcc void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE8completeCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

bb.ad:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvYNtNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking8schedule16BlockingScheduleNtNtB8_4task8Schedule9yield_nowCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, ptr noundef nonnull %0)
  %i.bd = call noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.bd, label %bb.ae, label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2I_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB4j_17SingleFileCleaner19add_data_chunk_impl000TINtNtBG_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB4n_13deduplication8chunking7ChunkerEE0ENtNtB24_8schedule16BlockingScheduleEEECs9SMuO7kbZ2K_7git_xet(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.a, %bb.ae, %bb.ad, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread12, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread6, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread
  ret void

_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit.thread6: ; preds = %bb.a, %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE10poll_innerCs9SMuO7kbZ2K_7git_xet.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2I_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB4j_17SingleFileCleaner19add_data_chunk_impl000TINtNtBG_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB4n_13deduplication8chunking7ChunkerEE0ENtNtB24_8schedule16BlockingScheduleEEECs9SMuO7kbZ2K_7git_xet(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE14drop_referenceCs9SMuO7kbZ2K_7git_xet.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE8completeCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2691
  store i32 2, ptr %i.a, align 8, !noalias !2691
  invoke void @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1F_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3g_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3k_13deduplication8chunking7ChunkerEE0ENtNtB12_8schedule16BlockingScheduleE9set_stageCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
end_hunk_2
