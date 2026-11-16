Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rtcore?download=true
inline.NumInlined: 414
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@rtcSetGeometryTransformQuaternion:bb.a
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.embree::DeviceEnterLeave", align 8 ; 6 uses
  %8 = alloca %"struct.embree::AffineSpaceT.70", align 16 ; 15 uses
  %i.a = icmp eq ptr %0, null                     ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 48) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit77 unwind label %.body75

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit77: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.am unwind label %.body75.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body75:                                          ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.b) #23
  %i.g = load ptr, ptr %3, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body75
  call void @_ZdlPv(ptr noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body75.thread:                                   ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit77
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.k = load ptr, ptr %3, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread105: ; preds = %.body75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body75.thread
  call void @_ZdlPv(ptr noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn6798 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.f, %.body75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %2, null
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__cxa_allocate_exception(i64 48) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.am unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread: ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

.body:                                            ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.o) #23
  %i.t = load ptr, ptr %5, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.x = load ptr, ptr %5, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread117: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.x) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread
  %.pn65110 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread ], [ %i.s, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @__cxa_free_exception(ptr %i.o) #23
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN6embree16DeviceEnterLeaveC1EP13RTCGeometryTy(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %0)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.aa = load float, ptr %2, align 16
  store float %i.aa, ptr %8, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 20
  store float %i.ac, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load float, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 40
  store float %i.ag, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load float, ptr %i.aj, align 4
  store float %i.ak, ptr %i.ad, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load <2 x float>, ptr %i.al, align 16
  store <2 x float> %i.am, ptr %i.ah, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ap = load <2 x float>, ptr %i.an, align 4
  store <2 x float> %i.ap, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 24
  store float %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.az = load float, ptr %i.ay, align 16         ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.bd = load float, ptr %i.av, align 4          ; 2 uses
  %i.be = load <4 x float>, ptr %i.at, align 8    ; 2 uses
  %i.bf = load float, ptr %i.aw, align 8          ; 3 uses
  %i.bg = load float, ptr %i.ax, align 4          ; 3 uses
  %i.bh = fmul float %i.bf, %i.bf
  %i.bi = call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bh)
  %i.bj = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bi)
  %i.bk = call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bj) ; 2 uses
  %i.bl = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bm = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bl) ; 3 uses
  %i.bn = extractelement <4 x float> %i.bm, i64 0 ; 2 uses
  %i.bo = fmul float %i.bn, 1.500000e+00
  %i.bp = fmul float %i.bk, 5.000000e-01
  %i.bq = fmul float %i.bn, %i.bp
  %foldExtExtBinop = fmul <4 x float> %i.bm, %i.bm
  %i.br = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.bs = fmul float %i.br, %i.bq
  %i.bt = fsub float %i.bo, %i.bs                 ; 4 uses
  %i.bu = insertelement <4 x float> poison, float %i.bt, i64 3
  %i.bv = fmul <4 x float> %i.be, %i.bu
  %9 = shufflevector <4 x float> %i.be, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bw = fmul float %i.bf, %i.bt
  %i.bx = fmul float %i.bg, %i.bt
  %i.by = fmul float %i.az, %i.bt
  store float %i.bw, ptr %i.ba, align 4
  store float %i.bx, ptr %i.bb, align 4
  store float %i.by, ptr %i.bc, align 4
  store <4 x float> %9, ptr %i.au, align 16
  %i.bz = load ptr, ptr %0, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 312
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 16 dereferenceable(88) %0, ptr noundef nonnull align 16 dereferenceable(64) %8, i32 noundef %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN6embree16DeviceEnterLeaveD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.j:                                             ; preds = %bb.g
  %i.cc = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cd = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN6embree16DeviceEnterLeaveD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.k ], [ %i.cc, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l
  %.pn67.pn = phi { ptr, i32 } [ %.pn6798, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread105 ], [ %.pn65110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread117 ], [ %.pn.pn.pn, %bb.l ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn67.pn, 1    ; 3 uses
  %.554 = extractvalue { ptr, i32 } %.pn67.pn, 0  ; 3 uses
  %i.ce = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #23
  %i.cf = icmp eq i32 %.5, %i.ce
  br i1 %i.cf, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.cg = call ptr @__cxa_begin_catch(ptr %.554) #23 ; 0 uses
  br i1 %i.a, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 16
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cj = phi ptr [ %i.ci, %bb.o ], [ null, %bb.n ]
  invoke void @_ZN6embree6Device13process_errorEPS0_8RTCErrorPKc(ptr noundef %i.cj, i32 noundef 4, ptr noundef nonnull @.str.1)
          to label %bb.q unwind label %bb.aj

bb.q:                                             ; preds = %bb.p
  call void @__cxa_end_catch()
  br label %bb.r

bb.r:                                             ; preds = %bb.af, %bb.ab, %bb.w, %bb.q, %bb.i
  ret void

bb.s:                                             ; preds = %bb.m
  %i.ck = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6embree12rtcore_errorE) #23
  %i.cl = icmp eq i32 %.5, %i.ck
  br i1 %i.cl, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cm = call ptr @__cxa_begin_catch(ptr %.554) #23 ; 3 uses
  br i1 %i.a, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 16
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cp = phi ptr [ %i.co, %bb.u ], [ null, %bb.t ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cm, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(48) %i.cm) #23
  invoke void @_ZN6embree6Device13process_errorEPS0_8RTCErrorPKc(ptr noundef %i.cp, i32 noundef %i.cr, ptr noundef %i.cv)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  call void @__cxa_end_catch()
  br label %bb.r

bb.x:                                             ; preds = %bb.s
  %i.cw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.cx = icmp eq i32 %.5, %i.cw
  %i.cy = call ptr @__cxa_begin_catch(ptr %.554) #23 ; 2 uses
  br i1 %i.cx, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  br i1 %i.a, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = load ptr, ptr %i.cz, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.db = phi ptr [ %i.da, %bb.z ], [ null, %bb.y ]
  %i.dc = load ptr, ptr %i.cy, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef ptr %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #23
  invoke void @_ZN6embree6Device13process_errorEPS0_8RTCErrorPKc(ptr noundef %i.db, i32 noundef 1, ptr noundef %i.df)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  call void @__cxa_end_catch()
  br label %bb.r

bb.ac:                                            ; preds = %bb.x
  br i1 %i.a, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.di = phi ptr [ %i.dh, %bb.ad ], [ null, %bb.ac ]
  invoke void @_ZN6embree6Device13process_errorEPS0_8RTCErrorPKc(ptr noundef %i.di, i32 noundef 1, ptr noundef nonnull @.str)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @__cxa_end_catch()
  br label %bb.r

bb.ag:                                            ; preds = %bb.ae
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.al

bb.ah:                                            ; preds = %bb.aa
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.al

bb.ai:                                            ; preds = %bb.v
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.al

bb.aj:                                            ; preds = %bb.p
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.pn73 = phi { ptr, i32 } [ %i.dl, %bb.ai ], [ %i.dk, %bb.ah ], [ %i.dj, %bb.ag ], [ %i.dm, %bb.aj ]
  resume { ptr, i32 } %.pn73

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #24
  unreachable

bb.am:                                            ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit77
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @rtcGetGeometryTransform(ptr noundef %0, float noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.embree::AffineSpaceT", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = load ptr, ptr %0, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"struct.embree::AffineSpaceT") align 16 %4, ptr noundef nonnull align 16 dereferenceable(88) %0, float noundef %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree14storeTransformERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEE9RTCFormatPf(ptr noundef nonnull align 16 dereferenceable(64) %4, i32 noundef %2, ptr noundef %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
end_hunk_0
