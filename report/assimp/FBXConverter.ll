inline.NumInlined: 7594
inline.NumDeleted: 2896
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter13GetUniqueNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #27
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ap) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.sroa.6.0 = extractvalue { ptr, i8 } %i.di, 1
  %i.dt = trunc nuw i8 %.sroa.6.0 to i1
  br i1 %i.dt, label %._crit_edge, label %bb.d, !llvm.loop !91

bb.t:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEC2IRS6_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = load ptr, ptr %3, align 8               ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.d
  br i1 %i.dw, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33: ; preds = %bb.t
  %i.dx = load i64, ptr %i.d, align 8
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #29
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit35

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit35: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.x

.loopexit:                                        ; preds = %bb.d, %bb.g, %.noexc22, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.body:                                            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.w

bb.u:                                             ; preds = %.noexc.i.i26
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38

bb.v:                                             ; preds = %bb.s
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %6, align 8               ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ag
  br i1 %i.ec, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %bb.v
  %i.ed = load i64, ptr %i.ag, align 8
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #29
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36, %bb.u
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.u ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36 ], [ %i.ea, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit38 ], [ %i.cb, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit
  ret void

bb.x:                                             ; preds = %bb.w, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit35
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.du, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit35 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.203) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(529) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.222", align 8   ; 10 uses
  %6 = alloca %"class.std::vector.227", align 8   ; 16 uses
  %7 = alloca %"class.std::vector.227", align 8   ; 17 uses
  %8 = alloca %"class.std::vector.227", align 8   ; 13 uses
  %9 = alloca %class.aiMatrix4x4t, align 4        ; 26 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::vector.222", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !9
  call void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.222") align 8 %5, ptr noundef nonnull align 8 dereferenceable(368) %i.d, i64 noundef %1, ptr noundef nonnull @.str.1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.223) #31
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.not298 = icmp eq ptr %i.f, %i.g
  br i1 %.not298, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.n = shl nuw nsw i64 %i.j, 1
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30
          to label %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_M_allocateEm.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.o, ptr %6, align 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  store ptr %i.q, ptr %i.m, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not191212 = icmp eq ptr %i.g, %i.f
  br i1 %.not191212, label %._crit_edge215.thread, label %.lr.ph214

._crit_edge215.thread:                            ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.ax

.lr.ph214:                                        ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE7reserveEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.e

._crit_edge215:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit
  %.pre229 = load ptr, ptr %6, align 8            ; 4 uses
  %.pre230 = load ptr, ptr %i.al, align 8         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ap = icmp eq ptr %.pre229, %.pre230
  br i1 %i.ap, label %bb.ax, label %bb.ay

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.e:                                             ; preds = %.lr.ph214, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit
  %.sroa.0188.0213 = phi ptr [ %i.g, %.lr.ph214 ], [ %i.mk, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.0188.0213, align 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc95 unwind label %bb.h

.noexc95:                                         ; preds = %bb.f
  br i1 %i.au, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc95
  %i.av = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc96 unwind label %bb.h

.noexc96:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.aw = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc97 unwind label %bb.h

.noexc97:                                         ; preds = %.noexc96
  store ptr %i.aw, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcRA56_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(56) @.str.2)
          to label %.noexc98 unwind label %bb.h

.noexc98:                                         ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit

bb.h:                                             ; preds = %.noexc97, %.noexc96, %bb.g, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.i:                                             ; preds = %bb.e
  %i.ay = invoke noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ar)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ba = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc99 unwind label %bb.m

.noexc99:                                         ; preds = %bb.k
  br i1 %i.ba, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc99
  %i.bb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc100 unwind label %bb.m

.noexc100:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bc = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc101 unwind label %bb.m

.noexc101:                                        ; preds = %.noexc100
  store ptr %i.bc, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(47) @.str.3)
          to label %.noexc102 unwind label %bb.m

.noexc102:                                        ; preds = %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit

