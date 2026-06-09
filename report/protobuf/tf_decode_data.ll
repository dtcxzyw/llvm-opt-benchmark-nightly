inline.NumInlined: 294
inline.NumDeleted: 156
begin_hunk_0_@__gxx_personality_v0

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8compiler10objectivec20TextFormatDecodeData19DecodeDataForStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.google::protobuf::compiler::objectivec::(anonymous namespace)::DecodeDataBuilder", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = icmp eq i64 %1, 0
  %i.c = icmp eq i64 %3, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.c, !prof !27
  br i1 %or.cond, label %.thread, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit, !prof !27

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str, i32 noundef 190, ptr noundef nonnull @.str.6) #15
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 60, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi61EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi61EEERS2_RAT__Kc.exit: ; preds = %.thread
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %1, ptr %2)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi61EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 13, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit: ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 %3, ptr %4)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 2, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  unreachable

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit, %bb.c, %bb.b, %.thread, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi61EEERS2_RAT__Kc.exit
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  unreachable

_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %bb.a
  %i.g = tail call ptr @memchr(ptr noundef %2, i32 noundef 0, i64 noundef %1) #14 ; 2 uses
  %.not.i.i = icmp ne ptr %i.g, null
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ne i64 %i.j, -1
  %i.l = select i1 %.not.i.i, i1 %i.k, i1 false
  br i1 %i.l, label %.thread155, label %bb.e, !prof !23

bb.e:                                             ; preds = %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit
  %i.m = tail call ptr @memchr(ptr noundef %4, i32 noundef 0, i64 noundef %3) #14 ; 2 uses
  %.not.i.i78 = icmp ne ptr %i.m, null
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %4 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ne i64 %i.p, -1
  %i.r = select i1 %.not.i.i78, i1 %i.q, i1 false
  br i1 %i.r, label %.thread155, label %.lr.ph.preheader, !prof !28

.thread155:                                       ; preds = %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @.str.8) #15
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 62, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi63EEERS2_RAT__Kc.exit unwind label %bb.j

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi63EEERS2_RAT__Kc.exit: ; preds = %.thread155
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 9, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit unwind label %bb.j

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi63EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %1, ptr %2)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.g unwind label %bb.l       ; 2 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 13, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit81 unwind label %bb.l

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit81: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %3, ptr %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit81
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 2, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit82 unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit82: ; preds = %bb.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.critedge71 unwind label %bb.n

.critedge71:                                      ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit82
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  unreachable

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi63EEERS2_RAT__Kc.exit, %.thread155
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.p

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit81
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit82, %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.z = load ptr, ptr %11, align 8, !tbaa !19    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.o
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.p

.lr.ph.preheader:                                 ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 24 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 16 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  store i64 0, ptr %i.al, align 8, !tbaa !20
  store i8 0, ptr %i.ak, align 8, !tbaa !22
  store i8 0, ptr %12, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 2 ; 9 uses
  store i8 0, ptr %i.am, align 2, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 10 uses
  store i32 0, ptr %i.an, align 4, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 6 uses
  store i8 1, ptr %i.ao, align 1, !tbaa !34
  br label %.lr.ph

