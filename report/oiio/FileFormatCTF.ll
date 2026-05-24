inline.NumInlined: 2807
inline.NumDeleted: 1170
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper19StartElementHandlerEPvPKcPS4_:bb.a
bb.ur:                                            ; preds = %bb.uq
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8 ; 4 uses
  %i.ahm = load atomic i64, ptr %i.ahl acquire, align 8 ; 2 uses
  %i.ahn = icmp eq i64 %i.ahm, 4294967297
  %i.aho = trunc i64 %i.ahm to i32                ; 2 uses
  br i1 %i.ahn, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %bb.ur
  store i32 0, ptr %i.ahl, align 8, !tbaa !86
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahk, i64 12
  store i32 0, ptr %i.ahp, align 4, !tbaa !88
  %i.ahq = load ptr, ptr %i.ahk, align 8, !tbaa !11
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  %i.ahs = load ptr, ptr %i.ahr, align 8
  call void %i.ahs(ptr noundef nonnull align 8 dereferenceable(16) %i.ahk) #26, !inline_history !209
  %i.aht = load ptr, ptr %i.ahk, align 8, !tbaa !11
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  %i.ahv = load ptr, ptr %i.ahu, align 8
  call void %i.ahv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahk) #26, !inline_history !209
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit509

bb.ut:                                            ; preds = %bb.ur
  %i.ahw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i506 = icmp eq i8 %i.ahw, 0
  br i1 %.not.i.i.i506, label %bb.uv, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.ahx = add nsw i32 %i.aho, -1
  store i32 %i.ahx, ptr %i.ahl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i507

bb.uv:                                            ; preds = %bb.ut
  %i.ahy = atomicrmw volatile add ptr %i.ahl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i507

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i507: ; preds = %bb.uv, %bb.uu
  %.0.i.i.i.i508 = phi i32 [ %i.aho, %bb.uu ], [ %i.ahy, %bb.uv ]
  %i.ahz = icmp eq i32 %.0.i.i.i.i508, 1
  br i1 %i.ahz, label %bb.uw, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit509, !prof !90

bb.uw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i507
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahk) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit509

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit509: ; preds = %bb.uq, %bb.us, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i507, %bb.uw
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26
  br label %bb.ux

bb.ux:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit382, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit509
  ret void

bb.uy:                                            ; preds = %bb.up
  %i.aia = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %97) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper17EndElementHandlerEPvPKc(ptr noundef %0, ptr noundef %1) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::shared_ptr.23", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.301", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::shared_ptr.23", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !19
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.53)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #26
  br label %bb.cd

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  call void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.23") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = load ptr, ptr %2, align 8, !tbaa !82     ; 5 uses
  %.not39 = icmp eq ptr %i.h, null
  br i1 %.not39, label %.noexc.i, label %bb.i

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 38, ptr %i.a, align 8, !tbaa !69
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %3, align 8, !tbaa !29
  %i.k = load i64, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.j, ptr noundef nonnull align 1 dereferenceable(38) @.str.54, i64 38, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.m, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable141 unwind label %bb.h

.unreachable141:                                  ; preds = %.noexc
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.h:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.i
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.h
  %i.r = load i64, ptr %i.i, align 8, !tbaa !19
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.o, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.cc

bb.i:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 3 uses
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !29
  %bcmp.i.i = call i32 @bcmp(ptr %i.z, ptr nonnull %1, i64 %i.v)
  %.not142 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not142, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.55, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %1, i64 noundef %i.ac)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.56, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !13, !alias.scope !322
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !16, !alias.scope !322
  store i8 0, ptr %i.af, align 8, !tbaa !19, !alias.scope !322
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %13 = load ptr, ptr %12, align 8, !tbaa !323, !noalias !322 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %13, null
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !322 ; 2 uses
  %14 = icmp ugt ptr %13, %i.ai
  %.08.i.i.i = select i1 %14, ptr %13, ptr %i.ai  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !325, !noalias !322 ; 2 uses
  %i.al = ptrtoint ptr %.08.i.i.i to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ak, i64 noundef %i.an)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !29, !alias.scope !322 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %.body, label %.body.sink.split

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.l
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable unwind label %bb.r

.unreachable:                                     ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  unreachable

bb.o:                                             ; preds = %.invoke, %bb.bu, %bb.v, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.p:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.af
  br i1 %i.ay, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.r, %bb.m
  %.sink = phi ptr [ %i.aq, %bb.m ], [ %i.ax, %bb.r ]
  %.pn41.ph = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.aw, %bb.r ]
  %i.az = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ba) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.r, %bb.m
  %.pn41 = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.aw, %bb.r ], [ %.pn41.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.q
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %.body ], [ %i.av, %bb.q ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %bb.s ], [ %i.au, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.cc

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138: ; preds = %bb.j, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(80) %i.h)
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138
  br i1 %i.be, label %.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(80) %i.bf)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v
  br i1 %i.bj, label %.invoke, label %bb.x

.invoke:                                          ; preds = %bb.w, %bb.u
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.bu unwind label %bb.o

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.bk = load ptr, ptr %2, align 8, !tbaa !82, !noalias !326 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = call ptr @__dynamic_cast(ptr nonnull %i.bk, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 0) #26, !noalias !326 ; 4 uses
  %.not.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.bm, ptr %6, align 8, !tbaa !329, !alias.scope !326
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !85, !noalias !326 ; 3 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !85, !alias.scope !326
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !326
  %.not.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !326
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !3, !noalias !326
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i: ; preds = %bb.y, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !326
  br label %bb.ac

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split: ; preds = %bb.aa
  %i.bu = atomicrmw volatile add ptr %i.bq, i32 1 acq_rel, align 4, !noalias !326 ; 0 uses
  %.pr.pre = load ptr, ptr %6, align 8, !tbaa !329 ; 2 uses
  %i.bv = icmp eq ptr %.pr.pre, null
  br i1 %i.bv, label %bb.ac, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.57, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75: ; preds = %bb.ad
  %i.by = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %1, i64 noundef %i.by)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.58, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.cb, ptr %8, align 8, !tbaa !13, !alias.scope !338
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !16, !alias.scope !338
  store i8 0, ptr %i.cb, align 8, !tbaa !19, !alias.scope !338
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !323, !noalias !338 ; 3 uses
  %.not.i.not.i.i82 = icmp eq ptr %16, null
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !338 ; 2 uses
  %17 = icmp ugt ptr %16, %i.ce
  %.08.i.i.i83 = select i1 %17, ptr %16, ptr %i.ce ; 2 uses
  %.not5.i.i84 = icmp eq ptr %.08.i.i.i83, null
  %.not.i.i85 = select i1 %.not.i.not.i.i82, i1 true, i1 %.not5.i.i84
  br i1 %.not.i.i85, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !325, !noalias !338 ; 2 uses
  %i.ch = ptrtoint ptr %.08.i.i.i83 to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.cg, i64 noundef %i.cj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91 unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %8, align 8, !tbaa !29, !alias.scope !338 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cb
  br i1 %i.cn, label %.body89, label %.body89.sink.split

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91 unwind label %bb.af

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91: ; preds = %bb.ag, %bb.ae
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.unreachable139 unwind label %bb.aj

