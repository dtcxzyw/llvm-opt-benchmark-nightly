inline.NumInlined: 212
inline.NumDeleted: 107
begin_hunk_0_@_ZN5arrow2io16LatencyGeneratorD0Ev
define void @_ZN5arrow2io16LatencyGeneratorD0Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16LatencyGenerator5SleepEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef double %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 3 uses
  %i.e = fcmp ugt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %_ZNSt11this_thread9sleep_forIdSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = fptosi double %i.d to i64                ; 2 uses
  %i.g = sitofp i64 %i.f to double
  %i.h = fsub double %i.d, %i.g
  %i.i = fmul double %i.h, 1.000000e+09
  %i.j = fptosi double %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i64 %i.f, ptr %1, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.l = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__errno_location() #25
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %bb.c, label %.critedge.i, !llvm.loop !13

.critedge.i:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %_ZNSt11this_thread9sleep_forIdSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE.exit

_ZNSt11this_thread9sleep_forIdSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.a, %.critedge.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16LatencyGenerator4MakeEd(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, double noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN5arrow2io20LatencyGeneratorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %i.a = tail call noundef i64 @_ZN5arrow8internal13GetRandomSeedEv()
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !15 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !20, !noalias !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !23, !noalias !22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !7, !noalias !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io20LatencyGeneratorImplE, i64 16), ptr %i.e, align 8, !tbaa !7, !noalias !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %sext = shl i64 %i.a, 32
  %i.g = ashr exact i64 %sext, 32
  %i.h = urem i64 %i.g, 2147483647
  %storemerge.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  store i64 %storemerge.i.i.i.i.i.i.i.i.i, ptr %i.f, align 8, !tbaa !24, !noalias !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double %1, ptr %i.i, align 8, !tbaa !26, !noalias !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.scalar = fmul double %1, 1.000000e-01
  %i.k = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.scalar, i64 0
  store <2 x double> %i.k, ptr %i.j, align 8, !tbaa !29, !noalias !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %i.l, align 8, !tbaa !30, !noalias !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false), !noalias !22
  store ptr %i.e, ptr %0, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.n, align 8, !tbaa !39
  ret void
}

declare noundef i64 @_ZN5arrow8internal13GetRandomSeedEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16LatencyGenerator4MakeEdi(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN5arrow2io20LatencyGeneratorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !40 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !20, !noalias !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !23, !noalias !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !7, !noalias !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io20LatencyGeneratorImplE, i64 16), ptr %i.d, align 8, !tbaa !7, !noalias !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = sext i32 %2 to i64
  %i.g = urem i64 %i.f, 2147483647
  %storemerge.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  store i64 %storemerge.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !24, !noalias !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %1, ptr %i.h, align 8, !tbaa !26, !noalias !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.scalar = fmul double %1, 1.000000e-01
  %i.j = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.scalar, i64 0
  store <2 x double> %i.j, ptr %i.i, align 8, !tbaa !29, !noalias !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.k, align 8, !tbaa !30, !noalias !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false), !noalias !45
  store ptr %i.d, ptr %0, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io15SlowInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0, ptr noundef readonly captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr i8, ptr %i.i, i64 -64
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  store ptr %i.h, ptr %i.l, align 8, !tbaa !7
  %i.m = load ptr, ptr %0, align 8, !tbaa !7
  %i.n = getelementptr i8, ptr %i.m, i64 -56
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  invoke void @_ZN5arrow2io8internal19CloseFromDestructorEPNS0_13FileInterfaceE(ptr noundef nonnull %i.p)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.r, i64 -56
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %0, align 8, !tbaa !7
  %i.aa = getelementptr i8, ptr %i.z, i64 -64
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.af, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !23
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !46
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24, !inline_history !46
  br label %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.ai, %bb.f ], [ %i.as, %bb.g ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.at, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !48

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #24
  br label %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i2.i, label %_ZN5arrow2io19SlowInputStreamBaseINS0_11InputStreamEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aw, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !23
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #24, !inline_history !49
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #24, !inline_history !49
  br label %_ZN5arrow2io19SlowInputStreamBaseINS0_11InputStreamEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i3.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.m:                                             ; preds = %bb.k
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i5.i = phi i32 [ %i.az, %bb.l ], [ %i.bj, %bb.m ]
  %i.bk = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.bk, label %bb.n, label %_ZN5arrow2io19SlowInputStreamBaseINS0_11InputStreamEED2Ev.exit, !prof !48

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #24
  br label %_ZN5arrow2io19SlowInputStreamBaseINS0_11InputStreamEED2Ev.exit

_ZN5arrow2io19SlowInputStreamBaseINS0_11InputStreamEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #23
  unreachable
}

