Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/color?download=true
inline.NumInlined: 796
inline.NumDeleted: 286
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEE
define dso_local void @_ZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::ColorEncoding") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  switch i64 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread26 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.e = load i32, ptr %i.d, align 1
  %i.f = xor i32 %i.e, 1701734764
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load i16, ptr %i.g, align 1
  %i.i = zext i16 %i.h to i32
  %i.j = xor i32 %i.i, 29281
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.o = load i64, ptr @_ZN4pbrt13ColorEncoding6LinearE, align 8, !tbaa !35
  store i64 %i.o, ptr %0, align 8, !tbaa !35
  br label %bb.ab

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16: ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !21
  %i.q = load i32, ptr %i.p, align 1
  %i.r = icmp ne i32 %i.q, 1111970419
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread26

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16
  %i.u = load i64, ptr @_ZN4pbrt13ColorEncoding4sRGBE, align 8, !tbaa !35
  store i64 %i.u, ptr %0, align 8, !tbaa !35
  br label %bb.ab

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread26: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16
  %i.v = load atomic i8, ptr @_ZGVZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.d, !prof !131

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread26
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache) #28
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 8), align 8, !tbaa !132
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 16), align 8, !tbaa !40
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 24), align 8, !tbaa !41
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 32), align 8, !tbaa !133
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 40), align 8, !tbaa !42
  %i.y = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEED2Ev, ptr nonnull @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.z = load ptr, ptr %1, align 8, !tbaa !21
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !19
  call void @_ZN4pbrt26SplitStringsFromWhitespaceB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 %i.aa, ptr %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.ad = load ptr, ptr %4, align 8, !tbaa !46    ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not9 = icmp eq i64 %i.ag, 64
  br i1 %.not9, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !19
  %i.aj = icmp eq i64 %i.ai, 5
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = xor i32 %i.al, 1835884903
  %i.an = getelementptr i8, ptr %i.ak, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %i.ap, 97
  %i.ar = or i32 %i.am, %i.aq
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %.not29 = icmp eq i32 %i.at, 0
  br i1 %.not29, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread27, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.d
  invoke void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(32) %1) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  unreachable

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread27: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ax = call double @strtod(ptr noundef nonnull captures(none) %i.aw, ptr noundef null) #28, !inline_history !127
  %i.ay = fptrunc double %i.ax to float           ; 14 uses
  store float %i.ay, ptr %i.a, align 4, !tbaa !26
  %i.az = fcmp oeq float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread27
  %i.ba = load ptr, ptr %4, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  invoke void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %i.bb) #29
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.k:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread27
  %i.bd = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5mutex) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bd) #29
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.k
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 16), align 8, !tbaa !40 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.be, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 8), %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !26
  %i.bh = fcmp olt float %i.bg, %i.ay             ; 2 uses
  %.19.i.i.i = select i1 %i.bh, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bh, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.bi = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, i64 8)
  br i1 %i.bi, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !26
  %i.bl = fcmp ogt float %i.bk, %i.ay
  br i1 %i.bl, label %select.unfold, label %_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEE4findERS5_.exit

_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEE4findERS5_.exit: ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !35
  store i64 %i.bn, ptr %0, align 8, !tbaa !35
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %select.unfold, %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.o ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fd, %bb.u ]
  %i.bq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5mutex) #28 ; 0 uses
  br label %bb.z

select.unfold:                                    ; preds = %bb.m, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.br = load ptr, ptr %2, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 5124, i64 noundef 4)
          to label %.noexc17 unwind label %bb.o, !inline_history !128 ; 4 uses

.noexc17:                                         ; preds = %select.unfold
  store float %i.ay, ptr %i.bu, align 4, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5120) %i.bv, i8 0, i64 5120, i1 false)
  br label %bb.p

