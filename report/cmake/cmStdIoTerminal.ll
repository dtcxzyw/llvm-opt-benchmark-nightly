Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmStdIoTerminal?download=true
inline.NumInlined: 228
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRSoEZN2cm5StdIo5PrintERNS3_7OStreamERKNS2_8enum_setINS3_8TermAttrELm19ELi0EEESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation":bb.a
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cm5StdIo5PrintERNS2_7OStreamERKNS1_8enum_setINS2_8TermAttrELm19ELi0EEESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cm5StdIo5PrintERNS0_7OStreamERKNS_8enum_setINS0_8TermAttrELm19ELi0EEESt17basic_string_viewIcSt11char_traitsIcEEE3$_0", ptr %0, align 8, !tbaa !32
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cm5StdIo5PrintERNS2_7OStreamERKNS1_8enum_setINS2_8TermAttrELm19ELi0EEESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !33
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cm5StdIo5PrintERNS2_7OStreamERKNS1_8enum_setINS2_8TermAttrELm19ELi0EEESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !34
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cm5StdIo5PrintERNS2_7OStreamERKNS1_8enum_setINS2_8TermAttrELm19ELi0EEESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cm5StdIo5PrintERNS2_7OStreamERKNS1_8enum_setINS2_8TermAttrELm19ELi0EEESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cmStdIoTerminal.cxx() #11 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::optional.1", align 8   ; 10 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::optional.1", align 8   ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::optional.1", align 8   ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::optional.1", align 8   ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5cmsysL26SystemToolsManagerInstanceE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5cmsys18SystemToolsManagerD1Ev, ptr nonnull @_ZN5cmsysL26SystemToolsManagerInstanceE, ptr nonnull @__dso_handle) #14 ; 0 uses
  store i64 4, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, align 8, !tbaa !10
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 8), align 8, !tbaa !13
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 16), align 8, !tbaa !10
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 24), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 32), align 8, !tbaa !10
  store ptr @.str.3, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 40), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 48), align 8, !tbaa !10
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 56), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 64), align 8, !tbaa !10
  store ptr @.str.5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 72), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 80), align 8, !tbaa !10
  store ptr @.str.6, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 88), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 96), align 8, !tbaa !10
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 104), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 112), align 8, !tbaa !10
  store ptr @.str.8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 120), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 128), align 8, !tbaa !10
  store ptr @.str.9, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 136), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 144), align 8, !tbaa !10
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 152), align 8, !tbaa !13
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 160), align 8, !tbaa !10
  store ptr @.str.11, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 168), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 176), align 8, !tbaa !10
  store ptr @.str.12, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 184), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 192), align 8, !tbaa !10
  store ptr @.str.13, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 200), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 208), align 8, !tbaa !10
  store ptr @.str.14, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 216), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 224), align 8, !tbaa !10
  store ptr @.str.15, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 232), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 240), align 8, !tbaa !10
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 248), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 256), align 8, !tbaa !10
  store ptr @.str.17, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 264), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 272), align 8, !tbaa !10
  store ptr @.str.18, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 280), align 8, !tbaa !13
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 288), align 8, !tbaa !10
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE, i64 296), align 8, !tbaa !13
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 304, ptr nonnull @_ZN2cm5StdIo12_GLOBAL__N_111kVT100CodesE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !36
  store i64 5931043137586679630, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 8, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !39
  invoke void @_ZN13cmSystemTools9GetEnvVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !39
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !42, !range !15, !noundef !16
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.thread.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 0, label %bb.f
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !40
  %lhsc.i.i = load i8, ptr %i.o, align 1
  %i.p = icmp eq i8 %lhsc.i.i, 48
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.c, align 8, !tbaa !39
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  br label %bb.s

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  br label %._crit_edge.i.i53.i.i