declare void @_ZN5arrow2io8internal19CloseFromDestructorEPNS0_13FileInterfaceE(ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io15SlowInputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow2io15SlowInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @_ZTTN5arrow2io15SlowInputStreamE) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #24
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5arrow2io15SlowInputStreamD1Ev(ptr noundef %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @_ZN5arrow2io15SlowInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @_ZTTN5arrow2io15SlowInputStreamE) #24, !inline_history !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #24, !inline_history !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io15SlowInputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow2io15SlowInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @_ZTTN5arrow2io15SlowInputStreamE) #24, !inline_history !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #24, !inline_history !50
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #27
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5arrow2io15SlowInputStreamD0Ev(ptr noundef %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  tail call void @_ZN5arrow2io15SlowInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @_ZTTN5arrow2io15SlowInputStreamE) #24, !inline_history !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #24, !inline_history !51
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef 72) #27, !inline_history !52
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io15SlowInputStream5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr i8, ptr %i.c, i64 -56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.f)
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n32_N5arrow2io15SlowInputStream5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef readonly captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7, !noalias !56
  %i.h = getelementptr i8, ptr %i.g, i64 -56
  %i.i = load i64, ptr %i.h, align 8, !noalias !56
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7, !noalias !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !56
  tail call void %i.m(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.j), !inline_history !59
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io15SlowInputStream5AbortEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr i8, ptr %i.c, i64 -56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.f)
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n48_N5arrow2io15SlowInputStream5AbortEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef readonly captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !60 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7, !noalias !60
  %i.h = getelementptr i8, ptr %i.g, i64 -56
  %i.i = load i64, ptr %i.h, align 8, !noalias !60
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7, !noalias !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !60
  tail call void %i.m(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.j), !inline_history !63
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow2io15SlowInputStream6closedEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr i8, ptr %i.c, i64 -56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(28) %i.f)
  ret i1 %i.j
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZTv0_n64_NK5arrow2io15SlowInputStream6closedEv(ptr noundef readonly captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr i8, ptr %i.g, i64 -56
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(28) %i.j), !inline_history !64
end_hunk_0
begin_hunk_1_@_ZN5arrow2io15SlowInputStream4ReadEl:bb.a
  %i.k = fmul double %i.j, 1.000000e+09
  %i.l = fptosi double %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i64 %i.h, ptr %3, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @__errno_location() #25
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.c, label %.critedge.i.i, !llvm.loop !13

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5arrow2io16LatencyGenerator5SleepEv.exit

_ZN5arrow2io16LatencyGenerator5SleepEv.exit:      ; preds = %bb.a, %.critedge.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.v = getelementptr i8, ptr %i.u, i64 -64
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr dead_on_unwind writable sret(%"class.arrow::Result.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %2)
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n40_N5arrow2io15SlowInputStream4ReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.8") align 8 %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -40
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !75 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7, !noalias !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !75
  %i.j = tail call noundef double %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !75, !inline_history !78 ; 3 uses
  %i.k = fcmp ugt double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.b, label %_ZN5arrow2io15SlowInputStream4ReadEl.exit

bb.b:                                             ; preds = %bb.a
  %i.l = fptosi double %i.j to i64                ; 2 uses
  %i.m = sitofp i64 %i.l to double
  %i.n = fsub double %i.j, %i.m
  %i.o = fmul double %i.n, 1.000000e+09
  %i.p = fptosi double %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !75
  store i64 %i.l, ptr %3, align 8, !tbaa !9, !noalias !75
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !12, !noalias !75
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3), !noalias !75
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %.critedge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = tail call ptr @__errno_location() #25
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3, !noalias !75
  %i.v = icmp eq i32 %i.u, 4
  br i1 %i.v, label %bb.c, label %.critedge.i.i.i, !llvm.loop !13

.critedge.i.i.i:                                  ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !75
  br label %_ZN5arrow2io15SlowInputStream4ReadEl.exit

_ZN5arrow2io15SlowInputStream4ReadEl.exit:        ; preds = %bb.a, %.critedge.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53, !noalias !75 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7, !noalias !75
  %i.z = getelementptr i8, ptr %i.y, i64 -64
  %i.aa = load i64, ptr %i.z, align 8, !noalias !75
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7, !noalias !75
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !75
  call void %i.ae(ptr dead_on_unwind writable sret(%"class.arrow::Result.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %2), !inline_history !79
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io15SlowInputStream4PeekEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.12") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.arrow::Result.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io20SlowRandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr i8, ptr %i.i, i64 -64
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  store ptr %i.h, ptr %i.l, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 240), ptr %i.m, align 8, !tbaa !7
  %i.n = load ptr, ptr %0, align 8, !tbaa !7
  %i.o = getelementptr i8, ptr %i.n, i64 -56
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  invoke void @_ZN5arrow2io8internal19CloseFromDestructorEPNS0_13FileInterfaceE(ptr noundef nonnull %i.q)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.r) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr i8, ptr %i.i, i64 -64
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  store ptr %i.h, ptr %i.l, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEEE, i64 200), ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.p, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !23
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #24, !inline_history !80
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #24, !inline_history !80
  br label %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #24
  br label %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39 ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.af, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !23
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #24, !inline_history !81
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #24, !inline_history !81
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i3 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

