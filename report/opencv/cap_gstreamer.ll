Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cap_gstreamer?download=true
inline.NumInlined: 2469
inline.NumDeleted: 607
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN2cv16GStreamerCapture4openEiRKNS_22VideoCaptureParametersE:._crit_edge.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87, !noalias !552 ; 2 uses
  %i.ae = ptrtoint ptr %.08.i.i.i to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ad, i64 noundef %i.ag)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !62, !alias.scope !552 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.v
  br i1 %i.ak, label %.body25, label %.body25.sink.split

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.am = invoke noundef zeroext i1 @_ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = load ptr, ptr %6, align 8, !tbaa !62    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.v
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.i
  %i.ap = load i64, ptr %i.v, align 8, !tbaa !58
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !16
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %5, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !58
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #27
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.be) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.m

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !62    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.v
  br i1 %i.bi, label %.body25, label %.body25.sink.split

.body25.sink.split:                               ; preds = %bb.k, %bb.g
  %.sink = phi ptr [ %i.aj, %bb.g ], [ %i.bh, %bb.k ]
  %.pn11.ph = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.bg, %bb.k ]
  %i.bj = load i64, ptr %i.v, align 8, !tbaa !58
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bk) #28
  br label %.body25

.body25:                                          ; preds = %.body25.sink.split, %bb.k, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.bg, %bb.k ], [ %.pn11.ph, %.body25.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.l

bb.l:                                             ; preds = %.body25, %bb.j
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %.body25 ], [ %i.bf, %bb.j ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.09 = phi i1 [ %i.am, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.09

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.l ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv15gst_initializer4initEv() local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %1 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN2cv15gst_initializer4initEvE6g_init acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !553

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv15gst_initializer4initEvE6g_init) #27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv15gst_initializerC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2cv15gst_initializer4initEvE6g_init)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN2cv15gst_initializerD2Ev, ptr nonnull @_ZZN2cv15gst_initializer4initEvE6g_init, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv15gst_initializer4initEvE6g_init) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load i8, ptr @_ZZN2cv15gst_initializer4initEvE6g_init, align 8, !tbaa !175, !range !100, !noundef !101
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.231, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @__func__._ZN2cv15gst_initializer4initEv, ptr noundef nonnull @.str.2, i32 noundef 228) #29
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv15gst_initializer4initEvE6g_init) #27
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.m = load i64, ptr %i.k, align 8, !tbaa !58
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.h, %bb.j ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  ret ptr @_ZZN2cv15gst_initializer4initEvE6g_init

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %bb.i ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.cv::(anonymous namespace)::GSafePtr.14", align 8 ; 9 uses
  %12 = alloca %"class.cv::(anonymous namespace)::GSafePtr.15", align 8 ; 5 uses
  %13 = alloca %"class.cv::(anonymous namespace)::GSafePtr", align 8 ; 10 uses
  %14 = alloca %"class.cv::(anonymous namespace)::GSafePtr", align 8 ; 18 uses
  %15 = alloca %"class.cv::(anonymous namespace)::GSafePtr", align 8 ; 10 uses
  %16 = alloca %"class.cv::(anonymous namespace)::GSafePtr", align 8 ; 8 uses
  %17 = alloca %"class.cv::(anonymous namespace)::GSafePtr", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.cv::(anonymous namespace)::GSafePtr.16", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.cv::(anonymous namespace)::GSafePtr.16", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.cv::(anonymous namespace)::GSafePtr.14", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator", align 1   ; 3 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::allocator", align 1   ; 4 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator", align 1   ; 3 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %37 = alloca %"class.std::allocator", align 1   ; 3 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::allocator", align 1   ; 3 uses
  %40 = alloca %struct._GValue, align 8           ; 8 uses
  %41 = alloca %"class.cv::(anonymous namespace)::GSafePtr.14", align 8 ; 8 uses
  %42 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %45 = alloca %"class.std::allocator", align 1   ; 3 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.std::allocator", align 1   ; 3 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %49 = alloca %"class.std::allocator", align 1   ; 3 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %51 = alloca %"class.std::allocator", align 1   ; 3 uses
  %52 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %57 = alloca %"class.std::allocator", align 1   ; 3 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %59 = alloca %"class.std::allocator", align 1   ; 3 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %61 = alloca %"class.std::allocator", align 1   ; 3 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %63 = alloca %"class.std::allocator", align 1   ; 3 uses
  %64 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %71 = alloca %"class.cv::(anonymous namespace)::GSafePtr.1", align 8 ; 8 uses
  %72 = alloca %"class.cv::(anonymous namespace)::GSafePtr.12", align 8 ; 8 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %74 = alloca %"class.std::allocator", align 1   ; 3 uses
  %75 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %77 = alloca %"class.cv::(anonymous namespace)::GSafePtr.12", align 8 ; 8 uses
  %78 = alloca %"class.cv::(anonymous namespace)::GSafePtr.1", align 8 ; 8 uses
  %79 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %81 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %83 = alloca %"class.cv::(anonymous namespace)::GSafePtr.18", align 8 ; 8 uses
  %84 = alloca %"class.cv::(anonymous namespace)::GSafePtr.18", align 8 ; 8 uses
  %85 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %87 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %89 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %91 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %93 = alloca %"class.cv::(anonymous namespace)::GSafePtr.12", align 8 ; 8 uses
  %94 = alloca %"class.cv::(anonymous namespace)::GSafePtr.1", align 8 ; 8 uses
  %95 = alloca %struct._GstAudioInfo, align 8     ; 6 uses
  %96 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %98 = alloca %"class.std::vector.19", align 8   ; 10 uses
  %99 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %101 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv15gst_initializer4initEv() ; 0 uses
  %i.f = tail call noundef zeroext i1 @_ZN2cv16GStreamerCapture11configureHWERKNS_22VideoCaptureParametersE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() ; 3 uses
  %.not = icmp eq ptr %i.g, null                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81
  %i.j = icmp slt i32 %i.i, 3
  br i1 %i.j, label %bb.zl, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.95, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !82
  br label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.n = phi ptr [ %i.m, %bb.e ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !56, !alias.scope !585
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !57, !alias.scope !585
  store i8 0, ptr %i.o, align 8, !tbaa !58, !alias.scope !585
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86, !noalias !585 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !noalias !585 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  %.08.i.i.i = select i1 %i.u, ptr %i.r, ptr %i.t ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87, !noalias !585 ; 2 uses
  %i.x = ptrtoint ptr %.08.i.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.w, i64 noundef %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !62, !alias.scope !585 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.o
  br i1 %i.ad, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.af = load ptr, ptr %4, align 8, !tbaa !62
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.n, ptr noundef nonnull @.str.2, i32 noundef 1371, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef %i.af)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.o
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !58
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ak = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !16
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !16
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aq, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE:bb.a

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845, %bb.cq
  %.pn444.pn = phi { ptr, i32 } [ %.pn444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845 ], [ %i.mb, %bb.cq ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %21) #27
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cp
  %.pn444.pn.pn = phi { ptr, i32 } [ %.pn444.pn, %bb.ct ], [ %i.ma, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.cw

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit842, %bb.cd
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI7_GErrorED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.yx

bb.cv:                                            ; preds = %bb.bz
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI7_GErrorED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.dx

bb.cw:                                            ; preds = %bb.cb, %bb.cu
  %.pn444.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ld, %bb.cb ], [ %.pn444.pn.pn, %bb.cu ]
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI7_GErrorED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.zk

bb.cx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  store ptr null, ptr %23, align 8, !tbaa !158
  %i.mj = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI7_GErrorE6getRefEv(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cy unwind label %bb.db     ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  %i.mk = invoke noalias ptr @gst_parse_launch(ptr noundef %i.ih, ptr noundef nonnull %23)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ml = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE6attachEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %i.mk) #27 ; 0 uses
  %.val656 = load ptr, ptr %14, align 8, !tbaa !66
  %i.mm = icmp eq ptr %.val656, null
  br i1 %i.mm, label %bb.da, label %bb.du

bb.da:                                            ; preds = %bb.cz
  %i.mn = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.dc unwind label %bb.db     ; 3 uses