.unreachable139:                                  ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91
  unreachable

bb.ah:                                            ; preds = %bb.ac
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75, %bb.ad
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit91
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cb
  br i1 %i.ct, label %.body89, label %.body89.sink.split

.body89.sink.split:                               ; preds = %bb.aj, %bb.af
  %.sink173 = phi ptr [ %i.cm, %bb.af ], [ %i.cs, %bb.aj ]
  %.pn45.ph = phi { ptr, i32 } [ %i.cl, %bb.af ], [ %i.cr, %bb.aj ]
  %i.cu = load i64, ptr %i.cb, align 8, !tbaa !19
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.sink173, i64 noundef %i.cv) #28
  br label %.body89

.body89:                                          ; preds = %.body89.sink.split, %bb.aj, %bb.af
  %.pn45 = phi { ptr, i32 } [ %i.cl, %bb.af ], [ %i.cr, %bb.aj ], [ %.pn45.ph, %.body89.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ak

bb.ak:                                            ; preds = %.body89, %bb.ai
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %.body89 ], [ %i.cq, %bb.ai ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.pn45.pn.pn = phi { ptr, i32 } [ %.pn45.pn, %bb.ak ], [ %i.cp, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bt

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread: ; preds = %bb.z, %bb.ab, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  %i.cw = phi ptr [ %.pr.pre, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split ], [ %i.bm, %bb.ab ], [ %i.bm, %bb.z ]
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.am unwind label %bb.aw

bb.am:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.23") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.an unwind label %bb.ax

bb.an:                                            ; preds = %bb.am
  %i.cx = load ptr, ptr %9, align 8, !tbaa !82    ; 3 uses
  %.not144 = icmp eq ptr %i.cx, null
  br i1 %.not144, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(80) %i.cx)
          to label %bb.ap unwind label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.db, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.dd = load ptr, ptr %9, align 8, !tbaa !82
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !234
  %.not145 = icmp eq ptr %i.dd, %i.de
  br i1 %.not145, label %bb.be, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %bb.as unwind label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.55, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %bb.as
  %i.dh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull %1, i64 noundef %i.dh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.a unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.dk, ptr %11, align 8, !tbaa !13, !alias.scope !345
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !16, !alias.scope !345
  store i8 0, ptr %i.dk, align 8, !tbaa !19, !alias.scope !345
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %19 = load ptr, ptr %18, align 8, !tbaa !323, !noalias !345 ; 3 uses
  %.not.i.not.i.i109 = icmp eq ptr %19, null
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !345 ; 2 uses
  %20 = icmp ugt ptr %19, %i.dn
  %.08.i.i.i110 = select i1 %20, ptr %19, ptr %i.dn ; 2 uses
  %.not5.i.i111 = icmp eq ptr %.08.i.i.i110, null
  %.not.i.i112 = select i1 %.not.i.not.i.i109, i1 true, i1 %.not5.i.i111
  br i1 %.not.i.i112, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !325, !noalias !345 ; 2 uses
  %i.dq = ptrtoint ptr %.08.i.i.i110 to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.dp, i64 noundef %i.ds)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118 unwind label %bb.au ; 0 uses

bb.au:                                            ; preds = %bb.av, %bb.at
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %11, align 8, !tbaa !29, !alias.scope !345 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.dk
  br i1 %i.dw, label %.body116, label %.body116.sink.split

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.dx)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118 unwind label %bb.au

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118: ; preds = %bb.av, %bb.at
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.unreachable140 unwind label %bb.bb

.unreachable140:                                  ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118
  unreachable

bb.aw:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ax:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ay:                                            ; preds = %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.az:                                            ; preds = %bb.ar
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %bb.as
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit118
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dk
  br i1 %i.ef, label %.body116, label %.body116.sink.split

.body116.sink.split:                              ; preds = %bb.bb, %bb.au
  %.sink176 = phi ptr [ %i.dv, %bb.au ], [ %i.ee, %bb.bb ]
  %.pn49.ph = phi { ptr, i32 } [ %i.du, %bb.au ], [ %i.ed, %bb.bb ]
  %i.eg = load i64, ptr %i.dk, align 8, !tbaa !19
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %.sink176, i64 noundef %i.eh) #28
  br label %.body116

.body116:                                         ; preds = %.body116.sink.split, %bb.bb, %bb.au
  %.pn49 = phi { ptr, i32 } [ %i.du, %bb.au ], [ %i.ed, %bb.bb ], [ %.pn49.ph, %.body116.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bc

bb.bc:                                            ; preds = %.body116, %bb.ba
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %.body116 ], [ %i.ec, %bb.ba ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10) #26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.bc ], [ %i.eb, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.br

bb.be:                                            ; preds = %bb.aq
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !85 ; 8 uses
  %.not.i.i128.a = icmp eq ptr %i.ej, null
  br i1 %.not.i.i128.a, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.ek, align 8, !tbaa !86
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 0, ptr %i.eo, align 4, !tbaa !88
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #26, !inline_history !209
  %i.es = load ptr, ptr %i.ej, align 8, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #26, !inline_history !209
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bh:                                            ; preds = %bb.bf
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ew = add nsw i32 %i.en, -1
  store i32 %i.ew, ptr %i.ek, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.ex = atomicrmw volatile add ptr %i.ek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i = phi i32 [ %i.en, %bb.bi ], [ %i.ex, %bb.bj ]
  %i.ey = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ey, label %bb.bk, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.be, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ez = load ptr, ptr %i.bn, align 8, !tbaa !85 ; 8 uses
  %.not.i.i129 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i129, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.fa, align 8, !tbaa !86
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !88
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !11
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #26, !inline_history !346
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #26, !inline_history !346
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bn:                                            ; preds = %bb.bl
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i130 = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i130, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i131