.preheader.i.i.i:                                 ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1028 ; 4 uses
  %i.bx = fdiv float 1.000000e+00, %i.ay          ; 4 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.noexc17
  %indvars.iv.i.i.i = phi i64 [ 0, %.noexc17 ], [ %indvars.iv.next.i.i.i.7, %bb.p ] ; 10 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.bz = uitofp nneg i32 %i.by to float
  %i.ca = fdiv float %i.bz, 2.550000e+02
  %i.cb = call noundef float @powf(float noundef %i.ca, float noundef %i.ay) #28
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i
  store float %i.cb, ptr %i.cc, align 4, !tbaa !26
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %i.ce = uitofp nneg i32 %i.cd to float
  %i.cf = fdiv float %i.ce, 2.550000e+02
  %i.cg = call noundef float @powf(float noundef %i.cf, float noundef %i.ay) #28
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i
  store float %i.cg, ptr %i.ch, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv.next.i.i.i.1 to i32
  %i.cj = uitofp nneg i32 %i.ci to float
  %i.ck = fdiv float %i.cj, 2.550000e+02
  %i.cl = call noundef float @powf(float noundef %i.ck, float noundef %i.ay) #28
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.1
  store float %i.cl, ptr %i.cm, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv.next.i.i.i.2 to i32
  %i.co = uitofp nneg i32 %i.cn to float
  %i.cp = fdiv float %i.co, 2.550000e+02
  %i.cq = call noundef float @powf(float noundef %i.cp, float noundef %i.ay) #28
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.2
  store float %i.cq, ptr %i.cr, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.3 = or disjoint i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv.next.i.i.i.3 to i32
  %i.ct = uitofp nneg i32 %i.cs to float
  %i.cu = fdiv float %i.ct, 2.550000e+02
  %i.cv = call noundef float @powf(float noundef %i.cu, float noundef %i.ay) #28
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.3
  store float %i.cv, ptr %i.cw, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.4 = or disjoint i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv.next.i.i.i.4 to i32
  %i.cy = uitofp nneg i32 %i.cx to float
  %i.cz = fdiv float %i.cy, 2.550000e+02
  %i.da = call noundef float @powf(float noundef %i.cz, float noundef %i.ay) #28
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.4
  store float %i.da, ptr %i.db, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.5 = or disjoint i64 %indvars.iv.i.i.i, 6 ; 2 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.5 to i32
  %i.dd = uitofp nneg i32 %i.dc to float
  %i.de = fdiv float %i.dd, 2.550000e+02
  %i.df = call noundef float @powf(float noundef %i.de, float noundef %i.ay) #28
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.5
  store float %i.df, ptr %i.dg, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.6 = or disjoint i64 %indvars.iv.i.i.i, 7 ; 2 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.6 to i32
  %i.di = uitofp nneg i32 %i.dh to float
  %i.dj = fdiv float %i.di, 2.550000e+02
  %i.dk = call noundef float @powf(float noundef %i.dj, float noundef %i.ay) #28
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i.6
  store float %i.dk, ptr %i.dl, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, 256
  br i1 %exitcond.not.i.i.i.7, label %.preheader.i.i.i, label %bb.p, !llvm.loop !1