bb.l:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i5 = phi i32 [ %i.aj, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i.i.i.i5, 1
  br i1 %i.au, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #24
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.av) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io20SlowRandomAccessFileD1Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16), (56, 64)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 328), ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 64), ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 240), ptr %i.b, align 8, !tbaa !7
  invoke void @_ZN5arrow2io8internal19CloseFromDestructorEPNS0_13FileInterfaceE(ptr noundef nonnull %i.a)
          to label %_ZN5arrow2io20SlowRandomAccessFileD2Ev.exit unwind label %bb.b, !inline_history !82

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23, !inline_history !82
  unreachable

_ZN5arrow2io20SlowRandomAccessFileD2Ev.exit:      ; preds = %bb.a
  tail call void @_ZN5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io20SlowRandomAccessFileE, i64 8)) #24, !inline_history !82
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5arrow2io20SlowRandomAccessFileD1Ev(ptr noundef %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 328), ptr %i.e, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 64), ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 240), ptr %i.f, align 8, !tbaa !7
  invoke void @_ZN5arrow2io8internal19CloseFromDestructorEPNS0_13FileInterfaceE(ptr noundef nonnull %i.e)
          to label %_ZN5arrow2io20SlowRandomAccessFileD1Ev.exit unwind label %bb.b, !inline_history !83

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #23, !inline_history !83
  unreachable

_ZN5arrow2io20SlowRandomAccessFileD1Ev.exit:      ; preds = %bb.a
  tail call void @_ZN5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io20SlowRandomAccessFileE, i64 8)) #24, !inline_history !83
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #24, !inline_history !84
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn8_N5arrow2io20SlowRandomAccessFileD1Ev(ptr noundef initializes((-8, 8), (48, 56)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 328), ptr %i.b, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 64), ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 240), ptr %0, align 8, !tbaa !7
  invoke void @_ZN5arrow2io8internal19CloseFromDestructorEPNS0_13FileInterfaceE(ptr noundef nonnull %i.b)
          to label %_ZN5arrow2io20SlowRandomAccessFileD1Ev.exit unwind label %bb.b, !inline_history !83

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23, !inline_history !83
  unreachable

_ZN5arrow2io20SlowRandomAccessFileD1Ev.exit:      ; preds = %bb.a
  tail call void @_ZN5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io20SlowRandomAccessFileE, i64 8)) #24, !inline_history !83
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.b) #24, !inline_history !84
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow2io20SlowRandomAccessFileD0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16), (56, 64)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 328), ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 64), ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 240), ptr %i.b, align 8, !tbaa !7
  invoke void @_ZN5arrow2io8internal19CloseFromDestructorEPNS0_13FileInterfaceE(ptr noundef nonnull %i.a)
          to label %_ZN5arrow2io20SlowRandomAccessFileD1Ev.exit unwind label %bb.b, !inline_history !83

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23, !inline_history !83
  unreachable

_ZN5arrow2io20SlowRandomAccessFileD1Ev.exit:      ; preds = %bb.a
  tail call void @_ZN5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io20SlowRandomAccessFileE, i64 8)) #24, !inline_history !83
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #24, !inline_history !84
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5arrow2io20SlowRandomAccessFileD0Ev(ptr noundef %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 328), ptr %i.e, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 64), ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 240), ptr %i.f, align 8, !tbaa !7
  invoke void @_ZN5arrow2io8internal19CloseFromDestructorEPNS0_13FileInterfaceE(ptr noundef nonnull %i.e)
          to label %_ZN5arrow2io20SlowRandomAccessFileD0Ev.exit unwind label %bb.b, !inline_history !85

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #23, !inline_history !85
  unreachable

_ZN5arrow2io20SlowRandomAccessFileD0Ev.exit:      ; preds = %bb.a
  tail call void @_ZN5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io20SlowRandomAccessFileE, i64 8)) #24, !inline_history !85
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #24, !inline_history !86
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef 88) #27, !inline_history !87
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn8_N5arrow2io20SlowRandomAccessFileD0Ev(ptr noundef initializes((-8, 8), (48, 56)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 328), ptr %i.b, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 64), ptr %i.a, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io20SlowRandomAccessFileE, i64 240), ptr %0, align 8, !tbaa !7
  invoke void @_ZN5arrow2io8internal19CloseFromDestructorEPNS0_13FileInterfaceE(ptr noundef nonnull %i.b)
          to label %_ZN5arrow2io20SlowRandomAccessFileD0Ev.exit unwind label %bb.b, !inline_history !85

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23, !inline_history !85
  unreachable

_ZN5arrow2io20SlowRandomAccessFileD0Ev.exit:      ; preds = %bb.a
  tail call void @_ZN5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io20SlowRandomAccessFileE, i64 8)) #24, !inline_history !85
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.b) #24, !inline_history !86
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef 88) #27, !inline_history !87
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io20SlowRandomAccessFile5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr i8, ptr %i.c, i64 -56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.f)
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n32_N5arrow2io20SlowRandomAccessFile5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef readonly captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
end_hunk_1
