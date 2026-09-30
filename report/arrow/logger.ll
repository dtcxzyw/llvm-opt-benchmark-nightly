Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/logger?download=true
inline.NumInlined: 656
inline.NumDeleted: 351
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !42

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !38
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #28
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !37
  store i64 %.0, ptr %i.d, align 8, !tbaa !38
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !43
  store i8 0, ptr %i.c, align 1, !tbaa !38
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1, !tbaa !38
  store i8 %i.v, ptr %i.t, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8, !tbaa !43
  %i.x = load ptr, ptr %0, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow4util10LogMessage4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRNS1_13ArrowLogLevelENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_14SourceLocationEEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow4util10LogMessage4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = load i32, ptr %1, align 4, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !41
  %i.f = load ptr, ptr %2, align 8, !tbaa !37     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %4, align 8, !tbaa !37
  %i.m = load i64, ptr %i.g, align 8, !tbaa !38
  store i64 %i.m, ptr %i.e, align 8, !tbaa !38
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !43
  store ptr %i.g, ptr %2, align 8, !tbaa !37
  store i64 0, ptr %i.o, align 8, !tbaa !43
  store i8 0, ptr %i.g, align 8, !tbaa !38
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !40
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !10
  invoke void @_ZN5arrow4util10LogMessage4ImplC2ENS0_13ArrowLogLevelENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(488) %i.c, i32 noundef %i.d, ptr noundef nonnull %4, ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.q = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !38
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.e, align 8, !tbaa !38
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #28
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util10LogMessage4ImplC2ENS0_13ArrowLogLevelENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(488) %0, i32 noundef %1, ptr noundef %2, ptr %3, i32 %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #26
  store i64 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr @.str.6, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.e, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @.str.6, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.i, align 8, !tbaa !43
  store i8 0, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.j)
          to label %_ZN5arrow4util10LogMessage4ImplC2ENS0_13ArrowLogLevelENS0_14SourceLocationE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.h, align 8, !tbaa !38
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.k

_ZN5arrow4util10LogMessage4ImplC2ENS0_13ArrowLogLevelENS0_14SourceLocationE.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !66
  store ptr %3, ptr %i.c, align 8, !tbaa !40
  store i32 %4, ptr %i.d, align 8, !tbaa !10
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !37   ; 6 uses
  %5 = icmp eq ptr %i.q, %i.h
  %i.r = load ptr, ptr %2, align 8, !tbaa !37     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.t = icmp eq ptr %i.r, %i.s                   ; 2 uses
  br i1 %5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN5arrow4util10LogMessage4ImplC2ENS0_13ArrowLogLevelENS0_14SourceLocationE.exit
  br i1 %i.t, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN5arrow4util10LogMessage4ImplC2ENS0_13ArrowLogLevelENS0_14SourceLocationE.exit
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %.not21.i = icmp eq ptr %2, %i.g
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  switch i64 %i.v, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.r, align 1, !tbaa !38
  store i8 %i.x, ptr %i.q, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.y = load i64, ptr %i.u, align 8, !tbaa !43   ; 2 uses
  store i64 %i.y, ptr %i.i, align 8, !tbaa !43
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !38
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.r, ptr %i.g, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !43
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !43
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !38
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !38
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !38
  store ptr %i.r, ptr %i.g, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !43
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !43
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !38
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.q, ptr %2, align 8, !tbaa !37
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %2, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ai = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.q, %bb.g ], [ %i.s, %bb.h ], [ %i.r, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !43
  store i8 0, ptr %i.ai, align 1, !tbaa !38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { cold }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow4util6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow4util6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !78}