bb.m:                                             ; preds = %.noexc101, %.noexc100, %bb.l, %bb.k, %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.n:                                             ; preds = %bb.j
  %i.be = call ptr @__dynamic_cast(ptr nonnull %i.ay, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX5ModelE, i64 0) #27 ; 10 uses
  %.not78 = icmp eq ptr %i.be, null
  br i1 %.not78, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA56_KcEEEvDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %7, align 8               ; 3 uses
  %i.bg = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, %i.bf
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i103

.lr.ph.i.i.i.i103:                                ; preds = %bb.o, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bi, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i ], [ %i.bf, %bb.o ] ; 2 uses
  %i.bh = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i103
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.bh) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 1144) #29
  br label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i103
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.bi, %i.bg
  br i1 %.not.i.i.i.i104, label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i103, !llvm.loop !92

_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i
  store ptr %i.bf, ptr %i.s, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit: ; preds = %bb.o, %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bj = load ptr, ptr %8, align 8               ; 3 uses
  %i.bk = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i.i105, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113, label %.lr.ph.i.i.i.i106

.lr.ph.i.i.i.i106:                                ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110
  %.05.i.i.i.i107 = phi ptr [ %i.bm, %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110 ], [ %i.bj, %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit ] ; 2 uses
  %i.bl = load ptr, ptr %.05.i.i.i.i107, align 8  ; 3 uses
  %.not.i.i.i.i.i.i.i108 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i108, label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i109

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i109: ; preds = %.lr.ph.i.i.i.i106
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.bl) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 1144) #29
  br label %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110

_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110: ; preds = %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i.i.i.i.i109, %.lr.ph.i.i.i.i106
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i107, i64 16 ; 2 uses
  %.not.i.i.i.i111 = icmp eq ptr %i.bm, %i.bk
  br i1 %.not.i.i.i.i111, label %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i112, label %.lr.ph.i.i.i.i106, !llvm.loop !92

_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i112: ; preds = %_ZSt8_DestroyIN6Assimp3FBX12FBXConverter13PotentialNodeEEvPT_.exit.i.i.i.i110
  store ptr %i.bj, ptr %i.t, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113: ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit, %_ZSt8_DestroyIPN6Assimp3FBX12FBXConverter13PotentialNodeES3_EvT_S5_RSaIT0_E.exit.i.i112
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  invoke void @_ZN6Assimp3FBX12FBXConverter11FixNodeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113
  %i.bo = invoke noundef zeroext i1 @_ZN6Assimp3FBX12FBXConverter31GenerateTransformationNodeChainERKNS0_5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS1_13PotentialNodeESaISE_EESH_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %.pre225 = load ptr, ptr %i.s, align 8          ; 5 uses
  br i1 %i.bo, label %bb.r, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.u, align 8
  %.not.i = icmp eq ptr %.pre225, %i.bp
  br i1 %.not.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #30
          to label %.noexc115 unwind label %bb.w  ; 4 uses

.noexc115:                                        ; preds = %bb.s
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.t

bb.t:                                             ; preds = %.noexc115
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 1144) #29
  br label %.body

_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.noexc115
  store ptr %i.bq, ptr %.pre225, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre225, i64 8
  store ptr %i.bq, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.s, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  store ptr %i.bu, ptr %i.s, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit

bb.u:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %.pre225, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %._ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit_crit_edge unwind label %bb.w

._ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit_crit_edge: ; preds = %bb.u
  %.pre = load ptr, ptr %i.s, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit

bb.v:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit113
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.w:                                             ; preds = %bb.u, %bb.s, %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit, %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit: ; preds = %._ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit_crit_edge, %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.q
  %i.bx = phi ptr [ %.pre, %._ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit_crit_edge ], [ %i.bu, %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.pre225, %bb.q ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void @_ZN6Assimp3FBX12FBXConverter17SetupNodeMetadataERKNS0_5ModelER6aiNode(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %i.be, ptr noundef nonnull align 8 dereferenceable(1144) %i.bz)
          to label %bb.x unwind label %bb.w

bb.x:                                             ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit
  %i.ca = load ptr, ptr %7, align 8               ; 2 uses
  %i.cb = load ptr, ptr %i.s, align 8             ; 3 uses
  %.promoted = load float, ptr %9, align 4        ; 2 uses
  %.not192202 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not192202, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %.promoted305 = load float, ptr %i.w, align 4
  %i.cc = load <2 x float>, ptr %i.x, align 4
  %i.cd = load <2 x float>, ptr %i.z, align 4     ; 2 uses
  %12 = load <12 x float>, ptr %i.v, align 4      ; 2 uses
  %13 = shufflevector <12 x float> %12, <12 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %.promoted338 = load float, ptr %i.ah, align 4
  %.promoted341 = load float, ptr %i.ai, align 4
  %.promoted344 = load float, ptr %i.aj, align 4
  %i.ce = insertelement <2 x float> %i.cd, float %.promoted305, i64 0
  %14 = shufflevector <12 x float> %12, <12 x float> poison, <2 x i32> <i32 poison, i32 6>
  %15 = shufflevector <2 x float> %i.cc, <2 x float> %14, <2 x i32> <i32 0, i32 3>
  %16 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cf = insertelement <2 x float> %16, float %.promoted, i64 0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ab
  %17 = extractelement <2 x float> %i.eh, i64 1
  %i.cg = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x float> %i.cg, ptr %i.v, align 4
  %18 = extractelement <2 x float> %i.ed, i64 1
  store float %18, ptr %i.z, align 4
  %i.ch = extractelement <2 x float> %i.ef, i64 1
  store float %i.ch, ptr %i.aa, align 4
  store float %17, ptr %i.ab, align 4
  store <4 x float> %i.el, ptr %i.ac, align 4
  store <4 x float> %i.ep, ptr %i.ag, align 4
  %.pre226 = load ptr, ptr %i.s, align 8
  %19 = extractelement <2 x float> %i.ed, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.x
  %i.ci = phi ptr [ %i.cb, %bb.x ], [ %.pre226, %._crit_edge.loopexit ]
  %.lcssa200 = phi float [ %.promoted, %bb.x ], [ %19, %._crit_edge.loopexit ] ; 2 uses
  %.072.lcssa = phi ptr [ %2, %bb.x ], [ %i.dj, %._crit_edge.loopexit ] ; 4 uses
  store float %.lcssa200, ptr %9, align 4
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void @_ZN6Assimp3FBX12FBXConverter12ConvertModelERKNS0_5ModelEP6aiNodeS6_RK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.be, ptr noundef %i.ck, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %9)
          to label %bb.ac unwind label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %20 = phi float [ %67, %bb.ab ], [ %.promoted344, %.lr.ph.preheader ] ; 2 uses
  %21 = phi float [ %66, %bb.ab ], [ %.promoted341, %.lr.ph.preheader ] ; 2 uses
  %22 = phi float [ %65, %bb.ab ], [ %.promoted338, %.lr.ph.preheader ] ; 2 uses
  %.072204.a = phi ptr [ %i.dj, %bb.ab ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0184.0203 = phi ptr [ %i.eq, %bb.ab ], [ %i.ca, %.lr.ph.preheader ] ; 4 uses
  %i.cl = phi <2 x float> [ %i.eh, %bb.ab ], [ %15, %.lr.ph.preheader ] ; 5 uses
  %i.cm = phi <2 x float> [ %i.ef, %bb.ab ], [ %i.ce, %.lr.ph.preheader ] ; 6 uses
  %23 = phi <8 x float> [ %72, %bb.ab ], [ %13, %.lr.ph.preheader ] ; 18 uses
  %i.cn = phi <2 x float> [ %i.ed, %bb.ab ], [ %i.cf, %.lr.ph.preheader ] ; 5 uses
  %24 = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %.not83 = icmp eq ptr %.072204.a, %2
  br i1 %.not83, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.co = getelementptr inbounds nuw i8, ptr %.072204.a, i64 1104
  store i32 1, ptr %i.co, align 8
  %i.cp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %.072204.a, i64 1112 ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %.sroa.0184.0203, align 8
  store ptr null, ptr %.sroa.0184.0203, align 8
  %i.cs = load ptr, ptr %i.cq, align 8
  store ptr %i.cr, ptr %i.cs, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = extractelement <8 x float> %23, i64 0
  store float %i.cu, ptr %i.v, align 4
  %i.cv = extractelement <2 x float> %i.cm, i64 0
  store float %i.cv, ptr %i.w, align 4
  %i.cw = extractelement <2 x float> %i.cl, i64 0
  store float %i.cw, ptr %i.x, align 4
  %i.cx = extractelement <8 x float> %23, i64 1
  store float %i.cx, ptr %i.y, align 4
  %i.cy = extractelement <2 x float> %i.cn, i64 1
  store float %i.cy, ptr %i.z, align 4
  %i.cz = extractelement <2 x float> %i.cm, i64 1
  store float %i.cz, ptr %i.aa, align 4
  %i.da = extractelement <8 x float> %23, i64 2
  store float %i.da, ptr %i.ab, align 4
  %i.db = extractelement <8 x float> %23, i64 3
  store float %i.db, ptr %i.ac, align 4
  %i.dc = extractelement <8 x float> %23, i64 4
  store float %i.dc, ptr %i.ad, align 4
  %i.dd = extractelement <8 x float> %23, i64 5
  store float %i.dd, ptr %i.ae, align 4
  %i.de = extractelement <8 x float> %23, i64 6
  store float %i.de, ptr %i.af, align 4
  %i.df = extractelement <8 x float> %23, i64 7
  store float %i.df, ptr %i.ag, align 4
  store float %22, ptr %i.ah, align 4
  store float %21, ptr %i.ai, align 4
  store float %20, ptr %i.aj, align 4
  br label %.body

bb.ab:                                            ; preds = %.lr.ph, %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0184.0203, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1096
  store ptr %.072204.a, ptr %i.di, align 8
  %i.dj = load ptr, ptr %i.dg, align 8            ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1028
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 1044
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 1060
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 1076
  %i.do = load <4 x float>, ptr %i.dl, align 4    ; 6 uses
  %25 = load <4 x float>, ptr %i.dk, align 4      ; 6 uses
  %26 = load <4 x float>, ptr %i.dm, align 4      ; 6 uses
  %i.dp = load <4 x float>, ptr %i.dn, align 4    ; 6 uses
  %27 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %28 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %29 = shufflevector <4 x float> %27, <4 x float> %28, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison> ; 2 uses
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %31 = fmul <4 x float> %i.do, %30
  %32 = shufflevector <4 x float> %29, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dr = fmul <2 x float> %32, %i.dq
  %i.ds = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dt = fmul <2 x float> %32, %i.ds
  %33 = shufflevector <2 x float> %i.cn, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <8 x float> %33, <8 x float> %23, <4 x i32> <i32 0, i32 9, i32 poison, i32 poison> ; 2 uses
  %35 = shufflevector <4 x float> %34, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %36 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> %35, <4 x float> %31)
  %37 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %38 = shufflevector <4 x float> %34, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.du = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %38, <2 x float> %i.dr)
  %i.dv = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %38, <2 x float> %i.dt)
  %i.dx = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.dy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %i.dx, <4 x float> %36)
  %i.dz = shufflevector <4 x float> %26, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.cm, <2 x float> %i.du)
  %i.eb = shufflevector <4 x float> %26, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.cm, <2 x float> %i.dw)
  %39 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %24, <4 x float> %i.dy) ; 2 uses
  %40 = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %41 = shufflevector <8 x float> %23, <8 x float> poison, <2 x i32> <i32 0, i32 poison>
  %42 = shufflevector <2 x float> %41, <2 x float> %i.cn, <2 x i32> <i32 0, i32 3>
  %43 = fmul <2 x float> %40, %42
  %44 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %45 = shufflevector <2 x float> %i.cn, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %46 = shufflevector <8 x float> %23, <8 x float> %45, <2 x i32> <i32 8, i32 1>
  %47 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %46, <2 x float> %43)
  %48 = shufflevector <4 x float> %26, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %i.cm, <2 x float> %47)
  %50 = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %51 = shufflevector <2 x float> %i.cl, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %52 = shufflevector <8 x float> %51, <8 x float> %23, <2 x i32> <i32 0, i32 10>
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %52, <2 x float> %49) ; 3 uses
  %i.ee = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ef = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.cl, <2 x float> %i.ea) ; 2 uses
  %i.eg = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.cl, <2 x float> %i.ec) ; 3 uses
  %53 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ei = fmul <4 x float> %i.do, %53
  %54 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> %54, <4 x float> %i.ei)
  %55 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ek = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %55, <4 x float> %i.ej)
  %56 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %56, <4 x float> %i.ek) ; 3 uses
  %57 = shufflevector <4 x float> %i.el, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %58 = insertelement <4 x float> poison, float %22, i64 0
  %59 = shufflevector <4 x float> %58, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = fmul <4 x float> %i.do, %59
  %60 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.en = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> %60, <4 x float> %i.em)
  %61 = insertelement <4 x float> poison, float %21, i64 0
  %62 = shufflevector <4 x float> %61, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %62, <4 x float> %i.en)
  %63 = insertelement <4 x float> poison, float %20, i64 0
  %64 = shufflevector <4 x float> %63, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %64, <4 x float> %i.eo) ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0184.0203, i64 16 ; 2 uses
  %.not192 = icmp eq ptr %i.eq, %i.cb
  %65 = extractelement <4 x float> %i.ep, i64 1
  %66 = extractelement <4 x float> %i.ep, i64 2
  %67 = extractelement <4 x float> %i.ep, i64 3
  %68 = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %69 = shufflevector <4 x float> %39, <4 x float> %68, <4 x i32> <i32 1, i32 0, i32 5, i32 poison>
  %70 = shufflevector <4 x float> %i.el, <4 x float> %i.ep, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %71 = shufflevector <4 x float> %69, <4 x float> %70, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %72 = shufflevector <8 x float> %71, <8 x float> %57, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 7>
  br i1 %.not192, label %._crit_edge.loopexit, label %.lr.ph