bb.db:                                            ; preds = %bb.cx, %bb.cy, %bb.da
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dc:                                            ; preds = %bb.da
  %.not433 = icmp eq ptr %i.mn, null              ; 2 uses
  br i1 %.not433, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !81
  %i.mr = icmp slt i32 %i.mq, 3
  br i1 %i.mr, label %.thread1165, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %24)
          to label %bb.df unwind label %bb.do

bb.df:                                            ; preds = %bb.de
  %i.ms = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.mt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull @.str.82, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit847 unwind label %bb.dp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit847: ; preds = %bb.df
  %i.mu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull @.str.104, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit849 unwind label %bb.dp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit849: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit847
  %.val712 = load ptr, ptr %23, align 8, !tbaa !158 ; 3 uses
  %.not434 = icmp eq ptr %.val712, null
  br i1 %.not434, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit849
  %i.mv = invoke fastcc noundef ptr @_ZNK2cv12_GLOBAL__N_18GSafePtrI7_GErrorEptEv(ptr nonnull %.val712)
          to label %bb.dh unwind label %bb.dp     ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  %i.mw = getelementptr inbounds nuw i8, ptr %.val712, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !162
  br label %bb.di

bb.di:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit849, %bb.dh
  %i.my = phi ptr [ %i.mx, %bb.dh ], [ @.str.102, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit849 ]
  %i.mz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef %i.my)
          to label %bb.dj unwind label %bb.dp     ; 0 uses

bb.dj:                                            ; preds = %bb.di
  br i1 %.not433, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.na = load ptr, ptr %i.mn, align 8, !tbaa !82
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %i.nb = phi ptr [ %i.na, %bb.dk ], [ null, %bb.dj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(128) %24)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  %i.nc = load ptr, ptr %25, align 8, !tbaa !62
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.nb, ptr noundef nonnull @.str.2, i32 noundef 1435, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef %i.nc)
          to label %bb.dn unwind label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  %i.nd = load ptr, ptr %25, align 8, !tbaa !62   ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.nf = icmp eq ptr %i.nd, %i.ne
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850: ; preds = %bb.dn
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !58
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %.thread1165

bb.do:                                            ; preds = %bb.de
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit847, %bb.df, %bb.dg, %bb.di
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dq:                                            ; preds = %bb.dl
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855

bb.dr:                                            ; preds = %bb.dm
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nm = load ptr, ptr %25, align 8, !tbaa !62   ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.no = icmp eq ptr %i.nm, %i.nn
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853: ; preds = %bb.dr
  %i.np = load i64, ptr %i.nn, align 8, !tbaa !58
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.nq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853, %bb.dq
  %.pn435 = phi { ptr, i32 } [ %i.nk, %bb.dq ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853 ], [ %i.nl, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %bb.ds

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, %bb.dp
  %.pn435.pn = phi { ptr, i32 } [ %.pn435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855 ], [ %i.nj, %bb.dp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %24) #27
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.do
  %.pn435.pn.pn = phi { ptr, i32 } [ %.pn435.pn, %bb.ds ], [ %i.ni, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.dv

.thread1165:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852, %bb.dd
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI7_GErrorED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.yx

bb.du:                                            ; preds = %bb.cz
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI7_GErrorED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.dx

bb.dv:                                            ; preds = %bb.db, %bb.dt
  %.pn435.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mo, %bb.db ], [ %.pn435.pn.pn, %bb.dt ]
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI7_GErrorED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.zk

bb.dw:                                            ; preds = %bb.bu
  %i.nr = invoke noalias ptr @g_strdup(ptr noundef %i.ih)
          to label %_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit unwind label %bb.py ; 2 uses

_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit:  ; preds = %bb.dw
  store ptr %i.nr, ptr %11, align 8, !tbaa !160
  br label %bb.dx

bb.dx:                                            ; preds = %bb.du, %bb.cv, %_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit
  %.val728 = phi ptr [ %i.nr, %_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit ], [ %.val729, %bb.cv ], [ null, %bb.du ] ; 7 uses
  %.val655 = phi i1 [ true, %_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit ], [ true, %bb.cv ], [ false, %bb.du ]
  %.1254 = phi i1 [ false, %_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit ], [ true, %bb.cv ], [ false, %bb.du ] ; 2 uses
  %.1252 = phi i1 [ false, %_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit ], [ false, %bb.cv ], [ true, %bb.du ] ; 4 uses
  %i.ns = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.dy unwind label %bb.py     ; 3 uses

bb.dy:                                            ; preds = %bb.dx
  %.not450 = icmp eq ptr %i.ns, null              ; 2 uses
  br i1 %.not450, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !81
  %i.nv = icmp slt i32 %i.nu, 4
  br i1 %i.nv, label %bb.en, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %26)
          to label %bb.eb unwind label %bb.ei

bb.eb:                                            ; preds = %bb.ea
  %i.nw = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef nonnull @.str.105, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit858 unwind label %bb.ej ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit858: ; preds = %bb.eb
  %i.ny = select i1 %.1252, ptr @.str.107, ptr @.str.108
  %i.nz = select i1 %.1254, ptr @.str.106, ptr %i.ny ; 2 uses
  %i.oa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nz) #27
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef nonnull %i.nz, i64 noundef %i.oa)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit861 unwind label %bb.ej ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit861: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit858
  br i1 %.not450, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit861
  %i.oc = load ptr, ptr %i.ns, align 8, !tbaa !82
  br label %bb.ed

bb.ed:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit861, %bb.ec
  %i.od = phi ptr [ %i.oc, %bb.ec ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit861 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.oe = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  store ptr %i.oe, ptr %27, align 8, !tbaa !56, !alias.scope !600
  %i.of = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.of, align 8, !tbaa !57, !alias.scope !600
  store i8 0, ptr %i.oe, align 8, !tbaa !58, !alias.scope !600
  %i.og = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !86, !noalias !600 ; 3 uses
  %.not.i.not.i.i862 = icmp eq ptr %i.oh, null
  %i.oi = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.oj = load ptr, ptr %i.oi, align 8, !noalias !600 ; 2 uses
  %i.ok = icmp ugt ptr %i.oh, %i.oj
  %.08.i.i.i863 = select i1 %i.ok, ptr %i.oh, ptr %i.oj ; 2 uses
  %.not5.i.i864 = icmp eq ptr %.08.i.i.i863, null
  %.not.i.i865 = select i1 %.not.i.not.i.i862, i1 true, i1 %.not5.i.i864
  br i1 %.not.i.i865, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ol = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !87, !noalias !600 ; 2 uses
  %i.on = ptrtoint ptr %.08.i.i.i863 to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef 0, i64 noundef 0, ptr noundef %i.om, i64 noundef %i.op)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit871 unwind label %bb.ef ; 0 uses

bb.ef:                                            ; preds = %bb.eg, %bb.ee
  %i.or = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.os = load ptr, ptr %27, align 8, !tbaa !62, !alias.scope !600 ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.oe
  br i1 %i.ot, label %.body869, label %.body869.sink.split

bb.eg:                                            ; preds = %bb.ed
  %i.ou = getelementptr inbounds nuw i8, ptr %26, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %i.ou)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit871 unwind label %bb.ef

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit871: ; preds = %bb.eg, %bb.ee
  %i.ov = load ptr, ptr %27, align 8, !tbaa !62
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 4, ptr noundef %i.od, ptr noundef nonnull @.str.2, i32 noundef 1445, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef %i.ov)
          to label %bb.eh unwind label %bb.ek