bb.bp:                                            ; preds = %bb.bn
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i131

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i131: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i132 = phi i32 [ %i.fd, %bb.bo ], [ %i.fn, %bb.bp ]
  %i.fo = icmp eq i32 %.0.i.i.i.i132, 1
  br i1 %i.fo, label %bb.bq, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i131
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i131, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bu

bb.br:                                            ; preds = %bb.bd, %bb.ay
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %bb.bd ], [ %i.ea, %bb.ay ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.ax
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn, %bb.br ], [ %i.dz, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.aw, %bb.al
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn, %bb.bs ], [ %i.dy, %bb.aw ], [ %.pn45.pn.pn, %bb.al ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.cc

bb.bu:                                            ; preds = %.invoke, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper20CharacterDataHandlerEPvPKci:bb.a
  %14 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.53)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #26
  br label %bb.dn

bb.e:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %bb.dk, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp sgt i32 %2, -1
  %i.k = icmp ne ptr %1, null
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.g, label %.noexc.i

bb.g:                                             ; preds = %bb.f
  %i.l = load i8, ptr %1, align 1, !tbaa !19      ; 2 uses
  %.not53 = icmp eq i8 %i.l, 0
  br i1 %.not53, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 42, ptr %i.d, align 8, !tbaa !69
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.n, ptr %3, align 8, !tbaa !29
  %i.o = load i64, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.n, ptr noundef nonnull align 1 dereferenceable(42) @.str.60, i64 42, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable unwind label %bb.i

.unreachable:                                     ; preds = %.noexc
  unreachable

bb.h:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.i:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.m
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.i
  %i.v = load i64, ptr %i.m, align 8, !tbaa !19
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.s, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.dn

bb.j:                                             ; preds = %bb.g
  %i.x = icmp eq i32 %2, 1
  %i.y = icmp eq i8 %i.l, 10
  %or.cond278 = and i1 %i.x, %i.y
  br i1 %or.cond278, label %bb.dk, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.23") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %.not216 = icmp eq ptr %i.aa, null
  br i1 %.not216, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ab = call ptr @__dynamic_cast(ptr nonnull %i.aa, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_523XmlReaderDescriptionEltE, i64 0) #26, !noalias !347 ; 4 uses
  %.not.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.not.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread271, label %bb.ac

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.61, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ad = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !69
  %i.af = icmp samesign ugt i32 %2, 15
  br i1 %i.af, label %.noexc.i90, label %._crit_edge.i.i89

.noexc.i90:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc92 unwind label %bb.x   ; 2 uses

.noexc92:                                         ; preds = %.noexc.i90
  store ptr %i.ag, ptr %6, align 8, !tbaa !29
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !69
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !19
  br label %._crit_edge.i.i89

._crit_edge.i.i89:                                ; preds = %.noexc92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = phi ptr [ %i.ag, %.noexc92 ], [ %i.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  %cond277 = icmp eq i32 %2, 1
  br i1 %cond277, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i89
  %i.aj = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !19
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %1, i64 %i.ad, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !69  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !16
  %i.am = load ptr, ptr %6, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ao = load ptr, ptr %6, align 8, !tbaa !29    ; 3 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %5, align 8, !tbaa !11
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %5, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !30
  %i.av = or i32 %i.au, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.as, i32 noundef %i.av)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.aw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #26
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.ao, i64 noundef %i.aw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %bb.q, %bb.r
  %i.ay = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ae
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.ba = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bd, ptr %7, align 8, !tbaa !13, !alias.scope !356
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !16, !alias.scope !356
  store i8 0, ptr %i.bd, align 8, !tbaa !19, !alias.scope !356
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %18 = load ptr, ptr %17, align 8, !tbaa !323, !noalias !356 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %18, null
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !356 ; 2 uses
  %19 = icmp ugt ptr %18, %i.bg
  %.08.i.i.i = select i1 %19, ptr %18, ptr %i.bg  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !325, !noalias !356 ; 2 uses
  %i.bj = ptrtoint ptr %.08.i.i.i to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.bi, i64 noundef %i.bl)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %7, align 8, !tbaa !29, !alias.scope !356 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bd
  br i1 %i.bp, label %.body, label %.body.sink.split

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.t

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.u, %bb.s
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.unreachable213 unwind label %bb.z

.unreachable213:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  unreachable

bb.v:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %.noexc.i90
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.y:                                             ; preds = %bb.r, %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ae
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.y
  %i.bx = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.x
  %.pn55 = phi { ptr, i32 } [ %i.bt, %bb.x ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.bu, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aa

bb.z:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bd
  br i1 %i.cb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.z, %bb.t
  %.sink = phi ptr [ %i.bo, %bb.t ], [ %i.ca, %bb.z ]
  %.pn57.ph = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %i.bz, %bb.z ]
  %i.cc = load i64, ptr %i.bd, align 8, !tbaa !19
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cd) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.z, %bb.t
  %.pn57 = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %i.bz, %bb.z ], [ %.pn57.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.w
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %.body ], [ %i.bs, %bb.w ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.aa ], [ %i.br, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.dm

bb.ac:                                            ; preds = %.thread
  store ptr %i.ab, ptr %8, align 8, !tbaa !250, !alias.scope !347
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !85, !noalias !347 ; 3 uses
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !85, !alias.scope !347
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !347
  %.not.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !3, !noalias !347
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !3, !noalias !347
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread271: ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !347
  br label %bb.ag

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.ad
  %i.cl = atomicrmw volatile add ptr %i.ch, i32 1 acq_rel, align 4, !noalias !347 ; 0 uses
  %.pr210.pre = load ptr, ptr %8, align 8, !tbaa !250 ; 2 uses
  %.not217 = icmp eq ptr %.pr210.pre, null
  br i1 %.not217, label %bb.ag, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread: ; preds = %bb.ac, %bb.ae, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.cm = phi ptr [ %.pr210.pre, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit ], [ %i.ab, %bb.ae ], [ %i.ab, %bb.ac ] ; 2 uses
  %i.cn = zext nneg i32 %2 to i64
  %i.co = getelementptr i8, ptr %0, i64 8
  %.val84 = load i32, ptr %i.co, align 8, !tbaa !80
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(129) %i.cm, ptr noundef nonnull %1, i64 noundef %i.cn, i32 noundef %.val84)
          to label %bb.cx unwind label %bb.af