bb.ac:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.er = load ptr, ptr %i.c, align 8, !nonnull !3, !align !9
  %i.es = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8
  invoke void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.222") align 8 %11, ptr noundef nonnull align 8 dereferenceable(368) %i.er, i64 noundef %i.et, ptr noundef nonnull @.str.1)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.eu = load ptr, ptr %i.ak, align 8
  %i.ev = load ptr, ptr %11, align 8
  %.not79 = icmp eq ptr %i.eu, %i.ev
  %i.ew = load ptr, ptr %8, align 8               ; 4 uses
  %i.ex = load ptr, ptr %i.t, align 8             ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.ex, %i.ew         ; 2 uses
  br i1 %.not79, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not.i.i117, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit125, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %bb.ae
  %i.ey = load <2 x float>, ptr %i.v, align 4     ; 2 uses
  %i.ez = load <2 x float>, ptr %i.x, align 4     ; 2 uses
  %i.fa = load <2 x float>, ptr %i.z, align 4     ; 2 uses
  %.promoted357 = load float, ptr %i.ab, align 4
  %i.fb = load <8 x float>, ptr %i.ac, align 4
  %i.fc = shufflevector <2 x float> %i.ey, <2 x float> %i.fa, <2 x i32> <i32 1, i32 3>
  %i.fd = shufflevector <2 x float> %i.ey, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.fe = insertelement <2 x float> %i.ez, float %.lcssa200, i64 0
  %i.ff = insertelement <2 x float> %i.ez, float %.promoted357, i64 1
  %.promoted474 = load float, ptr %9, align 1
  %.promoted477 = load <4 x float>, ptr %i.x, align 1
  %.promoted480 = load float, ptr %i.ab, align 1
  %.promoted483 = load <4 x float>, ptr %i.ac, align 1
  %.promoted486 = load <4 x float>, ptr %i.ag, align 1
  br label %.lr.ph210

