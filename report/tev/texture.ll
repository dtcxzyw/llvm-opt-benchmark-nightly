Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/texture?download=true
inline.NumInlined: 185
inline.NumDeleted: 143
begin_hunk_0_@_ZNSt3__118condition_variable10notify_allEv

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui7TextureC2ENS0_11PixelFormatENS0_15ComponentFormatERKNS_5ArrayIiLm2EEENS0_17InterpolationModeES7_NS0_8WrapModeEhhb(ptr noundef nonnull align 8 dereferenceable(44) initializes((0, 23), (24, 33), (36, 44)) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i1 noundef zeroext %9) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %9 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7nanogui7TextureE, i64 16), ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %1, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %2, ptr %i.d, align 1, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %4, ptr %i.e, align 2, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %5, ptr %i.f, align 1, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %6, ptr %i.g, align 4, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %7, ptr %i.h, align 1, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %8, ptr %i.i, align 2, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %3, align 4, !tbaa !38
  store i64 %i.k, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.a, ptr %i.l, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.m, align 4, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.n, align 8, !tbaa !41
  %i.o = and i8 %8, 4
  %.not = icmp ne i8 %i.o, 0
  %i.p = icmp ugt i8 %7, 1
  %or.cond = and i1 %i.p, %.not
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
          to label %bb.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.q) #17
  br label %bb.h

bb.e:                                             ; preds = %bb.f, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN7nanogui7Texture4initEv(ptr noundef nonnull align 8 dereferenceable(44) %0)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.r, %bb.d ]
  tail call void @_ZN7nanogui6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #12

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

declare void @_ZN7nanogui7Texture4initEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN7nanogui6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui7TextureC2ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS0_17InterpolationModeES6_NS0_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(44) initializes((0, 16), (17, 23), (32, 33), (36, 44)) %0, ptr nofree readonly captures(none) %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7nanogui7TextureE, i64 16), ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 2, ptr %i.c, align 1, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %3, ptr %i.d, align 2, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %4, ptr %i.e, align 1, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %5, ptr %i.f, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 1, ptr %i.g, align 1, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 1, ptr %i.h, align 2, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.l, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.m = icmp ugt i64 %2, -9
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #21
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ult i64 %2, 23
  br i1 %i.n, label %bb.d, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c
  %i.o = or i64 %2, 7                             ; 2 uses
  %i.p = icmp eq i64 %i.o, 23
  %i.q = add nuw i64 %i.o, 1
  %i.r = select i1 %i.p, i64 25, i64 %i.q         ; 2 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #20
          to label %.noexc24 unwind label %bb.l   ; 2 uses

.noexc24:                                         ; preds = %.thread.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !38
  %i.u = or i64 %i.r, 1
  store i64 %i.u, ptr %6, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.v, align 8, !tbaa !38
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = trunc nuw nsw i64 %2 to i8
  %i.x = shl nuw nsw i8 %i.w, 1
  store i8 %i.x, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc24
  %.017.i.i = phi ptr [ %i.s, %.noexc24 ], [ %i.y, %bb.d ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.017.i.i, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.018.i.i = phi ptr [ %i.y, %bb.d ], [ %.017.i.i, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 %2
  store i8 0, ptr %i.z, align 1, !tbaa !38
  %i.aa = load i8, ptr %6, align 8
  %i.ab = trunc i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.af = select i1 %i.ab, ptr %i.ad, ptr %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = invoke ptr @stbi_load(ptr noundef %i.af, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a, i32 noundef 0)
          to label %bb.g unwind label %bb.m       ; 4 uses

bb.g:                                             ; preds = %bb.f
  %.not43 = icmp eq ptr %i.ah, null
  br i1 %.not43, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %8, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26.thread

bb.i:                                             ; preds = %bb.h
  %i.aj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull @.str.2)
          to label %bb.j unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false), !noalias !58
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
          to label %bb.ah unwind label %bb.n

bb.l:                                             ; preds = %.thread.i.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit30

