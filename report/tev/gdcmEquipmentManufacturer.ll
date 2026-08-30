Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmEquipmentManufacturer?download=true
inline.NumInlined: 834
inline.NumDeleted: 285
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt3__1rsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_istreamIT_T0_EES7_RS4_:bb.a
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !100
  %i.ae = or i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !100
  %i.af = load i64, ptr %i.z, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !128
  %i.aj = and i32 %i.ai, 1
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit.thread, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit
  %.0.i16 = phi i32 [ %i.t, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit.thread ], [ %i.q, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit ]
  %i.ak = trunc i32 %.0.i16 to i8
  store i8 %i.ak, ptr %1, align 1, !tbaa !12
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.l

bb.h:                                             ; preds = %bb.d
  call void @__cxa_end_catch()
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit, %bb.h
  %.1 = phi i32 [ 1, %bb.h ], [ 0, %bb.f ], [ 6, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit ]
  %i.am = load ptr, ptr %0, align 8, !tbaa !39
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !100
  %i.as = or i32 %i.ar, %.1
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.ap, i32 noundef %i.as)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.al

bb.k:                                             ; preds = %bb.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %0

bb.l:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #26
  unreachable

bb.m:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__17getlineB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_istream<char>::sentry", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
  %i.a = load i8, ptr %3, align 1, !tbaa !117, !range !95, !noundef !96
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  store i8 0, ptr %i.g, align 1, !tbaa !12
  store i64 0, ptr %i.e, align 8, !tbaa !12
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.h, align 1, !tbaa !12
  store i8 0, ptr %1, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit: ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit
  %.029 = phi i64 [ 0, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit ], [ %i.ad, %bb.j ] ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !39
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(64) %i.o)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit unwind label %bb.g, !inline_history !127 ; 2 uses

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit.thread: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.y, ptr %i.p, align 8, !tbaa !114
  %i.z = load i8, ptr %i.q, align 1, !tbaa !12
  %i.aa = zext i8 %i.z to i32
  br label %bb.h

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit: ; preds = %bb.f
  %i.ab = icmp eq i32 %i.x, -1
  br i1 %i.ab, label %select.unfold, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.h:                                             ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit.thread, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit
  %.0.i34 = phi i32 [ %i.aa, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit.thread ], [ %i.x, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit ]
  %i.ad = add i64 %.029, 1
  %i.ae = trunc i32 %.0.i34 to i8                 ; 2 uses
  %i.af = icmp eq i8 %2, %i.ae
  br i1 %i.af, label %select.unfold.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %i.ae)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %1, align 8
  %i.ah = trunc i8 %i.ag to i1
  %i.ai = load i64, ptr %i.i, align 8
  %i.aj = icmp eq i64 %i.ai, -9
  %i.ak = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %i.ak, label %select.unfold.thread, label %bb.e

bb.k:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.ac, %bb.g ]
  %.028 = extractvalue { ptr, i32 } %.pn, 0
  %i.am = call ptr @__cxa_begin_catch(ptr %.028) #22 ; 0 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !39
  %i.ao = getelementptr i8, ptr %i.an, i64 -24    ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !100
  %i.at = or i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !100
  %i.au = load i64, ptr %i.ao, align 8
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !128
  %i.ay = and i32 %i.ax, 1
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_rethrow() #24
          to label %bb.s unwind label %bb.n

select.unfold:                                    ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit
  %i.az = icmp eq i64 %.029, 0
  %spec.select = select i1 %i.az, i32 6, i32 2
  br label %select.unfold.thread

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.r

bb.o:                                             ; preds = %bb.l
  call void @__cxa_end_catch()
  br label %select.unfold.thread

select.unfold.thread:                             ; preds = %bb.j, %bb.h, %select.unfold, %bb.o
  %.4 = phi i32 [ 1, %bb.o ], [ %spec.select, %select.unfold ], [ 4, %bb.j ], [ 0, %bb.h ]
  %i.bb = load ptr, ptr %0, align 8, !tbaa !39
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !100
  %i.bh = or i32 %i.bg, %.4
  call void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.be, i32 noundef %i.bh)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ba

bb.q:                                             ; preds = %select.unfold.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %0

bb.r:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #26
  unreachable

bb.s:                                             ; preds = %bb.m
  unreachable
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE7putbackEc(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext) local_unnamed_addr #2

declare void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef signext) local_unnamed_addr #1 align 2

declare void @__cxa_rethrow() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_5ValueEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %_ZN4gdcm6Object10UnRegisterEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !19
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4gdcm12SmartPointerINS_5ValueEE8RegisterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = add nsw i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !42
  %i.e = icmp sgt i64 %i.c, -1
  br i1 %i.e, label %_ZN4gdcm12SmartPointerINS_5ValueEE8RegisterEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 74, ptr noundef nonnull @.str.25)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %.sink = phi ptr [ %i.k, %bb.j ], [ %i.f, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.j ], [ %i.g, %bb.f ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #22
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN4gdcm12SmartPointerINS_5ValueEE8RegisterEv.exit: ; preds = %bb.b, %bb.c
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %_ZN4gdcm6Object10UnRegisterEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEE8RegisterEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 77, ptr noundef nonnull @.str.25)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #24
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.m = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !42
  %.not.i7 = icmp eq i64 %i.m, 0
  br i1 %.not.i7, label %bb.l, label %_ZN4gdcm6Object10UnRegisterEv.exit

bb.l:                                             ; preds = %bb.k
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #22, !inline_history !129
  br label %_ZN4gdcm6Object10UnRegisterEv.exit

_ZN4gdcm6Object10UnRegisterEv.exit:               ; preds = %bb.l, %bb.k, %_ZN4gdcm12SmartPointerINS_5ValueEE8RegisterEv.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %2, 23
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = shl nuw nsw i8 %i.c, 1
  store i8 %i.d, ptr %0, align 8
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, -9
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = or i64 %2, 7                             ; 2 uses
  %i.g = icmp eq i64 %i.f, 23
  %i.h = add nuw i64 %i.f, 1
  %i.i = select i1 %i.g, i64 25, i64 %i.h         ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !12
  %i.l = or i64 %i.i, 1
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !12
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit: ; preds = %bb.e, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.e ]
  %i.n = add nuw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.n, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9AttributeILt8ELt112ELx1024ELi1EE18SetFromDataElementERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gdcm::VR", align 8          ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !12
  %i.b = icmp eq i32 %i.a, 7340040
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef 443, ptr noundef nonnull @.str.25)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #22
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 1024, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = call noundef zeroext i1 @_ZNK4gdcm2VR10CompatibleERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.f, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %.not = icmp eq i64 %i.g, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