bb.af:                                            ; preds = %._crit_edge
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.ac
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %bb.ak
  %i.fi = phi <4 x float> [ %i.jv, %bb.ak ], [ %.promoted486, %.lr.ph210.preheader ]
  %i.fj = phi <4 x float> [ %i.jn, %bb.ak ], [ %.promoted483, %.lr.ph210.preheader ]
  %i.fk = phi float [ %i.iw, %bb.ak ], [ %.promoted480, %.lr.ph210.preheader ]
  %i.fl = phi <4 x float> [ %i.is, %bb.ak ], [ %.promoted477, %.lr.ph210.preheader ]
  %i.fm = phi float [ %i.iv, %bb.ak ], [ %.promoted474, %.lr.ph210.preheader ]
  %.173208 = phi ptr [ %i.ge, %bb.ak ], [ %.072.lcssa, %.lr.ph210.preheader ] ; 4 uses
  %.sroa.0180.0207 = phi ptr [ %i.jw, %bb.ak ], [ %i.ew, %.lr.ph210.preheader ] ; 4 uses
  %i.fn = phi <2 x float> [ %i.iu, %bb.ak ], [ %i.ff, %.lr.ph210.preheader ] ; 4 uses
  %i.fo = phi <2 x float> [ %i.jz, %bb.ak ], [ %i.fc, %.lr.ph210.preheader ] ; 5 uses
  %i.fp = phi <2 x float> [ %i.im, %bb.ak ], [ %i.fe, %.lr.ph210.preheader ] ; 4 uses
  %i.fq = phi <2 x float> [ %i.kb, %bb.ak ], [ %i.fd, %.lr.ph210.preheader ] ; 6 uses
  %i.fr = phi <8 x float> [ %i.kc, %bb.ak ], [ %i.fb, %.lr.ph210.preheader ] ; 8 uses
  %i.fs = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %.not80 = icmp eq ptr %.173208, %2
  br i1 %.not80, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph210
  %i.ft = getelementptr inbounds nuw i8, ptr %.173208, i64 1104
  store i32 1, ptr %i.ft, align 8
  %i.fu = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fv = getelementptr inbounds nuw i8, ptr %.173208, i64 1112 ; 2 uses
  store ptr %i.fu, ptr %i.fv, align 8
  %i.fw = load ptr, ptr %.sroa.0180.0207, align 8
  store ptr null, ptr %.sroa.0180.0207, align 8
  %i.fx = load ptr, ptr %i.fv, align 8
  store ptr %i.fw, ptr %i.fx, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fy = landingpad { ptr, i32 }
          cleanup
  store float %i.fm, ptr %9, align 1
  store <4 x float> %i.fl, ptr %i.x, align 1
  store float %i.fk, ptr %i.ab, align 1
  store <4 x float> %i.fj, ptr %i.ac, align 1
  store <4 x float> %i.fi, ptr %i.ag, align 1
  %i.fz = extractelement <2 x float> %i.fq, i64 0
  store float %i.fz, ptr %i.v, align 4
  %i.ga = extractelement <2 x float> %i.fo, i64 0
  store float %i.ga, ptr %i.w, align 4
  br label %.loopexit.split-lp