bb.f:                                             ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = phi i1 [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ true, %bb.c ], [ false, %bb.d ]
  store i8 0, ptr %i.j, align 8, !tbaa !42
  %i.w = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i51.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i51.i.i: ; preds = %bb.f
  %i.z = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.z)
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !39
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.ab) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  br i1 %i.v, label %._crit_edge.i.i53.i.i, label %__cxx_global_var_init.20.exit

._crit_edge.i.i53.i.i:                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ac, ptr noundef nonnull align 1 dereferenceable(14) @.str.23, i64 14, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 14, ptr %i.ad, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.ae, align 2, !tbaa !39
  invoke void @_ZN13cmSystemTools9GetEnvVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %._crit_edge.i.i53.i.i
  %i.af = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ac
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !39
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !42, !range !15, !noundef !16
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.thread.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !38 ; 3 uses
  switch i64 %i.an, label %bb.i [
    i64 0, label %bb.k
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i62.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i62.i.i: ; preds = %bb.h
  %i.ao = load ptr, ptr %2, align 8, !tbaa !40
  %lhsc64.i.i = load i8, ptr %i.ao, align 1
  %i.ap = icmp eq i8 %lhsc64.i.i, 48
  br i1 %i.ap, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i62.i.i, %bb.h
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i53.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ac
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i: ; preds = %bb.j
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !39
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.s

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %._crit_edge.i.i75.i.i

bb.k:                                             ; preds = %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i62.i.i, %bb.h
  %.sroa.07.1.ph.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i62.i.i ], [ 1, %bb.i ], [ %i.an, %bb.h ] ; 2 uses
  %i.av = phi i1 [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i62.i.i ], [ false, %bb.i ], [ true, %bb.h ]
  store i8 0, ptr %i.aj, align 8, !tbaa !42
  %i.aw = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i73.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i73.i.i: ; preds = %bb.k
  %i.az = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.az)
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72.i.i: ; preds = %bb.k
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !39
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bb) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i72.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i73.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %i.av, label %._crit_edge.i.i75.i.i, label %__cxx_global_var_init.20.exit

._crit_edge.i.i75.i.i:                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.thread.i.i
  %.sroa.07.11420.i.i = phi i64 [ 0, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.thread.i.i ], [ %.sroa.07.1.ph.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bc, ptr %5, align 8, !tbaa !36
  store i64 5931043137585237059, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.bd, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !39
  invoke void @_ZN13cmSystemTools9GetEnvVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i75.i.i
  %i.bf = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.bc
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i: ; preds = %bb.l
  %i.bh = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !42, !range !15, !noundef !16
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.thread.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !38 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 1
  %.pre.pre.i.i = load ptr, ptr %4, align 8, !tbaa !40 ; 3 uses
  br i1 %i.bo, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.m
  %lhsc65.i.i = load i8, ptr %.pre.pre.i.i, align 1
  %i.bp = icmp eq i8 %lhsc65.i.i, 48
  br i1 %i.bp, label %bb.o, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread.i.i

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.m
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i75.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bc
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i: ; preds = %bb.n
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.s

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %._crit_edge.i.i93.i.i

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.sroa.07.2.ph.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.sroa.07.11420.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread.i.i ] ; 2 uses
  %i.bv = phi i1 [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ true, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread.i.i ]
  store i8 0, ptr %i.bj, align 8, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %.pre.pre.i.i, %i.bw
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i91.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i91.i.i: ; preds = %bb.o
  %i.by = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.by)
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bw, align 8, !tbaa !39
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i.i, i64 noundef %i.ca) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i90.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i91.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %i.bv, label %._crit_edge.i.i93.i.i, label %__cxx_global_var_init.20.exit