bb.eh:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit871
  %i.ow = load ptr, ptr %27, align 8, !tbaa !62   ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.oe
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872: ; preds = %bb.eh
  %i.oy = load i64, ptr %i.oe, align 8, !tbaa !58
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.pa = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.pa, ptr %26, align 8, !tbaa !16
  %i.pb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.pc = getelementptr i8, ptr %i.pa, i64 -24
  %i.pd = load i64, ptr %i.pc, align 8
  %i.pe = getelementptr inbounds i8, ptr %26, i64 %i.pd
  store ptr %i.pb, ptr %i.pe, align 8, !tbaa !16
  %i.pf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.pf, ptr %i.nw, align 8, !tbaa !16
  %i.pg = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.pg, align 8, !tbaa !16
  %i.ph = getelementptr inbounds nuw i8, ptr %26, i64 96
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !62 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %26, i64 112 ; 2 uses
  %i.pk = icmp eq ptr %i.pi, %i.pj
  br i1 %i.pk, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit877, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i875

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i875: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874
  %i.pl = load i64, ptr %i.pj, align 8, !tbaa !58
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pm) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit877

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit877: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit874, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i875
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.pg, align 8, !tbaa !16
  %i.pn = getelementptr inbounds nuw i8, ptr %26, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.pn) #27
  %i.po = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.po, ptr %26, align 8, !tbaa !16
  %i.pp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.pq = getelementptr i8, ptr %i.po, i64 -24
  %i.pr = load i64, ptr %i.pq, align 8
  %i.ps = getelementptr inbounds i8, ptr %26, i64 %i.pr
  store ptr %i.pp, ptr %i.ps, align 8, !tbaa !16
  %i.pt = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.pt, align 8, !tbaa !89
  %i.pu = getelementptr inbounds nuw i8, ptr %26, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.pu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.en

bb.ei:                                            ; preds = %bb.ea
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ej:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit858, %bb.eb
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit871
  %i.px = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.py = load ptr, ptr %27, align 8, !tbaa !62   ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.oe
  br i1 %i.pz, label %.body869, label %.body869.sink.split

.body869.sink.split:                              ; preds = %bb.ek, %bb.ef
  %.sink1440 = phi ptr [ %i.os, %bb.ef ], [ %i.py, %bb.ek ]
  %.pn451.ph = phi { ptr, i32 } [ %i.or, %bb.ef ], [ %i.px, %bb.ek ]
  %i.qa = load i64, ptr %i.oe, align 8, !tbaa !58
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %.sink1440, i64 noundef %i.qb) #28
  br label %.body869

.body869:                                         ; preds = %.body869.sink.split, %bb.ek, %bb.ef
  %.pn451 = phi { ptr, i32 } [ %i.or, %bb.ef ], [ %i.px, %bb.ek ], [ %.pn451.ph, %.body869.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.el

bb.el:                                            ; preds = %.body869, %bb.ej
  %.pn451.pn = phi { ptr, i32 } [ %.pn451, %.body869 ], [ %i.pw, %bb.ej ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %26) #27
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ei
  %.pn451.pn.pn = phi { ptr, i32 } [ %.pn451.pn, %bb.el ], [ %i.pv, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.zk

bb.en:                                            ; preds = %bb.dz, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit877
  br i1 %.val655, label %bb.eo, label %bb.gl

bb.eo:                                            ; preds = %bb.en
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !96
  %i.qe = icmp sgt i32 %i.qd, -1
  br i1 %i.qe, label %bb.ep, label %bb.ga

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  store ptr null, ptr %28, align 8, !tbaa !160
  %i.qf = invoke noalias ptr @gst_uri_get_protocol(ptr noundef %.val728)
          to label %bb.eq unwind label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.qg = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %i.qf) #27 ; 0 uses
  %.val730 = load ptr, ptr %28, align 8, !tbaa !160 ; 3 uses
  %i.qh = icmp eq ptr %.val730, null
  br i1 %i.qh, label %bb.es, label %bb.ex

bb.er:                                            ; preds = %bb.ep
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.es:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.109, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef nonnull @.str.2, i32 noundef 1456) #29
          to label %bb.eu unwind label %bb.ew

bb.eu:                                            ; preds = %bb.et
  unreachable

bb.ev:                                            ; preds = %bb.es
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883

bb.ew:                                            ; preds = %bb.et
  %i.qk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ql = load ptr, ptr %29, align 8, !tbaa !62   ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.qn = icmp eq ptr %i.ql, %i.qm
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i881

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i881: ; preds = %bb.ew
  %i.qo = load i64, ptr %i.qm, align 8, !tbaa !58
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i881, %bb.ev
  %.pn624 = phi { ptr, i32 } [ %i.qj, %bb.ev ], [ %i.qk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i881 ], [ %i.qk, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.fz

bb.ex:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  %i.qq = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrIcE3getEv(ptr nonnull %.val730)
          to label %bb.ey unwind label %bb.fe     ; 0 uses

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull %.val730, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.ez unwind label %bb.ff

bb.ez:                                            ; preds = %bb.ey
  %.val = load ptr, ptr %32, align 8, !tbaa !62
  %i.qr = getelementptr inbounds nuw i8, ptr %32, i64 8
  %.val641 = load i64, ptr %i.qr, align 8, !tbaa !57
  invoke fastcc void @_ZN2cvL11toLowerCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %31, ptr %.val, i64 %.val641)
          to label %bb.fa unwind label %bb.fg

bb.fa:                                            ; preds = %bb.ez
  %i.qs = load ptr, ptr %32, align 8, !tbaa !62   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.qu = icmp eq ptr %i.qs, %i.qt
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884: ; preds = %bb.fa
  %i.qv = load i64, ptr %i.qt, align 8, !tbaa !58
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  %i.qx = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.110) ; 2 uses
  br i1 %i.qx, label %bb.fb, label %bb.fn

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886
  %i.qy = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrIcE3getEv(ptr %.val728)
          to label %bb.fc unwind label %bb.fx     ; 0 uses

bb.fc:                                            ; preds = %bb.fb
  %i.qz = invoke noalias ptr @gst_element_make_from_uri(i32 noundef 2, ptr noundef nonnull %.val728, ptr noundef nonnull @.str.111, ptr noundef null)
          to label %bb.fd unwind label %bb.fx

bb.fd:                                            ; preds = %bb.fc
  %i.ra = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %i.qz) #27 ; 0 uses
  %.val654 = load ptr, ptr %14, align 8, !tbaa !66
  %i.rb = icmp eq ptr %.val654, null
  br i1 %i.rb, label %bb.fi, label %.critedge

bb.fe:                                            ; preds = %bb.ex
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.ff:                                            ; preds = %bb.ey
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit889

bb.fg:                                            ; preds = %bb.ez
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rf = load ptr, ptr %32, align 8, !tbaa !62   ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.rh = icmp eq ptr %i.rf, %i.rg
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit889, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i887

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i887: ; preds = %bb.fg
  %i.ri = load i64, ptr %i.rg, align 8, !tbaa !58
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.rj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit889

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit889: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i887, %bb.ff
  %.pn458 = phi { ptr, i32 } [ %i.rd, %bb.ff ], [ %i.re, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i887 ], [ %i.re, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit889, %bb.fe
  %.pn458.pn = phi { ptr, i32 } [ %.pn458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit889 ], [ %i.rc, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911

bb.fi:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.112, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.fj unwind label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef nonnull @.str.2, i32 noundef 1461) #29
          to label %bb.fk unwind label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  unreachable

bb.fl:                                            ; preds = %bb.fi
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892

bb.fm:                                            ; preds = %bb.fj
  %i.rl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rm = load ptr, ptr %34, align 8, !tbaa !62   ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ro = icmp eq ptr %i.rm, %i.rn
  br i1 %i.ro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i890

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i890: ; preds = %bb.fm
  %i.rp = load i64, ptr %i.rn, align 8, !tbaa !58
  %i.rq = add i64 %i.rp, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i890, %bb.fl
  %.pn620 = phi { ptr, i32 } [ %i.rk, %bb.fl ], [ %i.rl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i890 ], [ %i.rl, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %bb.fy

bb.fn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886
  %i.rr = invoke noalias ptr @gst_element_factory_make(ptr noundef nonnull @.str.112, ptr noundef null)
          to label %bb.fo unwind label %bb.fx

bb.fo:                                            ; preds = %bb.fn
  %i.rs = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %i.rr) #27 ; 0 uses
  %.val653 = load ptr, ptr %14, align 8, !tbaa !66 ; 3 uses
  %i.rt = icmp eq ptr %.val653, null
  br i1 %i.rt, label %bb.fp, label %bb.fu

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.112, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.fq unwind label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef nonnull @.str.2, i32 noundef 1467) #29
          to label %bb.fr unwind label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  unreachable

bb.fs:                                            ; preds = %bb.fp
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit895