bb.m:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit29

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26.thread: ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.n:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ao = load i8, ptr %7, align 8
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.o, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.as = load i64, ptr %7, align 8
  %i.at = and i64 %i.as, -2
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.at) #18
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.o, %bb.n
  %i.au = load i8, ptr %8, align 8
  %i.av = trunc i8 %i.au to i1
  br i1 %i.av, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load i8, ptr %8, align 8
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %.split, label %.sink.split

.split:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.150 = phi i1 [ true, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %.0, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ]
  %.pn48 = phi { ptr, i32 } [ %i.aw, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.an, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !38
  %i.bb = load i64, ptr %8, align 8
  %i.bc = and i64 %i.bb, -2
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bc) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.150, label %bb.p, label %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit29

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.0, label %bb.p, label %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit29

.sink.split:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26.thread
  %.pn.pn38.ph = phi { ptr, i32 } [ %i.am, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26.thread ], [ %i.aw, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26
  %.pn.pn38 = phi { ptr, i32 } [ %.pn48, %.split ], [ %i.an, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26 ], [ %.pn.pn38.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ai) #17
  br label %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit29

bb.q:                                             ; preds = %bb.g
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !54
  %switch.tableidx = add i32 %i.bd, -1            ; 3 uses
  %i.be = icmp ult i32 %switch.tableidx, 4
  br i1 %i.be, label %switch.lookup, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull @.str.3)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
          to label %bb.ah unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bf) #17
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

switch.lookup:                                    ; preds = %bb.q
  %switch.idx.cast = trunc nuw i32 %switch.tableidx to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %switch.idx.cast, ptr %i.bi, align 8, !tbaa !31
  invoke void @_ZN7nanogui7Texture4initEv(ptr noundef nonnull align 8 dereferenceable(44) %0)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %switch.lookup
  %switch.idx.cast56 = trunc nuw i32 %switch.tableidx to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !31
  %.not = icmp eq i8 %i.bk, %switch.idx.cast56
  br i1 %.not, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull @.str.4)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
          to label %bb.ah unwind label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x, %switch.lookup
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bl) #17
  br label %bb.ae

bb.aa:                                            ; preds = %bb.v
  invoke void @_ZN7nanogui7Texture6uploadEPKh(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull %i.ah)
          to label %bb.ab unwind label %bb.y

bb.ab:                                            ; preds = %bb.aa
  invoke void @stbi_image_free(ptr noundef nonnull %i.ah)
          to label %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #19
  unreachable

_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit: ; preds = %bb.ab
  %i.bq = load i8, ptr %6, align 8
  %i.br = trunc i8 %i.bq to i1
  br i1 %i.br, label %bb.ad, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit27

bb.ad:                                            ; preds = %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit
  %i.bs = load ptr, ptr %i.ac, align 8, !tbaa !38
  %i.bt = load i64, ptr %6, align 8
  %i.bu = and i64 %i.bt, -2
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bu) #18
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit27

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit27: ; preds = %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.ae:                                            ; preds = %bb.y, %bb.z, %bb.u, %bb.t
  %.pn20.ph = phi { ptr, i32 } [ %i.bn, %bb.z ], [ %i.bm, %bb.y ], [ %i.bg, %bb.t ], [ %i.bh, %bb.u ]
  invoke void @stbi_image_free(ptr noundef nonnull %i.ah)
          to label %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit29 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #19
  unreachable

_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit29: ; preds = %bb.ae, %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26, %bb.p, %bb.m
  %.pn20.pn = phi { ptr, i32 } [ %i.al, %bb.m ], [ %.pn20.ph, %bb.ae ], [ %.pn.pn38, %bb.p ], [ %.pn48, %.split ], [ %i.an, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26 ] ; 2 uses
  %i.bx = load i8, ptr %6, align 8
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.ag, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit30