bb.q:                                             ; preds = %bb.q, %.preheader.i.i.i
  %indvars.iv17.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next18.i.i.i.3, %bb.q ] ; 6 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv17.i.i.i to i32
  %i.dn = uitofp nneg i32 %i.dm to float
  %i.do = fdiv float %i.dn, 1.023000e+03
  %i.dp = call noundef float @powf(float noundef %i.do, float noundef %i.bx) #28
  %i.dq = fmul float %i.dp, 2.550000e+02
  %i.dr = fadd float %i.dq, 5.000000e-01          ; 3 uses
  %i.ds = fcmp olt float %i.dr, 0.000000e+00
  %i.dt = fcmp ogt float %i.dr, 2.550000e+02
  %..i.i.i.i = select i1 %i.dt, float 2.550000e+02, float %i.dr
  %.0.i.i.i.i = select i1 %i.ds, float 0.000000e+00, float %..i.i.i.i
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv17.i.i.i
  store float %.0.i.i.i.i, ptr %i.du, align 4, !tbaa !26
  %indvars.iv.next18.i.i.i = or disjoint i64 %indvars.iv17.i.i.i, 1 ; 2 uses
  %i.dv = trunc nuw nsw i64 %indvars.iv.next18.i.i.i to i32
  %i.dw = uitofp nneg i32 %i.dv to float
  %i.dx = fdiv float %i.dw, 1.023000e+03
  %i.dy = call noundef float @powf(float noundef %i.dx, float noundef %i.bx) #28
  %i.dz = fmul float %i.dy, 2.550000e+02
  %i.ea = fadd float %i.dz, 5.000000e-01          ; 3 uses
  %i.eb = fcmp olt float %i.ea, 0.000000e+00
  %i.ec = fcmp ogt float %i.ea, 2.550000e+02
  %..i.i.i.i.1 = select i1 %i.ec, float 2.550000e+02, float %i.ea
  %.0.i.i.i.i.1 = select i1 %i.eb, float 0.000000e+00, float %..i.i.i.i.1
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next18.i.i.i
  store float %.0.i.i.i.i.1, ptr %i.ed, align 4, !tbaa !26
  %indvars.iv.next18.i.i.i.1 = or disjoint i64 %indvars.iv17.i.i.i, 2 ; 2 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv.next18.i.i.i.1 to i32
  %i.ef = uitofp nneg i32 %i.ee to float
  %i.eg = fdiv float %i.ef, 1.023000e+03
  %i.eh = call noundef float @powf(float noundef %i.eg, float noundef %i.bx) #28
  %i.ei = fmul float %i.eh, 2.550000e+02
  %i.ej = fadd float %i.ei, 5.000000e-01          ; 3 uses
  %i.ek = fcmp olt float %i.ej, 0.000000e+00
  %i.el = fcmp ogt float %i.ej, 2.550000e+02
  %..i.i.i.i.2 = select i1 %i.el, float 2.550000e+02, float %i.ej
  %.0.i.i.i.i.2 = select i1 %i.ek, float 0.000000e+00, float %..i.i.i.i.2
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next18.i.i.i.1
  store float %.0.i.i.i.i.2, ptr %i.em, align 4, !tbaa !26
  %indvars.iv.next18.i.i.i.2 = or disjoint i64 %indvars.iv17.i.i.i, 3 ; 2 uses
  %i.en = trunc nuw nsw i64 %indvars.iv.next18.i.i.i.2 to i32
  %i.eo = uitofp nneg i32 %i.en to float
  %i.ep = fdiv float %i.eo, 1.023000e+03
  %i.eq = call noundef float @powf(float noundef %i.ep, float noundef %i.bx) #28
  %i.er = fmul float %i.eq, 2.550000e+02
  %i.es = fadd float %i.er, 5.000000e-01          ; 3 uses
  %i.et = fcmp olt float %i.es, 0.000000e+00
  %i.eu = fcmp ogt float %i.es, 2.550000e+02
  %..i.i.i.i.3 = select i1 %i.eu, float 2.550000e+02, float %i.es
  %.0.i.i.i.i.3 = select i1 %i.et, float 0.000000e+00, float %..i.i.i.i.3
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next18.i.i.i.2
  store float %.0.i.i.i.i.3, ptr %i.ev, align 4, !tbaa !26
  %indvars.iv.next18.i.i.i.3 = add nuw nsw i64 %indvars.iv17.i.i.i, 4 ; 2 uses
  %exitcond20.not.i.i.i.3 = icmp eq i64 %indvars.iv.next18.i.i.i.3, 1024
  br i1 %exitcond20.not.i.i.i.3, label %bb.r, label %bb.q, !llvm.loop !2

bb.r:                                             ; preds = %bb.q
  %i.ew = ptrtoint ptr %i.bu to i64
  %i.ex = or i64 %i.ew, 432345564227567616        ; 2 uses
  store i64 %i.ex, ptr %0, align 8, !tbaa !35
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEEixERS5_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5cache, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.r
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !35
  %i.ez = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !135
  %i.fa = icmp slt i32 %i.ez, 1
  br i1 %i.fa, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.fb, ptr %3, align 8, !tbaa !16, !alias.scope !136
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.fc, align 8, !tbaa !19, !alias.scope !136
  store i8 0, ptr %i.fb, align 8, !tbaa !20, !alias.scope !136
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRfRNS_13ColorEncodingEEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERfRNS_13ColorEncodingEEEES6_PKcDpOT_.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %3, align 8, !tbaa !21, !alias.scope !136 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.fb
  br i1 %i.ff, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  %i.fg = load i64, ptr %i.fb, align 8, !tbaa !20, !alias.scope !136
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #27
  br label %.body

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERfRNS_13ColorEncodingEEEES6_PKcDpOT_.exit.i: ; preds = %bb.t
  %i.fi = load ptr, ptr %3, align 8, !tbaa !21
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 242, ptr noundef %i.fi)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERfRNS_13ColorEncodingEEEES6_PKcDpOT_.exit.i
  %i.fj = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.fb
  br i1 %i.fk, label %_ZN4pbrt3LogIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERfRNS_13ColorEncodingEEEEvNS_8LogLevelEPKciSE_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.fl = load i64, ptr %i.fb, align 8, !tbaa !20
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #27
  br label %_ZN4pbrt3LogIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERfRNS_13ColorEncodingEEEEvNS_8LogLevelEPKciSE_DpOT_.exit

bb.w:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERfRNS_13ColorEncodingEEEES6_PKcDpOT_.exit.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.fb
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.w
  %i.fq = load i64, ptr %i.fb, align 8, !tbaa !20
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body

_ZN4pbrt3LogIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERfRNS_13ColorEncodingEEEEvNS_8LogLevelEPKciSE_DpOT_.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.x