bb.ak:                                            ; preds = %.lr.ph210, %bb.ai
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0180.0207, i64 8 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1096
  store ptr %.173208, ptr %i.gd, align 8
  %i.ge = load ptr, ptr %i.gb, align 8            ; 14 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1028
  %i.gg = load float, ptr %i.gf, align 4          ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1044
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 1060
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 1076
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 1032
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 1048
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 1064
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 1080
  %i.go = load <2 x float>, ptr %i.gk, align 4    ; 3 uses
  %i.gp = load <2 x float>, ptr %i.gl, align 4    ; 3 uses
  %i.gq = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.gq, %i.gp
  %i.gs = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gs, <2 x float> %i.gr)
  %i.gu = load <2 x float>, ptr %i.gm, align 4    ; 3 uses
  %i.gv = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.gv, <2 x float> %i.gt)
  %i.gx = load <2 x float>, ptr %i.gn, align 4    ; 3 uses
  %i.gy = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gy, <2 x float> %i.gw) ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ge, i64 1040
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ge, i64 1056
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ge, i64 1072
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ge, i64 1088
  %i.he = load float, ptr %i.hd, align 4          ; 2 uses
  %i.hf = load <2 x float>, ptr %i.ha, align 4    ; 5 uses
  %i.hg = load float, ptr %i.gh, align 4
  %i.hh = load <2 x float>, ptr %i.hb, align 4    ; 5 uses
  %i.hi = load float, ptr %i.gi, align 4
  %i.hj = load <2 x float>, ptr %i.hc, align 4    ; 5 uses
  %i.hk = load float, ptr %i.gj, align 4
  %i.hl = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hm = fmul <2 x float> %i.hl, %i.fq
  %i.hn = shufflevector <2 x float> %i.gp, <2 x float> %i.fq, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ho = shufflevector <2 x float> %i.hh, <2 x float> %i.hf, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.hp = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hq = shufflevector <4 x float> %i.ho, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.hr = fmul <4 x float> %i.hn, %i.hq
  %i.hs = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.fp, <2 x float> %i.hm)
  %i.hv = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.fq, %i.hv
  %i.hx = shufflevector <2 x float> %i.hf, <2 x float> %i.go, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.hy = insertelement <4 x float> %i.hx, float %i.gg, i64 1
  %i.hz = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ia = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hy, <4 x float> %i.hz, <4 x float> %i.hr)
  %i.ib = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.fo, <2 x float> %i.hu)
  %i.id = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.fp, <2 x float> %i.hw)
  %i.if = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ig = shufflevector <2 x float> %i.hj, <2 x float> %i.gu, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.ih = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ii = shufflevector <4 x float> %i.ig, <4 x float> %i.ih, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ij = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> %i.ij, <4 x float> %i.ia)
  %i.il = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.fn, <2 x float> %i.ic) ; 2 uses
  %i.in = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.fo, <2 x float> %i.ie)
  %i.ip = shufflevector <2 x float> %i.gx, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.iq = insertelement <4 x float> %i.ip, float %i.he, i64 0 ; 2 uses
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> %i.if, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.is = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> %i.fs, <4 x float> %i.ik) ; 4 uses
  %i.it = shufflevector <4 x float> %i.iq, <4 x float> poison, <2 x i32> zeroinitializer
  %i.iu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.fn, <2 x float> %i.io) ; 2 uses
  %i.iv = extractelement <2 x float> %i.im, i64 0 ; 2 uses
  %i.iw = extractelement <2 x float> %i.iu, i64 1 ; 2 uses
  %i.ix = shufflevector <2 x float> %i.gp, <2 x float> %i.hh, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.iy = insertelement <4 x float> %i.ix, float %i.hg, i64 0 ; 2 uses
  %i.iz = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ja = fmul <4 x float> %i.iy, %i.iz
  %i.jb = shufflevector <2 x float> %i.go, <2 x float> %i.hf, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.jc = insertelement <4 x float> %i.jb, float %i.gg, i64 0 ; 2 uses
  %i.jd = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> zeroinitializer
  %i.je = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jc, <4 x float> %i.jd, <4 x float> %i.ja)
  %i.jf = shufflevector <2 x float> %i.gu, <2 x float> %i.hj, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.jg = insertelement <4 x float> %i.jf, float %i.hi, i64 0 ; 2 uses
  %i.jh = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ji = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> %i.jh, <4 x float> %i.je)
  %i.jj = shufflevector <2 x float> %i.gx, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.jk = insertelement <4 x float> %i.jj, float %i.hk, i64 0
  %i.jl = insertelement <4 x float> %i.jk, float %i.he, i64 3 ; 2 uses
  %i.jm = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.jn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jl, <4 x float> %i.jm, <4 x float> %i.ji) ; 3 uses
  %i.jo = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.jp = fmul <4 x float> %i.iy, %i.jo
  %i.jq = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.jr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jc, <4 x float> %i.jq, <4 x float> %i.jp)
  %i.js = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.jt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> %i.js, <4 x float> %i.jr)
  %i.ju = shufflevector <8 x float> %i.fr, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.jv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jl, <4 x float> %i.ju, <4 x float> %i.jt) ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0180.0207, i64 16 ; 2 uses
  %.not193 = icmp eq ptr %i.jw, %i.ex
  %i.jx = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jy = shufflevector <4 x float> %i.is, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
end_hunk_0