bb.ft:                                            ; preds = %bb.fq
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rw = load ptr, ptr %36, align 8, !tbaa !62   ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit895, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i893

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i893: ; preds = %bb.ft
  %i.rz = load i64, ptr %i.rx, align 8, !tbaa !58
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.sa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit895

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit895: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i893, %bb.fs
  %.pn461 = phi { ptr, i32 } [ %i.ru, %bb.fs ], [ %i.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i893 ], [ %i.rv, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.fy

bb.fu:                                            ; preds = %bb.fo
  %i.sb = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr nonnull %.val653)
          to label %bb.fv unwind label %bb.fx     ; 0 uses

bb.fv:                                            ; preds = %bb.fu
  %i.sc = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrIcE3getEv(ptr %.val728)
          to label %bb.fw unwind label %bb.fx     ; 0 uses

bb.fw:                                            ; preds = %bb.fv
  invoke void (ptr, ptr, ...) @g_object_set(ptr noundef nonnull %.val653, ptr noundef nonnull @.str.113, ptr noundef nonnull %.val728, i64 noundef 0)
          to label %.critedge unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fb, %bb.fv, %bb.fu, %bb.fc, %bb.fn, %bb.fw
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit895, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892
  %.pn620.pn = phi { ptr, i32 } [ %.pn620, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit892 ], [ %.pn461, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit895 ], [ %i.sd, %bb.fx ] ; 2 uses
  %i.se = load ptr, ptr %31, align 8, !tbaa !62   ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.sg = icmp eq ptr %i.se, %i.sf
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i909

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i909: ; preds = %bb.fy
  %i.sh = load i64, ptr %i.sf, align 8, !tbaa !58
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.si) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i909, %bb.fh
  %.pn620.pn.pn = phi { ptr, i32 } [ %.pn458.pn, %bb.fh ], [ %.pn620.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i909 ], [ %.pn620.pn, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %bb.fz

bb.fz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883, %bb.er
  %.pn624.pn = phi { ptr, i32 } [ %.pn624, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883 ], [ %.pn620.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911 ], [ %i.qi, %bb.er ]
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrIcED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %bb.zk

bb.ga:                                            ; preds = %bb.eo
  %i.sj = load i32, ptr %i.dr, align 4, !tbaa !97
  %i.sk = icmp sgt i32 %i.sj, -1
  br i1 %i.sk, label %bb.gb, label %bb.gl

bb.gb:                                            ; preds = %bb.ga
  %i.sl = invoke noalias ptr @gst_element_factory_make(ptr noundef nonnull @.str.112, ptr noundef null)
          to label %bb.gc unwind label %bb.py

bb.gc:                                            ; preds = %bb.gb
  %i.sm = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %i.sl) #27 ; 0 uses
  %.val651 = load ptr, ptr %14, align 8, !tbaa !66 ; 3 uses
  %i.sn = icmp eq ptr %.val651, null
  br i1 %i.sn, label %bb.gd, label %bb.gi

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.112, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.ge unwind label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef nonnull @.str.2, i32 noundef 1479) #29
          to label %bb.gf unwind label %bb.gh

bb.gf:                                            ; preds = %bb.ge
  unreachable

bb.gg:                                            ; preds = %bb.gd
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit914

bb.gh:                                            ; preds = %bb.ge
  %i.sp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sq = load ptr, ptr %38, align 8, !tbaa !62   ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit914, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i912

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i912: ; preds = %bb.gh
  %i.st = load i64, ptr %i.sr, align 8, !tbaa !58
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.su) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit914

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit914: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i912, %bb.gg
  %.pn456 = phi { ptr, i32 } [ %i.so, %bb.gg ], [ %i.sp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i912 ], [ %i.sp, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  br label %bb.zk

bb.gi:                                            ; preds = %bb.gc
  %i.sv = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr nonnull %.val651)
          to label %bb.gj unwind label %bb.py     ; 0 uses

bb.gj:                                            ; preds = %bb.gi
  %i.sw = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrIcE3getEv(ptr %.val728)
          to label %bb.gk unwind label %bb.py     ; 0 uses

bb.gk:                                            ; preds = %bb.gj
  invoke void (ptr, ptr, ...) @g_object_set(ptr noundef nonnull %.val651, ptr noundef nonnull @.str.113, ptr noundef nonnull %.val728, i64 noundef 0)
          to label %bb.gl unwind label %bb.py

.critedge:                                        ; preds = %bb.fw, %bb.fd
  %i.sx = load ptr, ptr %31, align 8, !tbaa !62   ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.sz = icmp eq ptr %i.sx, %i.sy
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i915

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i915: ; preds = %.critedge
  %i.ta = load i64, ptr %i.sy, align 8, !tbaa !58
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.tb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i915
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrIcED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %bb.gl

bb.gl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917, %bb.gk, %bb.ga, %bb.en
  %.1245 = phi i1 [ %i.qx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917 ], [ false, %bb.gk ], [ false, %bb.ga ], [ false, %bb.en ]
  br i1 %.1252, label %bb.gm, label %bb.ig

bb.gm:                                            ; preds = %bb.gl
  %.val691 = load ptr, ptr %14, align 8, !tbaa !66 ; 3 uses
  %i.tc = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr %.val691)
          to label %bb.gn unwind label %bb.py     ; 0 uses

bb.gn:                                            ; preds = %bb.gm
  %i.td = invoke ptr @gst_bin_iterate_elements(ptr noundef nonnull %.val691)
          to label %bb.go unwind label %bb.py     ; 3 uses

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %_ZN2cv12_GLOBAL__N_18GSafePtrIcED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  store ptr null, ptr %41, align 8, !tbaa !160
  %i.th = invoke i32 @gst_iterator_next(ptr noundef %i.td, ptr noundef nonnull %40)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  switch i32 %i.th, label %_ZN2cv12_GLOBAL__N_18GSafePtrIcED2Ev.exit [
    i32 1, label %bb.gs
    i32 2, label %bb.hn
    i32 3, label %_ZN2cv12_GLOBAL__N_18GSafePtrIcED2Ev.exit.thread
    i32 0, label %_ZN2cv12_GLOBAL__N_18GSafePtrIcED2Ev.exit.thread
  ]

bb.gr:                                            ; preds = %bb.hn, %bb.hm, %bb.hh, %bb.he, %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE6attachEPS2_.exit, %bb.gw, %bb.gt, %bb.gs, %bb.gp
  %i.ti = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrIcED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  br label %bb.if

bb.gs:                                            ; preds = %bb.gq
  %i.tj = invoke ptr @g_value_get_object(ptr noundef nonnull %40)
          to label %bb.gt unwind label %bb.gr     ; 5 uses

bb.gt:                                            ; preds = %bb.gs
  %i.tk = invoke ptr @gst_object_get_name(ptr noundef %i.tj)
          to label %_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit919 unwind label %bb.gr ; 7 uses

_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit919: ; preds = %bb.gt
  store ptr %i.tk, ptr %41, align 8, !tbaa !160
  %.not610 = icmp eq ptr %i.tk, null
  br i1 %.not610, label %bb.hm, label %bb.gu

bb.gu:                                            ; preds = %_ZN2cv12_GLOBAL__N_18GSafePtrIcE6attachEPc.exit919
  %i.tl = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.tk, ptr noundef nonnull dereferenceable(1) @.str.115) #31
  %.not611 = icmp eq ptr %i.tl, null
  br i1 %.not611, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.tm = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.tk, ptr noundef nonnull dereferenceable(1) @.str.116) #31
  %.not612 = icmp eq ptr %i.tm, null
  br i1 %.not612, label %bb.hd, label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.tn = invoke ptr @gst_object_ref(ptr noundef %i.tj)
          to label %bb.gx unwind label %bb.gr

bb.gx:                                            ; preds = %bb.gw
  %i.to = load ptr, ptr %i.te, align 8, !tbaa !66 ; 2 uses
  %.not.i.i920 = icmp eq ptr %i.to, null
  br i1 %.not.i.i920, label %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE6attachEPS2_.exit, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  invoke void @gst_object_unref(ptr noundef nonnull %i.to)
          to label %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE6attachEPS2_.exit unwind label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.tp = landingpad { ptr, i32 }
          catch ptr null
  %i.tq = extractvalue { ptr, i32 } %i.tp, 0
  call void @__clang_call_terminate(ptr %i.tq) #30
  unreachable