bb.p:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bh
  %i.ap = phi i8 [ %i.gh, %bb.bh ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.aq = phi i8 [ %i.gi, %bb.bh ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.ar = phi i8 [ %i.gj, %bb.bh ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.as = phi i32 [ %i.gk, %bb.bh ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.058167 = phi i64 [ %i.gl, %bb.bh ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.059166 = phi i64 [ %.160, %bb.bh ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 %.058167
  %i.au = load i8, ptr %i.at, align 1, !tbaa !22  ; 11 uses
  %i.av = icmp eq i8 %i.au, 95
  br i1 %i.av, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.lr.ph
  %i.aw = trunc i32 %i.as to i8
  %i.ax = shl nuw i8 %i.ar, 7
  %i.ay = or i8 %i.ax, %i.aw
  %spec.select.i.i = or i8 %i.ay, %i.ap           ; 2 uses
  %.not.i.i87 = icmp eq i8 %spec.select.i.i, 0
  br i1 %.not.i.i87, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load i64, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ak                ; 2 uses
  br i1 %i.bc, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bd = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.be = load i64, ptr %i.ak, align 8
  %i.bf = select i1 %i.bc, i64 15, i64 %i.be
  %i.bg = icmp ugt i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.az, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.t
  %.pre.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.bh = phi ptr [ %.pre.i.i.i.i, %.noexc ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i8 %spec.select.i.i, ptr %i.bi, align 1, !tbaa !22
  store i64 %i.ba, ptr %i.al, align 8, !tbaa !20
  %i.bj = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ba
  store i8 0, ptr %i.bk, align 1, !tbaa !22
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder13AddUnderscoreEv.exit: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i
  store i8 0, ptr %i.am, align 2, !tbaa !32
  store i32 0, ptr %i.an, align 4, !tbaa !33
  store i8 1, ptr %i.ao, align 1, !tbaa !34
  store i8 1, ptr %12, align 8, !tbaa !29
  br label %bb.bh

bb.u:                                             ; preds = %bb.aw, %bb.aq, %bb.ag, %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %.lr.ph
  %.not = icmp ult i64 %.059166, %1
  br i1 %.not, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !18, !alias.scope !35
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !22, !alias.scope !35
  store i64 1, ptr %i.bn, align 8, !tbaa !20, !alias.scope !35
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.bo, align 1, !tbaa !22, !alias.scope !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14, !noalias !35
  store i64 %3, ptr %7, align 8, !tbaa !21, !noalias !35
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !38, !noalias !35
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !35
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !20, !alias.scope !35 ; 4 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !35 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bm                ; 2 uses
  br i1 %i.bs, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i

bb.y:                                             ; preds = %bb.x
  %i.bt = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i: ; preds = %bb.y, %bb.x
  %i.bu = load i64, ptr %i.bm, align 8, !alias.scope !35
  %i.bv = select i1 %i.bs, i64 15, i64 %i.bu
  %i.bw = icmp ugt i64 %i.bq, %i.bv
  br i1 %i.bw, label %bb.z, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bp, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.aa

.noexc8.i:                                        ; preds = %bb.z
  %.pre.i.i7.i = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !35
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %i.by, %bb.ab ] ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !35 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bm
  br i1 %i.ca, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ac
  %i.cb = load i64, ptr %i.bm, align 8, !tbaa !22, !alias.scope !35
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #17
  br label %.body

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i, %.noexc8.i
  %i.cd = phi ptr [ %.pre.i.i7.i, %.noexc8.i ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bp
  store i8 0, ptr %i.ce, align 1, !tbaa !22
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !20, !alias.scope !35
  %i.cf = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !35
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bq
  store i8 0, ptr %i.cg, align 1, !tbaa !22
  br label %.thread160

bb.ad:                                            ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %.059166
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22  ; 4 uses
  switch i32 %i.as, label %bb.al [
    i32 31, label %bb.ae
    i32 0, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cj = shl nuw i8 %i.ar, 7
  %i.ck = or i8 %i.ap, %i.cj
  %spec.select.i.i88 = or i8 %i.ck, 31
  %i.cl = load i64, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.cm = add i64 %i.cl, 1                        ; 3 uses
  %i.cn = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ak                ; 2 uses
  br i1 %i.co, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89

bb.af:                                            ; preds = %bb.ae
  %i.cp = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89: ; preds = %bb.af, %bb.ae
  %i.cq = load i64, ptr %i.ak, align 8
  %i.cr = select i1 %i.co, i64 15, i64 %i.cq
  %i.cs = icmp ugt i64 %i.cm, %i.cr
  br i1 %i.cs, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.cl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc93 unwind label %bb.u

.noexc93:                                         ; preds = %bb.ag
  %.pre.i.i.i.i91 = load ptr, ptr %i.aj, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90: ; preds = %.noexc93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89
  %i.ct = phi ptr [ %.pre.i.i.i.i91, %.noexc93 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i89 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  store i8 %spec.select.i.i88, ptr %i.cu, align 1, !tbaa !22
  store i64 %i.cm, ptr %i.al, align 8, !tbaa !20
  %i.cv = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cm
  store i8 0, ptr %i.cw, align 1, !tbaa !22
  store i8 0, ptr %12, align 8, !tbaa !29
  store i8 0, ptr %i.am, align 2, !tbaa !32
  store i32 0, ptr %i.an, align 4, !tbaa !33
  store i8 1, ptr %i.ao, align 1, !tbaa !34
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90, %bb.ad
  %i.cx = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90 ], [ %i.aq, %bb.ad ]
  %i.cy = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i90 ], [ %i.ar, %bb.ad ]
  %i.cz = icmp eq i8 %i.au, %i.ci
  br i1 %i.cz, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = zext i8 %i.ci to i64                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !22
  %i.dd = icmp eq i8 %i.au, %i.dc
  br i1 %i.dd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToLowerE, i64 %i.da
  %i.df = load i8, ptr %i.de, align 1, !tbaa !22
  %i.dg = icmp eq i8 %i.au, %i.df
  br i1 %i.dg, label %bb.ak, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder12AddCharacterEcc.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.sink.i.i = phi i8 [ 0, %bb.ah ], [ 64, %bb.ai ], [ 32, %bb.aj ] ; 2 uses
  store i8 %.sink.i.i, ptr %i.am, align 2, !tbaa !32
  store i32 1, ptr %i.an, align 4, !tbaa !33
  %i.dh = add i8 %i.au, -65
  %i.di = icmp ult i8 %i.dh, 26
  %i.dj = icmp ne i8 %i.cx, 0
  %i.dk = and i1 %i.di, %i.dj
  br label %bb.ba

bb.al:                                            ; preds = %bb.ad
  %i.dl = icmp eq i8 %i.au, %i.ci
  br i1 %i.dl, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %.not.i92 = icmp ne i8 %i.ap, 96
  %i.dm = add i8 %i.au, -65
  %i.dn = icmp ult i8 %i.dm, 26                   ; 2 uses
  %or.cond36.i = or i1 %i.dn, %.not.i92
  br i1 %or.cond36.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.do = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.do, ptr %i.an, align 4, !tbaa !33
  %i.dp = icmp ne i8 %i.aq, 0
  %i.dq = and i1 %i.dn, %i.dp
  br label %bb.ba

bb.ao:                                            ; preds = %bb.am
  %i.dr = trunc i32 %i.as to i8
  %i.ds = shl nuw i8 %i.ar, 7
  %i.dt = or i8 %i.ds, %i.dr
  %spec.select.i17.i = or i8 %i.dt, 96
  %i.du = load i64, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.dv = add i64 %i.du, 1                        ; 3 uses
  %i.dw = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ak                ; 2 uses
  br i1 %i.dx, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i

bb.ap:                                            ; preds = %bb.ao
  %i.dy = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i: ; preds = %bb.ap, %bb.ao
  %i.dz = load i64, ptr %i.ak, align 8
  %i.ea = select i1 %i.dx, i64 15, i64 %i.dz
  %i.eb = icmp ugt i64 %i.dv, %i.ea
  br i1 %i.eb, label %bb.aq, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.du, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc94 unwind label %bb.u

.noexc94:                                         ; preds = %bb.aq
  %.pre.i.i.i21.i = load ptr, ptr %i.aj, align 8, !tbaa !19
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder8AddFirstEcc.exit25.i: ; preds = %.noexc94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i
  %i.ec = phi ptr [ %.pre.i.i.i21.i, %.noexc94 ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du
  store i8 %spec.select.i17.i, ptr %i.ed, align 1, !tbaa !22
  store i64 %i.dv, ptr %i.al, align 8, !tbaa !20
  %i.ee = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dv
  store i8 0, ptr %i.ef, align 1, !tbaa !22
  store i8 0, ptr %12, align 8, !tbaa !29
  store i8 0, ptr %i.am, align 2, !tbaa !32
  store i32 1, ptr %i.an, align 4, !tbaa !33
  br label %bb.ba

bb.ar:                                            ; preds = %bb.al
  %i.eg = zext i8 %i.ci to i64                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !22
  %i.ej = icmp eq i8 %i.au, %i.ei                 ; 2 uses
  %i.ek = trunc nuw i8 %i.aq to i1
  %or.cond.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i8 96, ptr %i.am, align 2, !tbaa !32
  %i.el = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.el, ptr %i.an, align 4, !tbaa !33
  %i.em = add i8 %i.au, -65
  %i.en = icmp ult i8 %i.em, 26
  br label %bb.ba

bb.at:                                            ; preds = %bb.ar
  %i.eo = trunc i32 %i.as to i8
  %i.ep = shl nuw i8 %i.ar, 7
  %i.eq = or i8 %i.ep, %i.eo
  %spec.select.i26.i = or i8 %i.eq, %i.ap         ; 2 uses
  %.not.i27.i = icmp eq i8 %spec.select.i26.i, 0
  br i1 %.not.i27.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.er = load i64, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.es = add i64 %i.er, 1                        ; 3 uses
  %i.et = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ak                ; 2 uses
  br i1 %i.eu, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i

bb.av:                                            ; preds = %bb.au
  %i.ev = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.ev)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i: ; preds = %bb.av, %bb.au
  %i.ew = load i64, ptr %i.ak, align 8
  %i.ex = select i1 %i.eu, i64 15, i64 %i.ew
  %i.ey = icmp ugt i64 %i.es, %i.ex
  br i1 %i.ey, label %bb.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29.i

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.er, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc95 unwind label %bb.u

.noexc95:                                         ; preds = %bb.aw
  %.pre.i.i.i30.i = load ptr, ptr %i.aj, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29.i: ; preds = %.noexc95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i
  %i.ez = phi ptr [ %.pre.i.i.i30.i, %.noexc95 ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er
  store i8 %spec.select.i26.i, ptr %i.fa, align 1, !tbaa !22
  store i64 %i.es, ptr %i.al, align 8, !tbaa !20
  %i.fb = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.es
  store i8 0, ptr %i.fc, align 1, !tbaa !22
  br label %bb.ax

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !12
  store i32 %i.r, ptr %i.q, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !18
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !19
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !22
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !20
  store ptr %i.w, ptr %i.t, align 8, !tbaa !19
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  store i8 0, ptr %i.w, align 8, !tbaa !22
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ag = load i32, ptr %.0911.i.i.i, align 8, !tbaa !12, !alias.scope !90, !noalias !87
  store i32 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !12, !alias.scope !87, !noalias !90
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !18, !alias.scope !87, !noalias !90
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !19, !alias.scope !90, !noalias !87 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20, !alias.scope !90, !noalias !87 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !92
  br label %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !19, !alias.scope !87, !noalias !90
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !22, !alias.scope !90, !noalias !87
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !22, !alias.scope !87, !noalias !90
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !20, !alias.scope !90, !noalias !87
  br label %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.as, ptr %i.au, align 8, !tbaa !20, !alias.scope !87, !noalias !90
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !19, !alias.scope !90, !noalias !87
  store i64 0, ptr %i.at, align 8, !tbaa !20, !alias.scope !90, !noalias !87
  store i8 0, ptr %i.al, align 8, !tbaa !22, !alias.scope !90, !noalias !87
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !93

_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit ], [ %i.aw, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ax, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.ay = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !12, !alias.scope !97, !noalias !94
  store i32 %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !12, !alias.scope !94, !noalias !97
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !18, !alias.scope !94, !noalias !97
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !19, !alias.scope !97, !noalias !94 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20, !alias.scope !97, !noalias !94 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !99
  br label %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !19, !alias.scope !94, !noalias !97
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !22, !alias.scope !97, !noalias !94
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !22, !alias.scope !94, !noalias !97
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !20, !alias.scope !97, !noalias !94
  br label %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bk = phi i64 [ %i.bg, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !20, !alias.scope !94, !noalias !97
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !19, !alias.scope !97, !noalias !94
  store i64 0, ptr %i.bl, align 8, !tbaa !20, !alias.scope !97, !noalias !94
  store i8 0, ptr %i.bd, align 8, !tbaa !22, !alias.scope !97, !noalias !94
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !93

_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26: ; preds = %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bo, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #17
  br label %_ZNSt12_Vector_baseISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !52
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !26
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef i64 @_ZNK6google8protobuf2io19OstreamOutputStream9ByteCountEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf2io19OstreamOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !4, i64 0}
!13 = !{!"_ZTSSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !4, i64 0, !14, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !5, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!15, !16, i64 0}
!19 = !{!14, !16, i64 0}
!20 = !{!14, !17, i64 8}
!21 = !{!17, !17, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!25, !8, i64 8}
!25 = !{!"_ZTSNSt12_Vector_baseISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!26 = !{!25, !8, i64 16}
!27 = !{!"branch_weights", i32 2097152, i32 -100663296}
!28 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTSN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilderE", !31, i64 0, !31, i64 1, !5, i64 2, !4, i64 4, !14, i64 8}
!31 = !{!"bool", !5, i64 0}
!32 = !{!30, !5, i64 2}
!33 = !{!30, !4, i64 4}
!34 = !{!30, !31, i64 1}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!37 = distinct !{!37, !"_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!38 = !{!16, !16, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!41 = distinct !{!41, !"_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!42 = distinct !{!42, !11}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!45 = distinct !{!45, !"_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_118DirectDecodeStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder6FinishB5cxx11Ev: argument 0"}
!48 = distinct !{!48, !"_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_117DecodeDataBuilder6FinishB5cxx11Ev"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!51 = distinct !{!51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!52 = !{!25, !8, i64 0}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!56, !16, i64 0}
!56 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !16, i64 0, !16, i64 8, !5, i64 16, !57, i64 48, !31, i64 56, !31, i64 57, !31, i64 58, !31, i64 59}
!57 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !9, i64 0}
!58 = !{!56, !16, i64 8}
!59 = !{!56, !57, i64 48}
!60 = !{!56, !31, i64 56}
!61 = !{!56, !31, i64 57}
!62 = !{!56, !31, i64 58}
!63 = !{!56, !31, i64 59}
!64 = !{!65, !17, i64 72}
!65 = !{!"_ZTSN6google8protobuf2io17CodedOutputStreamE", !56, i64 0, !16, i64 64, !17, i64 72}
!66 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!67 = !{!65, !16, i64 64}
!68 = !{!9, !9, i64 0}
!69 = !{!"branch_weights", i32 1, i32 1999}
!70 = !{!"branch_weights", i32 0, i32 1}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = distinct !{!75, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!78 = distinct !{!78, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!79 = !{!77, !74}
!80 = !{!81, !16, i64 40}
!81 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !82, i64 56}
!82 = !{!"_ZTSSt6locale", !83, i64 0}
!83 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!84 = !{!81, !16, i64 32}
!85 = !{!86, !86, i64 0}
!86 = !{!"vtable pointer", !6, i64 0}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!89 = distinct !{!89, !"_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!92 = !{!88, !91}
!93 = distinct !{!93, !11}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!96 = distinct !{!96, !"_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!97 = !{!98}
!98 = distinct !{!98, !96, !"_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!99 = !{!95, !98}
end_hunk_1