bb.x:                                             ; preds = %_ZN4pbrt3LogIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERfRNS_13ColorEncodingEEEEvNS_8LogLevelEPKciSE_DpOT_.exit, %_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEE4findERS5_.exit, %bb.s
  %i.fs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEEE5mutex) #28 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_:bb.a
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !16, !alias.scope !142
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !142
  store i8 0, ptr %i.a, align 8, !tbaa !20, !alias.scope !142
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !21, !alias.scope !142 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20, !alias.scope !142
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !21
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.h) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEEixERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load float, ptr %1, align 4, !tbaa !26   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load float, ptr %i.e, align 4, !tbaa !26
  %i.g = fcmp olt float %i.f, %i.d                ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEE11lower_boundERS5_.exit, label %bb.b, !llvm.loop !0

_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEE11lower_boundERS5_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEE11lower_boundERS5_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !26
  %i.k = fcmp olt float %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEE11lower_boundERS5_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIfN4pbrt13ColorEncodingESt4lessIfESaISt4pairIKfS1_EEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load float, ptr %1, align 4, !tbaa !26
  store float %i.n, ptr %i.m, align 8, !tbaa !145
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !35
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load float, ptr %i.m, align 8, !tbaa !26
  %i.v = load float, ptr %i.t, align 4, !tbaa !26
  %i.w = fcmp olt float %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !42
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #27
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #27
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN4pbrt13ColorEncodingEESt10_Select1stIS4_ESt4lessIfESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable
define dso_local void @_ZN4pbrt18GammaColorEncodingC2Ef(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(5124) initializes((0, 5124)) %0, float noundef %1) unnamed_addr #9 align 2 {
bb.a:
  store float %1, ptr %0, align 4, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5120) %i.a, i8 0, i64 5120, i1 false)
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.c = fdiv float 1.000000e+00, %1              ; 4 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.7, %bb.b ] ; 10 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = uitofp nneg i32 %i.d to float
  %i.f = fdiv float %i.e, 2.550000e+02
  %i.g = tail call noundef float @powf(float noundef %i.f, float noundef %1) #28
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.g, ptr %i.h, align 4, !tbaa !26
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.i = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.j = uitofp nneg i32 %i.i to float
  %i.k = fdiv float %i.j, 2.550000e+02
  %i.l = tail call noundef float @powf(float noundef %i.k, float noundef %1) #28
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store float %i.l, ptr %i.m, align 4, !tbaa !26
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = fdiv float %i.o, 2.550000e+02
  %i.q = tail call noundef float @powf(float noundef %i.p, float noundef %1) #28
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store float %i.q, ptr %i.r, align 4, !tbaa !26
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.s = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.t = uitofp nneg i32 %i.s to float
  %i.u = fdiv float %i.t, 2.550000e+02
  %i.v = tail call noundef float @powf(float noundef %i.u, float noundef %1) #28
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store float %i.v, ptr %i.w, align 4, !tbaa !26
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  %i.y = uitofp nneg i32 %i.x to float
  %i.z = fdiv float %i.y, 2.550000e+02
  %i.aa = tail call noundef float @powf(float noundef %i.z, float noundef %1) #28
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.3
  store float %i.aa, ptr %i.ab, align 4, !tbaa !26
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  %i.ad = uitofp nneg i32 %i.ac to float
  %i.ae = fdiv float %i.ad, 2.550000e+02
  %i.af = tail call noundef float @powf(float noundef %i.ae, float noundef %1) #28
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.4
  store float %i.af, ptr %i.ag, align 4, !tbaa !26
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  %i.ai = uitofp nneg i32 %i.ah to float
  %i.aj = fdiv float %i.ai, 2.550000e+02
  %i.ak = tail call noundef float @powf(float noundef %i.aj, float noundef %1) #28
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.5
  store float %i.ak, ptr %i.al, align 4, !tbaa !26
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = fdiv float %i.an, 2.550000e+02
  %i.ap = tail call noundef float @powf(float noundef %i.ao, float noundef %1) #28
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.6
  store float %i.ap, ptr %i.aq, align 4, !tbaa !26
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 256
  br i1 %exitcond.not.7, label %.preheader, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %bb.d
  ret void