_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE6attachEPS2_.exit: ; preds = %bb.gx, %bb.gy
end_hunk_1
begin_hunk_2_@_ZN2cv23CvVideoWriter_GStreamer4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidRKNS_5Size_IiEERKNS_21VideoWriterParametersE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  br label %bb.ka

bb.jf:                                            ; preds = %bb.il
  %i.aca = invoke noalias ptr @gst_element_factory_make(ptr noundef nonnull @.str.211, ptr noundef null)
          to label %bb.jg unwind label %bb.ji

bb.jg:                                            ; preds = %bb.jf
  %i.acb = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %i.aca) #27 ; 0 uses
  %.val = load ptr, ptr %38, align 8, !tbaa !66   ; 4 uses
  %i.acc = icmp eq ptr %.val, null
  br i1 %i.acc, label %bb.jh, label %bb.jx

bb.jh:                                            ; preds = %bb.jg
  %i.acd = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.jj unwind label %bb.ji     ; 3 uses

bb.ji:                                            ; preds = %bb.if, %bb.ii, %bb.id, %bb.ih, %bb.jx, %bb.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit730, %bb.ie, %bb.ig, %bb.ij, %bb.ik, %bb.jf, %bb.jy, %bb.jh
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.ka

bb.jj:                                            ; preds = %bb.jh
  %.not304 = icmp eq ptr %i.acd, null             ; 2 uses
  br i1 %.not304, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !81
  %i.ach = icmp slt i32 %i.acg, 3
  br i1 %i.ach, label %bb.jz, label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %66)
          to label %bb.jm unwind label %bb.jr

bb.jm:                                            ; preds = %bb.jl
  %i.aci = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.acj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aci, ptr noundef nonnull @.str.82, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748 unwind label %bb.js ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748: ; preds = %bb.jm
  %i.ack = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aci, ptr noundef nonnull @.str.212, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit750 unwind label %bb.js ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit750: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748
  br i1 %.not304, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit750
  %i.acl = load ptr, ptr %i.acd, align 8, !tbaa !82
  br label %bb.jo

bb.jo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit750, %bb.jn
  %i.acm = phi ptr [ %i.acl, %bb.jn ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit750 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #27
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %67, ptr noundef nonnull align 8 dereferenceable(128) %66)
          to label %bb.jp unwind label %bb.jt

bb.jp:                                            ; preds = %bb.jo
  %i.acn = load ptr, ptr %67, align 8, !tbaa !62
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.acm, ptr noundef nonnull @.str.2, i32 noundef 2549, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef %i.acn)
          to label %bb.jq unwind label %bb.ju

bb.jq:                                            ; preds = %bb.jp
  %i.aco = load ptr, ptr %67, align 8, !tbaa !62  ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.acq = icmp eq ptr %i.aco, %i.acp
  br i1 %i.acq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751: ; preds = %bb.jq
  %i.acr = load i64, ptr %i.acp, align 8, !tbaa !58
  %i.acs = add i64 %i.acr, 1
  call void @_ZdlPvm(ptr noundef %i.aco, i64 noundef %i.acs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753: ; preds = %bb.jq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %66) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #27
  br label %bb.jz

bb.jr:                                            ; preds = %bb.jl
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.js:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit748, %bb.jm
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.jt:                                            ; preds = %bb.jo
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756

bb.ju:                                            ; preds = %bb.jp
  %i.acw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acx = load ptr, ptr %67, align 8, !tbaa !62  ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.acz = icmp eq ptr %i.acx, %i.acy
  br i1 %i.acz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754: ; preds = %bb.ju
  %i.ada = load i64, ptr %i.acy, align 8, !tbaa !58
  %i.adb = add i64 %i.ada, 1
  call void @_ZdlPvm(ptr noundef %i.acx, i64 noundef %i.adb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756: ; preds = %bb.ju, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754, %bb.jt
  %.pn305 = phi { ptr, i32 } [ %i.acv, %bb.jt ], [ %i.acw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754 ], [ %i.acw, %bb.ju ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #27
  br label %bb.jv

bb.jv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756, %bb.js
  %.pn305.pn = phi { ptr, i32 } [ %.pn305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756 ], [ %i.acu, %bb.js ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %66) #27
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.jr
  %.pn305.pn.pn = phi { ptr, i32 } [ %.pn305.pn, %bb.jv ], [ %i.act, %bb.jr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #27
  br label %bb.ka

bb.jx:                                            ; preds = %bb.jg
  %i.adc = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr nonnull %.val)
          to label %bb.jy unwind label %bb.ji     ; 0 uses

bb.jy:                                            ; preds = %bb.jx
  %i.add = load ptr, ptr %1, align 8, !tbaa !62
  invoke void (ptr, ptr, ...) @g_object_set(ptr noundef nonnull %.val, ptr noundef nonnull @.str.213, ptr noundef %i.add, i64 noundef 0)
          to label %bb.jz unwind label %bb.ji

bb.jz:                                            ; preds = %bb.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753, %bb.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743, %bb.is
  %.val429982 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743 ], [ null, %bb.is ], [ null, %bb.jk ], [ %.val, %bb.jy ]
  %i.ade = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743 ], [ false, %bb.is ], [ false, %bb.jk ], [ true, %bb.jy ]
  %i.adf = load ptr, ptr %59, align 8, !tbaa !62  ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.adh = icmp eq ptr %i.adf, %i.adg
  br i1 %i.adh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757: ; preds = %bb.jz
  %i.adi = load i64, ptr %i.adg, align 8, !tbaa !58
  %i.adj = add i64 %i.adi, 1
  call void @_ZdlPvm(ptr noundef %i.adf, i64 noundef %i.adj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759: ; preds = %bb.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI8_GstCapsED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI24_GstEncodingVideoProfileED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI28_GstEncodingContainerProfileED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI8_GstCapsED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI8_GstCapsED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  br i1 %i.ade, label %bb.kd, label %bb.qt

bb.ka:                                            ; preds = %bb.ji, %bb.jw, %bb.je
  %.pn311.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ace, %bb.ji ], [ %.pn305.pn.pn, %bb.jw ], [ %.pn311.pn.pn, %bb.je ] ; 2 uses
  %i.adk = load ptr, ptr %59, align 8, !tbaa !62  ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.adm = icmp eq ptr %i.adk, %i.adl
  br i1 %i.adm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760: ; preds = %bb.ka
  %i.adn = load i64, ptr %i.adl, align 8, !tbaa !58
  %i.ado = add i64 %i.adn, 1
  call void @_ZdlPvm(ptr noundef %i.adk, i64 noundef %i.ado) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762: ; preds = %bb.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736
  %.pn311.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn301.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736 ], [ %.pn311.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760 ], [ %.pn311.pn.pn.pn.pn, %bb.ka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI8_GstCapsED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  br label %bb.kb

bb.kb:                                            ; preds = %bb.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762
  %.pn311.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aao, %bb.im ], [ %.pn311.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762 ]
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI24_GstEncodingVideoProfileED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI28_GstEncodingContainerProfileED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI8_GstCapsED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.hb, %bb.hu, %bb.hg, %bb.gk
  %.pn328.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yj, %bb.hg ], [ %.pn321.pn.pn, %bb.hu ], [ %.pn328.pn.pn, %bb.gk ], [ %.pn296.pn.pn, %bb.hb ], [ %.pn311.pn.pn.pn.pn.pn.pn.pn, %bb.kb ]
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI8_GstCapsED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  br label %.body796