._crit_edge.i.i93.i.i:                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.thread.i.i
  %.sroa.07.22531.i.i = phi i64 [ %.sroa.07.11420.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.thread.i.i ], [ %.sroa.07.2.ph.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cb, ptr %7, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cb, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, i64 12, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.cc, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 0, ptr %i.cd, align 4, !tbaa !39
  invoke void @_ZN13cmSystemTools9GetEnvVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %._crit_edge.i.i93.i.i
  %i.ce = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.cb
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i.i: ; preds = %bb.p
  %i.cg = load i64, ptr %i.cb, align 8, !tbaa !39
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !42, !range !15, !noundef !16
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.q, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.thread.i.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !38 ; 2 uses
  %.not.not.i.i = icmp eq i64 %i.cm, 0            ; 2 uses
  %spec.select.i.i = select i1 %.not.not.i.i, i64 %.sroa.07.22531.i.i, i64 1
  store i8 0, ptr %i.ci, align 8, !tbaa !42
  %i.cn = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i104.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i103.i.i

bb.r:                                             ; preds = %._crit_edge.i.i93.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cb
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i.i: ; preds = %bb.r
  %i.ct = load i64, ptr %i.cb, align 8, !tbaa !39
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.s

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %__cxx_global_var_init.20.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i104.i.i: ; preds = %bb.q
  %i.cv = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cv)
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i103.i.i: ; preds = %bb.q
  %i.cw = load i64, ptr %i.co, align 8, !tbaa !39
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cx) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i103.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i104.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.cy = select i1 %.not.not.i.i, i64 0, i64 4294967296
  br label %__cxx_global_var_init.20.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i
  %.pn44.pn.i.i = phi { ptr, i32 } [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i ]
  resume { ptr, i32 } %.pn44.pn.i.i

__cxx_global_var_init.20.exit:                    ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.thread.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.i.i
  %.sroa.07.4.i.i = phi i64 [ 0, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.i.i ], [ %spec.select.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.i.i ], [ %.sroa.07.2.ph.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.i.i ], [ %.sroa.07.1.ph.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i.i ], [ %.sroa.07.22531.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.thread.i.i ]
  %.sroa.5.4.i.i = phi i64 [ 4294967296, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit52.i.i ], [ %i.cy, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.i.i ], [ 4294967296, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit92.i.i ], [ 4294967296, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit74.i.i ], [ 0, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit105.thread.i.i ]
  %.sroa.07.0.insert.insert.i.i = or disjoint i64 %.sroa.5.4.i.i, %.sroa.07.4.i.i
  store i64 %.sroa.07.0.insert.insert.i.i, ptr @_ZN2cm5StdIo12_GLOBAL__N_17TermEnvE, align 8
  %i.cz = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN2cm5StdIo12_GLOBAL__N_17TermEnvE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!"_ZTSSt12_Base_bitsetILm1EE", !9, i64 0}
!18 = !{!17, !9, i64 0}
!19 = distinct !{null}
!20 = distinct !{!20, !"_ZN2cm8enum_setINS_5StdIo8TermAttrELm19ELi0EE6insertES2_"}
!21 = distinct !{!21, !20, !"_ZN2cm8enum_setINS_5StdIo8TermAttrELm19ELi0EE6insertES2_: argument 0"}
!22 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!23 = !{!"_ZTSSt8functionIFvRSoEE", !22, i64 0, !11, i64 24}
!24 = !{!23, !11, i64 24}
!25 = !{!22, !11, i64 16}
!26 = !{!"_ZTSSt22_Optional_payload_baseIN2cm5StdIo8TermKindEE", !5, i64 0, !14, i64 4}
!27 = !{!26, !14, i64 4}
!28 = !{!21}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"p1 _ZTSSt9type_info", !11, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!11, !11, i64 0}
!34 = !{i64 0, i64 8, !10, i64 8, i64 8, !13}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!36 = !{!35, !12, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !9, i64 8, !5, i64 16}
!38 = !{!37, !9, i64 8}
!39 = !{!5, !5, i64 0}
!40 = !{!37, !12, i64 0}
!41 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !14, i64 32}
!42 = !{!41, !14, i64 32}
end_hunk_0