bb.d:                                             ; preds = %bb.d, %.preheader
  %indvars.iv17 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next18.3, %bb.d ] ; 6 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv17 to i32
  %i.as = uitofp nneg i32 %i.ar to float
  %i.at = fdiv float %i.as, 1.023000e+03
  %i.au = tail call noundef float @powf(float noundef %i.at, float noundef %i.c) #28
  %i.av = fmul float %i.au, 2.550000e+02
  %i.aw = fadd float %i.av, 5.000000e-01          ; 3 uses
  %i.ax = fcmp olt float %i.aw, 0.000000e+00
  %i.ay = fcmp ogt float %i.aw, 2.550000e+02
  %..i = select i1 %i.ay, float 2.550000e+02, float %i.aw
  %.0.i = select i1 %i.ax, float 0.000000e+00, float %..i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv17
  store float %.0.i, ptr %i.az, align 4, !tbaa !26
  %indvars.iv.next18 = or disjoint i64 %indvars.iv17, 1 ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.next18 to i32
  %i.bb = uitofp nneg i32 %i.ba to float
  %i.bc = fdiv float %i.bb, 1.023000e+03
  %i.bd = tail call noundef float @powf(float noundef %i.bc, float noundef %i.c) #28
  %i.be = fmul float %i.bd, 2.550000e+02
  %i.bf = fadd float %i.be, 5.000000e-01          ; 3 uses
  %i.bg = fcmp olt float %i.bf, 0.000000e+00
  %i.bh = fcmp ogt float %i.bf, 2.550000e+02
  %..i.1 = select i1 %i.bh, float 2.550000e+02, float %i.bf
  %.0.i.1 = select i1 %i.bg, float 0.000000e+00, float %..i.1
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next18
  store float %.0.i.1, ptr %i.bi, align 4, !tbaa !26
  %indvars.iv.next18.1 = or disjoint i64 %indvars.iv17, 2 ; 2 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv.next18.1 to i32
  %i.bk = uitofp nneg i32 %i.bj to float
  %i.bl = fdiv float %i.bk, 1.023000e+03
  %i.bm = tail call noundef float @powf(float noundef %i.bl, float noundef %i.c) #28
  %i.bn = fmul float %i.bm, 2.550000e+02
  %i.bo = fadd float %i.bn, 5.000000e-01          ; 3 uses
  %i.bp = fcmp olt float %i.bo, 0.000000e+00
  %i.bq = fcmp ogt float %i.bo, 2.550000e+02
  %..i.2 = select i1 %i.bq, float 2.550000e+02, float %i.bo
  %.0.i.2 = select i1 %i.bp, float 0.000000e+00, float %..i.2
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next18.1
  store float %.0.i.2, ptr %i.br, align 4, !tbaa !26
  %indvars.iv.next18.2 = or disjoint i64 %indvars.iv17, 3 ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.next18.2 to i32
  %i.bt = uitofp nneg i32 %i.bs to float
  %i.bu = fdiv float %i.bt, 1.023000e+03
  %i.bv = tail call noundef float @powf(float noundef %i.bu, float noundef %i.c) #28
  %i.bw = fmul float %i.bv, 2.550000e+02
  %i.bx = fadd float %i.bw, 5.000000e-01          ; 3 uses
  %i.by = fcmp olt float %i.bx, 0.000000e+00
  %i.bz = fcmp ogt float %i.bx, 2.550000e+02
  %..i.3 = select i1 %i.bz, float 2.550000e+02, float %i.bx
  %.0.i.3 = select i1 %i.by, float 0.000000e+00, float %..i.3
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next18.2
  store float %.0.i.3, ptr %i.ca, align 4, !tbaa !26
  %indvars.iv.next18.3 = add nuw nsw i64 %indvars.iv17, 4 ; 2 uses
  %exitcond20.not.3 = icmp eq i64 %indvars.iv.next18.3, 1024
  br i1 %exitcond20.not.3, label %bb.c, label %bb.d, !llvm.loop !2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(5124) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree writeonly captures(none) %3, i64 %4) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.b = icmp ult i64 %2, 8
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, -8
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.06.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.06.epil = phi i64 [ %.06.epil.init, %.epil.preheader ], [ %i.i, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.06.epil
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06.epil
  store float %i.g, ptr %i.h, align 4, !tbaa !26
  %i.i = add nuw i64 %.06.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !146

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.06 = phi i64 [ 0, %.lr.ph.new ], [ %i.bm, %bb.c ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.06
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06
  store float %i.n, ptr %i.o, align 4, !tbaa !26
  %i.p = or disjoint i64 %.06, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.p
  store float %i.u, ptr %i.v, align 4, !tbaa !26
  %i.w = or disjoint i64 %.06, 2                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w
  store float %i.ab, ptr %i.ac, align 4, !tbaa !26
  %i.ad = or disjoint i64 %.06, 3                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
end_hunk_1