bb.kd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, %bb.fl
  %.val429 = phi ptr [ null, %bb.fl ], [ %.val429982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759 ] ; 4 uses
  %.val417907 = phi ptr [ %i.uh, %bb.fl ], [ %i.ye, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759 ] ; 10 uses
  %.3281 = phi i32 [ %2, %bb.fl ], [ %.2280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759 ]
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kj, %bb.kd
  %.020.i = phi double [ 1.000000e+00, %bb.kd ], [ %.121.i.1, %bb.kj ] ; 2 uses
  %.017.i = phi i32 [ 1, %bb.kd ], [ %.118.i.1, %bb.kj ]
  %.016.i = phi double [ 0.000000e+00, %bb.kd ], [ %.1.i.1, %bb.kj ]
  %.015.i = phi i32 [ 1, %bb.kd ], [ %i.aec, %bb.kj ] ; 5 uses
  %i.adp = uitofp nneg i32 %.015.i to double
  %i.adq = fmul double %3, %i.adp                 ; 3 uses
  %i.adr = call { double, double } @llvm.modf.f64(double %i.adq)
  %i.ads = extractvalue { double, double } %i.adr, 0 ; 3 uses
  %i.adt = fcmp olt double %i.ads, %.020.i
  br i1 %i.adt, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.adu = fcmp olt double %i.ads, f0x3E80000000000000
  br i1 %i.adu, label %bb.kk, label %bb.kg

bb.kg:                                            ; preds = %bb.ke, %bb.kf
  %.121.i = phi double [ %i.ads, %bb.kf ], [ %.020.i, %bb.ke ] ; 2 uses
  %.118.i = phi i32 [ %.015.i, %bb.kf ], [ %.017.i, %bb.ke ]
  %.1.i = phi double [ %i.adq, %bb.kf ], [ %.016.i, %bb.ke ]
  %i.adv = add nuw nsw i32 %.015.i, 1             ; 4 uses
  %i.adw = uitofp nneg i32 %i.adv to double
  %i.adx = fmul double %3, %i.adw                 ; 3 uses
  %i.ady = call { double, double } @llvm.modf.f64(double %i.adx)
  %i.adz = extractvalue { double, double } %i.ady, 0 ; 3 uses
  %i.aea = fcmp olt double %i.adz, %.121.i
  br i1 %i.aea, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.aeb = fcmp olt double %i.adz, f0x3E80000000000000
  br i1 %i.aeb, label %bb.kk, label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %.121.i.1 = phi double [ %i.adz, %bb.kh ], [ %.121.i, %bb.kg ]
  %.118.i.1 = phi i32 [ %i.adv, %bb.kh ], [ %.118.i, %bb.kg ] ; 2 uses
  %.1.i.1 = phi double [ %i.adx, %bb.kh ], [ %.1.i, %bb.kg ] ; 2 uses
  %.not.i763.1 = icmp eq i32 %i.adv, 100
  br i1 %.not.i763.1, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.aec = add nuw nsw i32 %.015.i, 2
  br label %bb.ke, !llvm.loop !3

bb.kk:                                            ; preds = %bb.ki, %bb.kh, %bb.kf
  %.229.i = phi double [ %.1.i.1, %bb.ki ], [ %i.adq, %bb.kf ], [ %i.adx, %bb.kh ]
  %.21928.i = phi i32 [ %.118.i.1, %bb.ki ], [ %.015.i, %bb.kf ], [ %i.adv, %bb.kh ] ; 4 uses
  %i.aed = insertelement <2 x double> poison, double %.229.i, i64 0
  %i.aee = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.aed) ; 4 uses
  %i.aef = icmp eq i32 %.3281, 1196444237
  br i1 %i.aef, label %bb.kl, label %bb.ku

bb.kl:                                            ; preds = %bb.kk
  %i.aeg = load i32, ptr %i.v, align 4, !tbaa !720
  %i.aeh = icmp eq i32 %i.aeg, 1
  br i1 %i.aeh, label %bb.km, label %bb.ku

bb.km:                                            ; preds = %bb.kl
  %i.aei = icmp eq i32 %.0.i474, 0
  br i1 %i.aei, label %bb.ks, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull @.str.214, ptr noundef nonnull align 1 dereferenceable(1) %69)
          to label %bb.ko unwind label %bb.kq

bb.ko:                                            ; preds = %bb.kn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef nonnull @.str.2, i32 noundef 2560) #29
          to label %bb.kp unwind label %bb.kr

bb.kp:                                            ; preds = %bb.ko
  unreachable

bb.kq:                                            ; preds = %bb.kn
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766

bb.kr:                                            ; preds = %bb.ko
  %i.aek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ael = load ptr, ptr %68, align 8, !tbaa !62  ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.aen = icmp eq ptr %i.ael, %i.aem
  br i1 %i.aen, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764: ; preds = %bb.kr
  %i.aeo = load i64, ptr %i.aem, align 8, !tbaa !58
  %i.aep = add i64 %i.aeo, 1
  call void @_ZdlPvm(ptr noundef %i.ael, i64 noundef %i.aep) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766: ; preds = %bb.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764, %bb.kq
  %.pn348 = phi { ptr, i32 } [ %i.aej, %bb.kq ], [ %i.aek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764 ], [ %i.aek, %bb.kr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #27
  br label %.body796

bb.ks:                                            ; preds = %bb.km
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.aeq, align 8, !tbaa !742
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.aer, align 4, !tbaa !208
  %i.aes = load i64, ptr @_gst_fraction_type, align 8, !tbaa !63
  %i.aet = invoke ptr (ptr, ptr, ...) @gst_caps_new_simple(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.142, i64 noundef %i.aes, i32 noundef %i.aee, i32 noundef %.21928.i, i64 noundef 0)
          to label %bb.kt unwind label %bb.ox

bb.kt:                                            ; preds = %bb.ks
  %i.aeu = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI8_GstCapsE6attachEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %i.aet) #27 ; 0 uses
  %i.aev = load ptr, ptr %41, align 8, !tbaa !64
  store ptr null, ptr %41, align 8, !tbaa !64
  %i.aew = invoke ptr @gst_caps_fixate(ptr noundef %i.aev)
          to label %.sink.split unwind label %bb.ox

bb.ku:                                            ; preds = %bb.kl, %bb.kk
  br i1 %.0.i, label %bb.kv, label %bb.lp

bb.kv:                                            ; preds = %bb.ku
  %i.aex = icmp eq i32 %.0.i474, 0
  br i1 %i.aex, label %bb.lb, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @.str.214, ptr noundef nonnull align 1 dereferenceable(1) %71)
          to label %bb.kx unwind label %bb.kz

bb.kx:                                            ; preds = %bb.kw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef nonnull @.str.2, i32 noundef 2570) #29
          to label %bb.ky unwind label %bb.la

bb.ky:                                            ; preds = %bb.kx
  unreachable

bb.kz:                                            ; preds = %bb.kw
  %i.aey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769

bb.la:                                            ; preds = %bb.kx
  %i.aez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afa = load ptr, ptr %70, align 8, !tbaa !62  ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.afc = icmp eq ptr %i.afa, %i.afb
  br i1 %i.afc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767: ; preds = %bb.la
  %i.afd = load i64, ptr %i.afb, align 8, !tbaa !58
  %i.afe = add i64 %i.afd, 1
  call void @_ZdlPvm(ptr noundef %i.afa, i64 noundef %i.afe) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769: ; preds = %bb.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767, %bb.kz
  %.pn342 = phi { ptr, i32 } [ %i.aey, %bb.kz ], [ %i.aez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767 ], [ %i.aez, %bb.la ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #27
  br label %.body796

bb.lb:                                            ; preds = %bb.kv
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.aff, align 8, !tbaa !742
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.afg, align 4, !tbaa !208
  %i.afh = load i32, ptr %4, align 4, !tbaa !719  ; 2 uses
  %i.afi = load i32, ptr %i.v, align 4, !tbaa !720 ; 2 uses
  %i.afj = mul i32 %i.afh, 3
  %i.afk = mul i32 %i.afj, %i.afi
  %i.afl = load i64, ptr @_gst_fraction_type, align 8, !tbaa !63
  %i.afm = invoke ptr (ptr, ptr, ...) @gst_caps_new_simple(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.21, i64 noundef 64, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.139, i64 noundef 24, i32 noundef %i.afh, ptr noundef nonnull @.str.140, i64 noundef 24, i32 noundef %i.afi, ptr noundef nonnull @.str.142, i64 noundef %i.afl, i32 noundef %i.aee, i32 noundef %.21928.i, i64 noundef 0)
          to label %bb.lc unwind label %bb.ox

bb.lc:                                            ; preds = %bb.lb
  %i.afn = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI8_GstCapsE6attachEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %i.afm) #27 ; 0 uses
  %.val451 = load ptr, ptr %41, align 8, !tbaa !64 ; 2 uses
  %i.afo = icmp eq ptr %.val451, null
  br i1 %i.afo, label %bb.ld, label %bb.li

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @.str.136, ptr noundef nonnull align 1 dereferenceable(1) %73)
          to label %bb.le unwind label %bb.lg