bb.af:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ag:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread271, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 0, ptr %i.e, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.ct = zext nneg i32 %2 to i64                 ; 6 uses
  store i64 %i.ct, ptr %i.f, align 8, !tbaa !69
  invoke void @_ZN16OpenColorIO_v2_513FindSubStringEPKcmRmS2_(ptr noundef nonnull %1, i64 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.cu = load i64, ptr %i.f, align 8, !tbaa !69
  %.not61 = icmp eq i64 %i.cu, 0
  br i1 %.not61, label %bb.cv, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.cv = load ptr, ptr %4, align 8, !tbaa !82, !noalias !357 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread274, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = call ptr @__dynamic_cast(ptr nonnull %i.cv, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_520CTFReaderMetadataEltE, i64 0) #26, !noalias !357 ; 4 uses
  %.not.not.i110 = icmp eq ptr %i.cx, null
  br i1 %.not.not.i110, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread274, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.cx, ptr %9, align 8, !tbaa !203, !alias.scope !357
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !85, !noalias !357 ; 3 uses
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !85, !alias.scope !357
  %.not.i.i.i.i111 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i111, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !357
  %.not.i.i.i.i.i112 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i112, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !3, !noalias !357
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.db, align 4, !tbaa !3, !noalias !357
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread274: ; preds = %bb.ai, %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !357
  br label %bb.ap

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.al
  %i.df = atomicrmw volatile add ptr %i.db, i32 1 acq_rel, align 4, !noalias !357 ; 0 uses
  %.pr211.pre = load ptr, ptr %9, align 8, !tbaa !203 ; 2 uses
  %.not218 = icmp eq ptr %.pr211.pre, null
  br i1 %.not218, label %bb.ap, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread: ; preds = %bb.ak, %bb.am, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.dg = phi ptr [ %.pr211.pre, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit ], [ %i.cx, %bb.am ], [ %i.cx, %bb.ak ]
  %i.dh = load i64, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh
  %i.dj = load i64, ptr %i.f, align 8, !tbaa !69
  %i.dk = sub i64 %i.dj, %i.dh
  %i.dl = getelementptr i8, ptr %0, i64 8
  %.val83 = load i32, ptr %i.dl, align 8, !tbaa !80
  invoke void @_ZN16OpenColorIO_v2_520CTFReaderMetadataElt10setRawDataEPKcmj(ptr noundef nonnull align 8 dereferenceable(216) %i.dg, ptr noundef nonnull %i.di, i64 noundef %i.dk, i32 noundef %.val83)
          to label %bb.cn unwind label %bb.ao

bb.an:                                            ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ao:                                            ; preds = %bb.ap, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ap:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread274, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.do = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef zeroext i1 %i.dr(ptr noundef nonnull align 8 dereferenceable(80) %i.do)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.ds, label %bb.ar, label %bb.bi

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.as unwind label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.62, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.du, ptr %11, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ct, ptr %i.b, align 8, !tbaa !69
  %i.dv = icmp samesign ugt i32 %2, 15
  br i1 %i.dv, label %.noexc.i117, label %._crit_edge.i.i116

.noexc.i117:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc119 unwind label %bb.bd ; 2 uses

.noexc119:                                        ; preds = %.noexc.i117
  store ptr %i.dw, ptr %11, align 8, !tbaa !29
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !69
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !19
  br label %._crit_edge.i.i116

._crit_edge.i.i116:                               ; preds = %.noexc119, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
  %i.dy = phi ptr [ %i.dw, %.noexc119 ], [ %i.du, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114 ] ; 2 uses
  %cond276 = icmp eq i32 %2, 1
  br i1 %cond276, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i116
  %i.dz = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !19
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr nonnull align 1 %1, i64 %i.ct, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !69  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !16
  %i.ec = load ptr, ptr %11, align 8, !tbaa !29
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i8 0, ptr %i.ed, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ee = load ptr, ptr %11, align 8, !tbaa !29   ; 3 uses
  %.not.i121 = icmp eq ptr %i.ee, null
  br i1 %.not.i121, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ef = load ptr, ptr %10, align 8, !tbaa !11
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr %10, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !30
  %i.el = or i32 %i.ek, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ei, i32 noundef %i.el)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.be

bb.ax:                                            ; preds = %bb.av
  %i.em = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ee) #26
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.ee, i64 noundef %i.em)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.be ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %bb.aw, %bb.ax
  %i.eo = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.du
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.eq = load i64, ptr %i.du, align 8, !tbaa !19
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.et, ptr %12, align 8, !tbaa !13, !alias.scope !366
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.eu, align 8, !tbaa !16, !alias.scope !366
  store i8 0, ptr %i.et, align 8, !tbaa !19, !alias.scope !366
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %21 = load ptr, ptr %20, align 8, !tbaa !323, !noalias !366 ; 3 uses
  %.not.i.not.i.i130 = icmp eq ptr %21, null
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !366 ; 2 uses
  %22 = icmp ugt ptr %21, %i.ew
  %.08.i.i.i131 = select i1 %22, ptr %21, ptr %i.ew ; 2 uses
  %.not5.i.i132 = icmp eq ptr %.08.i.i.i131, null
  %.not.i.i133 = select i1 %.not.i.not.i.i130, i1 true, i1 %.not5.i.i132
  br i1 %.not.i.i133, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !325, !noalias !366 ; 2 uses
  %i.ez = ptrtoint ptr %.08.i.i.i131 to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.ey, i64 noundef %i.fb)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit139 unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %12, align 8, !tbaa !29, !alias.scope !366 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.et
  br i1 %i.ff, label %.body137, label %.body137.sink.split

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit129
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.fg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit139 unwind label %bb.az

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit139: ; preds = %bb.ba, %bb.ay
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.unreachable215 unwind label %bb.bf

.unreachable215:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit139
  unreachable

bb.bb:                                            ; preds = %bb.ar
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.as
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %.noexc.i117
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.be:                                            ; preds = %bb.ax, %bb.aw
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.du
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.be
  %i.fn = load i64, ptr %i.du, align 8, !tbaa !19
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.bd
  %.pn62 = phi { ptr, i32 } [ %i.fj, %bb.bd ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.fk, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bg

bb.bf:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit139
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.et
  br i1 %i.fr, label %.body137, label %.body137.sink.split

.body137.sink.split:                              ; preds = %bb.bf, %bb.az
  %.sink281 = phi ptr [ %i.fe, %bb.az ], [ %i.fq, %bb.bf ]
  %.pn64.ph = phi { ptr, i32 } [ %i.fd, %bb.az ], [ %i.fp, %bb.bf ]
  %i.fs = load i64, ptr %i.et, align 8, !tbaa !19
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %.sink281, i64 noundef %i.ft) #28
  br label %.body137