!3 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow4util6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!12 = !{!11, !9, i64 8}
!13 = !{!11, !9, i64 12}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSN5arrow4util6LoggerE"}
!17 = !{!"_ZTSN5arrow4util13ArrowLogLevelE", !8, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!"p1 _ZTSSo", !18, i64 0}
!20 = !{!"_ZTSN5arrow4util12_GLOBAL__N_112SimpleLoggerE", !16, i64 0, !17, i64 8, !19, i64 16}
!21 = !{!20, !17, i64 8}
!22 = !{!20, !19, i64 16}
!23 = !{!"p1 _ZTSN5arrow4util6LoggerE", !18, i64 0}
!24 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!25 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!26 = !{!"_ZTSSt12__shared_ptrIN5arrow4util6LoggerELN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0, !25, i64 8}
!27 = !{!26, !23, i64 0}
!28 = !{!25, !24, i64 0}
!29 = !{!"branch_weights", i32 1, i32 1048575}
!30 = !{!"p1 _ZTSN5arrow4util12_GLOBAL__N_112RegistryImplE", !18, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{!"p1 omnipotent char", !18, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!35 = !{!"long", !8, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !35, i64 8, !8, i64 16}
!37 = !{!36, !33, i64 0}
!38 = !{!8, !8, i64 0}
!39 = !{!35, !35, i64 0}
!40 = !{!33, !33, i64 0}
!41 = !{!34, !33, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!36, !35, i64 8}
!44 = !{!18, !18, i64 0}
!45 = !{!17, !17, i64 0}
!46 = !{!"p1 _ZTSN5arrow4util10LogMessage4ImplE", !18, i64 0}
!47 = !{!"_ZTSSt12__shared_ptrIN5arrow4util10LogMessage4ImplELN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0, !25, i64 8}
!48 = !{!47, !46, i64 0}
!49 = !{!46, !46, i64 0}
!50 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !35, i64 0}
!51 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !50, i64 0}
!52 = !{!"_ZTSN5arrow4util14SourceLocationE", !33, i64 0, !9, i64 8}
!53 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !35, i64 0, !33, i64 8}
!54 = !{!"_ZTSN5arrow4util10LogDetailsE", !17, i64 0, !51, i64 8, !52, i64 16, !53, i64 32}
!55 = !{!"_ZTSSi", !35, i64 8}
!56 = !{!"_ZTSSo"}
!57 = !{!"_ZTSSd", !55, i64 0, !56, i64 16}
!58 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!59 = !{!"_ZTSSt6locale", !58, i64 0}
!60 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !59, i64 56}
!61 = !{!"_ZTSSt13_Ios_Openmode", !8, i64 0}
!62 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !60, i64 0, !61, i64 64, !36, i64 72}
!63 = !{!"_ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !57, i64 0, !62, i64 24}
!64 = !{!"_ZTSSt10shared_ptrIN5arrow4util6LoggerEE", !26, i64 0}
!65 = !{!"_ZTSN5arrow4util10LogMessage4ImplE", !54, i64 0, !36, i64 48, !63, i64 80, !64, i64 472}
!66 = !{!65, !17, i64 0}
!67 = !{!"any p2 pointer", !18, i64 0}
!68 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !67, i64 0}
!69 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!70 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !69, i64 0}
!71 = !{!"float", !8, i64 0}
!72 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !71, i64 0, !35, i64 8}
!73 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN5arrow4util6LoggerEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE", !68, i64 0, !35, i64 8, !70, i64 16, !35, i64 24, !72, i64 32, !69, i64 48}
!74 = !{!73, !68, i64 0}
!75 = !{!73, !35, i64 8}
!76 = !{!73, !69, i64 16}
!77 = !{!70, !69, i64 0}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"_ZTSSt9type_info", !33, i64 8}
!80 = !{!79, !33, i64 8}
!81 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow4util6LoggerEEELb1EEEEEE", !18, i64 0}
!82 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN5arrow4util6LoggerEEELb1EEE", !18, i64 0}
!83 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN5arrow4util6LoggerEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !81, i64 0, !82, i64 8}
!84 = !{!83, !82, i64 8}
!85 = !{!73, !35, i64 24}
!86 = !{!69, !69, i64 0}
!87 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !35, i64 0}
!88 = !{!87, !35, i64 0}
!89 = !{!54, !17, i64 0}
!90 = !{!52, !33, i64 0}
!91 = !{!52, !9, i64 8}
!92 = !{!53, !35, i64 0}
!93 = !{!53, !33, i64 8}
!94 = distinct !{!94, !"_ZSt11make_sharedIN5arrow4util12_GLOBAL__N_112SimpleLoggerEJRNS1_13ArrowLogLevelEPSoEESt10shared_ptrIT_EDpOT0_"}
!95 = distinct !{!95, !94, !"_ZSt11make_sharedIN5arrow4util12_GLOBAL__N_112SimpleLoggerEJRNS1_13ArrowLogLevelEPSoEESt10shared_ptrIT_EDpOT0_: argument 0"}
!96 = distinct !{!96, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow4util12_GLOBAL__N_112SimpleLoggerESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!97 = distinct !{!97, !96, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow4util12_GLOBAL__N_112SimpleLoggerESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!98 = !{!97, !95}
!99 = !{!95}
!100 = distinct !{!100, !"_ZN5arrow4util17MakeOStreamLoggerENS0_13ArrowLogLevelERSo"}
!101 = distinct !{!101, !100, !"_ZN5arrow4util17MakeOStreamLoggerENS0_13ArrowLogLevelERSo: argument 0"}
!102 = distinct !{!102, !"_ZSt11make_sharedIN5arrow4util12_GLOBAL__N_112SimpleLoggerEJRNS1_13ArrowLogLevelEPSoEESt10shared_ptrIT_EDpOT0_"}
!103 = distinct !{!103, !102, !"_ZSt11make_sharedIN5arrow4util12_GLOBAL__N_112SimpleLoggerEJRNS1_13ArrowLogLevelEPSoEESt10shared_ptrIT_EDpOT0_: argument 0"}
!104 = distinct !{!104, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow4util12_GLOBAL__N_112SimpleLoggerESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!105 = distinct !{!105, !104, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow4util12_GLOBAL__N_112SimpleLoggerESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!106 = !{!101}
!107 = !{!105, !103, !101}
!108 = !{!103, !101}
!109 = distinct !{!109, !"_ZN5arrow6Status2OKEv"}
!110 = distinct !{!110, !109, !"_ZN5arrow6Status2OKEv: argument 0"}
!111 = !{!"p1 _ZTSN5arrow6Status5StateE", !18, i64 0}
!112 = !{!"_ZTSN5arrow6StatusE", !111, i64 0}
!113 = !{!112, !111, i64 0}
!114 = !{!110}
!115 = distinct !{!115, !"_ZN5arrow6Status8FromArgsIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA24_S2_EEES0_NS_10StatusCodeEDpOT_"}
end_hunk_0
