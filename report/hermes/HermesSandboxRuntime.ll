inline.NumInlined: 1912
inline.NumDeleted: 845
begin_hunk_0_@w2c_wasi__snapshot__preview1_fd_write
define hidden noundef i32 @w2c_wasi__snapshot__preview1_fd_write(ptr noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  ret i32 52
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 29) i32 @w2c_wasi__snapshot__preview1_clock_time_get(ptr noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %bb.d, label %_ZN12_GLOBAL__N_12sb3PtrImEC2EP10w2c_hermesjj.exit

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_12sb3PtrImEC2EP10w2c_hermesjj.exit: ; preds = %bb.c
  switch i32 %1, label %bb.h [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_12sb3PtrImEC2EP10w2c_hermesjj.exit
  %i.g = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #31
  br label %bb.g

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_12sb3PtrImEC2EP10w2c_hermesjj.exit
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.012.0.in = phi i64 [ %i.g, %bb.e ], [ %i.h, %bb.f ]
  %.sroa.012.0.in.fr = freeze i64 %.sroa.012.0.in ; 2 uses
  %i.i = srem i64 %.sroa.012.0.in.fr, 1000000
  %i.j = sub nsw i64 %.sroa.012.0.in.fr, %i.i
  %i.k = getelementptr i8, ptr %0, i64 40
  %.val.val = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val.val, i64 %i.a
  store i64 %i.j, ptr %i.l, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_12sb3PtrImEC2EP10w2c_hermesjj.exit, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 28, %_ZN12_GLOBAL__N_12sb3PtrImEC2EP10w2c_hermesjj.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @w2c_env_emscripten_notify_memory_growth(ptr noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @w2c_hermes__import_getentropy(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::random_device", align 8 ; 7 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = add nuw nsw i64 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %1, 0
  %i.i = icmp ne i32 %2, 0
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %bb.d, label %_ZN12_GLOBAL__N_12sb3PtrIcEC2EP10w2c_hermesjj.exit

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_12sb3PtrIcEC2EP10w2c_hermesjj.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.j, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.l, align 1, !tbaa !24
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_12sb3PtrIcEC2EP10w2c_hermesjj.exit
  %i.m = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.j, align 8, !tbaa !24
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #32
  br label %_ZNSt13random_deviceC2Ev.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_12sb3PtrIcEC2EP10w2c_hermesjj.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.j, align 8, !tbaa !24
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZNSt13random_deviceD2Ev.exit7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.aa, %_ZNSt13random_deviceD2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %common.resume

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.v = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.h

_ZNSt13random_deviceclEv.exit:                    ; preds = %_ZNSt13random_deviceC2Ev.exit
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt13random_deviceclEv.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #30
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %_ZNSt13random_deviceclEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  store i32 %i.v, ptr %i.a, align 4, !tbaa !3
  %i.y = getelementptr i8, ptr %0, i64 40
  %.val.val = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val.val, i64 %i.b
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.c, i64 4)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.a, i64 %.sroa.speculated, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 0

bb.h:                                             ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %_ZNSt13random_deviceD2Ev.exit7 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #30
  unreachable

_ZNSt13random_deviceD2Ev.exit7:                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes__import_test_timeout(ptr noundef captures(none) %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1029
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !26, !noundef !27
  %i.c = zext nneg i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes__import_test_and_clear_timeout(ptr noundef captures(none) %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1029 ; 2 uses
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl24testAndClearAsyncTimeoutEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw xchg ptr %i.a, i8 0 monotonic, align 1
  %i.e = and i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i32
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl24testAndClearAsyncTimeoutEv.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl24testAndClearAsyncTimeoutEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define hidden void @w2c_wasi__snapshot__preview1_proc_exit(ptr noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  tail call void @abort() #30
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN8facebook6hermes20HermesSandboxRuntime16isHermesBytecodeEPKhm(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 2240826417119764422, ptr %i.a, align 8, !tbaa !19
  %i.b = icmp ugt i64 %1, 7
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 1
  %i.d = load i64, ptr %i.a, align 8
  %i.e = icmp ne i64 %i.c, %i.d
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook6hermes24makeHermesSandboxRuntimeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1040) ptr @_Znwm(i64 noundef 1040) #33, !noalias !28 ; 104 uses
  store ptr getelementptr inbounds nuw inrange(-16, 736) (i8, ptr @_ZTVN8facebook6hermes20HermesSandboxRuntimeE, i64 16), ptr %i.a, align 8, !tbaa !31, !noalias !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 37 uses
  invoke void @wasm2c_hermes_instantiate(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %.noexc.i.i unwind label %bb.kf, !noalias !28

.noexc.i.i:                                       ; preds = %bb.a
  invoke void @w2c_hermes_0x5Finitialize(ptr noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %.noexc328.i.i unwind label %bb.kf, !noalias !28

.noexc328.i.i:                                    ; preds = %.noexc.i.i
  %i.c = tail call noundef i64 @sysconf(i32 noundef 30) #31, !noalias !28 ; 5 uses
  %i.d = invoke i32 @w2c_hermes_get_global_base(ptr noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %.noexc329.i.i unwind label %bb.kf, !noalias !28

.noexc329.i.i:                                    ; preds = %.noexc328.i.i
  %i.e = zext i32 %i.d to i64
  %.not.i.i.i = icmp ugt i64 %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc329.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18, !noalias !28
  %i.h = tail call noundef i64 @sysconf(i32 noundef 30) #31, !noalias !28
  %i.i = tail call noundef i32 @mprotect(ptr noundef %i.g, i64 noundef %i.h, i32 noundef 0) #31, !noalias !28 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc329.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33, !noalias !28
  %i.l = zext i32 %i.k to i64
  %i.m = add i64 %i.c, -1
  %i.n = add i64 %i.m, %i.l
  %i.o = sub i64 0, %i.c
  %i.p = and i64 %i.n, %i.o                       ; 3 uses
  %i.q = mul i64 %i.c, 3
  %i.r = add i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !34, !noalias !28
  %i.u = zext i32 %i.t to i64
  %.not9.i.i.i = icmp ugt i64 %i.r, %i.u
  br i1 %.not9.i.i.i, label %_ZN12_GLOBAL__N_113W2CHermesRAIIC2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18, !noalias !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.p
  %i.y = tail call noundef i64 @sysconf(i32 noundef 30) #31, !noalias !28
  %i.z = tail call noundef i32 @mprotect(ptr noundef %i.x, i64 noundef %i.y, i32 noundef 0) #31, !noalias !28
  %.not10.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not10.i.i.i, label %bb.e, label %_ZN12_GLOBAL__N_113W2CHermesRAIIC2Ev.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = add i64 %i.p, %i.c
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.j, align 4, !tbaa !33, !noalias !28
  br label %_ZN12_GLOBAL__N_113W2CHermesRAIIC2Ev.exit.i.i

_ZN12_GLOBAL__N_113W2CHermesRAIIC2Ev.exit.i.i:    ; preds = %bb.e, %bb.d, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 736) (i8, ptr @_ZTVN12_GLOBAL__N_124HermesSandboxRuntimeImplE, i64 16), ptr %i.a, align 8, !tbaa !31, !noalias !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 4 uses
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !35, !noalias !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !38, !noalias !28
  %i.ae = invoke i32 @w2c_hermes_stackSave(ptr noundef nonnull %i.b)
          to label %.noexc330.i.i unwind label %bb.kg, !noalias !28

.noexc330.i.i:                                    ; preds = %_ZN12_GLOBAL__N_113W2CHermesRAIIC2Ev.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 116 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !39, !noalias !28
  %i.ag = invoke i32 @w2c_hermes_stackAlloc(ptr noundef nonnull %i.b, i32 noundef 4)
          to label %.noexc331.i.i unwind label %bb.kg, !noalias !28 ; 3 uses

.noexc331.i.i:                                    ; preds = %.noexc330.i.i
  store i32 %i.ag, ptr %i.ad, align 8, !tbaa !38, !noalias !28
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 4
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !35, !noalias !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !7, !noalias !28
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc331.i.i
  tail call void @abort() #30, !noalias !28
  unreachable

bb.g:                                             ; preds = %.noexc331.i.i
  %i.an = icmp eq i32 %i.ag, 0
  br i1 %i.an, label %bb.h, label %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxBufferVTableEEC2EP10w2c_hermes.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #30, !noalias !28
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_19SandboxBufferVTableEEC2EP10w2c_hermes.exit.i.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !41, !noalias !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !43, !noalias !28
  %i.aq = invoke i32 @w2c_hermes_stackSave(ptr noundef nonnull %i.b)
          to label %.noexc332.i.i unwind label %bb.kh, !noalias !28

.noexc332.i.i:                                    ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxBufferVTableEEC2EP10w2c_hermes.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 132 ; 2 uses
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !44, !noalias !28
  %i.as = invoke i32 @w2c_hermes_stackAlloc(ptr noundef nonnull %i.b, i32 noundef 4)
          to label %.noexc333.i.i unwind label %bb.kh, !noalias !28 ; 3 uses

.noexc333.i.i:                                    ; preds = %.noexc332.i.i
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !43, !noalias !28
  %i.at = zext i32 %i.as to i64
  %i.au = add nuw nsw i64 %i.at, 4
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !41, !noalias !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !7, !noalias !28
  %i.ay = icmp ugt i64 %i.au, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc333.i.i
  tail call void @abort() #30, !noalias !28
  unreachable

bb.j:                                             ; preds = %.noexc333.i.i
  %i.az = icmp eq i32 %i.as, 0
  br i1 %i.az, label %bb.k, label %_ZN12_GLOBAL__N_110StackAllocINS_27SandboxGrowableBufferVTableEEC2EP10w2c_hermes.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @abort() #30, !noalias !28
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_27SandboxGrowableBufferVTableEEC2EP10w2c_hermes.exit.i.i: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 5 uses
  store ptr %i.b, ptr %i.ba, align 8, !tbaa !46, !noalias !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 4 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !48, !noalias !28
  %i.bc = invoke i32 @w2c_hermes_stackSave(ptr noundef nonnull %i.b)
          to label %.noexc334.i.i unwind label %bb.ki, !noalias !28

.noexc334.i.i:                                    ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_27SandboxGrowableBufferVTableEEC2EP10w2c_hermes.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 148 ; 2 uses
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !49, !noalias !28
  %i.be = invoke i32 @w2c_hermes_stackAlloc(ptr noundef nonnull %i.b, i32 noundef 8)
          to label %.noexc335.i.i unwind label %bb.ki, !noalias !28 ; 3 uses

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl26evaluatePreparedJavaScriptERKSt10shared_ptrIKN8facebook3jsi18PreparedJavaScriptEE:bb.a
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ai, %bb.j ], [ %i.as, %bb.k ]
  %i.at = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.at, label %bb.l, label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !347

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #31
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !342 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.av, align 8, !tbaa !343
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !345
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #31, !inline_history !437
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #31, !inline_history !437
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i6 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.q:                                             ; preds = %bb.o
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i8 = phi i32 [ %i.ay, %bb.p ], [ %i.bi, %bb.q ]
  %i.bj = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.bj, label %bb.r, label %_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !347

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #31
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.s:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook3jsi6BufferEEC2IKNS1_27SourceJavaScriptPreparationEvEERKS_IT_E.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14queueMicrotaskERKN8facebook3jsi8FunctionE(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_122throwUnimplementedImplEPKc(ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl14queueMicrotaskERKN8facebook3jsi8FunctionE) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl15drainMicrotasksEi(ptr noundef nonnull align 8 dereferenceable(1038) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.e = load i32, ptr %i.d, align 8, !tbaa !137
  %i.f = tail call noundef i32 %i.b(ptr noundef nonnull %i.c, i32 noundef %i.e, i32 noundef %1) ; 3 uses
  %i.g = trunc i32 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxBoolOrErrorE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i32 %i.f, 2
  tail call fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10throwErrorENS_16SandboxErrorCodeE(ptr noundef nonnull align 8 dereferenceable(1038) %0, i32 noundef %i.h) #34
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxBoolOrErrorE.exit: ; preds = %bb.a
  %i.i = icmp ugt i32 %i.f, 3
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6globalEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::Object") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(1038) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.e = load i32, ptr %i.d, align 8, !tbaa !137
  %i.f = tail call noundef i32 %i.b(ptr noundef nonnull %i.c, i32 noundef %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !355, !noalias !438 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.b, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl13intoJSIObjectENS_13SandboxObjectE.exit, !prof !347

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.k = load i64, ptr %i.j, align 8, !tbaa !357, !noalias !438
  %i.l = uitofp i64 %i.k to double
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.n = load double, ptr %i.m, align 8, !tbaa !358, !noalias !438
  %i.o = fcmp ogt double %i.n, %i.l
  br i1 %i.o, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g), !noalias !438
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !355, !noalias !438 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i, label %.sink.split.i.i, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl13intoJSIObjectENS_13SandboxObjectE.exit

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g), !noalias !438
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !355, !noalias !438
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl13intoJSIObjectENS_13SandboxObjectE.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl13intoJSIObjectENS_13SandboxObjectE.exit: ; preds = %bb.a, %bb.c, %.sink.split.i.i
  %i.q = phi ptr [ %i.i, %bb.a ], [ %i.p, %bb.c ], [ %.pre.i, %.sink.split.i.i ] ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16       ; 2 uses
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !24, !noalias !438
  store ptr %.val.i.i, ptr %i.h, align 8, !tbaa !355, !noalias !438
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store atomic i32 1, ptr %i.s monotonic, align 8, !noalias !438
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 %i.f, ptr %i.t, align 4, !tbaa !303, !noalias !438
  store ptr %1, ptr %i.r, align 8, !tbaa !24, !noalias !438
  store ptr %i.q, ptr %0, align 8, !tbaa !359, !alias.scope !441
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl11descriptionB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 20, ptr %i.a, align 8, !tbaa !19
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !25
  %i.d = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.c, ptr noundef nonnull align 1 dereferenceable(20) @.str.13, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !22
  %i.f = load ptr, ptr %0, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl13isInspectableEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_122throwUnimplementedImplEPKc(ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl13isInspectableEv) #34
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define internal noalias noundef nonnull align 1 ptr @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl15instrumentationEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_122throwUnimplementedImplEPKc(ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl15instrumentationEv) #34
  unreachable
}

declare void @_ZN8facebook3jsi7Runtime18setRuntimeDataImplERKNS0_4UUIDEPKvPFvS6_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #9

declare noundef ptr @_ZN8facebook3jsi7Runtime18getRuntimeDataImplERKNS0_4UUIDE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl11cloneSymbolEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #17 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl11cloneBigIntEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #17 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl11cloneStringEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #17 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl11cloneObjectEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #17 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl15clonePropNameIDEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #17 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl25createPropNameIDFromAsciiEPKcm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::jsi::String", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = load ptr, ptr %1, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef %2, i64 noundef %3)
  %i.d = load ptr, ptr %1, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !359    ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #31, !inline_history !444
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !359    ; 3 uses
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %_ZN8facebook3jsi7PointerD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #31, !inline_history !444
  br label %_ZN8facebook3jsi7PointerD2Ev.exit5

_ZN8facebook3jsi7PointerD2Ev.exit5:               ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl24createPropNameIDFromUtf8EPKhm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::jsi::String", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = load ptr, ptr %1, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef %2, i64 noundef %3)
  %i.d = load ptr, ptr %1, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !359    ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #31, !inline_history !444
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !359    ; 3 uses
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %_ZN8facebook3jsi7PointerD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #31, !inline_history !444
  br label %_ZN8facebook3jsi7PointerD2Ev.exit5

_ZN8facebook3jsi7PointerD2Ev.exit5:               ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.j
}

declare void @_ZN8facebook3jsi7Runtime25createPropNameIDFromUtf16EPKDsm(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl26createPropNameIDFromStringERKN8facebook3jsi6StringE(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::PropNameID") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.e = load i32, ptr %i.d, align 8, !tbaa !137
  %.val = load ptr, ptr %2, align 8, !tbaa !359
  %i.f = getelementptr i8, ptr %.val, i64 12
  %.val.val = load i32, ptr %i.f, align 4, !tbaa !303
  %i.g = tail call noundef i32 %i.b(ptr noundef nonnull %i.c, i32 noundef %i.e, i32 noundef %.val.val) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.h = trunc i32 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_24SandboxPropNameIDOrErrorE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i32 %i.g, 2
  tail call fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10throwErrorENS_16SandboxErrorCodeE(ptr noundef nonnull align 8 dereferenceable(1038) %1, i32 noundef %i.i) #34, !noalias !445
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_24SandboxPropNameIDOrErrorE.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !355, !noalias !451 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl17intoJSIPropNameIDENS_24SandboxPropNameIDOrErrorE.exit, !prof !347

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_24SandboxPropNameIDOrErrorE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.n = load i64, ptr %i.m, align 8, !tbaa !357, !noalias !451
  %i.o = uitofp i64 %i.n to double
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.q = load double, ptr %i.p, align 8, !tbaa !358, !noalias !451
  %i.r = fcmp ogt double %i.q, %i.o
  br i1 %i.r, label %.sink.split.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j), !noalias !451
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !355, !noalias !451 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not5.i.i.i, label %.sink.split.i.i.i, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl17intoJSIPropNameIDENS_24SandboxPropNameIDOrErrorE.exit

.sink.split.i.i.i:                                ; preds = %bb.d, %bb.c
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j), !noalias !451
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !355, !noalias !451
  br label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl17intoJSIPropNameIDENS_24SandboxPropNameIDOrErrorE.exit

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl17intoJSIPropNameIDENS_24SandboxPropNameIDOrErrorE.exit: ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_24SandboxPropNameIDOrErrorE.exit.i, %bb.d, %.sink.split.i.i.i
  %i.t = phi ptr [ %i.l, %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_24SandboxPropNameIDOrErrorE.exit.i ], [ %i.s, %bb.d ], [ %.pre.i.i, %.sink.split.i.i.i ] ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !24, !noalias !451
  store ptr %.val.i.i.i, ptr %i.k, align 8, !tbaa !355, !noalias !451
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store atomic i32 1, ptr %i.v monotonic, align 8, !noalias !451
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 %i.g, ptr %i.w, align 4, !tbaa !303, !noalias !451
  store ptr %1, ptr %i.u, align 8, !tbaa !24, !noalias !451
  store ptr %i.t, ptr %0, align 8, !tbaa !359, !alias.scope !452
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl26createPropNameIDFromSymbolERKN8facebook3jsi6SymbolE(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::PropNameID") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.e = load i32, ptr %i.d, align 8, !tbaa !137
  %.val = load ptr, ptr %2, align 8, !tbaa !359
  %i.f = getelementptr i8, ptr %.val, i64 12
  %.val.val = load i32, ptr %i.f, align 4, !tbaa !303
  %i.g = tail call noundef i32 %i.b(ptr noundef nonnull %i.c, i32 noundef %i.e, i32 noundef %.val.val) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.h = trunc i32 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_24SandboxPropNameIDOrErrorE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i32 %i.g, 2
  tail call fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10throwErrorENS_16SandboxErrorCodeE(ptr noundef nonnull align 8 dereferenceable(1038) %1, i32 noundef %i.i) #34, !noalias !455
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_24SandboxPropNameIDOrErrorE.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10instanceOfERKN8facebook3jsi6ObjectERKNS2_8FunctionE:bb.a
  %i.i = trunc i32 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxBoolOrErrorE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i32 %i.h, 2
  tail call fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10throwErrorENS_16SandboxErrorCodeE(ptr noundef nonnull align 8 dereferenceable(1038) %0, i32 noundef %i.j) #34
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxBoolOrErrorE.exit: ; preds = %bb.a
  %i.k = icmp ugt i32 %i.h, 3
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl25setExternalMemoryPressureERKN8facebook3jsi6ObjectEm(ptr noundef nonnull align 8 dereferenceable(1038) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.e = load i32, ptr %i.d, align 8, !tbaa !137
  %.val = load ptr, ptr %1, align 8, !tbaa !359
  %i.f = getelementptr i8, ptr %.val, i64 12
  %.val.val = load i32, ptr %i.f, align 4, !tbaa !303
  %i.g = trunc i64 %2 to i32
  %i.h = tail call noundef i32 %i.b(ptr noundef nonnull %i.c, i32 noundef %i.e, i32 noundef %.val.val, i32 noundef %i.g) ; 2 uses
  %i.i = trunc i32 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxVoidOrErrorE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i32 %i.h, 2
  tail call fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10throwErrorENS_16SandboxErrorCodeE(ptr noundef nonnull align 8 dereferenceable(1038) %0, i32 noundef %i.j) #34
  unreachable

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl6unwrapENS_18SandboxVoidOrErrorE.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN8facebook3jsi7Runtime5utf16B5cxx11ERKNS0_6StringE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.67") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare void @_ZN8facebook3jsi7Runtime5utf16B5cxx11ERKNS0_10PropNameIDE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.67") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare void @_ZN8facebook3jsi7Runtime13getStringDataERKNS0_6StringEPvPFvS5_bPKvmE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #9

declare void @_ZN8facebook3jsi7Runtime17getPropNameIdDataERKNS0_10PropNameIDEPvPFvS5_bPKvmE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl22evaluateHermesBytecodeERKSt10shared_ptrIKN8facebook3jsi6BufferEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::Value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call fastcc i32 @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl13BufferWrapper6createERS0_RKSt10shared_ptrIKN8facebook3jsi6BufferEE(ptr noundef nonnull align 8 dereferenceable(1038) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = tail call i32 @w2c_hermes_malloc(ptr noundef nonnull %i.b, i32 noundef %i.e) ; 5 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = and i64 %i.d, 4294967295
  %i.i = add nuw nsw i64 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.f, 0
  %i.n = icmp ne i32 %i.e, 0
  %or.cond.i.i.i = and i1 %i.n, %i.m
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZN12_GLOBAL__N_19LIFOAllocIcEC2EP10w2c_hermesj.exit

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_19LIFOAllocIcEC2EP10w2c_hermesj.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.val.val = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val.val, i64 %i.g
  %i.q = load ptr, ptr %3, align 8, !tbaa !25
  %i.r = load i64, ptr %i.c, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.q, i64 %i.r, i1 false)
  %i.s = invoke i32 @w2c_hermes_stackSave(ptr noundef nonnull %i.b)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %_ZN12_GLOBAL__N_19LIFOAllocIcEC2EP10w2c_hermesj.exit
  %i.t = invoke i32 @w2c_hermes_stackAlloc(ptr noundef nonnull %i.b, i32 noundef 16)
          to label %.noexc26 unwind label %bb.m   ; 3 uses

.noexc26:                                         ; preds = %.noexc
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 16
  %i.w = load i64, ptr %i.j, align 8, !tbaa !7
  %i.x = icmp ugt i64 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc26
  tail call void @abort() #30
  unreachable

bb.f:                                             ; preds = %.noexc26
  %i.y = icmp eq i32 %i.t, 0
  br i1 %i.y, label %bb.g, label %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEEC2EP10w2c_hermes.exit

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEEC2EP10w2c_hermes.exit: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !164
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !137
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !22
  %i.ae = trunc i64 %i.ad to i32
  invoke void %i.aa(ptr noundef nonnull %i.b, i32 noundef %i.t, i32 noundef %i.ac, i32 noundef %i.a, i32 noundef %i.f, i32 noundef %i.ae)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEEC2EP10w2c_hermes.exit
  %.val18.val = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val18.val, i64 %i.u ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !24 ; 2 uses
  %i.ag = icmp eq i32 %.sroa.0.0.copyload, 3
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.3.8.extract.trunc.i = trunc i64 %.sroa.21.0.copyload to i32
  invoke fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl10throwErrorENS_16SandboxErrorCodeE(ptr noundef nonnull align 8 dereferenceable(1038) %1, i32 noundef %.sroa.3.8.extract.trunc.i) #34
          to label %.noexc27 unwind label %bb.n

.noexc27:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl12intoJSIValueENS_12SandboxValueE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1038) %1, i32 %.sroa.0.0.copyload, i64 %.sroa.21.0.copyload)
          to label %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl12intoJSIValueENS_19SandboxValueOrErrorE.exit unwind label %bb.n

_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl12intoJSIValueENS_19SandboxValueOrErrorE.exit: ; preds = %bb.j
  invoke void @w2c_hermes_stackRestore(ptr noundef nonnull %i.b, i32 noundef %i.s)
          to label %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl12intoJSIValueENS_19SandboxValueOrErrorE.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl12intoJSIValueENS_19SandboxValueOrErrorE.exit
  invoke void @w2c_hermes_free(ptr noundef nonnull %i.b, i32 noundef %i.f)
          to label %_ZN12_GLOBAL__N_19LIFOAllocIcED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #30
  unreachable

_ZN12_GLOBAL__N_19LIFOAllocIcED2Ev.exit:          ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEED2Ev.exit
  ret void

bb.m:                                             ; preds = %.noexc, %_ZN12_GLOBAL__N_19LIFOAllocIcEC2EP10w2c_hermesj.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEED2Ev.exit29

bb.n:                                             ; preds = %bb.j, %bb.i, %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEEC2EP10w2c_hermes.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @w2c_hermes_stackRestore(ptr noundef nonnull %i.b, i32 noundef %i.s)
          to label %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEED2Ev.exit29 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #30
  unreachable

_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEED2Ev.exit29: ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.al, %bb.m ], [ %i.am, %bb.n ]
  invoke void @w2c_hermes_free(ptr noundef nonnull %i.b, i32 noundef %i.f)
          to label %_ZN12_GLOBAL__N_19LIFOAllocIcED2Ev.exit30 unwind label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEED2Ev.exit29
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #30
  unreachable

_ZN12_GLOBAL__N_19LIFOAllocIcED2Ev.exit30:        ; preds = %_ZN12_GLOBAL__N_110StackAllocINS_19SandboxValueOrErrorEED2Ev.exit29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12_GLOBAL__N_124HermesSandboxRuntimeImpl19asyncTriggerTimeoutEv(ptr noundef nonnull align 8 captures(none) dereferenceable(1038) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1037
  store atomic i8 1, ptr %i.a monotonic, align 1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN8facebook3jsi7RuntimeD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook6hermes20HermesSandboxRuntimeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef nonnull align 1 ptr @_ZN8facebook3jsi7Runtime15instrumentationEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

declare void @wasm2c_hermes_instantiate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @w2c_hermes_0x5Finitialize(ptr noundef) local_unnamed_addr #9

declare i32 @w2c_hermes_get_global_base(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @w2c_hermes_stackSave(ptr noundef) local_unnamed_addr #9

declare i32 @w2c_hermes_stackAlloc(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !620
  %i.d = icmp ugt i64 %1, -49
  br i1 %i.d, label %.noexc3.i, label %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_allocate_mapEm.exit, !prof !347

.noexc3.i:                                        ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !621
  %i.h = sub nsw i64 %.sroa.speculated, %i.e
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #33
          to label %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !277
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_create_nodesEPPSA_SE_.exit, !llvm.loop !622

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #31 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_destroy_nodesEPPSA_SE_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !277
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #32
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_destroy_nodesEPPSA_SE_.exit.i, !llvm.loop !623

_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_destroy_nodesEPPSA_SE_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #34
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_destroy_nodesEPPSA_SE_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #30
  unreachable

bb.e:                                             ; preds = %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_destroy_nodesEPPSA_SE_.exit.i
  unreachable

.body:                                            ; preds = %bb.c
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #31 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !621
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !620
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #34
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_create_nodesEPPSA_SE_.exit: ; preds = %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !270
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !277 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !272
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !273
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !270
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !277 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !272
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !273
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !624
  %i.ar = and i64 %1, 15
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !600
  ret void

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #30
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 5                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !625
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !626
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE16_M_allocate_nodeEv.exit.i
end_hunk_2
begin_hunk_3_@_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_M_push_back_auxIJSA_EEEvDpOT_:bb.a
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !600 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 24, i1 false)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !297
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !297
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !278
  %.not.i.i.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE22_M_reserve_map_at_backEm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !598
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !278
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !278
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2EOS9_.exit: ; preds = %_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE22_M_reserve_map_at_backEm.exit, %bb.e
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !693
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !270
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !277 ; 3 uses
  store ptr %i.az, ptr %i.o, align 8, !tbaa !272
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !273
  store ptr %i.az, ptr %i.a, align 8, !tbaa !600
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !693  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !692  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !620  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !621
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !715

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !277
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !277
  br label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !715

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !277
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !277
  br label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_allocate_mapEm.exit, !prof !347

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #33 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !715

bb.m:                                             ; preds = %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !277
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !277
  br label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit24

_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !621
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #32
  store ptr %i.aq, ptr %0, align 8, !tbaa !621
  store i64 %i.am, ptr %i.k, align 8, !tbaa !620
  br label %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit

_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPSt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESC_ET0_T_SE_SD_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !270
  %i.be = load ptr, ptr %.0, align 8, !tbaa !277  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !272
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !273
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !270
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !277 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !272
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !273
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn }
attributes #25 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !15, i64 64}
!8 = !{!"_ZTS10w2c_hermes", !9, i64 0, !11, i64 8, !12, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !13, i64 40, !17, i64 80}
!9 = !{!"p1 _ZTS7w2c_env", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS18w2c_hermes__import", !10, i64 0}
!12 = !{!"p1 _ZTS28w2c_wasi__snapshot__preview1", !10, i64 0}
!13 = !{!"_ZTS16wasm_rt_memory_t", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !16, i64 32}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!"_ZTS23wasm_rt_funcref_table_t", !10, i64 0, !4, i64 8, !4, i64 12}
!18 = !{!8, !14, i64 40}
!19 = !{!15, !15, i64 0}
!20 = !{!21, !14, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!22 = !{!23, !15, i64 8}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !15, i64 8, !5, i64 16}
!24 = !{!5, !5, i64 0}
!25 = !{!23, !14, i64 0}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZSt11make_uniqueIN12_GLOBAL__N_124HermesSandboxRuntimeImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!30 = distinct !{!30, !"_ZSt11make_uniqueIN12_GLOBAL__N_124HermesSandboxRuntimeImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !6, i64 0}
!33 = !{!8, !4, i64 28}
!34 = !{!8, !4, i64 24}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN12_GLOBAL__N_12sb3PtrINS_19SandboxBufferVTableEEE", !37, i64 0, !4, i64 8}
!37 = !{!"p1 _ZTS10w2c_hermes", !10, i64 0}
!38 = !{!36, !4, i64 8}
!39 = !{!40, !4, i64 12}
!40 = !{!"_ZTSN12_GLOBAL__N_110StackAllocINS_19SandboxBufferVTableEEE", !36, i64 0, !4, i64 12}
!41 = !{!42, !37, i64 0}
!42 = !{!"_ZTSN12_GLOBAL__N_12sb3PtrINS_27SandboxGrowableBufferVTableEEE", !37, i64 0, !4, i64 8}
!43 = !{!42, !4, i64 8}
!44 = !{!45, !4, i64 12}
!45 = !{!"_ZTSN12_GLOBAL__N_110StackAllocINS_27SandboxGrowableBufferVTableEEE", !42, i64 0, !4, i64 12}
!46 = !{!47, !37, i64 0}
!47 = !{!"_ZTSN12_GLOBAL__N_12sb3PtrINS_25SandboxHostFunctionVTableEEE", !37, i64 0, !4, i64 8}
!48 = !{!47, !4, i64 8}
!49 = !{!50, !4, i64 12}
!50 = !{!"_ZTSN12_GLOBAL__N_110StackAllocINS_25SandboxHostFunctionVTableEEE", !47, i64 0, !4, i64 12}
!51 = !{!52, !37, i64 0}
!52 = !{!"_ZTSN12_GLOBAL__N_12sb3PtrINS_27SandboxPropNameIDListVTableEEE", !37, i64 0, !4, i64 8}
!53 = !{!52, !4, i64 8}
!54 = !{!55, !4, i64 12}
!55 = !{!"_ZTSN12_GLOBAL__N_110StackAllocINS_27SandboxPropNameIDListVTableEEE", !52, i64 0, !4, i64 12}
!56 = !{!57, !37, i64 0}
!57 = !{!"_ZTSN12_GLOBAL__N_12sb3PtrINS_23SandboxHostObjectVTableEEE", !37, i64 0, !4, i64 8}
!58 = !{!57, !4, i64 8}
!59 = !{!60, !4, i64 12}
!60 = !{!"_ZTSN12_GLOBAL__N_110StackAllocINS_23SandboxHostObjectVTableEEE", !57, i64 0, !4, i64 12}
!61 = !{!62, !37, i64 0}
!62 = !{!"_ZTSN12_GLOBAL__N_12sb3PtrINS_24SandboxNativeStateVTableEEE", !37, i64 0, !4, i64 8}
!63 = !{!62, !4, i64 8}
!64 = !{!65, !4, i64 12}
!65 = !{!"_ZTSN12_GLOBAL__N_110StackAllocINS_24SandboxNativeStateVTableEEE", !62, i64 0, !4, i64 12}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !68, i64 0, !68, i64 8}
!68 = !{!"double", !5, i64 0}
!69 = !{!70, !68, i64 40}
!70 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EEE", !71, i64 0, !15, i64 8, !67, i64 16, !72, i64 32, !68, i64 40}
!71 = !{!"p1 _ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderELm16EE5ChunkE", !10, i64 0}
!72 = !{!"p1 _ZTSN12_GLOBAL__N_124HermesSandboxRuntimeImpl20ManagedPointerHolderE", !10, i64 0}
!73 = !{!74, !16, i64 1036}
!74 = !{!"_ZTSN12_GLOBAL__N_124HermesSandboxRuntimeImplE", !75, i64 0, !78, i64 8, !40, i64 104, !45, i64 120, !50, i64 136, !55, i64 152, !60, i64 168, !65, i64 184, !70, i64 200, !79, i64 248, !93, i64 352, !101, i64 456, !109, i64 560, !4, i64 1032, !16, i64 1036, !110, i64 1037}
!75 = !{!"_ZTSN8facebook6hermes20HermesSandboxRuntimeE", !76, i64 0}
!76 = !{!"_ZTSN8facebook3jsi7RuntimeE", !77, i64 0}
!77 = !{!"_ZTSN8facebook3jsi5ICastE"}
!78 = !{!"_ZTSN12_GLOBAL__N_113W2CHermesRAIIE", !8, i64 0}
!79 = !{!"_ZTSN12_GLOBAL__N_111NativeTableISt8functionIFN8facebook3jsi5ValueERNS3_7RuntimeERKS4_PS7_mEEEE", !80, i64 0, !88, i64 80}
!80 = !{!"_ZTSSt5dequeISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE", !81, i64 0}
!81 = !{!"_ZTSSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE", !82, i64 0}
!82 = !{!"_ZTSNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE11_Deque_implE", !83, i64 0}
!83 = !{!"_ZTSNSt11_Deque_baseISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEESaISA_EE16_Deque_impl_dataE", !84, i64 0, !15, i64 8, !86, i64 16, !86, i64 48}
!84 = !{!"p2 _ZTSSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEE", !85, i64 0}
!85 = !{!"any p2 pointer", !10, i64 0}
!86 = !{!"_ZTSSt15_Deque_iteratorISt8functionIFN8facebook3jsi5ValueERNS2_7RuntimeERKS3_PS6_mEERSA_PSA_E", !87, i64 0, !87, i64 8, !87, i64 16, !84, i64 24}
!87 = !{!"p1 _ZTSSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEE", !10, i64 0}
!88 = !{!"_ZTSSt6vectorIjSaIjEE", !89, i64 0}
!89 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!92 = !{!"p1 int", !10, i64 0}
!93 = !{!"_ZTSN12_GLOBAL__N_111NativeTableISt10shared_ptrIN8facebook3jsi10HostObjectEEEE", !94, i64 0, !88, i64 80}
!94 = !{!"_ZTSSt5dequeISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE", !95, i64 0}
!95 = !{!"_ZTSSt11_Deque_baseISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE", !96, i64 0}
!96 = !{!"_ZTSNSt11_Deque_baseISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE11_Deque_implE", !97, i64 0}
!97 = !{!"_ZTSNSt11_Deque_baseISt10shared_ptrIN8facebook3jsi10HostObjectEESaIS4_EE16_Deque_impl_dataE", !98, i64 0, !15, i64 8, !99, i64 16, !99, i64 48}
!98 = !{!"p2 _ZTSSt10shared_ptrIN8facebook3jsi10HostObjectEE", !85, i64 0}
!99 = !{!"_ZTSSt15_Deque_iteratorISt10shared_ptrIN8facebook3jsi10HostObjectEERS4_PS4_E", !100, i64 0, !100, i64 8, !100, i64 16, !98, i64 24}
!100 = !{!"p1 _ZTSSt10shared_ptrIN8facebook3jsi10HostObjectEE", !10, i64 0}
!101 = !{!"_ZTSN12_GLOBAL__N_111NativeTableISt10shared_ptrIN8facebook3jsi11NativeStateEEEE", !102, i64 0, !88, i64 80}
!102 = !{!"_ZTSSt5dequeISt10shared_ptrIN8facebook3jsi11NativeStateEESaIS4_EE", !103, i64 0}
!103 = !{!"_ZTSSt11_Deque_baseISt10shared_ptrIN8facebook3jsi11NativeStateEESaIS4_EE", !104, i64 0}
!104 = !{!"_ZTSNSt11_Deque_baseISt10shared_ptrIN8facebook3jsi11NativeStateEESaIS4_EE11_Deque_implE", !105, i64 0}
!105 = !{!"_ZTSNSt11_Deque_baseISt10shared_ptrIN8facebook3jsi11NativeStateEESaIS4_EE16_Deque_impl_dataE", !106, i64 0, !15, i64 8, !107, i64 16, !107, i64 48}
!106 = !{!"p2 _ZTSSt10shared_ptrIN8facebook3jsi11NativeStateEE", !85, i64 0}
!107 = !{!"_ZTSSt15_Deque_iteratorISt10shared_ptrIN8facebook3jsi11NativeStateEERS4_PS4_E", !108, i64 0, !108, i64 8, !108, i64 16, !106, i64 24}
!108 = !{!"p1 _ZTSSt10shared_ptrIN8facebook3jsi11NativeStateEE", !10, i64 0}
!109 = !{!"_ZTSN12_GLOBAL__N_126SandboxRuntimeVTableMirrorE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !10, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464}
!110 = !{!"_ZTSSt6atomicIbE", !111, i64 0}
!111 = !{!"_ZTSSt13__atomic_baseIbE", !16, i64 0}
!112 = !{!111, !16, i64 0}
!113 = !{!17, !10, i64 0}
!114 = !{!115, !14, i64 0}
!115 = !{!"_ZTS17wasm_rt_funcref_t", !14, i64 0, !10, i64 8, !10, i64 16}
!116 = !{!115, !10, i64 8}
!117 = !{!115, !10, i64 16}
!118 = !{!119, !4, i64 0}
!119 = !{!"_ZTSN12_GLOBAL__N_119SandboxBufferVTableE", !4, i64 0}
!120 = !{!121, !4, i64 0}
!121 = !{!"_ZTSN12_GLOBAL__N_127SandboxGrowableBufferVTableE", !4, i64 0}
!122 = !{!123, !4, i64 0}
!123 = !{!"_ZTSN12_GLOBAL__N_125SandboxHostFunctionVTableE", !4, i64 0, !4, i64 4}
!124 = !{!123, !4, i64 4}
!125 = !{!126, !4, i64 0}
!126 = !{!"_ZTSN12_GLOBAL__N_127SandboxPropNameIDListVTableE", !4, i64 0}
!127 = !{!128, !4, i64 0}
!128 = !{!"_ZTSN12_GLOBAL__N_123SandboxHostObjectVTableE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!129 = !{!128, !4, i64 4}
!130 = !{!128, !4, i64 8}
!131 = !{!128, !4, i64 12}
!132 = !{!133, !4, i64 0}
!133 = !{!"_ZTSN12_GLOBAL__N_124SandboxNativeStateVTableE", !4, i64 0}
!134 = !{!135, !4, i64 0}
!135 = !{!"_ZTSN12_GLOBAL__N_113SandboxVTableE", !4, i64 0, !4, i64 4}
!136 = !{!17, !4, i64 12}
!137 = !{!74, !4, i64 1032}
!138 = !{!139, !4, i64 0}
!139 = !{!"_ZTSN12_GLOBAL__N_114SandboxRuntimeE", !4, i64 0}
!140 = !{!141, !4, i64 0}
!141 = !{!"_ZTSN12_GLOBAL__N_120SandboxRuntimeVTableE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !4, i64 220, !4, i64 224, !4, i64 228, !4, i64 232}
!142 = !{!74, !10, i64 560}
!143 = !{!141, !4, i64 4}
!144 = !{!74, !10, i64 568}
!145 = !{!141, !4, i64 8}
!146 = !{!74, !10, i64 576}
!147 = !{!141, !4, i64 12}
!148 = !{!74, !10, i64 584}
!149 = !{!141, !4, i64 16}
!150 = !{!74, !10, i64 592}
!151 = !{!141, !4, i64 20}
!152 = !{!74, !10, i64 600}
!153 = !{!141, !4, i64 24}
!154 = !{!74, !10, i64 608}
!155 = !{!141, !4, i64 28}
!156 = !{!74, !10, i64 616}
!157 = !{!141, !4, i64 32}
!158 = !{!74, !10, i64 624}
!159 = !{!141, !4, i64 36}
!160 = !{!74, !10, i64 632}
!161 = !{!141, !4, i64 40}
!162 = !{!74, !10, i64 640}
!163 = !{!141, !4, i64 44}
!164 = !{!74, !10, i64 648}
!165 = !{!141, !4, i64 48}
!166 = !{!74, !10, i64 656}
!167 = !{!141, !4, i64 52}
!168 = !{!74, !10, i64 664}
!169 = !{!141, !4, i64 56}
!170 = !{!74, !10, i64 672}
!171 = !{!141, !4, i64 60}
!172 = !{!74, !10, i64 680}
!173 = !{!141, !4, i64 64}
!174 = !{!74, !10, i64 688}
!175 = !{!141, !4, i64 68}
!176 = !{!74, !10, i64 696}
!177 = !{!141, !4, i64 72}
end_hunk_3