.body137:                                         ; preds = %.body137.sink.split, %bb.bf, %bb.az
  %.pn64 = phi { ptr, i32 } [ %i.fd, %bb.az ], [ %i.fp, %bb.bf ], [ %.pn64.ph, %.body137.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bg

bb.bg:                                            ; preds = %.body137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.bc
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %.body137 ], [ %i.fi, %bb.bc ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #26
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %bb.bg ], [ %i.fh, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cu

bb.bi:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.fu = load ptr, ptr %4, align 8, !tbaa !82, !noalias !367 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fw = call ptr @__dynamic_cast(ptr nonnull %i.fu, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 0) #26, !noalias !367 ; 4 uses
  %.not.not.i152 = icmp eq ptr %i.fw, null
  br i1 %.not.not.i152, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.fw, ptr %13, align 8, !tbaa !329, !alias.scope !367
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !85, !noalias !367 ; 3 uses
  store ptr %i.fz, ptr %i.fx, align 8, !tbaa !85, !alias.scope !367
  %.not.i.i.i.i153 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i153, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 3 uses
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !367
  %.not.i.i.i.i.i154 = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i.i.i154, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !3, !noalias !367
  %i.gd = add nsw i32 %i.gc, 1
  store i32 %i.gd, ptr %i.ga, align 4, !tbaa !3, !noalias !367
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false), !alias.scope !367
  br label %bb.bn

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split: ; preds = %bb.bl
  %i.ge = atomicrmw volatile add ptr %i.ga, i32 1 acq_rel, align 4, !noalias !367 ; 0 uses
  %.pr212.pre = load ptr, ptr %13, align 8, !tbaa !329 ; 2 uses
  %i.gf = icmp eq ptr %.pr212.pre, null
  br i1 %i.gf, label %bb.bn, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

bb.bn:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.bo unwind label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.62, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156: ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.gh, ptr %15, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !69
  %i.gi = icmp samesign ugt i32 %2, 15
  br i1 %i.gi, label %.noexc.i159, label %._crit_edge.i.i158

.noexc.i159:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156
  %i.gj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc161 unwind label %bb.bz ; 2 uses

.noexc161:                                        ; preds = %.noexc.i159
  store ptr %i.gj, ptr %15, align 8, !tbaa !29
  %i.gk = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.gk, ptr %i.gh, align 8, !tbaa !19
  br label %._crit_edge.i.i158

._crit_edge.i.i158:                               ; preds = %.noexc161, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156
  %i.gl = phi ptr [ %i.gj, %.noexc161 ], [ %i.gh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156 ] ; 2 uses
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %._crit_edge.i.i158
  %i.gm = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.gm, ptr %i.gl, align 1, !tbaa !19
  br label %bb.br

bb.bq:                                            ; preds = %._crit_edge.i.i158
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gl, ptr nonnull align 1 %1, i64 %i.ct, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gn = load i64, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !16
  %i.gp = load ptr, ptr %15, align 8, !tbaa !29
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gn
  store i8 0, ptr %i.gq, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.gr = load ptr, ptr %15, align 8, !tbaa !29   ; 3 uses
  %.not.i163 = icmp eq ptr %i.gr, null
  br i1 %.not.i163, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gs = load ptr, ptr %14, align 8, !tbaa !11
  %i.gt = getelementptr i8, ptr %i.gs, i64 -24
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds i8, ptr %14, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !30
  %i.gy = or i32 %i.gx, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gv, i32 noundef %i.gy)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166 unwind label %bb.ca

bb.bt:                                            ; preds = %bb.br
  %i.gz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gr) #26
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %i.gr, i64 noundef %i.gz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166: ; preds = %bb.bs, %bb.bt
  %i.hb = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gh
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  %i.hd = load i64, ptr %i.gh, align 8, !tbaa !19
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.hg, ptr %16, align 8, !tbaa !13, !alias.scope !376
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.hh, align 8, !tbaa !16, !alias.scope !376
  store i8 0, ptr %i.hg, align 8, !tbaa !19, !alias.scope !376
  %23 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %24 = load ptr, ptr %23, align 8, !tbaa !323, !noalias !376 ; 3 uses
  %.not.i.not.i.i172 = icmp eq ptr %24, null
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !376 ; 2 uses
  %25 = icmp ugt ptr %24, %i.hj
  %.08.i.i.i173 = select i1 %25, ptr %24, ptr %i.hj ; 2 uses
  %.not5.i.i174 = icmp eq ptr %.08.i.i.i173, null
  %.not.i.i175 = select i1 %.not.i.not.i.i172, i1 true, i1 %.not5.i.i174
  br i1 %.not.i.i175, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %i.hk = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !325, !noalias !376 ; 2 uses
  %i.hm = ptrtoint ptr %.08.i.i.i173 to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.hl, i64 noundef %i.ho)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit181 unwind label %bb.bv ; 0 uses

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hr = load ptr, ptr %16, align 8, !tbaa !29, !alias.scope !376 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hg
  br i1 %i.hs, label %.body179, label %.body179.sink.split

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %i.ht = getelementptr inbounds nuw i8, ptr %14, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.ht)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit181 unwind label %bb.bv

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit181: ; preds = %bb.bw, %bb.bu
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.unreachable214 unwind label %bb.cb

.unreachable214:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit181
  unreachable

bb.bx:                                            ; preds = %bb.bn
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %bb.bo
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bz:                                            ; preds = %.noexc.i159
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

bb.ca:                                            ; preds = %bb.bt, %bb.bs
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.gh
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.ca
  %i.ia = load i64, ptr %i.gh, align 8, !tbaa !19
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.bz
  %.pn68 = phi { ptr, i32 } [ %i.hw, %bb.bz ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %i.hx, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.cc

bb.cb:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit181
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %16, align 8, !tbaa !29   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.hg
  br i1 %i.ie, label %.body179, label %.body179.sink.split

.body179.sink.split:                              ; preds = %bb.cb, %bb.bv
  %.sink284 = phi ptr [ %i.hr, %bb.bv ], [ %i.id, %bb.cb ]
  %.pn70.ph = phi { ptr, i32 } [ %i.hq, %bb.bv ], [ %i.ic, %bb.cb ]
  %i.if = load i64, ptr %i.hg, align 8, !tbaa !19
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %.sink284, i64 noundef %i.ig) #28
  br label %.body179

