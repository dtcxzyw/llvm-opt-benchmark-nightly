inline.NumInlined: 414
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@rtcJoinCommitScene:bb.a
bb.ag:                                            ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.pn43 = phi { ptr, i32 } [ %i.aw, %bb.af ], [ %i.av, %bb.ae ], [ %i.au, %bb.ad ], [ %i.ax, %bb.ag ]
  resume { ptr, i32 } %.pn43

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #24
  unreachable

bb.aj:                                            ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @rtcGetSceneBounds(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"struct.embree::DeviceEnterLeave", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = icmp eq ptr %0, null                     ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 48) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64 unwind label %.body62

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.al unwind label %.body62.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body62:                                          ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.b) #23
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body62
  call void @_ZdlPv(ptr noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body62.thread:                                   ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread79: ; preds = %.body62.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body62.thread
  call void @_ZdlPv(ptr noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn5472 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.f, %.body62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN6embree16DeviceEnterLeaveC1EP10RTCSceneTy(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.o = load i8, ptr %i.n, align 16, !range !3, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = call ptr @__cxa_allocate_exception(i64 48) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.al unwind label %.body.thread

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread: ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

.body:                                            ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.q) #23
  %i.w = load ptr, ptr %5, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.aa = load ptr, ptr %5, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread91: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.aa) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread
  %.pn84 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.thread ], [ %i.v, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @__cxa_free_exception(ptr %i.q) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load <4 x float>, ptr %i.ad, align 16, !noalias !8
  %i.ag = load <4 x float>, ptr %i.ae, align 16, !noalias !8
  %i.ah = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.af, <4 x float> %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load <4 x float>, ptr %i.ai, align 16, !noalias !13
  %i.al = load <4 x float>, ptr %i.aj, align 16, !noalias !13
  %i.am = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ak, <4 x float> %i.al)
  %7 = insertelement <4 x float> %i.ah, float 0.000000e+00, i64 3
  store <4 x float> %7, ptr %1, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = insertelement <4 x float> %i.am, float 0.000000e+00, i64 3
  store <4 x float> %8, ptr %i.an, align 16
  call void @_ZN6embree16DeviceEnterLeaveD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.pn.pn = phi { ptr, i32 } [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread91 ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ]
  call void @_ZN6embree16DeviceEnterLeaveD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.pn54.pn = phi { ptr, i32 } [ %.pn5472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread79 ], [ %.pn.pn.pn, %bb.k ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn54.pn, 1    ; 3 uses
  %.444 = extractvalue { ptr, i32 } %.pn54.pn, 0  ; 3 uses
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #23
  %i.ap = icmp eq i32 %.4, %i.ao
  br i1 %i.ap, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aq = call ptr @__cxa_begin_catch(ptr %.444) #23 ; 0 uses
  br i1 %i.a, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.as = load ptr, ptr %i.ar, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.at = phi ptr [ %i.as, %bb.n ], [ null, %bb.m ]
  invoke void @_ZN6embree6Device13process_errorEPS0_8RTCErrorPKc(ptr noundef %i.at, i32 noundef 4, ptr noundef nonnull @.str.1)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  call void @__cxa_end_catch()
  br label %bb.q

bb.q:                                             ; preds = %bb.ae, %bb.aa, %bb.v, %bb.p, %bb.i
  ret void

bb.r:                                             ; preds = %bb.l
  %i.au = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6embree12rtcore_errorE) #23
  %i.av = icmp eq i32 %.4, %i.au
  br i1 %i.av, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.aw = call ptr @__cxa_begin_catch(ptr %.444) #23 ; 3 uses
  br i1 %i.a, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.az = phi ptr [ %i.ay, %bb.t ], [ null, %bb.s ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.aw, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(48) %i.aw) #23
  invoke void @_ZN6embree6Device13process_errorEPS0_8RTCErrorPKc(ptr noundef %i.az, i32 noundef %i.bb, ptr noundef %i.bf)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u
  call void @__cxa_end_catch()
  br label %bb.q

bb.w:                                             ; preds = %bb.r
  %i.bg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.bh = icmp eq i32 %.4, %i.bg
  %i.bi = call ptr @__cxa_begin_catch(ptr %.444) #23 ; 2 uses
  br i1 %i.bh, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  br i1 %i.a, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bk = load ptr, ptr %i.bj, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bl = phi ptr [ %i.bk, %bb.y ], [ null, %bb.x ]
  %i.bm = load ptr, ptr %i.bi, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #23
  invoke void @_ZN6embree6Device13process_errorEPS0_8RTCErrorPKc(ptr noundef %i.bl, i32 noundef 1, ptr noundef %i.bp)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  call void @__cxa_end_catch()
  br label %bb.q

bb.ab:                                            ; preds = %bb.w
  br i1 %i.a, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.br = load ptr, ptr %i.bq, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.bs = phi ptr [ %i.br, %bb.ac ], [ null, %bb.ab ]
  invoke void @_ZN6embree6Device13process_errorEPS0_8RTCErrorPKc(ptr noundef %i.bs, i32 noundef 1, ptr noundef nonnull @.str)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @__cxa_end_catch()
  br label %bb.q

bb.af:                                            ; preds = %bb.ad
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ak

bb.ag:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ak

bb.ah:                                            ; preds = %bb.u
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ak

bb.ai:                                            ; preds = %bb.o
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.pn60 = phi { ptr, i32 } [ %i.bv, %bb.ah ], [ %i.bu, %bb.ag ], [ %i.bt, %bb.af ], [ %i.bw, %bb.ai ]
  resume { ptr, i32 } %.pn60

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #24
  unreachable

bb.al:                                            ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @rtcGetSceneLinearBounds(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"struct.embree::DeviceEnterLeave", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = icmp eq ptr %0, null                     ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 48) #23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit94 unwind label %.body92

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit94: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.ao unwind label %.body92.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body92:                                          ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTIN6embree12rtcore_errorE
          catch ptr @_ZTISt9exception
end_hunk_0