bb.le:                                            ; preds = %bb.ld
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef nonnull @.str.2, i32 noundef 2581) #29
          to label %bb.lf unwind label %bb.lh

bb.lf:                                            ; preds = %bb.le
  unreachable

bb.lg:                                            ; preds = %bb.ld
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

end_hunk_2
begin_hunk_3_@_ZN2cv23CvVideoWriter_GStreamer4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidRKNS_5Size_IiEERKNS_21VideoWriterParametersE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i801: ; preds = %bb.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i800
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %.body796

_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit806: ; preds = %bb.mp
  invoke void @gst_app_src_set_stream_type(ptr noundef nonnull %.val434, i32 noundef 0)
          to label %bb.mt unwind label %bb.ox

bb.mt:                                            ; preds = %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit806
  %.val433 = load ptr, ptr %i.aif, align 8, !tbaa !66 ; 2 uses
  %.not.i807 = icmp eq ptr %.val433, null
  br i1 %.not.i807, label %bb.mu, label %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit814

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.266, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %.noexc811 unwind label %bb.ox

.noexc811:                                        ; preds = %bb.mu
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv, ptr noundef nonnull @.str.2, i32 noundef 154) #29
          to label %bb.mv unwind label %bb.mw

bb.mv:                                            ; preds = %.noexc811
  unreachable

bb.mw:                                            ; preds = %.noexc811
  %i.ais = landingpad { ptr, i32 }
          cleanup
  %i.ait = load ptr, ptr %16, align 8, !tbaa !62  ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.aiv = icmp eq ptr %i.ait, %i.aiu
  br i1 %i.aiv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i809, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i808

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i808: ; preds = %bb.mw
  %i.aiw = load i64, ptr %i.aiu, align 8, !tbaa !58
  %i.aix = add i64 %i.aiw, 1
  call void @_ZdlPvm(ptr noundef %i.ait, i64 noundef %i.aix) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i809

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i809: ; preds = %bb.mw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i808
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %.body796

_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit814: ; preds = %bb.mt
  invoke void @gst_app_src_set_size(ptr noundef nonnull %.val433, i64 noundef -1)
          to label %bb.mx unwind label %bb.ox

bb.mx:                                            ; preds = %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit814
  %.val432 = load ptr, ptr %i.aif, align 8, !tbaa !66 ; 2 uses
  %.not.i815 = icmp eq ptr %.val432, null
  br i1 %.not.i815, label %bb.my, label %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit822

bb.my:                                            ; preds = %bb.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.266, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc819 unwind label %bb.ox

.noexc819:                                        ; preds = %bb.my
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv, ptr noundef nonnull @.str.2, i32 noundef 154) #29
          to label %bb.mz unwind label %bb.na

bb.mz:                                            ; preds = %.noexc819
  unreachable

bb.na:                                            ; preds = %.noexc819
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  %i.aiz = load ptr, ptr %14, align 8, !tbaa !62  ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ajb = icmp eq ptr %i.aiz, %i.aja
  br i1 %i.ajb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i817, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i816

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i816: ; preds = %bb.na
  %i.ajc = load i64, ptr %i.aja, align 8, !tbaa !58
  %i.ajd = add i64 %i.ajc, 1
  call void @_ZdlPvm(ptr noundef %i.aiz, i64 noundef %i.ajd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i817

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i817: ; preds = %bb.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i816
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %.body796

_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit822: ; preds = %bb.mx
  invoke void (ptr, ptr, ...) @g_object_set(ptr noundef nonnull %.val432, ptr noundef nonnull @.str.21, i32 noundef 3, i64 noundef 0)
          to label %bb.nb unwind label %bb.ox

bb.nb:                                            ; preds = %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit822
  %.val431 = load ptr, ptr %i.aif, align 8, !tbaa !66 ; 2 uses
  %.not.i823 = icmp eq ptr %.val431, null
  br i1 %.not.i823, label %bb.nc, label %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit830

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.266, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc827 unwind label %bb.ox

.noexc827:                                        ; preds = %bb.nc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv, ptr noundef nonnull @.str.2, i32 noundef 154) #29
          to label %bb.nd unwind label %bb.ne

bb.nd:                                            ; preds = %.noexc827
  unreachable

bb.ne:                                            ; preds = %.noexc827
  %i.aje = landingpad { ptr, i32 }
          cleanup
  %i.ajf = load ptr, ptr %12, align 8, !tbaa !62  ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ajh = icmp eq ptr %i.ajf, %i.ajg
  br i1 %i.ajh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i825, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i824

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i824: ; preds = %bb.ne
  %i.aji = load i64, ptr %i.ajg, align 8, !tbaa !58
  %i.ajj = add i64 %i.aji, 1
  call void @_ZdlPvm(ptr noundef %i.ajf, i64 noundef %i.ajj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i825

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i825: ; preds = %bb.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i824
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.body796

_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit830: ; preds = %bb.nb
  invoke void (ptr, ptr, ...) @g_object_set(ptr noundef nonnull %.val431, ptr noundef nonnull @.str.218, i32 noundef 1, i64 noundef 0)
          to label %bb.nf unwind label %bb.ox

bb.nf:                                            ; preds = %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit830
  %.val430 = load ptr, ptr %i.aif, align 8, !tbaa !66 ; 2 uses
  %.not.i831 = icmp eq ptr %.val430, null
  br i1 %.not.i831, label %bb.ng, label %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit838

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.266, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc835 unwind label %bb.ox

.noexc835:                                        ; preds = %bb.ng
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv, ptr noundef nonnull @.str.2, i32 noundef 154) #29
          to label %bb.nh unwind label %bb.ni

bb.nh:                                            ; preds = %.noexc835
  unreachable

bb.ni:                                            ; preds = %.noexc835
  %i.ajk = landingpad { ptr, i32 }
          cleanup
  %i.ajl = load ptr, ptr %10, align 8, !tbaa !62  ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ajn = icmp eq ptr %i.ajl, %i.ajm
  br i1 %i.ajn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i833, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i832

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i832: ; preds = %bb.ni
  %i.ajo = load i64, ptr %i.ajm, align 8, !tbaa !58
  %i.ajp = add i64 %i.ajo, 1
  call void @_ZdlPvm(ptr noundef %i.ajl, i64 noundef %i.ajp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i833

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i833: ; preds = %bb.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i832
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.body796

_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit838: ; preds = %bb.nf
  invoke void (ptr, ptr, ...) @g_object_set(ptr noundef nonnull %.val430, ptr noundef nonnull @.str.219, i32 noundef 0, i64 noundef 0)
          to label %bb.nj unwind label %bb.ox

bb.nj:                                            ; preds = %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit838
  br i1 %.not293, label %bb.nk, label %bb.om

bb.nk:                                            ; preds = %bb.nj
  %i.ajq = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr %.val429)
          to label %bb.nl unwind label %bb.ox     ; 0 uses

bb.nl:                                            ; preds = %bb.nk
  invoke void (ptr, ptr, ...) @g_object_set(ptr noundef nonnull %.val429, ptr noundef nonnull @.str.220, i32 noundef %.0186, i64 noundef 0)
          to label %bb.nm unwind label %bb.ox

bb.nm:                                            ; preds = %bb.nl
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val428 = load ptr, ptr %i.ajr, align 8, !tbaa !66 ; 2 uses
  %i.ajs = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr %.val428)
          to label %bb.nn unwind label %bb.ox     ; 0 uses

bb.nn:                                            ; preds = %bb.nm
  %.val427 = load ptr, ptr %i.aif, align 8, !tbaa !66 ; 2 uses
  %i.ajt = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr %.val427)
          to label %bb.no unwind label %bb.ox     ; 0 uses

bb.no:                                            ; preds = %bb.nn
  %i.aju = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr %.val417907)
          to label %bb.np unwind label %bb.ox     ; 0 uses