.body179:                                         ; preds = %.body179.sink.split, %bb.cb, %bb.bv
  %.pn70 = phi { ptr, i32 } [ %i.hq, %bb.bv ], [ %i.ic, %bb.cb ], [ %.pn70.ph, %.body179.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.cc

bb.cc:                                            ; preds = %.body179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %bb.by
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %.body179 ], [ %i.hv, %bb.by ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #26
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bx
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %bb.cc ], [ %i.hu, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.cm

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread: ; preds = %bb.bk, %bb.bm, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  %i.ih = phi ptr [ %.pr212.pre, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split ], [ %i.fw, %bb.bm ], [ %i.fw, %bb.bk ] ; 2 uses
  %i.ii = load i64, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %i.ii
  %i.ik = load i64, ptr %i.f, align 8, !tbaa !69
  %i.il = sub i64 %i.ik, %i.ii
  %i.im = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.im, align 8, !tbaa !80
  %i.in = load ptr, ptr %i.ih, align 8, !tbaa !11
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 64
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(96) %i.ih, ptr noundef nonnull %i.ij, i64 noundef %i.il, i32 noundef %.val)
          to label %bb.ce unwind label %bb.cl

bb.ce:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  %i.iq = load ptr, ptr %i.fx, align 8, !tbaa !85 ; 8 uses
  %.not.i.i194.a = icmp eq ptr %i.iq, null
  br i1 %.not.i.i194.a, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.ir, align 8, !tbaa !86
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !88
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !11
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #26, !inline_history !346
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !11
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #26, !inline_history !346
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ch:                                            ; preds = %bb.cf
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i = phi i32 [ %i.iu, %bb.ci ], [ %i.je, %bb.cj ]
  %i.jf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.jf, label %bb.ck, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ce, %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.cn

bb.cl:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cd
  %.pn74 = phi { ptr, i32 } [ %i.jg, %bb.cl ], [ %.pn70.pn.pn, %bb.cd ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.cu

bb.cn:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520CTFReaderMetadataEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !85 ; 8 uses
  %.not.i.i195 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i195, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520CTFReaderMetadataEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 4 uses
  %i.jk = load atomic i64, ptr %i.jj acquire, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 4294967297
  %i.jm = trunc i64 %i.jk to i32                  ; 2 uses
  br i1 %i.jl, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.jj, align 8, !tbaa !86
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !88
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !11
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #26, !inline_history !210
  %i.jr = load ptr, ptr %i.ji, align 8, !tbaa !11
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #26, !inline_history !210
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520CTFReaderMetadataEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cq:                                            ; preds = %bb.co
  %i.ju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i196 = icmp eq i8 %i.ju, 0
  br i1 %.not.i.i.i196, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jv = add nsw i32 %i.jm, -1
  store i32 %i.jv, ptr %i.jj, align 4, !tbaa !3
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_521CTFReaderTransformEltELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !88
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !192
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !192
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt12getTransformEv(ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #11

declare noundef i32 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper16SupportedElementEPKcRSt10shared_ptrINS_16XmlReaderElementEES3_S3_Rb(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !19
  %i.b = icmp ne i8 %i.a, 0
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %2, align 1, !tbaa !19
  %.not17 = icmp eq i8 %i.d, 0
  br i1 %.not17, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %4, align 1, !tbaa !227
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %char0 = load i8, ptr %3, align 1
  %.not19 = icmp eq i8 %char0, 0
  br i1 %.not19, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.i, ptr noundef nonnull %3)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g, %bb.c, %bb.b, %bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper11AddOpReaderENS_14CTFReaderOpElt4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef range(i32 0, 18) %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::shared_ptr.23", align 8 ; 4 uses
  %5 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.23", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::shared_ptr.23", align 8 ; 8 uses
  %9 = alloca %"class.std::shared_ptr.29", align 8 ; 9 uses
  %10 = alloca %"class.std::shared_ptr.50", align 16 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::shared_ptr.23", align 16 ; 4 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !193
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.f = tail call noundef i32 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.46, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !193  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30
  %i.p = or i32 %i.o, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.m, i32 noundef %i.p)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.af

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #26
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.i, i64 noundef %i.q)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %bb.c, %bb.d
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.47, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.t = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.e unwind label %bb.ag

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.23") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.h unwind label %bb.ag

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val28 = load i32, ptr %i.u, align 8, !tbaa !80
  store i32 %.val28, ptr %i.c, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.w, ptr %7, align 8, !tbaa !13, !alias.scope !384
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !16, !alias.scope !384
  store i8 0, ptr %i.w, align 8, !tbaa !19, !alias.scope !384
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !323, !noalias !384 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %16, null
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !noalias !384 ; 2 uses
  %17 = icmp ugt ptr %16, %i.z
  %.08.i.i.i = select i1 %17, ptr %16, ptr %i.z   ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !325, !noalias !384 ; 2 uses
  %i.ac = ptrtoint ptr %.08.i.i.i to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ab, i64 noundef %i.ae)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %7, align 8, !tbaa !29, !alias.scope !384 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.w
  br i1 %i.ai, label %.body, label %.body.sink.split

bb.k:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.ak = load ptr, ptr %7, align 8, !tbaa !29
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !193
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  store ptr null, ptr %5, align 8, !tbaa !220, !alias.scope !385
  %i.al = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc33 unwind label %bb.ah  ; 6 uses

.noexc33:                                         ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 1, ptr %i.am, align 8, !tbaa !86, !noalias !385
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 1, ptr %i.an, align 4, !tbaa !88, !noalias !385
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyEltESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.al, align 8, !tbaa !11, !noalias !385
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN16OpenColorIO_v2_517XmlReaderDummyEltEJRPKcSt10shared_ptrINS0_16XmlReaderElementEEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_EEvPT_DpOT0_(ptr noundef nonnull %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.l unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !385

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyEltESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %.noexc33
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 136) #28, !noalias !385
  br label %.body34

