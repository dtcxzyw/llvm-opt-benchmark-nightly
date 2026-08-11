inline.NumInlined: 87492
inline.NumDeleted: 10545
loop-unroll.NumCompletelyUnrolled: 4850
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 4940
begin_hunk_0_@_ZZN8facebook5velox12SimpleVectorIlE25hashValueAtWithCustomTypeERKSt10shared_ptrIKNS0_4TypeEElENKUlvE_clEv:bb.a
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %bb.w
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !180
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %common.resume

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIl, i64 8), align 8, !tbaa !1027 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !180
  %i.dn = icmp eq i8 %i.dm, 42
  %.idx.i.i33 = zext i1 %i.dn to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i.i33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !26274
  store ptr @_ZTSN8facebook5velox10StringViewE, ptr %6, align 16, !tbaa !180, !alias.scope !26277, !noalias !26274
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.do, ptr %i.dp, align 16, !tbaa !180, !alias.scope !26277, !noalias !26274
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.135, i64 140, i64 204, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !26274
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIlE25hashValueAtWithCustomTypeILNS0_8TypeKindE7EEEmRKSt10shared_ptrIKNS0_4TypeEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.135) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %7, align 8, !tbaa !178   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.z
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !180
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %common.resume

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIl, i64 8), align 8, !tbaa !1027 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = icmp eq i8 %i.dx, 42
  %.idx.i.i37 = zext i1 %i.dy to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx.i.i37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !26280
  store ptr @_ZTSN8facebook5velox10StringViewE, ptr %4, align 16, !tbaa !180, !alias.scope !26283, !noalias !26280
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.dz, ptr %i.ea, align 16, !tbaa !180, !alias.scope !26283, !noalias !26280
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.135, i64 140, i64 204, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !26280
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIlE25hashValueAtWithCustomTypeILNS0_8TypeKindE8EEEmRKSt10shared_ptrIKNS0_4TypeEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.135) #47
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %5, align 8, !tbaa !178   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38: ; preds = %bb.ac
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !180
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i39: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %common.resume

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIl, i64 8), align 8, !tbaa !1027 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !180
  %i.ej = icmp eq i8 %i.ei, 42
  %.idx.i.i41 = zext i1 %i.ej to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i.i41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39, !noalias !26286
  store ptr @_ZTSN8facebook5velox9TimestampE, ptr %2, align 16, !tbaa !180, !alias.scope !26289, !noalias !26286
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ek, ptr %i.el, align 16, !tbaa !180, !alias.scope !26289, !noalias !26286
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.135, i64 140, i64 204, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39, !noalias !26286
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIlE25hashValueAtWithCustomTypeILNS0_8TypeKindE9EEEmRKSt10shared_ptrIKNS0_4TypeEERKlE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.135) #47
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %3, align 8, !tbaa !178   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %bb.af
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !180
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %common.resume

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #39
  %i.es = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %i.d) ; 2 uses
  %i.et = extractvalue { i64, ptr } %i.es, 0
  %i.eu = extractvalue { i64, ptr } %i.es, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39, !noalias !26292
  %i.ev = ptrtoint ptr %i.eu to i64
  store i64 %i.ev, ptr %1, align 16, !noalias !26292
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.et, ptr %.sroa_idx3.i, align 8, !noalias !26292
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr nonnull @.str.120, i64 27, i64 13, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39, !noalias !26292
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox12SimpleVectorIlE25hashValueAtWithCustomTypeERKSt10shared_ptrIKNS0_4TypeEElENKUlvE_clEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr nonnull @.str.120) #47
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %22, align 8, !tbaa !178  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !180
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #39
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %10 = alloca %"class.std::shared_ptr.11", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !258  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !358
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !358
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !266
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !266
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !238
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorImEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsImEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !238   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !476

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !477
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !55
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !476

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !258 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !262
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !264
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #39, !inline_history !265
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #39, !inline_history !265
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !267

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorImEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !238
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i64, ptr %5, align 8, !tbaa !174
  store i64 %i.at, ptr %i.as, align 8, !tbaa !3107
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 %i.l, ptr %i.au, align 8, !tbaa !26295
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.av, align 1, !tbaa !26296
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !26297
  invoke void @_ZN8facebook5velox14ConstantVectorImE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !62
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 8, !tbaa !26295, !range !152, !noundef !153
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_E18veloxCheckFailArgs) #47
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #39
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39, !noalias !26298
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !358, !noalias !26301
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !26298
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !258 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !358
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !262
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !264
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !55
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #39, !inline_history !524
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !55
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #39, !inline_history !524
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsImEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %.pn13 = phi { ptr, i32 } [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bz, %bb.x ], [ %i.ca, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.ag

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store i32 2, ptr %i.c, align 4, !tbaa !26129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  store i32 2, ptr %i.d, align 4, !tbaa !26129
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !26396
  store ptr %i.c, ptr %6, align 16, !tbaa !180, !noalias !26396
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.cg, align 8, !tbaa !180, !noalias !26396
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %i.ch, align 16, !tbaa !180, !noalias !26396
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ci, align 8, !tbaa !180, !noalias !26396
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.272, i64 57, i64 255, ptr nonnull %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !26396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImEC1EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsImEEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.272) #47
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.ad:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %11, align 8, !tbaa !178  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.ad
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !180
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.cj, %bb.ac ], [ %i.ck, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  invoke void @_ZN8facebook5velox14ConstantVectorImE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.w

bb.af:                                            ; preds = %bb.ae
  ret void

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.by, %bb.w ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #39
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bc) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #39
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.v
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ag ], [ %i.bx, %bb.v ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorImE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !152, !noundef !153
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.286) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !258  ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !258  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !266
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !266
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !258
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !262
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !264
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !479
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !479
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !267

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !258
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !26318
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !26295
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !239
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorImEE, i64 0) #39 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !26318
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !26295
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !26318
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(136) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !3107
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !74
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !258 ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !258
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !262
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !264
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #39, !inline_history !524
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #39, !inline_history !524
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !267

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #39
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorImE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.ck, align 1, !tbaa !26296
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.1055", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = load ptr, ptr %4, align 8, !tbaa !178
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !179
  store ptr %i.a, ptr %3, align 16, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !180
  invoke void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, ptr nonnull @.str.119, i64 2, i64 13, ptr nonnull %3, ptr null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.e = load ptr, ptr %4, align 8, !tbaa !178    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !180
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #49
  br label %_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !178    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !180
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %i.j

