Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ocl_perf?download=true
inline.NumInlined: 71
inline.NumDeleted: 33
begin_hunk_0_@_ZN6cvtest3ocl4perf29checkDeviceMaxMemoryAllocSizeERKN2cv5Size_IiEEii:bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !14
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN2cv3ocl9useOpenCLEv()
  br i1 %i.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.j = load i32, ptr %0, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %i.m = lshr i32 %1, 5
  %i.n = and i32 %i.m, 127
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = shl i32 %1, 2
  %i.q = and i32 %i.p, 124
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 1275511473185297, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 15
  %i.v = mul nuw nsw i32 %i.u, %i.o
  %i.w = mul i32 %i.v, %i.j
  %i.x = mul i32 %i.w, %i.l
  %i.y = sext i32 %i.x to i64
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv3ocl6Device10getDefaultEv()
  %i.aa = zext nneg i32 %2 to i64
  %i.ab = mul nsw i64 %i.y, %i.aa
  %i.ac = tail call noundef i64 @_ZNK2cv3ocl6Device15maxMemAllocSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %.not = icmp ult i64 %i.ab, %i.ac
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 160) #9 ; 3 uses
  invoke void @_ZN4perf8TestBase21PerfSkipTestExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(156) %i.ad)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN4perf8TestBase21PerfSkipTestExceptionE, ptr nonnull @_ZN2cv9ExceptionD2Ev) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ad) #9
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g
  ret void

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn12
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %i.d, ptr %i.a, align 8, !tbaa !19
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  %i.g = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.i, ptr %i.h, align 1, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZN2cv3ocl9useOpenCLEv() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv3ocl6Device10getDefaultEv() local_unnamed_addr #3

declare noundef i64 @_ZNK2cv3ocl6Device15maxMemAllocSizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4perf8TestBase21PerfSkipTestExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(156) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6cvtest7details21SkipTestExceptionBaseC2Eb(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.a, align 4, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4perf8TestBase21PerfSkipTestExceptionE, i64 16), ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.b, align 8, !tbaa !30
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN2cv9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest3ocl4perf5randuERKN2cv17_InputOutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.h = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.i = alloca double, align 8                   ; 4 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.k = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1056833530, ptr %1, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.n, align 8, !tbaa !35
  store i64 4294967297, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store double 2.560000e+02, ptr %i.b, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !35
  store i64 4294967297, ptr %i.o, align 8
  call void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.q = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store double -1.280000e+02, ptr %i.c, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1056833530, ptr %3, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.t, align 8, !tbaa !35
  store i64 4294967297, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store double 1.280000e+02, ptr %i.d, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 -1056833530, ptr %4, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.d, ptr %i.v, align 8, !tbaa !35
  store i64 4294967297, ptr %i.u, align 8
  call void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.w = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %i.z, align 8, !tbaa !35
  store i64 4294967297, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store double 1.024000e+03, ptr %i.f, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 -1056833530, ptr %6, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.f, ptr %i.ab, align 8, !tbaa !35
  store i64 4294967297, ptr %i.aa, align 8
  call void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ac = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.ad = icmp eq i32 %i.ac, 5
  br i1 %i.ad, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.af = icmp eq i32 %i.ae, 6
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.ah = icmp eq i32 %i.ag, 7
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store double -1.000000e+00, ptr %i.g, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1056833530, ptr %7, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.g, ptr %i.aj, align 8, !tbaa !35
  store i64 4294967297, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 -1056833530, ptr %8, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.h, ptr %i.al, align 8, !tbaa !35
  store i64 4294967297, ptr %i.ak, align 8
  call void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.am = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.an = icmp eq i32 %i.am, 3
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.ap = icmp eq i32 %i.ao, 4
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store double -4.096000e+03, ptr %i.i, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833530, ptr %9, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.i, ptr %i.ar, align 8, !tbaa !35
  store i64 4294967297, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  store double 4.096000e+03, ptr %i.j, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833530, ptr %10, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.j, ptr %i.at, align 8, !tbaa !35
  store i64 4294967297, ptr %i.as, align 8
  call void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN6cvtest3ocl4perf5randuERKN2cv17_InputOutputArrayE, ptr noundef nonnull @.str.20, i32 noundef 78) #10
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %11, align 8, !tbaa !13   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  resume { ptr, i32 } %i.au

bb.q:                                             ; preds = %bb.d, %bb.j, %bb.m, %bb.f, %bb.b
  ret void
}

declare noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4perf8TestBase21PerfSkipTestExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(156) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #11
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK2cv9Exception4whatEv(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #4

declare void @_ZN6cvtest7details21SkipTestExceptionBaseC2Eb(ptr noundef nonnull align 8 dereferenceable(148), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
!13 = !{!12, !9, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!16 = !{!15, !5, i64 0}
!17 = !{!15, !5, i64 4}
!18 = !{!10, !9, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!12, !11, i64 8}
!21 = !{!"_ZTSSt9exception"}
!22 = !{!"_ZTSN2cv5Error4CodeE", !4, i64 0}
!23 = !{!"_ZTSN2cv9ExceptionE", !21, i64 0, !12, i64 8, !22, i64 40, !12, i64 48, !12, i64 80, !12, i64 112, !5, i64 144}
!24 = !{!"_ZTSN6cvtest7details21SkipTestExceptionBaseE", !23, i64 0}
!25 = !{!"_ZTSN6cvtest17SkipTestExceptionE", !24, i64 0, !5, i64 148}
!26 = !{!25, !5, i64 148}
!27 = !{!"vtable pointer", !3, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTSN4perf8TestBase21PerfSkipTestExceptionE", !25, i64 0, !5, i64 152}
!30 = !{!29, !5, i64 152}
!31 = !{!"double", !4, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !15, i64 16}
!34 = !{!33, !5, i64 0}
!35 = !{!33, !8, i64 8}
end_hunk_0