bb.l:                                             ; preds = %.noexc33
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !85
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !85
  store ptr null, ptr %5, align 8, !tbaa !220
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack9push_backESt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %4)
          to label %bb.m unwind label %bb.ai

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 8 uses
  %.not.i.i36.a = icmp eq ptr %i.as, null
  br i1 %.not.i.i36.a, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.at, align 8, !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !88
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #26, !inline_history !209
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #26, !inline_history !209
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.q ], [ %i.bg, %bb.r ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.s, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !85 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bj, align 8, !tbaa !86
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !88
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26, !inline_history !223
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26, !inline_history !223
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i38 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

bb.x:                                             ; preds = %bb.v
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i40 = phi i32 [ %i.bm, %bb.w ], [ %i.bw, %bb.x ]
  %i.bx = icmp eq i32 %.0.i.i.i.i40, 1
  br i1 %i.bx, label %bb.y, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39, %bb.y
  %i.by = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.w
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = load i64, ptr %i.w, align 8, !tbaa !19
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !85 ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ce, align 8, !tbaa !86
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !88
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !209
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !209
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45

bb.ab:                                            ; preds = %bb.z
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i42 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i42, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = add nsw i32 %i.ch, -1
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper11AddOpReaderENS_14CTFReaderOpElt4TypeEPKc:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !390
  %.not.i.i.i.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !3, !noalias !390
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !3, !noalias !390
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.aq:                                            ; preds = %bb.ao
  %i.eg = atomicrmw volatile add ptr %i.ec, i32 1 acq_rel, align 4, !noalias !390 ; 0 uses
  %.pre = load ptr, ptr %9, align 8, !tbaa !214
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_521CTFReaderTransformEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i: ; preds = %bb.am, %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !390
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.an, %bb.ap, %bb.aq, %_ZNSt10shared_ptrIN16OpenColorIO_v2_521CTFReaderTransformEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i
  %i.eh = phi ptr [ %i.dy, %bb.an ], [ %i.dy, %bb.ap ], [ %.pre, %bb.aq ], [ null, %_ZNSt10shared_ptrIN16OpenColorIO_v2_521CTFReaderTransformEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.ei = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt10getVersionEv(ptr noundef nonnull align 8 dereferenceable(97) %i.eh)
          to label %bb.ar unwind label %bb.bb

bb.ar:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.ej = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt5isCLFEv(ptr noundef nonnull align 8 dereferenceable(97) %i.eh)
          to label %bb.as unwind label %bb.bb

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN16OpenColorIO_v2_514CTFReaderOpElt9GetReaderENS0_4TypeERKNS_10CTFVersionEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.50") align 8 %10, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %i.ei, i1 noundef zeroext %i.ej)
          to label %bb.at unwind label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.ek = load ptr, ptr %10, align 16, !tbaa !253 ; 2 uses
  %.not124 = icmp eq ptr %i.ek, null
  br i1 %.not124, label %bb.au, label %bb.bq

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.el = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt5isCLFEv(ptr noundef nonnull align 8 dereferenceable(97) %i.eh)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  br i1 %i.el, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.48, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %bb.ax
  %i.eo = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt13getCLFVersionEv(ptr noundef nonnull align 8 dereferenceable(97) %i.eh)
          to label %bb.ay unwind label %bb.bd     ; 3 uses

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !393
  %i.eq = zext i32 %i.ep to i64
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i64 noundef %i.eq)
          to label %.noexc52.a unwind label %bb.bd ; 0 uses

.noexc52.a:                                       ; preds = %bb.ay
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !395
  %.not.i51 = icmp eq i32 %i.et, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4
  %.not10.i = icmp eq i32 %i.ev, 0
  %or.cond.i = select i1 %.not.i51, i1 %.not10.i, i1 false
  br i1 %or.cond.i, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.az

bb.az:                                            ; preds = %.noexc52.a
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %.noexc53.a unwind label %bb.bd ; 0 uses

.noexc53.a:                                       ; preds = %bb.az
  %i.ex = load i32, ptr %i.es, align 4, !tbaa !395
  %i.ey = zext i32 %i.ex to i64
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i64 noundef %i.ey)
          to label %.noexc54 unwind label %bb.bd  ; 0 uses

.noexc54:                                         ; preds = %.noexc53.a
  %i.fa = load i32, ptr %i.eu, align 4, !tbaa !396
  %.not11.i = icmp eq i32 %i.fa, 0
  br i1 %.not11.i, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.ba

bb.ba:                                            ; preds = %.noexc54
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %.noexc66.invoke unwind label %bb.bd ; 0 uses

bb.bb:                                            ; preds = %bb.as, %bb.ar, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_521CTFReaderTransformEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bc:                                            ; preds = %bb.au
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bd:                                            ; preds = %.noexc66.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %bb.bj, %bb.bi, %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, %bb.bh, %.noexc64.a, %bb.bg, %bb.bf, %bb.be, %bb.ba, %.noexc53.a, %bb.az, %bb.ay, %bb.ax, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50, %bb.av
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.be:                                            ; preds = %bb.aw
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.49, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %bb.be
  %i.fg = invoke noundef nonnull align 4 dereferenceable(12) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt10getVersionEv(ptr noundef nonnull align 8 dereferenceable(97) %i.eh)
          to label %bb.bf unwind label %bb.bd     ; 3 uses

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !393
  %i.fi = zext i32 %i.fh to i64
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i64 noundef %i.fi)
          to label %.noexc63.a unwind label %bb.bd ; 0 uses

.noexc63.a:                                       ; preds = %bb.bf
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !395
  %.not.i59 = icmp eq i32 %i.fl, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %.not10.i60 = icmp eq i32 %i.fn, 0
  %or.cond.i61 = select i1 %.not.i59, i1 %.not10.i60, i1 false
  br i1 %or.cond.i61, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.bg

bb.bg:                                            ; preds = %.noexc63.a
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %.noexc64.a unwind label %bb.bd ; 0 uses

.noexc64.a:                                       ; preds = %bb.bg
  %i.fp = load i32, ptr %i.fk, align 4, !tbaa !395
  %i.fq = zext i32 %i.fp to i64
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i64 noundef %i.fq)
          to label %.noexc65 unwind label %bb.bd  ; 0 uses

.noexc65:                                         ; preds = %.noexc64.a
  %i.fs = load i32, ptr %i.fm, align 4, !tbaa !396
  %.not11.i62 = icmp eq i32 %i.fs, 0
  br i1 %.not11.i62, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.bh

bb.bh:                                            ; preds = %.noexc65
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.51, i64 noundef 1)
          to label %.noexc66.invoke unwind label %bb.bd ; 0 uses

.noexc66.invoke:                                  ; preds = %bb.bh, %bb.ba
  %.sink.in = phi ptr [ %i.eu, %bb.ba ], [ %i.fm, %bb.bh ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !396
  %i.fu = zext i32 %.sink to i64
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i64 noundef %i.fu)
          to label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit unwind label %bb.bd ; 0 uses