bb.np:                                            ; preds = %bb.no
  %i.ajv = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr nonnull %.val429)
          to label %bb.nq unwind label %bb.ox     ; 0 uses

bb.nq:                                            ; preds = %bb.np
  invoke void (ptr, ptr, ...) @gst_bin_add_many(ptr noundef nonnull %.val428, ptr noundef nonnull %.val427, ptr noundef nonnull %.val417907, ptr noundef nonnull %.val429, i64 noundef 0)
          to label %bb.nr unwind label %bb.ox

bb.nr:                                            ; preds = %bb.nq
  %.val424 = load ptr, ptr %i.aif, align 8, !tbaa !66 ; 2 uses
  %i.ajw = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr %.val424)
          to label %bb.ns unwind label %bb.ox     ; 0 uses

bb.ns:                                            ; preds = %bb.nr
  %i.ajx = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr nonnull %.val417907)
          to label %bb.nt unwind label %bb.ox     ; 0 uses

bb.nt:                                            ; preds = %bb.ns
  %.val422 = load ptr, ptr %38, align 8, !tbaa !66 ; 2 uses
  %i.ajy = invoke fastcc noundef ptr @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv(ptr %.val422)
          to label %bb.nu unwind label %bb.ox     ; 0 uses

bb.nu:                                            ; preds = %bb.nt
  %i.ajz = invoke i32 (ptr, ptr, ...) @gst_element_link_many(ptr noundef nonnull %.val424, ptr noundef nonnull %.val417907, ptr noundef nonnull %.val422, i64 noundef 0)
          to label %bb.nv unwind label %bb.ox

bb.nv:                                            ; preds = %bb.nu
  %.not350 = icmp eq i32 %i.ajz, 0
  br i1 %.not350, label %bb.nw, label %bb.om

bb.nw:                                            ; preds = %bb.nv
  %i.aka = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.nx unwind label %bb.ox     ; 3 uses

bb.nx:                                            ; preds = %bb.nw
  %.not351 = icmp eq ptr %i.aka, null             ; 2 uses
  br i1 %.not351, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !81
  %i.akd = icmp slt i32 %i.akc, 3
  br i1 %i.akd, label %bb.ol, label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %78)
          to label %bb.oa unwind label %bb.of

bb.oa:                                            ; preds = %bb.nz
  %i.ake = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.akf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ake, ptr noundef nonnull @.str.82, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit840 unwind label %bb.og ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit840: ; preds = %bb.oa
  %i.akg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ake, ptr noundef nonnull @.str.221, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842 unwind label %bb.og ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit840
  br i1 %.not351, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842
  %i.akh = load ptr, ptr %i.aka, align 8, !tbaa !82
  br label %bb.oc

bb.oc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842, %bb.ob
  %i.aki = phi ptr [ %i.akh, %bb.ob ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #27
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull align 8 dereferenceable(128) %78)
          to label %bb.od unwind label %bb.oh

bb.od:                                            ; preds = %bb.oc
  %i.akj = load ptr, ptr %79, align 8, !tbaa !62
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.aki, ptr noundef nonnull @.str.2, i32 noundef 2635, ptr noundef nonnull @__func__._ZN2cv16GStreamerCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_22VideoCaptureParametersE, ptr noundef %i.akj)
          to label %bb.oe unwind label %bb.oi

bb.oe:                                            ; preds = %bb.od
  %i.akk = load ptr, ptr %79, align 8, !tbaa !62  ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.akm = icmp eq ptr %i.akk, %i.akl
  br i1 %i.akm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i843

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i843: ; preds = %bb.oe
  %i.akn = load i64, ptr %i.akl, align 8, !tbaa !58
  %i.ako = add i64 %i.akn, 1
  call void @_ZdlPvm(ptr noundef %i.akk, i64 noundef %i.ako) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845: ; preds = %bb.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i843
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %78) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #27
  br label %bb.ol

bb.of:                                            ; preds = %bb.nz
  %i.akp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ok

bb.og:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit840, %bb.oa
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.oh:                                            ; preds = %bb.oc
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848

bb.oi:                                            ; preds = %bb.od
  %i.aks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akt = load ptr, ptr %79, align 8, !tbaa !62  ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.akv = icmp eq ptr %i.akt, %i.aku
  br i1 %i.akv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i846

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i846: ; preds = %bb.oi
  %i.akw = load i64, ptr %i.aku, align 8, !tbaa !58
  %i.akx = add i64 %i.akw, 1
  call void @_ZdlPvm(ptr noundef %i.akt, i64 noundef %i.akx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848: ; preds = %bb.oi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i846, %bb.oh
  %.pn352 = phi { ptr, i32 } [ %i.akr, %bb.oh ], [ %i.aks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i846 ], [ %i.aks, %bb.oi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #27
  br label %bb.oj

bb.oj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848, %bb.og
  %.pn352.pn = phi { ptr, i32 } [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848 ], [ %i.akq, %bb.og ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %78) #27
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.of
  %.pn352.pn.pn = phi { ptr, i32 } [ %.pn352.pn, %bb.oj ], [ %i.akp, %bb.of ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #27
  br label %.body796

bb.ol:                                            ; preds = %bb.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845
  call fastcc void @_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ajr) #27
  br label %bb.qt

bb.om:                                            ; preds = %bb.nv, %bb.nj
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val421 = load ptr, ptr %i.aky, align 8, !tbaa !66 ; 2 uses
  %.not.i849 = icmp eq ptr %.val421, null
  br i1 %.not.i849, label %bb.on, label %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit856

bb.on:                                            ; preds = %bb.om
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.266, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc853 unwind label %bb.ox

.noexc853:                                        ; preds = %bb.on
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv, ptr noundef nonnull @.str.2, i32 noundef 154) #29
          to label %bb.oo unwind label %bb.op

bb.oo:                                            ; preds = %.noexc853
  unreachable

bb.op:                                            ; preds = %.noexc853
  %i.akz = landingpad { ptr, i32 }
          cleanup
  %i.ala = load ptr, ptr %8, align 8, !tbaa !62   ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.alc = icmp eq ptr %i.ala, %i.alb
  br i1 %i.alc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i851, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i850

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i850: ; preds = %bb.op
  %i.ald = load i64, ptr %i.alb, align 8, !tbaa !58
  %i.ale = add i64 %i.ald, 1
  call void @_ZdlPvm(ptr noundef %i.ala, i64 noundef %i.ale) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i851

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i851: ; preds = %bb.op, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i850
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.body796

_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit856: ; preds = %bb.om
  invoke void @gst_debug_bin_to_dot_file(ptr noundef nonnull %.val421, i32 noundef 15, ptr noundef nonnull @.str.222)
          to label %bb.oq unwind label %bb.ox

bb.oq:                                            ; preds = %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit856
  %.val420 = load ptr, ptr %i.aky, align 8, !tbaa !66 ; 2 uses
  %.not.i857 = icmp eq ptr %.val420, null
  br i1 %.not.i857, label %bb.or, label %_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit864

bb.or:                                            ; preds = %bb.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.266, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc861 unwind label %bb.ox

.noexc861:                                        ; preds = %bb.or
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv, ptr noundef nonnull @.str.2, i32 noundef 154) #29
          to label %bb.os unwind label %bb.ot

bb.os:                                            ; preds = %.noexc861
  unreachable

bb.ot:                                            ; preds = %.noexc861
  %i.alf = landingpad { ptr, i32 }
          cleanup
  %i.alg = load ptr, ptr %6, align 8, !tbaa !62   ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ali = icmp eq ptr %i.alg, %i.alh
  br i1 %i.ali, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i859, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i858

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i858: ; preds = %bb.ot
  %i.alj = load i64, ptr %i.alh, align 8, !tbaa !58
  %i.alk = add i64 %i.alj, 1
  call void @_ZdlPvm(ptr noundef %i.alg, i64 noundef %i.alk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i859

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i859: ; preds = %bb.ot, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i858
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body796

_ZN2cv12_GLOBAL__N_18GSafePtrI11_GstElementE3getEv.exit864: ; preds = %bb.oq
  %i.all = invoke i32 @gst_element_set_state(ptr noundef nonnull %.val420, i32 noundef 4)
          to label %bb.ou unwind label %bb.ox
end_hunk_3