_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8facebook5velox14VectorEncodinglsERSoRKNS1_6SimpleE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !26399)
  call void @llvm.experimental.noalias.scope.decl(metadata !26402)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !414, !alias.scope !26405
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !179, !alias.scope !26405
  store i8 0, ptr %i.c, align 8, !tbaa !180, !alias.scope !26405
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !850, !noalias !26405 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !26405 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !854, !noalias !26405 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !178, !alias.scope !26405 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12SimpleVectorIlEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIlEESt8optionalIiESL_SK_IbESL_SL_:bb.a
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !476

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !258  ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !262
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !264
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !265
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !265
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !267

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorIlEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 8, ptr %i.aj, align 8, !tbaa !26141
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  ret void

bb.k:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #39
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIlE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !152, !noundef !153
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIlE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.286) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !258  ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !258  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !266
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !266
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !258
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !262
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !264
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !479
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !479
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !267

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !258
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !26086
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !360
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !239
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIlEE, i64 0) #39 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !26086
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !360
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !26086
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(136) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !370
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !74
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !258 ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !258
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !262
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !264
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #39, !inline_history !524
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #39, !inline_history !524
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !267

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #39
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIlE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.ck, align 1, !tbaa !26414
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(94) dereferenceable(94) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTVN8facebook5velox10BaseVectorE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.noexc.i unwind label %bb.c, !inline_history !476

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !477
  %.not.i.i = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %..i.i
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.c, !inline_history !476