_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit: ; preds = %.noexc66.invoke, %.noexc65, %.noexc63.a, %.noexc54, %.noexc52.a
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @.str.50, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !193 ; 3 uses
  %.not.i71 = icmp eq ptr %i.fy, null
  br i1 %.not.i71, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.fz = load ptr, ptr %i.fw, align 8, !tbaa !11
  %i.ga = getelementptr i8, ptr %i.fz, i64 -24
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds i8, ptr %i.fw, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !30
  %i.gf = or i32 %i.ge, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gc, i32 noundef %i.gf)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.bd

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.gg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fy) #26
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull %i.fy, i64 noundef %i.gg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %bb.bi, %bb.bj
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @.str.36, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.gj, ptr %12, align 8, !tbaa !13, !alias.scope !403
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.gk, align 8, !tbaa !16, !alias.scope !403
  store i8 0, ptr %i.gj, align 8, !tbaa !19, !alias.scope !403
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %19 = load ptr, ptr %18, align 8, !tbaa !323, !noalias !403 ; 3 uses
  %.not.i.not.i.i77 = icmp eq ptr %19, null
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !403 ; 2 uses
  %20 = icmp ugt ptr %19, %i.gm
  %.08.i.i.i78 = select i1 %20, ptr %19, ptr %i.gm ; 2 uses
  %.not5.i.i79 = icmp eq ptr %.08.i.i.i78, null
  %.not.i.i80 = select i1 %.not.i.not.i.i77, i1 true, i1 %.not5.i.i79
  br i1 %.not.i.i80, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !325, !noalias !403 ; 2 uses
  %i.gp = ptrtoint ptr %.08.i.i.i78 to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.go, i64 noundef %i.gr)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86 unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %12, align 8, !tbaa !29, !alias.scope !403 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gj
  br i1 %i.gv, label %.body84, label %.body84.sink.split

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.gw)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86 unwind label %bb.bl

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86: ; preds = %bb.bm, %bb.bk
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.unreachable unwind label %bb.bn

.unreachable:                                     ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86
  unreachable

bb.bn:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit86
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.gj
  br i1 %i.gz, label %.body84, label %.body84.sink.split

.body84.sink.split:                               ; preds = %bb.bn, %bb.bl
  %.sink156 = phi ptr [ %i.gu, %bb.bl ], [ %i.gy, %bb.bn ]
  %.pn.ph = phi { ptr, i32 } [ %i.gt, %bb.bl ], [ %i.gx, %bb.bn ]
  %i.ha = load i64, ptr %i.gj, align 8, !tbaa !19
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %.sink156, i64 noundef %i.hb) #28
  br label %.body84

.body84:                                          ; preds = %.body84.sink.split, %bb.bn, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.gt, %bb.bl ], [ %i.gx, %bb.bn ], [ %.pn.ph, %.body84.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bo

bb.bo:                                            ; preds = %.body84, %bb.bd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body84 ], [ %i.fe, %bb.bd ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #26
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bc
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bo ], [ %i.fd, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.dc

bb.bq:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !193 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.hd, ptr %13, align 8, !tbaa !13
  %i.he = icmp eq ptr %i.hc, null
  br i1 %i.he, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #29
          to label %.noexc96 unwind label %bb.cz

.noexc96:                                         ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.hf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hc) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.hf, ptr %i.a, align 8, !tbaa !69
  %i.hg = icmp ugt i64 %i.hf, 15
  br i1 %i.hg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.bs
  %i.hh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc97 unwind label %bb.cz  ; 2 uses

.noexc97:                                         ; preds = %.noexc.i
  store ptr %i.hh, ptr %13, align 8, !tbaa !29
  %i.hi = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.hi, ptr %i.hd, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc97, %bb.bs
  %i.hj = phi ptr [ %i.hh, %.noexc97 ], [ %i.hd, %bb.bs ] ; 2 uses
  switch i64 %i.hf, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %bb.bv
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i
  %i.hk = load i8, ptr %i.hc, align 1, !tbaa !19
  store i8 %i.hk, ptr %i.hj, align 1, !tbaa !19
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hj, ptr nonnull align 1 %i.hc, i64 %i.hf, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i
  %i.hl = load i64, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !16
  %i.hn = load ptr, ptr %13, align 8, !tbaa !29
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hl
  store i8 0, ptr %i.ho, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i32, ptr %i.hq, align 8, !tbaa !80
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN16OpenColorIO_v2_514CTFReaderOpElt10setContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_18CTFReaderTransformEEjS8_(ptr noundef nonnull align 8 dereferenceable(104) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %i.hp, i32 noundef %.val, ptr noundef nonnull align 8 dereferenceable(32) %i.hr)
          to label %bb.bw unwind label %bb.da

bb.bw:                                            ; preds = %bb.bv
  %i.hs = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.hd
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.bw
  %i.hu = load i64, ptr %i.hd, align 8, !tbaa !19
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.hw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !85 ; 2 uses
  %i.hz = load <2 x ptr>, ptr %10, align 16, !tbaa !96
  store <2 x ptr> %i.hz, ptr %14, align 16, !tbaa !96
  %.not.i.i.i101.a = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i101.a, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2INS0_14CTFReaderOpEltEvEERKS_IT_E.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 3 uses
  %i.ib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i102 = icmp eq i8 %i.ib, 0
  br i1 %.not.i.i.i.i102, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ic = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.ia, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2INS0_14CTFReaderOpEltEvEERKS_IT_E.exit

bb.bz:                                            ; preds = %bb.bx
  %i.ie = atomicrmw volatile add ptr %i.ia, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2INS0_14CTFReaderOpEltEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2INS0_14CTFReaderOpEltEvEERKS_IT_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.by, %bb.bz
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack9push_backESt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %14)
          to label %bb.ca unwind label %bb.db

bb.ca:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_516XmlReaderElementEEC2INS0_14CTFReaderOpEltEvEERKS_IT_E.exit
  %i.if = load ptr, ptr %i.hw, align 8, !tbaa !85 ; 8 uses
  %.not.i.i103 = icmp eq ptr %i.if, null
  br i1 %.not.i.i103, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 4 uses
  %i.ih = load atomic i64, ptr %i.ig acquire, align 8 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 4294967297
  %i.ij = trunc i64 %i.ih to i32                  ; 2 uses
  br i1 %i.ii, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.ig, align 8, !tbaa !86
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store i32 0, ptr %i.ik, align 4, !tbaa !88
  %i.il = load ptr, ptr %i.if, align 8, !tbaa !11
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #26, !inline_history !209
  %i.io = load ptr, ptr %i.if, align 8, !tbaa !11
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #26, !inline_history !209
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.cd:                                            ; preds = %bb.cb
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i104 = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i104, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.is = add nsw i32 %i.ij, -1
  store i32 %i.is, ptr %i.ig, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

bb.cf:                                            ; preds = %bb.cd
  %i.it = atomicrmw volatile add ptr %i.ig, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i106 = phi i32 [ %i.ij, %bb.ce ], [ %i.it, %bb.cf ]
end_hunk_3