bb.ag:                                            ; preds = %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit29
  %i.bz = load ptr, ptr %i.ac, align 8, !tbaa !38
  %i.ca = load i64, ptr %6, align 8
  %i.cb = and i64 %i.ca, -2
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cb) #18
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit30

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit30: ; preds = %bb.ag, %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit29, %bb.l
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %.pn20.pn, %_ZNSt3__110unique_ptrIA_hPFvPvEED2B8ne180100Ev.exit29 ], [ %.pn20.pn, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZN7nanogui6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
end_hunk_0
begin_hunk_1_@_ZNK7nanogui7Texture15bytes_per_pixelEv:bb.a
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !31    ; 2 uses
  %i.h = icmp ult i8 %i.g, 8
  br i1 %i.h, label %switch.lookup3, label %bb.e

bb.e:                                             ; preds = %switch.lookup
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

switch.lookup3:                                   ; preds = %switch.lookup
  %i.k = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK7nanogui7Texture15bytes_per_pixelEv, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.l = zext nneg i8 %i.g to i64
  %switch.gep4 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK7nanogui7Texture8channelsEv, i64 %i.l
  %switch.load5 = load i8, ptr %switch.gep4, align 1
  %switch.ext6 = zext i8 %switch.load5 to i64
  %i.m = mul nuw nsw i64 %switch.ext6, %switch.ext
  ret i64 %i.m
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 1, 5) i64 @_ZNK7nanogui7Texture8channelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31    ; 2 uses
  %i.c = icmp ult i8 %i.b, 8
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #17
  resume { ptr, i32 } %i.e

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK7nanogui7Texture8channelsEv, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  ret i64 %switch.ext
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #11

declare void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.7) #21
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #17
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN7nanogui7Texture12UploadHandle5StateE", !9, i64 0}
!11 = !{!"_ZTSN7nanogui7Texture12UploadHandleE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"bool", !5, i64 0}
!16 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !5, i64 0}
!17 = !{!16, !5, i64 0}
!18 = !{!"vtable pointer", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !16, i64 0}
!21 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !20, i64 0}
!22 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !21, i64 0}
!23 = !{!"_ZTSNSt3__16atomicImEE", !22, i64 0}
!24 = !{!"_ZTSN7nanogui6ObjectE", !23, i64 8}
!25 = !{!"_ZTSN7nanogui7Texture11PixelFormatE", !5, i64 0}
!26 = !{!"_ZTSN7nanogui7Texture15ComponentFormatE", !5, i64 0}
!27 = !{!"_ZTSN7nanogui7Texture17InterpolationModeE", !5, i64 0}
!28 = !{!"_ZTSN7nanogui7Texture8WrapModeE", !5, i64 0}
!29 = !{!"_ZTSN7nanogui5ArrayIiLm2EEE", !5, i64 0}
!30 = !{!"_ZTSN7nanogui7TextureE", !24, i64 0, !25, i64 16, !26, i64 17, !27, i64 18, !27, i64 19, !28, i64 20, !5, i64 21, !5, i64 22, !29, i64 24, !15, i64 32, !6, i64 36, !6, i64 40}
!31 = !{!30, !25, i64 16}
!32 = !{!30, !26, i64 17}
!33 = !{!30, !27, i64 18}
!34 = !{!30, !27, i64 19}
!35 = !{!30, !28, i64 20}
!36 = !{!30, !5, i64 21}
!37 = !{!30, !5, i64 22}
!38 = !{!5, !5, i64 0}
!39 = !{!30, !15, i64 32}
!40 = !{!30, !6, i64 36}
!41 = !{!30, !6, i64 40}
!42 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIjEE", !5, i64 0}
!43 = !{!42, !5, i64 0}
!44 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIbEE", !5, i64 0}
!45 = !{!44, !5, i64 0}
!46 = distinct !{!46, !51}
!47 = !{!"p1 _ZTSNSt3__15mutexE", !9, i64 0}
!48 = !{!"_ZTSNSt3__111unique_lockINS_5mutexEEE", !47, i64 0, !15, i64 8}
!49 = !{!48, !47, i64 0}
!50 = !{!48, !15, i64 8}
!51 = !{!"llvm.loop.mustprogress"}
!54 = !{!6, !6, i64 0}
!56 = distinct !{!56, i1 false, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_"}
!57 = distinct !{!57, !56, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_: argument 0"}
!58 = !{!57}
end_hunk_1