bb.c:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.a, %bb.b, %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !258  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !262
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !264
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !265
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !265
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !267

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIlED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #48
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox14ConstantVectorIlE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !476

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !477
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !55
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !476

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !238 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !238 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !246 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !465
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !240
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !245

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !174
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEElRKNS1_17SimpleVectorStatsIlEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.11", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !371
  %i.e = load i32, ptr %2, align 4, !tbaa !266
  %i.f = load i8, ptr %3, align 1, !tbaa !159, !range !152, !noundef !153
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !258  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !358
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !358
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !266
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !266
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIlEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !26445

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !258  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !262
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !264
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !26446
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !26446
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !267

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !26445
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #39, !inline_history !26445
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIlEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %10 = alloca %"class.std::shared_ptr.11", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !258  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !358
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !358
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !266
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !266
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !238
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIlEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIlEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !238   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !476

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !477
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !55
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !476

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !258 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !262
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !264
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #39, !inline_history !265
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #39, !inline_history !265
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !267

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIlEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !238
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i64, ptr %5, align 8, !tbaa !174
  store i64 %i.at, ptr %i.as, align 8, !tbaa !370
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 %i.l, ptr %i.au, align 8, !tbaa !360
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.av, align 1, !tbaa !26414
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !26297
  invoke void @_ZN8facebook5velox14ConstantVectorIlE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !62
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 8, !tbaa !360, !range !152, !noundef !153
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIlEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_E18veloxCheckFailArgs) #47
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #39
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39, !noalias !26447
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !358, !noalias !26450
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !26447
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !258 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !358
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !262
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !264
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !55
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #39, !inline_history !524
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !55
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #39, !inline_history !524
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_3
begin_hunk_4_@"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec8CastExpr27applyToSelectedNoThrowLocalIZNS4_12castFromTimeERKNS0_17SelectivityVectorERKNS0_10BaseVectorERNS3_7EvalCtxERKSt10shared_ptrIKNS0_4TypeEEE3$_1EEvSD_S8_RSE_IS9_EOT_EUlSN_E0_EEvPKmiibSN_ENKUlimE_clEim":bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJPNS1_6memory10MemoryPoolEibRKSt10shared_ptrIKNS1_4TypeEES3_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.11", align 16 ; 6 uses
  %7 = alloca %"struct.facebook::velox::SimpleVectorStats.1419", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !371
  %i.e = load i32, ptr %2, align 4, !tbaa !266
  %i.f = load i8, ptr %3, align 1, !tbaa !159, !range !152, !noundef !153
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !258  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !358
  store <2 x ptr> %i.k, ptr %6, align 16, !tbaa !358
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !266
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !266
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !22847
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.r, align 8, !tbaa !22847
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 0, i64 0)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !258  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !262
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !264
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !26830
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !26830
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i7.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !267

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #39
  resume { ptr, i32 } %i.ai

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox14ConstantVectorINS4_9TimestampEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.a) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1027 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !180
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #39
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %10 = alloca %"class.std::shared_ptr.11", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !258  ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !358
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !358
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !266
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !266
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !238
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !238   ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !476

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !477
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !55
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !476

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !258 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !262
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !264
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #39, !inline_history !265
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #39, !inline_history !265
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !267

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorINS0_9TimestampEEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !238
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !722
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i8 %i.l, ptr %i.at, align 8, !tbaa !26831
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.au, align 1, !tbaa !26833
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.av, align 8, !tbaa !26297
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aw = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %4, align 8, !tbaa !59
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !62
  %i.be = icmp eq i8 %i.bd, 32
  br i1 %i.be, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bf = load i8, ptr %i.at, align 8, !tbaa !26831, !range !152, !noundef !153
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.w, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_9TimestampEEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_E18veloxCheckFailArgs) #47
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #39
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39, !noalias !26834
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bl = load <2 x ptr>, ptr %9, align 16, !tbaa !358, !noalias !26837
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39, !noalias !26834
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !258 ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.aq, align 8, !tbaa !358
  %.not.i.i.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !262
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !264
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #39, !inline_history !524
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !55
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #39, !inline_history !524
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !266
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EE:bb.a
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %.pn13 = phi { ptr, i32 } [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bw, %bb.x ], [ %i.bx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.ag

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store i32 2, ptr %i.c, align 4, !tbaa !26129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  store i32 2, ptr %i.d, align 4, !tbaa !26129
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !26920
  store ptr %i.c, ptr %6, align 16, !tbaa !180, !noalias !26920
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.cd, align 8, !tbaa !180, !noalias !26920
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %i.ce, align 16, !tbaa !180, !noalias !26920
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.cf, align 8, !tbaa !180, !noalias !26920
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.272, i64 57, i64 255, ptr nonnull %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !26920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_9TimestampEEC1EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.272) #47
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.ad:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %11, align 8, !tbaa !178  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.ad
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !180
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.cg, %bb.ac ], [ %i.ch, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.af unwind label %bb.w

bb.af:                                            ; preds = %bb.ae
  ret void

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.bv, %bb.w ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #39
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bc) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #39
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.v
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ag ], [ %i.bu, %bb.v ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !152, !noundef !153
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_9TimestampEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.286) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !258  ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !258  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !266
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !266
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !258
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !262
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !264
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !479
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39, !inline_history !479
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !267

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #39
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !258
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !26853
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !26831
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !239
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_9TimestampEEE, i64 0) #39 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !26853
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !26831
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !26853
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.br(ptr noundef nonnull align 8 dereferenceable(152) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !722
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !74
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !258 ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !258
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !262
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !264
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #39, !inline_history !524
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #39, !inline_history !524
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !267

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #39
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.ck, align 1, !tbaa !26833
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEES3_RKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESV_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.11", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !371
  %i.e = load i32, ptr %2, align 4, !tbaa !266
  %i.f = load i8, ptr %3, align 1, !tbaa !159, !range !152, !noundef !153
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !258  ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !358
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !358
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !266
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !266
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !26923

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !258  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !262
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !264
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !26924
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !26924
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !180
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !267

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !26923
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #39, !inline_history !26923
end_hunk_5
