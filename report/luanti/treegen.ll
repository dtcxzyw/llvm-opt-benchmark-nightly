Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/treegen?download=true
inline.NumInlined: 1239
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7treegen11spawn_ltreeEP9ServerMapN4core8vector3dIsEERKNS_7TreeDefE:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ac, align 8, !tbaa !100
  invoke void @_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 0, ptr %i.ad, align 4, !tbaa !149
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 0, ptr %i.ae, align 2, !tbaa !150
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 0, ptr %i.af, align 8, !tbaa !151
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 126, ptr %i.ag, align 4, !tbaa !93
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.ah, i8 0, i64 28, i1 false)
  store i32 4, ptr %5, align 8, !tbaa !157
  invoke void @_ZN12MapEditEvent17setModifiedBlocksERKSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS3_ESaISt4pairIKS3_S5_EEE(ptr noundef nonnull align 8 dereferenceable(42) %5, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3Map13dispatchEventERK12MapEditEvent(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(42) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZN12MapEditEventD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !104
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #23
  br label %_ZN12MapEditEventD2Ev.exit

_ZN12MapEditEventD2Ev.exit:                       ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !98
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ap)
          to label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN12MapEditEventD2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit: ; preds = %_ZN12MapEditEventD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i38, label %_ZN12MapEditEventD2Ev.exit39, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !104
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #23
  br label %_ZN12MapEditEventD2Ev.exit39

_ZN12MapEditEventD2Ev.exit39:                     ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.n

bb.n:                                             ; preds = %_ZN12MapEditEventD2Ev.exit39, %bb.k
  %.pn26.pn = phi { ptr, i32 } [ %i.at, %_ZN12MapEditEventD2Ev.exit39 ], [ %i.as, %bb.k ]
  call void @_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.p

bb.o:                                             ; preds = %bb.c, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit
  %.0 = phi i32 [ 0, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev.exit ], [ 1, %bb.c ]
  call void @_ZN8MMVManipD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %.0

bb.p:                                             ; preds = %bb.d, %bb.n
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.d ], [ %.pn26.pn, %bb.n ]
  call void @_ZN8MMVManipD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn26.pn.pn.pn
}

declare void @_ZN8MMVManipC1EP3Map(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) unnamed_addr #1

declare void @_ZN8MMVManip13initialEmergeEN4core8vector3dIsEES2_b(ptr noundef nonnull align 8 dereferenceable(88), i48, i48, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN7treegen10make_ltreeER8MMVManipN4core8vector3dIsEERKNS_7TreeDefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i48 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(321) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.PseudoRandom, align 4        ; 25 uses
  %4 = alloca %"class.core::CMatrix4", align 16   ; 34 uses
  %5 = alloca %"class.core::vector3d.52", align 8 ; 49 uses
  %6 = alloca %"class.std::stack", align 8        ; 21 uses
  %7 = alloca %"class.std::stack.139", align 8    ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %.sroa.5264.0.extract.shift = lshr i48 %1, 32
  %.sroa.5264.0.extract.trunc = trunc nuw i48 %.sroa.5264.0.extract.shift to i16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.c = load i8, ptr %i.b, align 8, !tbaa !168, !range !169, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 316
  %i.f = load i32, ptr %i.e, align 4, !tbaa !170
  %i.g = add nsw i32 %i.f, 14002
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift = lshr i48 %1, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16
  %.sroa.0261.0.extract.trunc = trunc i48 %1 to i16
  %i.h = sext i16 %.sroa.0261.0.extract.trunc to i32
  %i.i = shl nsw i32 %i.h, 1
  %i.j = sext i16 %.sroa.3.0.extract.trunc to i32
  %i.k = shl nsw i32 %i.j, 2
  %i.l = sext i16 %.sroa.5264.0.extract.trunc to i32
  %i.m = add nsw i32 %i.i, %i.l
  %i.n = add nsw i32 %i.m, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0267 = phi i32 [ %i.g, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 %.0267, ptr %3, align 4, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.p = load i32, ptr %i.o, align 4, !tbaa !171  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.r = load i32, ptr %i.q, align 8, !tbaa !172  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0, i32 noundef %i.r)
  %i.u = sub i32 %i.p, %i.t
  %.pre = load i32, ptr %3, align 4, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi i32 [ %.pre, %bb.e ], [ %.0267, %bb.d ]
  %.0268.in = phi i32 [ %i.u, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.w = trunc i32 %.0268.in to i16
  %i.x = icmp slt i16 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.z = load i32, ptr %i.y, align 8, !tbaa !173
  %i.aa = mul i32 %i.v, 1103515245
  %i.ab = add i32 %i.aa, 12345                    ; 2 uses
  store i32 %i.ab, ptr %3, align 4, !tbaa !79
  %i.ac = sdiv i32 %i.ab, 65536
  %.zext.i = and i32 %i.ac, 1
  %i.ad = sitofp nsz i32 %i.z to double
  %i.ae = uitofp nneg i32 %.zext.i to double
  %i.af = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = fmul nnan nsz <2 x double> %i.ag, splat (double f0x400921FB54442D18)
  %i.ai = fdiv nsz <2 x double> %i.ah, splat (double 1.800000e+02) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = fptrunc nsz double %i.aj to float       ; 2 uses
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = fptrunc nsz double %i.al to float
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.an, i8 0, i64 48, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 60
  store float 1.000000e+00, ptr %i.ao, align 4, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  store <2 x float> <float f0xB33BBD2E, float 1.000000e+00>, ptr %4, align 16, !tbaa !106
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store float 0.000000e+00, ptr %i.aq, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 18 uses
  store <2 x float> <float -1.000000e+00, float f0xB33BBD2E>, ptr %i.ar, align 16, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 18 uses
  store float 0.000000e+00, ptr %i.at, align 16, !tbaa !106
  store float f0x3F7FFFFF, ptr %i.ap, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 37 uses
  %i.aw = bitcast i48 %1 to <3 x i16>
  %i.ax = shufflevector <3 x i16> %i.aw, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.ay = sitofp nsz <2 x i16> %i.ax to <2 x float>
  store <2 x float> %i.ay, ptr %5, align 8, !tbaa !106
  %i.az = sitofp nsz i16 %.sroa.5264.0.extract.trunc to float
  store float %i.az, ptr %i.av, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef 0)
          to label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEEC2IS5_vEEv.exit unwind label %bb.i

_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEEC2IS5_vEEv.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !16
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.be, ptr %i.a, align 8, !tbaa !39
  %i.bf = icmp ugt i64 %i.be, 15
  br i1 %i.bf, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEEC2IS5_vEEv.exit
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bg, ptr %8, align 8, !tbaa !21
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEEC2IS5_vEEv.exit
  %i.bi = phi ptr [ %i.bg, %.noexc ], [ %i.bb, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEEC2IS5_vEEv.exit ] ; 2 uses
  switch i64 %i.be, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bj = load i8, ptr %i.bc, align 1, !tbaa !20
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !19
  %i.bm = load ptr, ptr %8, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bo = shl i32 %.0268.in, 16
  %i.bp = ashr exact i32 %i.bo, 16
  %i.bq = select i1 %i.x, i32 2, i32 %i.bp        ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph1561, label %._crit_edge1562

.lr.ph1561:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 11 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  br label %bb.k

._crit_edge1562:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !19
  switch i64 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348
  ]

bb.i:                                             ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562

bb.j:                                             ; preds = %.noexc.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555

bb.k:                                             ; preds = %.lr.ph1561, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv1605 = phi i32 [ 0, %.lr.ph1561 ], [ %indvars.iv.next1606, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.bs, ptr %9, align 8, !tbaa !16
  store i64 0, ptr %i.bt, align 8, !tbaa !19
  store i8 0, ptr %i.bs, align 8, !tbaa !20
  %i.ch = load i64, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.ci = trunc i64 %i.ch to i16
  %i.cj = icmp sgt i16 %i.ci, 0
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ 0, %bb.k ] ; 4 uses
  %i.ck = phi i64 [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ %i.ch, %bb.k ] ; 2 uses
  %.not.i = icmp ugt i64 %i.ck, %indvars.iv
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, i64 noundef %indvars.iv, i64 noundef %i.ck) #24
          to label %.noexc304 unwind label %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc304:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %8, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.cn, label %bb.z [
    i8 65, label %bb.n
    i8 66, label %bb.o
    i8 67, label %bb.p
    i8 68, label %bb.q
    i8 97, label %bb.r
    i8 98, label %bb.t
    i8 99, label %bb.v
    i8 100, label %bb.x
  ]

bb.n:                                             ; preds = %bb.m
  %i.co = load i64, ptr %i.ca, align 8, !tbaa !19 ; 2 uses
  %i.cp = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke: ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n
  %.in = phi ptr [ %i.bx, %bb.w ], [ %i.cb, %bb.n ], [ %i.bz, %bb.o ], [ %i.bx, %bb.p ], [ %i.bv, %bb.q ], [ %i.cb, %bb.s ], [ %i.bz, %bb.u ], [ %i.bv, %bb.y ]
  %i.cs = phi i64 [ %i.ek, %bb.w ], [ %i.co, %bb.n ], [ %i.cv, %bb.o ], [ %i.cz, %bb.p ], [ %i.dd, %bb.q ], [ %i.do, %bb.s ], [ %i.dz, %bb.u ], [ %i.ev, %bb.y ]
  %i.ct = load ptr, ptr %.in, align 8, !tbaa !21
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ct, i64 noundef %i.cs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %bb.m
  %i.cv = load i64, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.cw = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.cx = sub i64 4611686018427387903, %i.cw
  %i.cy = icmp ult i64 %i.cx, %i.cv
  br i1 %i.cy, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

bb.p:                                             ; preds = %bb.m
  %i.cz = load i64, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %i.da = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.db = sub i64 4611686018427387903, %i.da
  %i.dc = icmp ult i64 %i.db, %i.cz
  br i1 %i.dc, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

bb.q:                                             ; preds = %bb.m
  %i.dd = load i64, ptr %i.bu, align 8, !tbaa !19 ; 2 uses
  %i.de = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dd
  br i1 %i.dg, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

bb.r:                                             ; preds = %bb.m
  %i.dh = load i32, ptr %3, align 4, !tbaa !79
  %i.di = mul i32 %i.dh, 1103515245
  %i.dj = add i32 %i.di, 12345                    ; 2 uses
  store i32 %i.dj, ptr %3, align 4, !tbaa !79
  %i.dk = sdiv i32 %i.dj, 65536
  %i.dl = trunc nsw i32 %i.dk to i16
  %.lhs.trunc.i319 = and i16 %i.dl, 32767
  %i.dm = urem i16 %.lhs.trunc.i319, 10
  %i.dn = icmp samesign ult i16 %i.dm, 9
  br i1 %i.dn, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.s:                                             ; preds = %bb.r
  %i.do = load i64, ptr %i.ca, align 8, !tbaa !19 ; 2 uses
  %i.dp = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.dq = sub i64 4611686018427387903, %i.dp
  %i.dr = icmp ult i64 %i.dq, %i.do
  br i1 %i.dr, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

bb.t:                                             ; preds = %bb.m
  %i.ds = load i32, ptr %3, align 4, !tbaa !79
  %i.dt = mul i32 %i.ds, 1103515245
  %i.du = add i32 %i.dt, 12345                    ; 2 uses
  store i32 %i.du, ptr %3, align 4, !tbaa !79
  %i.dv = sdiv i32 %i.du, 65536
  %i.dw = trunc nsw i32 %i.dv to i16
  %.lhs.trunc.i325 = and i16 %i.dw, 32767
  %i.dx = urem i16 %.lhs.trunc.i325, 10
  %i.dy = icmp samesign ult i16 %i.dx, 8
  br i1 %i.dy, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.u:                                             ; preds = %bb.t
  %i.dz = load i64, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ea = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.eb = sub i64 4611686018427387903, %i.ea
  %i.ec = icmp ult i64 %i.eb, %i.dz
  br i1 %i.ec, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

bb.v:                                             ; preds = %bb.m
  %i.ed = load i32, ptr %3, align 4, !tbaa !79
  %i.ee = mul i32 %i.ed, 1103515245
  %i.ef = add i32 %i.ee, 12345                    ; 2 uses
  store i32 %i.ef, ptr %3, align 4, !tbaa !79
  %i.eg = sdiv i32 %i.ef, 65536
  %i.eh = trunc nsw i32 %i.eg to i16
  %.lhs.trunc.i331 = and i16 %i.eh, 32767
  %i.ei = urem i16 %.lhs.trunc.i331, 10
  %i.ej = icmp samesign ult i16 %i.ei, 7
  br i1 %i.ej, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.w:                                             ; preds = %bb.v
  %i.ek = load i64, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %i.el = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.em = sub i64 4611686018427387903, %i.el
  %i.en = icmp ult i64 %i.em, %i.ek
  br i1 %i.en, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

bb.x:                                             ; preds = %bb.m
  %i.eo = load i32, ptr %3, align 4, !tbaa !79
  %i.ep = mul i32 %i.eo, 1103515245
  %i.eq = add i32 %i.ep, 12345                    ; 2 uses
  store i32 %i.eq, ptr %3, align 4, !tbaa !79
  %i.er = sdiv i32 %i.eq, 65536
  %i.es = trunc nsw i32 %i.er to i16
  %.lhs.trunc.i337 = and i16 %i.es, 32767
  %i.et = urem i16 %.lhs.trunc.i337, 10
  %i.eu = icmp samesign ult i16 %i.et, 6
  br i1 %i.eu, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.y:                                             ; preds = %bb.x
  %i.ev = load i64, ptr %i.bu, align 8, !tbaa !19 ; 2 uses
  %i.ew = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.ex = sub i64 4611686018427387903, %i.ew
  %i.ey = icmp ult i64 %i.ex, %i.ev
  br i1 %i.ey, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

.invoke:                                          ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.cont unwind label %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %bb.m
  %i.ez = load i64, ptr %i.bt, align 8, !tbaa !19 ; 4 uses
  %i.fa = add i64 %i.ez, 1                        ; 3 uses
  %i.fb = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.bs
  br i1 %i.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.z
  %i.fd = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.fe = load i64, ptr %i.bs, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ff = phi i64 [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.fg = icmp ugt i64 %i.fa, %i.ff
  br i1 %i.fg, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ez, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc343 unwind label %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc343:                                        ; preds = %bb.aa
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc343
  %i.fh = phi ptr [ %.pre.i.i, %.noexc343 ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez
  store i8 %i.cn, ptr %i.fi, align 1, !tbaa !20
  store i64 %i.fa, ptr %i.bt, align 8, !tbaa !19
  %i.fj = load ptr, ptr %9, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fa
  store i8 0, ptr %i.fk, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.x, %bb.v, %bb.t, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fl = load i64, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.fm = shl i64 %i.fl, 48
  %i.fn = ashr exact i64 %i.fm, 48
  %i.fo = icmp slt i64 %indvars.iv.next, %i.fn
  br i1 %i.fo, label %.lr.ph, label %._crit_edge, !llvm.loop !158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %._crit_edge
  %i.fp = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.bs
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.fr = load i64, ptr %i.bs, align 8, !tbaa !20
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %indvars.iv.next1606 = add nuw nsw i32 %indvars.iv1605, 1 ; 2 uses
  %i.ft = icmp samesign ugt i32 %i.bq, %indvars.iv.next1606
  br i1 %i.ft, label %bb.k, label %._crit_edge1562, !llvm.loop !159

.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke, %._crit_edge, %.invoke, %bb.l
  %lpad.loopexit.split-lp1758 = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.bs
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fw = load i64, ptr %i.bs, align 8, !tbaa !20
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.loopexit.split-lp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %._crit_edge1562
  %i.fy = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = xor i32 %i.fz, 1651863396
  %i.gb = getelementptr i8, ptr %i.fy, i64 4
  %i.gc = load i16, ptr %i.gb, align 1
  %i.gd = zext i16 %i.gc to i32
  %i.ge = xor i32 %i.gd, 25964
  %i.gf = or i32 %i.ga, %i.ge
  %i.gg = icmp ne i32 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gj = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.gk = fadd nsz <2 x float> %i.gj, <float 1.000000e+00, float -1.000000e+00>
  %i.gl = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.gk, float %i.gl, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %10 = load <2 x float>, ptr %5, align 8, !tbaa !106
  %11 = fadd <2 x float> %10, <float -0.000000e+00, float -1.000000e+00>
  %i.gm = load float, ptr %i.av, align 8, !tbaa !175
  %i.gn = fadd nsz float %i.gm, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %11, float %i.gn, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.go = load float, ptr %5, align 8, !tbaa !176
  %i.gp = fadd nsz float %i.go, 1.000000e+00
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348: ; preds = %._crit_edge1562
  %i.gq = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 1
  %i.gs = xor i32 %i.gr, 1936683619
  %i.gt = getelementptr i8, ptr %i.gq, i64 3
  %i.gu = load i32, ptr %i.gt, align 1
  %i.gv = xor i32 %i.gu, 1684370291
  %i.gw = or i32 %i.gs, %i.gv
  %i.gx = icmp ne i32 %i.gw, 0
  %i.gy = zext i1 %i.gx to i32
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348
  %i.ha = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.hb = fadd nsz <2 x float> %i.ha, <float 1.000000e+00, float -1.000000e+00>
  %i.hc = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.hb, float %i.hc, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.hd = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.he = fadd nsz <2 x float> %i.hd, splat (float -1.000000e+00)
  %i.hf = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.he, float %i.hf, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.hg = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.hh = fadd <2 x float> %i.hg, <float -0.000000e+00, float -1.000000e+00>
  %12 = load float, ptr %i.av, align 8, !tbaa !175
  %13 = fadd nsz float %12, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.hh, float %13, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.hi = load float, ptr %5, align 8, !tbaa !176
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481.sink.split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sink1713 = phi float [ 1.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ -1.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread ]
  %.sink1711 = phi float [ %i.gp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.hi, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread ]
  %i.hj = load float, ptr %i.au, align 4, !tbaa !177
  %i.hk = fadd nsz float %i.hj, -1.000000e+00
  %i.hl = load float, ptr %i.av, align 8, !tbaa !175
  %i.hm = fadd nsz float %i.hl, %.sink1713
  %.sroa.01099.0.vec.insert = insertelement <2 x float> poison, float %.sink1711, i64 0
  %.sroa.01099.4.vec.insert = insertelement <2 x float> %.sroa.01099.0.vec.insert, float %i.hk, i64 1
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %.sroa.01099.4.vec.insert, float %i.hm, ptr noundef nonnull align 8 dereferenceable(321) %2)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %._crit_edge1562, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348
  %i.hn = load i64, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.ho = trunc i64 %i.hn to i16
  %.not1566 = icmp sgt i16 %i.ho, 0
  br i1 %.not1566, label %.lr.ph1569, label %.critedge

.lr.ph1569:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481
  %.sroa.511464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 17 uses
  %.sroa.591472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.hp = fadd nsz float %i.ak, %i.am
  %i.hq = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %i.hp, i64 1
  %i.hs = call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %i.hr) ; 2 uses
  %i.ht = extractvalue { <2 x float>, <2 x float> } %i.hs, 0 ; 5 uses
  %i.hu = extractvalue { <2 x float>, <2 x float> } %i.hs, 1 ; 5 uses
  %i.hv = fsub nsz <2 x float> splat (float 1.000000e+00), %i.hu ; 6 uses
  %foldExtExtBinop = fadd nsz <2 x float> %i.hu, %i.hv
  %14 = fmul nsz <2 x float> %i.hv, zeroinitializer ; 8 uses
  %15 = extractelement <2 x float> %14, i64 0
  %16 = shufflevector <2 x float> %i.ht, <2 x float> %14, <2 x i32> <i32 0, i32 2>
  %17 = fmul <2 x float> %16, <float 0.000000e+00, float 1.000000e+00> ; 5 uses
  %18 = extractelement <2 x float> %17, i64 0
  %19 = fneg nsz float %18                        ; 2 uses
  %20 = insertelement <2 x float> poison, float %19, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> %17, <2 x i32> <i32 0, i32 2> ; 2 uses
  %22 = fsub nsz float %19, %15
  %23 = fneg nsz <2 x float> %i.ht
  %i.hw = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = shufflevector <2 x float> %i.hu, <2 x float> %i.ht, <2 x i32> <i32 2, i32 0>
  %i.hy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hw, <2 x float> zeroinitializer, <2 x float> %i.hx) ; 2 uses
  %i.hz = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> zeroinitializer, <2 x float> %21) ; 2 uses
  %24 = shufflevector <2 x float> %14, <2 x float> %17, <2 x i32> <i32 0, i32 2>
  %25 = fsub nsz <2 x float> %17, %24             ; 2 uses
  %foldExtExtBinop1740 = fadd nsz <2 x float> %17, %14
  %i.ib = fneg nsz <2 x float> %i.hv              ; 2 uses
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> zeroinitializer, <2 x float> %21) ; 2 uses
  %i.ie = extractelement <2 x float> %i.ht, i64 1
  %i.if = fmul nsz float %i.ie, 0.000000e+00      ; 5 uses
  %i.ig = extractelement <2 x float> %14, i64 1   ; 4 uses
  %i.ih = fsub nsz float %i.if, %i.ig
  %i.ii = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = shufflevector <2 x float> %i.hu, <2 x float> %i.ht, <2 x i32> <i32 1, i32 3>
  %i.ik = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> zeroinitializer, <2 x float> %i.ij) ; 2 uses
  %i.il = fneg nsz float %i.if                    ; 2 uses
  %foldExtExtBinop1742 = fadd nsz <2 x float> %i.hu, %i.hv
  %i.im = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.in = insertelement <2 x float> poison, float %i.if, i64 0
  %i.io = insertelement <2 x float> %i.in, float %i.il, i64 1 ; 2 uses
  %i.ip = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> zeroinitializer, <2 x float> %i.io) ; 2 uses
  %i.iq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> zeroinitializer, <2 x float> %23) ; 6 uses
  %i.ir = fsub nsz float %i.il, %i.ig
  %i.is = fadd nsz float %i.if, %i.ig
  %i.it = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iu = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> zeroinitializer, <2 x float> %i.io) ; 2 uses
  %i.iv = fsub nsz float %i.ig, %i.if
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 308 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 244 ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 252 ; 5 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 4 uses
  %i.jt = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jv = shufflevector <2 x float> %i.ik, <2 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.jw = shufflevector <2 x float> %i.ik, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.jx = insertelement <4 x float> poison, float %i.is, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jz = shufflevector <2 x float> %foldExtExtBinop1742, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.ka = shufflevector <2 x float> %i.iu, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kb = shufflevector <2 x float> %i.iu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.kc = insertelement <4 x float> poison, float %i.ir, i64 0
  %i.kd = shufflevector <4 x float> %i.kc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ke = insertelement <4 x float> poison, float %i.ih, i64 0
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kg = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kh = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ki = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> zeroinitializer
  %i.kj = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kk = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kl = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.km = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.kn = shufflevector <2 x float> %foldExtExtBinop1740, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ko = shufflevector <2 x float> %i.id, <2 x float> poison, <4 x i32> zeroinitializer
  %i.kp = shufflevector <2 x float> %i.id, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kq = insertelement <4 x float> poison, float %22, i64 0
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> zeroinitializer
  %26 = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ks = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> zeroinitializer
  %27 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kt = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ku = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kv = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kw = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kx = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1569, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit
  %indvars.iv1610 = phi i64 [ 0, %.lr.ph1569 ], [ %indvars.iv.next1611, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit ] ; 4 uses
  %i.ky = phi i64 [ %i.hn, %.lr.ph1569 ], [ %i.arj, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit ] ; 2 uses
  %.not.i349 = icmp ugt i64 %i.ky, %indvars.iv1610
  br i1 %.not.i349, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, i64 noundef %indvars.iv1610, i64 noundef %i.ky) #24
          to label %.noexc350 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc350:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.kz = load ptr, ptr %8, align 8, !tbaa !21
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %indvars.iv1610
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !20
  switch i8 %i.lb, label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit [
    i8 71, label %bb.ae
    i8 84, label %bb.af
    i8 70, label %bb.ai
    i8 102, label %bb.bw
    i8 82, label %bb.cb
    i8 91, label %bb.cg
    i8 93, label %bb.cl
    i8 43, label %bb.cr
    i8 45, label %bb.cs
    i8 38, label %bb.ct
    i8 94, label %bb.cu
    i8 42, label %bb.cv
    i8 47, label %bb.cw
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.lc = load float, ptr %i.aq, align 8, !tbaa !106
  %i.ld = load float, ptr %i.as, align 8, !tbaa !106
  %i.le = fmul nsz float %i.ld, 0.000000e+00
  %i.lf = fadd nsz float %i.lc, %i.le
  %i.lg = load float, ptr %i.ap, align 8, !tbaa !106
  %i.lh = call nsz float @llvm.fmuladd.f32(float %i.lg, float 0.000000e+00, float %i.lf)
  %i.li = load float, ptr %.sroa.591472.0..sroa_idx, align 8, !tbaa !106
  %i.lj = fadd nsz float %i.li, %i.lh
  %i.lk = load <2 x float>, ptr %4, align 16, !tbaa !106
  %i.ll = load <2 x float>, ptr %i.ar, align 16, !tbaa !106
  %i.lm = fmul nsz <2 x float> %i.ll, zeroinitializer
  %i.ln = fadd nsz <2 x float> %i.lk, %i.lm
  %i.lo = load <2 x float>, ptr %i.at, align 16, !tbaa !106
  %i.lp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> zeroinitializer, <2 x float> %i.ln)
  %i.lq = load <2 x float>, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  %i.lr = fadd nsz <2 x float> %i.lq, %i.lp
  %i.ls = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.lt = fadd nsz <2 x float> %i.lr, %i.ls
  store <2 x float> %i.lt, ptr %5, align 8, !tbaa !106
  %i.lu = load float, ptr %i.av, align 8, !tbaa !175
  %i.lv = fadd nsz float %i.lj, %i.lu
  store float %i.lv, ptr %i.av, align 8, !tbaa !175
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.af:                                            ; preds = %bb.ad
  %i.lw = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.lx = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.lw, float %i.lx, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.ly = load i64, ptr %i.cd, align 8, !tbaa !19
  switch i64 %i.ly, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353: ; preds = %bb.af
  %i.lz = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 1
  %i.mb = xor i32 %i.ma, 1651863396
  %i.mc = getelementptr i8, ptr %i.lz, i64 4
  %i.md = load i16, ptr %i.mc, align 1
  %i.me = zext i16 %i.md to i32
  %i.mf = xor i32 %i.me, 25964
  %i.mg = or i32 %i.mb, %i.mf
  %i.mh = icmp ne i32 %i.mg, 0
  %i.mi = zext i1 %i.mh to i32
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353
  %i.mk = load i8, ptr %i.jr, align 8, !tbaa !178, !range !169, !noundef !53
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483, label %bb.ag

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353.thread
  %28 = load <2 x float>, ptr %5, align 8, !tbaa !106
  %29 = fadd <2 x float> %28, <float 1.000000e+00, float -0.000000e+00>
  %i.mm = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %29, float %i.mm, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.mn = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.mo = load float, ptr %i.av, align 8, !tbaa !175
  %i.mp = fadd nsz float %i.mo, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.mn, float %i.mp, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.mq = load float, ptr %5, align 8, !tbaa !176
  %i.mr = fadd nsz float %i.mq, 1.000000e+00
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355: ; preds = %bb.af
  %i.ms = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 1
  %i.mu = xor i32 %i.mt, 1936683619
  %i.mv = getelementptr i8, ptr %i.ms, i64 3
  %i.mw = load i32, ptr %i.mv, align 1
  %i.mx = xor i32 %i.mw, 1684370291
  %i.my = or i32 %i.mu, %i.mx
  %i.mz = icmp ne i32 %i.my, 0
  %i.na = zext i1 %i.mz to i32
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355
  %i.nc = load i8, ptr %i.jr, align 8, !tbaa !178, !range !169, !noundef !53
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483, label %bb.ah

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread
  %30 = load <2 x float>, ptr %5, align 8, !tbaa !106
  %31 = fadd <2 x float> %30, <float 1.000000e+00, float -0.000000e+00>
  %i.ne = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %31, float %i.ne, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %32 = load <2 x float>, ptr %5, align 8, !tbaa !106
  %33 = fadd <2 x float> %32, <float -1.000000e+00, float -0.000000e+00>
  %i.nf = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %33, float %i.nf, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.ng = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.nh = load float, ptr %i.av, align 8, !tbaa !175
  %i.ni = fadd nsz float %i.nh, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.ng, float %i.ni, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.nj = load float, ptr %5, align 8, !tbaa !176
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483.sink.split: ; preds = %bb.ah, %bb.ag
  %.sink1717 = phi float [ 1.000000e+00, %bb.ag ], [ -1.000000e+00, %bb.ah ]
  %.sink1715 = phi float [ %i.mr, %bb.ag ], [ %i.nj, %bb.ah ]
  %i.nk = load float, ptr %i.au, align 4, !tbaa !177
  %i.nl = load float, ptr %i.av, align 8, !tbaa !175
  %i.nm = fadd nsz float %i.nl, %.sink1717
  %.sroa.0655.0.vec.insert = insertelement <2 x float> poison, float %.sink1715, i64 0
  %.sroa.0655.4.vec.insert = insertelement <2 x float> %.sroa.0655.0.vec.insert, float %i.nk, i64 1
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %.sroa.0655.4.vec.insert, float %i.nm, ptr noundef nonnull align 8 dereferenceable(321) %2)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353.thread, %bb.af, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355
  %i.nn = load float, ptr %i.aq, align 8, !tbaa !106
  %i.no = load float, ptr %i.as, align 8, !tbaa !106
  %i.np = fmul nsz float %i.no, 0.000000e+00
  %i.nq = fadd nsz float %i.nn, %i.np
  %i.nr = load float, ptr %i.ap, align 8, !tbaa !106
  %i.ns = call nsz float @llvm.fmuladd.f32(float %i.nr, float 0.000000e+00, float %i.nq)
  %i.nt = load float, ptr %.sroa.591472.0..sroa_idx, align 8, !tbaa !106
  %i.nu = fadd nsz float %i.nt, %i.ns
  %i.nv = load <2 x float>, ptr %4, align 16, !tbaa !106
  %i.nw = load <2 x float>, ptr %i.ar, align 16, !tbaa !106
  %i.nx = fmul nsz <2 x float> %i.nw, zeroinitializer
  %i.ny = fadd nsz <2 x float> %i.nv, %i.nx
  %i.nz = load <2 x float>, ptr %i.at, align 16, !tbaa !106
  %i.oa = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nz, <2 x float> zeroinitializer, <2 x float> %i.ny)
  %i.ob = load <2 x float>, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  %i.oc = fadd nsz <2 x float> %i.ob, %i.oa
  %i.od = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.oe = fadd nsz <2 x float> %i.oc, %i.od
  store <2 x float> %i.oe, ptr %5, align 8, !tbaa !106
  %i.of = load float, ptr %i.av, align 8, !tbaa !175
  %i.og = fadd nsz float %i.nu, %i.of
  store float %i.og, ptr %i.av, align 8, !tbaa !175
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.ai:                                            ; preds = %bb.ad
  %i.oh = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.oi = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.oh, float %i.oi, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.oj = load ptr, ptr %i.iw, align 8, !tbaa !111
  %i.ok = load ptr, ptr %i.ix, align 8, !tbaa !111
  %i.ol = icmp eq ptr %i.oj, %i.ok
  %i.om = load i64, ptr %i.cd, align 8, !tbaa !19 ; 3 uses
  %i.on = icmp eq i64 %i.om, 6                    ; 2 uses
  br i1 %i.ol, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.on, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread1484

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363: ; preds = %bb.aj
  %i.oo = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 1
  %i.oq = xor i32 %i.op, 1651863396
  %i.or = getelementptr i8, ptr %i.oo, i64 4
  %i.os = load i16, ptr %i.or, align 1
  %i.ot = zext i16 %i.os to i32
  %i.ou = xor i32 %i.ot, 25964
  %i.ov = or i32 %i.oq, %i.ou
  %i.ow = icmp ne i32 %i.ov, 0
  %i.ox = zext i1 %i.ow to i32
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread, label %.thread1490

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.on, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365.thread1485

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365: ; preds = %bb.ak
  %i.oz = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 1
  %i.pb = xor i32 %i.pa, 1651863396
  %i.pc = getelementptr i8, ptr %i.oz, i64 4
  %i.pd = load i16, ptr %i.pc, align 1
  %i.pe = zext i16 %i.pd to i32
  %i.pf = xor i32 %i.pe, 25964
  %i.pg = or i32 %i.pb, %i.pf
  %i.ph = icmp ne i32 %i.pg, 0
  %i.pi = zext i1 %i.ph to i32
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365.thread, label %.thread1490

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365
  %i.pk = load i8, ptr %i.jr, align 8, !tbaa !178, !range !169, !noundef !53
  %i.pl = trunc nuw i8 %i.pk to i1
  br i1 %i.pl, label %.thread1490, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363
  %34 = load <2 x float>, ptr %5, align 8, !tbaa !106
  %35 = fadd <2 x float> %34, <float 1.000000e+00, float -0.000000e+00>
  %i.pm = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %35, float %i.pm, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.pn = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.po = load float, ptr %i.av, align 8, !tbaa !175
  %i.pp = fadd nsz float %i.po, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.pn, float %i.pp, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.pq = load float, ptr %5, align 8, !tbaa !176
  %i.pr = fadd nsz float %i.pq, 1.000000e+00
  br label %.thread1490.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread1484: ; preds = %bb.aj
  %i.ps = icmp eq i64 %i.om, 7
  br i1 %i.ps, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367, label %.thread1490

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread1484
  %i.pt = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 1
  %i.pv = xor i32 %i.pu, 1936683619
  %i.pw = getelementptr i8, ptr %i.pt, i64 3
  %i.px = load i32, ptr %i.pw, align 1
  %i.py = xor i32 %i.px, 1684370291
  %i.pz = or i32 %i.pv, %i.py
  %i.qa = icmp ne i32 %i.pz, 0
  %i.qb = zext i1 %i.qa to i32
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367.thread, label %.thread1490

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365.thread1485: ; preds = %bb.ak
  %i.qd = icmp eq i64 %i.om, 7
  br i1 %i.qd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit369, label %.thread1490

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit369: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365.thread1485
  %i.qe = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 1
  %i.qg = xor i32 %i.qf, 1936683619
  %i.qh = getelementptr i8, ptr %i.qe, i64 3
  %i.qi = load i32, ptr %i.qh, align 1
  %i.qj = xor i32 %i.qi, 1684370291
  %i.qk = or i32 %i.qg, %i.qj
  %i.ql = icmp ne i32 %i.qk, 0
  %i.qm = zext i1 %i.ql to i32
  %i.qn = icmp eq i32 %i.qm, 0
  br i1 %i.qn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit369.thread, label %.thread1490

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit369.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit369
  %i.qo = load i8, ptr %i.jr, align 8, !tbaa !178, !range !169, !noundef !53
  %i.qp = trunc nuw i8 %i.qo to i1
  br i1 %i.qp, label %.thread1490, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit369.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367
  %36 = load <2 x float>, ptr %5, align 8, !tbaa !106
  %37 = fadd <2 x float> %36, <float 1.000000e+00, float -0.000000e+00>
  %i.qq = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %37, float %i.qq, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %38 = load <2 x float>, ptr %5, align 8, !tbaa !106
  %39 = fadd <2 x float> %38, <float -1.000000e+00, float -0.000000e+00>
  %i.qr = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %39, float %i.qr, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.qs = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.qt = load float, ptr %i.av, align 8, !tbaa !175
  %i.qu = fadd nsz float %i.qt, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.qs, float %i.qu, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.qv = load float, ptr %5, align 8, !tbaa !176
  br label %.thread1490.sink.split

.thread1490.sink.split:                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread
  %.sink1721 = phi float [ 1.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread ], [ -1.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367.thread ]
  %.sink1719 = phi float [ %i.pr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread ], [ %i.qv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367.thread ]
  %i.qw = load float, ptr %i.au, align 4, !tbaa !177
  %i.qx = load float, ptr %i.av, align 8, !tbaa !175
  %i.qy = fadd nsz float %i.qx, %.sink1721
  %.sroa.0628.0.vec.insert = insertelement <2 x float> poison, float %.sink1719, i64 0
  %.sroa.0628.4.vec.insert = insertelement <2 x float> %.sroa.0628.0.vec.insert, float %i.qw, i64 1
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %.sroa.0628.4.vec.insert, float %i.qy, ptr noundef nonnull align 8 dereferenceable(321) %2)
  br label %.thread1490

.thread1490:                                      ; preds = %.thread1490.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit365.thread1485, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread1484, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit367, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit369, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit369.thread
  %i.qz = load ptr, ptr %i.iw, align 8, !tbaa !111
  %i.ra = load ptr, ptr %i.ix, align 8, !tbaa !111
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %.loopexit, label %.preheader1499

.preheader1499:                                   ; preds = %.thread1490, %bb.bv
  %.02841565 = phi i16 [ %i.aen, %bb.bv ], [ -1, %.thread1490 ] ; 3 uses
  %i.rc = call i16 @llvm.abs.i16(i16 %.02841565, i1 true)
  %i.rd = icmp eq i16 %i.rc, 1
  %i.re = sitofp i16 %.02841565 to float          ; 3 uses
  %i.rf = insertelement <2 x float> poison, float %i.re, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader1499, %.split.us
  %.02851564 = phi i16 [ -1, %.preheader1499 ], [ %i.aem, %.split.us ] ; 3 uses
  %i.rg = call i16 @llvm.abs.i16(i16 %.02851564, i1 true)
  %i.rh = icmp eq i16 %i.rg, 1
  %or.cond = and i1 %i.rd, %i.rh
  %i.ri = sitofp i16 %.02851564 to float          ; 3 uses
  %or.cond.fr = freeze i1 %or.cond
  br i1 %or.cond.fr, label %.preheader.split.preheader, label %.split.us

.preheader.split.preheader:                       ; preds = %.preheader
  %i.rj = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.ri, i64 1
  %i.rk = insertelement <2 x float> <float -1.000000e+00, float poison>, float %i.ri, i64 1
  %i.rl = insertelement <2 x float> %i.rf, float %i.ri, i64 1 ; 2 uses
  br label %.preheader.split

.preheader.split:                                 ; preds = %.preheader.split.preheader, %_ZN7treegenL21tree_leaves_placementER8MMVManipN4core8vector3dIfEE12PseudoRandomRKNS_7TreeDefE.exit457
  %.02861563 = phi i16 [ %i.ael, %_ZN7treegenL21tree_leaves_placementER8MMVManipN4core8vector3dIfEE12PseudoRandomRKNS_7TreeDefE.exit457 ], [ -1, %.preheader.split.preheader ] ; 3 uses
  %i.rm = call i16 @llvm.abs.i16(i16 %.02861563, i1 true)
  %i.rn = icmp eq i16 %i.rm, 1
  br i1 %i.rn, label %bb.al, label %_ZN7treegenL21tree_leaves_placementER8MMVManipN4core8vector3dIfEE12PseudoRandomRKNS_7TreeDefE.exit457

bb.al:                                            ; preds = %.preheader.split
  %i.ro = load float, ptr %5, align 8, !tbaa !176
  %i.rp = fadd nsz float %i.ro, %i.re
  %i.rq = load float, ptr %i.au, align 4, !tbaa !177
  %i.rr = load float, ptr %i.av, align 8, !tbaa !175
  %i.rs = sitofp i16 %.02861563 to float          ; 4 uses
  %i.rt = load i32, ptr %3, align 4, !tbaa !79
  %i.ru = mul i32 %i.rt, 1103515245
  %i.rv = add i32 %i.ru, 12345                    ; 2 uses
  store i32 %i.rv, ptr %3, align 4, !tbaa !79
  %i.rw = sdiv i32 %i.rv, 65536
  %i.rx = and i32 %i.rw, 32767
  %i.ry = load i32, ptr %i.jo, align 4
  %i.rz = mul i32 %i.rx, 1103515245
  %i.sa = add i32 %i.rz, 12345                    ; 2 uses
  %i.sb = sdiv i32 %i.sa, 65536
  %i.sc = trunc nsw i32 %i.sb to i16
  %.lhs.trunc.i.i = and i16 %i.sc, 32767
  %i.sd = urem i16 %.lhs.trunc.i.i, 100
  %narrow.i = add nuw nsw i16 %i.sd, 1
  %i.se = zext nneg i16 %narrow.i to i32
  %i.sf = load i32, ptr %i.jp, align 4, !tbaa !38
  %i.sg = sub nsw i32 100, %i.sf
  %i.sh = icmp slt i32 %i.sg, %i.se
  %i.si = load i32, ptr %i.jq, align 8
  %.sroa.089.0.i = select i1 %i.sh, i32 %i.si, i32 %i.ry ; 2 uses
  %i.sj = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.sk = insertelement <2 x float> %i.sj, float %i.rq, i64 1
  %i.sl = fadd nsz <2 x float> %i.sk, %i.rj       ; 2 uses
  %i.sm = fcmp nsz olt <2 x float> %i.sl, zeroinitializer
  %i.sn = select <2 x i1> %i.sm, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.so = fadd nsz <2 x float> %i.sl, %i.sn
  %i.sp = fptosi <2 x float> %i.so to <2 x i32>   ; 3 uses
  %i.sq = trunc <2 x i32> %i.sp to <2 x i16>
  %i.sr = shufflevector <2 x i16> %i.sq, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ss = load <2 x i16>, ptr %i.jg, align 8
  %i.st = load i16, ptr %i.ji, align 2
  %i.su = load i16, ptr %i.jg, align 8, !tbaa !83
  %i.sv = load <2 x i16>, ptr %i.jh, align 2
  %i.sw = shufflevector <2 x i16> %i.sv, <2 x i16> %i.ss, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.sx = icmp slt <4 x i16> %i.sw, %i.sr
  %i.sy = icmp sgt <4 x i16> %i.sw, %i.sr
  %i.sz = shufflevector <4 x i1> %i.sx, <4 x i1> %i.sy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ta = freeze <4 x i1> %i.sz
  %i.tb = bitcast <4 x i1> %i.ta to i4
  %.not1746.a = icmp eq i4 %i.tb, 0
  br i1 %.not1746.a, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.tc = fadd nsz float %i.rr, %i.rs             ; 2 uses
  %i.td = fcmp nsz olt float %i.tc, 0.000000e+00
  %.v.i30.i = select i1 %i.td, float -5.000000e-01, float 5.000000e-01
  %i.te = fadd nsz float %i.tc, %.v.i30.i
  %i.tf = fptosi float %i.te to i32
  %.mask.i = and i32 %i.tf, 65535
  %.sroa.9.0.insert.ext85.i = zext nneg i32 %.mask.i to i48
  %.sroa.9.0.insert.shift86.i = shl nuw i48 %.sroa.9.0.insert.ext85.i, 32
  %i.tg = ashr exact i48 %.sroa.9.0.insert.shift86.i, 32
  %i.th = trunc nsw i48 %i.tg to i32              ; 3 uses
  %i.ti = load i16, ptr %i.jj, align 4, !tbaa !84
  %i.tj = sext i16 %i.ti to i32                   ; 2 uses
  %.not9.i.i = icmp slt i32 %i.th, %i.tj
  br i1 %.not9.i.i, label %bb.au, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i: ; preds = %bb.am
  %i.tk = load i16, ptr %i.jk, align 2, !tbaa !85
  %i.tl = sext i16 %i.tk to i32
  %.not.i370 = icmp sgt i32 %i.th, %i.tl
  br i1 %.not.i370, label %bb.au, label %bb.an

bb.an:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i
  %i.tm = sub nsw i32 %i.th, %i.tj
  %i.tn = load i32, ptr %i.jm, align 8, !tbaa !86
  %i.to = mul nsw i32 %i.tn, %i.tm
  %i.tp = load i32, ptr %i.jl, align 4, !tbaa !87
  %i.tq = extractelement <2 x i32> %i.sp, i64 1
  %sext.i = shl i32 %i.tq, 16
  %i.tr = ashr exact i32 %sext.i, 16
  %i.ts = sext i16 %i.st to i32
  %i.tt = sub nsw i32 %i.tr, %i.ts
  %i.tu = add i32 %i.tt, %i.to
  %i.tv = mul i32 %i.tu, %i.tp
  %i.tw = extractelement <2 x i32> %i.sp, i64 0
  %sext96.i = shl i32 %i.tw, 16
  %i.tx = ashr exact i32 %sext96.i, 16
  %i.ty = sext i16 %i.su to i32
  %i.tz = sub nsw i32 %i.tx, %i.ty
  %i.ua = add nsw i32 %i.tv, %i.tz                ; 3 uses
  %i.ub = load ptr, ptr %i.jn, align 8, !tbaa !90 ; 3 uses
  %i.uc = zext i32 %i.ua to i64
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.uc
  %i.ue = load i16, ptr %i.ud, align 4, !tbaa !93
  %i.uf = and i16 %i.ue, -2
  %switch.i = icmp eq i16 %i.uf, 126
  br i1 %switch.i, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ug = load i32, ptr %i.js, align 8, !tbaa !179 ; 2 uses
  %i.uh = icmp sgt i32 %i.ug, 0
  %i.ui = mul i32 %i.sa, 1103515245
  %i.uj = add i32 %i.ui, 12345
  %i.uk = sdiv i32 %i.uj, 65536
  %i.ul = trunc nsw i32 %i.uk to i16
  %.lhs.trunc.i32.i = and i16 %i.ul, 32767
  %i.um = urem i16 %.lhs.trunc.i32.i, 100         ; 2 uses
  br i1 %i.uh, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %narrow98.i = add nuw nsw i16 %i.um, 1
  %i.un = zext nneg i16 %narrow98.i to i32
  %i.uo = sub nsw i32 100, %i.ug
  %i.up = icmp slt i32 %i.uo, %i.un
  %i.uq = sext i32 %i.ua to i64
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %i.uq ; 2 uses
  br i1 %i.up, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.us = load i32, ptr %i.jf, align 4
  store i32 %i.us, ptr %i.ur, align 4
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  store i32 %.sroa.089.0.i, ptr %i.ur, align 4
  br label %bb.au

bb.as:                                            ; preds = %bb.ao
  %i.ut = icmp samesign ugt i16 %i.um, 19
  br i1 %i.ut, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.uu = sext i32 %i.ua to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %i.uu
  store i32 %.sroa.089.0.i, ptr %i.uv, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.al, %bb.am, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i, %bb.an, %bb.aq, %bb.ar, %bb.as, %bb.at
  %i.uw = load float, ptr %5, align 8, !tbaa !176
  %i.ux = fadd nsz float %i.uw, %i.re
  %i.uy = load float, ptr %i.au, align 4, !tbaa !177
  %i.uz = load float, ptr %i.av, align 8, !tbaa !175
  %i.va = load i32, ptr %3, align 4, !tbaa !79
  %i.vb = mul i32 %i.va, 1103515245
  %i.vc = add i32 %i.vb, 12345                    ; 2 uses
  store i32 %i.vc, ptr %3, align 4, !tbaa !79
  %i.vd = sdiv i32 %i.vc, 65536
  %i.ve = and i32 %i.vd, 32767
  %i.vf = load i32, ptr %i.jo, align 4
end_hunk_0
begin_hunk_1_@_ZN7treegen10make_ltreeER8MMVManipN4core8vector3dIsEERKNS_7TreeDefE:bb.a
  br i1 %.not.i.i514, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.alm, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !120
  %i.alp = load ptr, ptr %i.jb, align 8, !tbaa !119
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 12
  store ptr %i.alq, ptr %i.jb, align 8, !tbaa !119
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.ck:                                            ; preds = %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit
  invoke void @_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ad
  %i.alr = load ptr, ptr %i.iw, align 8, !tbaa !111 ; 3 uses
  %i.als = load ptr, ptr %i.ix, align 8, !tbaa !111
  %i.alt = icmp eq ptr %i.alr, %i.als
  br i1 %i.alt, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.alu = load ptr, ptr %i.iy, align 8, !tbaa !121, !noalias !182 ; 2 uses
  %i.alv = icmp eq ptr %i.alr, %i.alu
  br i1 %i.alv, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.alw = getelementptr inbounds i8, ptr %i.alr, i64 -64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.alw, i64 64, i1 false), !tbaa.struct !114
  br label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.co:                                            ; preds = %bb.cm
  %i.alx = load ptr, ptr %i.iz, align 8, !tbaa !122, !noalias !182
  %i.aly = getelementptr inbounds i8, ptr %i.alx, i64 -8
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !123
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.ama, i64 64, i1 false), !tbaa.struct !114
  call void @_ZdlPvm(ptr noundef %i.alu, i64 noundef 512) #23
  %i.amb = load ptr, ptr %i.iz, align 8, !tbaa !124
  %i.amc = getelementptr inbounds i8, ptr %i.amb, i64 -8 ; 2 uses
  store ptr %i.amc, ptr %i.iz, align 8, !tbaa !122
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !123 ; 3 uses
  store ptr %i.amd, ptr %i.iy, align 8, !tbaa !121
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 512
  store ptr %i.ame, ptr %i.ja, align 8, !tbaa !125
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amd, i64 448
  br label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.cn, %bb.co
  %storemerge.i.i = phi ptr [ %i.alw, %bb.cn ], [ %i.amf, %bb.co ]
  store ptr %storemerge.i.i, ptr %i.iw, align 8, !tbaa !113
  %i.amg = load ptr, ptr %i.jb, align 8, !tbaa !126, !noalias !183 ; 2 uses
  %i.amh = load ptr, ptr %i.jc, align 8, !tbaa !127, !noalias !183 ; 2 uses
  %i.ami = icmp eq ptr %i.amg, %i.amh
  br i1 %i.ami, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.amj = getelementptr inbounds i8, ptr %i.amg, i64 -12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.amj, i64 12, i1 false), !tbaa.struct !120
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.cq:                                            ; preds = %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.amk = load ptr, ptr %i.jd, align 8, !tbaa !128, !noalias !183
  %i.aml = getelementptr inbounds i8, ptr %i.amk, i64 -8
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !129
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.amn, i64 12, i1 false), !tbaa.struct !120
  call void @_ZdlPvm(ptr noundef %i.amh, i64 noundef 504) #23
  %i.amo = load ptr, ptr %i.jd, align 8, !tbaa !130
  %i.amp = getelementptr inbounds i8, ptr %i.amo, i64 -8 ; 2 uses
  store ptr %i.amp, ptr %i.jd, align 8, !tbaa !128
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !129 ; 3 uses
  store ptr %i.amq, ptr %i.jc, align 8, !tbaa !127
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 504
  store ptr %i.amr, ptr %i.je, align 8, !tbaa !131
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 492
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.cp, %bb.cq
  %storemerge.i.i518 = phi ptr [ %i.amj, %bb.cp ], [ %i.ams, %bb.cq ]
  store ptr %storemerge.i.i518, ptr %i.jb, align 8, !tbaa !119
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cr:                                            ; preds = %bb.ad
  %i.amt = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.amu = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.amv = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.amw = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.amx = fmul nsz <4 x float> %i.jw, %i.amu
  %i.amy = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amt, <4 x float> %i.jv, <4 x float> %i.amx)
  %i.amz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amv, <4 x float> %i.ju, <4 x float> %i.amy)
  %i.ana = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amw, <4 x float> zeroinitializer, <4 x float> %i.amz)
  store <4 x float> %i.ana, ptr %4, align 16, !tbaa !106
  %i.anb = fmul nsz <4 x float> %i.jv, %i.amu
  %i.anc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amt, <4 x float> %i.kx, <4 x float> %i.anb)
  %i.and = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amv, <4 x float> %i.jy, <4 x float> %i.anc)
  %i.ane = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amw, <4 x float> zeroinitializer, <4 x float> %i.and)
  store <4 x float> %i.ane, ptr %i.ar, align 16, !tbaa !106
  %i.anf = fmul nsz <4 x float> %i.kb, %i.amu
  %i.ang = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amt, <4 x float> %i.ka, <4 x float> %i.anf)
  %i.anh = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amv, <4 x float> %i.jz, <4 x float> %i.ang)
  %i.ani = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amw, <4 x float> zeroinitializer, <4 x float> %i.anh)
  store <4 x float> %i.ani, ptr %i.at, align 16, !tbaa !106
  %i.anj = fmul nsz <4 x float> %i.amu, zeroinitializer
  %i.ank = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amt, <4 x float> zeroinitializer, <4 x float> %i.anj)
  %i.anl = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amv, <4 x float> zeroinitializer, <4 x float> %i.ank)
  %i.anm = fadd nsz <4 x float> %i.anl, %i.amw
  store <4 x float> %i.anm, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cs:                                            ; preds = %bb.ad
  %i.ann = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.ano = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.anp = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.anq = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.anr = fmul nsz <4 x float> %i.kw, %i.ano
  %i.ans = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ann, <4 x float> %i.jv, <4 x float> %i.anr)
  %i.ant = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anp, <4 x float> %i.kd, <4 x float> %i.ans)
  %i.anu = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anq, <4 x float> zeroinitializer, <4 x float> %i.ant)
  store <4 x float> %i.anu, ptr %4, align 16, !tbaa !106
  %i.anv = fmul nsz <4 x float> %i.jv, %i.ano
  %i.anw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ann, <4 x float> %i.jw, <4 x float> %i.anv)
  %i.anx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anp, <4 x float> %i.kf, <4 x float> %i.anw)
  %i.any = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anq, <4 x float> zeroinitializer, <4 x float> %i.anx)
  store <4 x float> %i.any, ptr %i.ar, align 16, !tbaa !106
  %i.anz = fmul nsz <4 x float> %i.kh, %i.ano
  %i.aoa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ann, <4 x float> %i.kg, <4 x float> %i.anz)
  %i.aob = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anp, <4 x float> %i.jz, <4 x float> %i.aoa)
  %i.aoc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anq, <4 x float> zeroinitializer, <4 x float> %i.aob)
  store <4 x float> %i.aoc, ptr %i.at, align 16, !tbaa !106
  %i.aod = fmul nsz <4 x float> %i.ano, zeroinitializer
  %i.aoe = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ann, <4 x float> zeroinitializer, <4 x float> %i.aod)
  %i.aof = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anp, <4 x float> zeroinitializer, <4 x float> %i.aoe)
  %i.aog = fadd nsz <4 x float> %i.aof, %i.anq
  store <4 x float> %i.aog, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.ct:                                            ; preds = %bb.ad
  %i.aoh = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.aoi = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.aoj = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.aok = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.aol = fmul nsz <4 x float> %i.jy, %i.aoi
  %i.aom = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoh, <4 x float> %i.jv, <4 x float> %i.aol)
  %i.aon = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoj, <4 x float> %i.kv, <4 x float> %i.aom)
  %i.aoo = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aok, <4 x float> zeroinitializer, <4 x float> %i.aon)
  store <4 x float> %i.aoo, ptr %4, align 16, !tbaa !106
  %i.aop = fmul nsz <4 x float> %i.jz, %i.aoi
  %i.aoq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoh, <4 x float> %i.kb, <4 x float> %i.aop)
  %i.aor = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoj, <4 x float> %i.ka, <4 x float> %i.aoq)
  %i.aos = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aok, <4 x float> zeroinitializer, <4 x float> %i.aor)
  store <4 x float> %i.aos, ptr %i.ar, align 16, !tbaa !106
  %i.aot = fmul nsz <4 x float> %i.ju, %i.aoi
  %i.aou = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoh, <4 x float> %i.jw, <4 x float> %i.aot)
  %i.aov = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoj, <4 x float> %i.jv, <4 x float> %i.aou)
  %i.aow = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aok, <4 x float> zeroinitializer, <4 x float> %i.aov)
  store <4 x float> %i.aow, ptr %i.at, align 16, !tbaa !106
  %i.aox = fmul nsz <4 x float> %i.aoi, zeroinitializer
  %i.aoy = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoh, <4 x float> zeroinitializer, <4 x float> %i.aox)
  %i.aoz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoj, <4 x float> zeroinitializer, <4 x float> %i.aoy)
  %i.apa = fadd nsz <4 x float> %i.aoz, %i.aok
  store <4 x float> %i.apa, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cu:                                            ; preds = %bb.ad
  %i.apb = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.apc = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.apd = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.ape = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.apf = fmul nsz <4 x float> %i.kf, %i.apc
  %i.apg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apb, <4 x float> %i.jv, <4 x float> %i.apf)
  %i.aph = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apd, <4 x float> %i.jw, <4 x float> %i.apg)
  %i.api = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ape, <4 x float> zeroinitializer, <4 x float> %i.aph)
  store <4 x float> %i.api, ptr %4, align 16, !tbaa !106
  %i.apj = fmul nsz <4 x float> %i.jz, %i.apc
  %i.apk = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apb, <4 x float> %i.kh, <4 x float> %i.apj)
  %i.apl = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apd, <4 x float> %i.kg, <4 x float> %i.apk)
  %i.apm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ape, <4 x float> zeroinitializer, <4 x float> %i.apl)
  store <4 x float> %i.apm, ptr %i.ar, align 16, !tbaa !106
  %i.apn = fmul nsz <4 x float> %i.kd, %i.apc
  %i.apo = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apb, <4 x float> %i.ku, <4 x float> %i.apn)
  %i.app = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apd, <4 x float> %i.jv, <4 x float> %i.apo)
  %i.apq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ape, <4 x float> zeroinitializer, <4 x float> %i.app)
  store <4 x float> %i.apq, ptr %i.at, align 16, !tbaa !106
  %i.apr = fmul nsz <4 x float> %i.apc, zeroinitializer
  %i.aps = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apb, <4 x float> zeroinitializer, <4 x float> %i.apr)
  %i.apt = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apd, <4 x float> zeroinitializer, <4 x float> %i.aps)
  %i.apu = fadd nsz <4 x float> %i.apt, %i.ape
  store <4 x float> %i.apu, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cv:                                            ; preds = %bb.ad
  %i.apv = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.apw = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.apx = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.apy = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.apz = fmul nsz <4 x float> %i.kk, %i.apw
  %i.aqa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apv, <4 x float> %i.kj, <4 x float> %i.apz)
  %i.aqb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apx, <4 x float> %i.ki, <4 x float> %i.aqa)
  %i.aqc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apy, <4 x float> zeroinitializer, <4 x float> %i.aqb)
  store <4 x float> %i.aqc, ptr %4, align 16, !tbaa !106
  %i.aqd = fmul nsz <4 x float> %i.km, %i.apw
  %i.aqe = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apv, <4 x float> %27, <4 x float> %i.aqd)
  %i.aqf = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apx, <4 x float> %i.kl, <4 x float> %i.aqe)
  %i.aqg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apy, <4 x float> zeroinitializer, <4 x float> %i.aqf)
  store <4 x float> %i.aqg, ptr %i.ar, align 16, !tbaa !106
  %i.aqh = fmul nsz <4 x float> %i.kt, %i.apw
  %i.aqi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apv, <4 x float> %i.kn, <4 x float> %i.aqh)
  %i.aqj = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apx, <4 x float> %i.km, <4 x float> %i.aqi)
  %i.aqk = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apy, <4 x float> zeroinitializer, <4 x float> %i.aqj)
  store <4 x float> %i.aqk, ptr %i.at, align 16, !tbaa !106
  %i.aql = fmul nsz <4 x float> %i.apw, zeroinitializer
  %i.aqm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apv, <4 x float> zeroinitializer, <4 x float> %i.aql)
  %i.aqn = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apx, <4 x float> zeroinitializer, <4 x float> %i.aqm)
  %i.aqo = fadd nsz <4 x float> %i.aqn, %i.apy
  store <4 x float> %i.aqo, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cw:                                            ; preds = %bb.ad
  %i.aqp = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.aqq = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.aqr = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.aqs = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.aqt = fmul nsz <4 x float> %i.kp, %i.aqq
  %i.aqu = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqp, <4 x float> %i.kj, <4 x float> %i.aqt)
  %i.aqv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqr, <4 x float> %i.ko, <4 x float> %i.aqu)
  %i.aqw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqs, <4 x float> zeroinitializer, <4 x float> %i.aqv)
  store <4 x float> %i.aqw, ptr %4, align 16, !tbaa !106
  %i.aqx = fmul nsz <4 x float> %i.km, %i.aqq
  %i.aqy = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqp, <4 x float> %i.kr, <4 x float> %i.aqx)
  %i.aqz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqr, <4 x float> %26, <4 x float> %i.aqy)
  %i.ara = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqs, <4 x float> zeroinitializer, <4 x float> %i.aqz)
  store <4 x float> %i.ara, ptr %i.ar, align 16, !tbaa !106
  %i.arb = fmul nsz <4 x float> %i.kl, %i.aqq
  %i.arc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqp, <4 x float> %i.ks, <4 x float> %i.arb)
  %i.ard = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqr, <4 x float> %i.km, <4 x float> %i.arc)
  %i.are = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqs, <4 x float> zeroinitializer, <4 x float> %i.ard)
  store <4 x float> %i.are, ptr %i.at, align 16, !tbaa !106
  %i.arf = fmul nsz <4 x float> %i.aqq, zeroinitializer
  %i.arg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqp, <4 x float> zeroinitializer, <4 x float> %i.arf)
  %i.arh = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqr, <4 x float> zeroinitializer, <4 x float> %i.arg)
  %i.ari = fadd nsz <4 x float> %i.arh, %i.aqs
  store <4 x float> %i.ari, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.cj, %bb.ck, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.ae, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483, %.loopexit, %bb.ca, %bb.cf, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE3popEv.exit, %bb.ad
  %indvars.iv.next1611 = add nuw nsw i64 %indvars.iv1610, 1 ; 2 uses
  %i.arj = load i64, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.ark = shl i64 %i.arj, 48
  %i.arl = ashr exact i64 %i.ark, 48
  %.not = icmp slt i64 %indvars.iv.next1611, %i.arl
  br i1 %.not, label %bb.ab, label %.critedge, !llvm.loop !167

.critedge:                                        ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit, %bb.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481
  %.not.lcssa = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481 ], [ 1, %bb.cl ], [ 0, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit ]
  %i.arm = load ptr, ptr %8, align 8, !tbaa !21   ; 2 uses
  %i.arn = icmp eq ptr %i.arm, %i.bb
  br i1 %i.arn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546: ; preds = %.critedge
  %i.aro = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.arp = add i64 %i.aro, 1
  call void @_ZdlPvm(ptr noundef %i.arm, i64 noundef %i.arp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.arq = load ptr, ptr %7, align 8, !tbaa !132  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.arq, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548
  %i.arr = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ars = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !133 ; 2 uses
  %i.aru = load ptr, ptr %i.arr, align 8, !tbaa !130 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  %i.arw = icmp ult ptr %i.art, %i.arv
  br i1 %i.arw, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cx, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ary, %.lr.ph.i.i.i.i ], [ %i.art, %bb.cx ] ; 3 uses
  %i.arx = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !129
  call void @_ZdlPvm(ptr noundef %i.arx, i64 noundef 504) #23
  %i.ary = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.arz = icmp ult ptr %.06.i.i.i.i, %i.aru
  br i1 %i.arz, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, !llvm.loop !1

_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %7, align 8, !tbaa !132
  br label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, %bb.cx
  %i.asa = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i ], [ %i.arq, %bb.cx ]
  %i.asb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !134
  %i.asd = shl i64 %i.asc, 3
  call void @_ZdlPvm(ptr noundef %i.asa, i64 noundef %i.asd) #23
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit

_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ase = load ptr, ptr %6, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i549 = icmp eq ptr %i.ase, null
  br i1 %.not.i.i.i549, label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit
  %i.asf = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.asg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !136 ; 2 uses
  %i.asi = load ptr, ptr %i.asf, align 8, !tbaa !124 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 8
  %i.ask = icmp ult ptr %i.ash, %i.asj
  br i1 %i.ask, label %.lr.ph.i.i.i.i550, label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

.lr.ph.i.i.i.i550:                                ; preds = %bb.cy, %.lr.ph.i.i.i.i550
  %.06.i.i.i.i551 = phi ptr [ %i.asm, %.lr.ph.i.i.i.i550 ], [ %i.ash, %bb.cy ] ; 3 uses
  %i.asl = load ptr, ptr %.06.i.i.i.i551, align 8, !tbaa !123
  call void @_ZdlPvm(ptr noundef %i.asl, i64 noundef 512) #23
  %i.asm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i551, i64 8
  %i.asn = icmp ult ptr %.06.i.i.i.i551, %i.asi
  br i1 %i.asn, label %.lr.ph.i.i.i.i550, label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, !llvm.loop !2

_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i550
  %.pre.i.i.i552 = load ptr, ptr %6, align 8, !tbaa !135
  br label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, %bb.cy
  %i.aso = phi ptr [ %.pre.i.i.i552, %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i ], [ %i.ase, %bb.cy ]
  %i.asp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.asq = load i64, ptr %i.asp, align 8, !tbaa !137
  %i.asr = shl i64 %i.asq, 3
  call void @_ZdlPvm(ptr noundef %i.aso, i64 noundef %i.asr) #23
  br label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit

_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit: ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit, %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %.not.lcssa

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346
  %.pn295.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1758, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ], [ %lpad.loopexit.split-lp1750, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ass = load ptr, ptr %8, align 8, !tbaa !21   ; 2 uses
  %i.ast = icmp eq ptr %i.ass, %i.bb
  br i1 %i.ast, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553: ; preds = %.loopexit.split-lp
  %i.asu = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.asv = add i64 %i.asu, 1
  call void @_ZdlPvm(ptr noundef %i.ass, i64 noundef %i.asv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553, %bb.j
  %.pn295.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.j ], [ %.pn295.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553 ], [ %.pn295.pn, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.asw = load ptr, ptr %7, align 8, !tbaa !132  ; 2 uses
  %.not.i.i.i556 = icmp eq ptr %i.asw, null
  br i1 %.not.i.i.i556, label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555
  %i.asx = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.asy = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !133 ; 2 uses
  %i.ata = load ptr, ptr %i.asx, align 8, !tbaa !130 ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 8
  %i.atc = icmp ult ptr %i.asz, %i.atb
  br i1 %i.atc, label %.lr.ph.i.i.i.i558, label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557

.lr.ph.i.i.i.i558:                                ; preds = %bb.cz, %.lr.ph.i.i.i.i558
  %.06.i.i.i.i559 = phi ptr [ %i.ate, %.lr.ph.i.i.i.i558 ], [ %i.asz, %bb.cz ] ; 3 uses
  %i.atd = load ptr, ptr %.06.i.i.i.i559, align 8, !tbaa !129
  call void @_ZdlPvm(ptr noundef %i.atd, i64 noundef 504) #23
  %i.ate = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i559, i64 8
  %i.atf = icmp ult ptr %.06.i.i.i.i559, %i.ata
  br i1 %i.atf, label %.lr.ph.i.i.i.i558, label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i560, !llvm.loop !1

_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i560: ; preds = %.lr.ph.i.i.i.i558
  %.pre.i.i.i561 = load ptr, ptr %7, align 8, !tbaa !132
  br label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557

_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557: ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i560, %bb.cz
  %i.atg = phi ptr [ %.pre.i.i.i561, %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i560 ], [ %i.asw, %bb.cz ]
  %i.ath = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ati = load i64, ptr %i.ath, align 8, !tbaa !134
  %i.atj = shl i64 %i.ati, 3
  call void @_ZdlPvm(ptr noundef %i.atg, i64 noundef %i.atj) #23
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562

_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562: ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, %bb.i
  %.pn295.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.i ], [ %.pn295.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555 ], [ %.pn295.pn.pn, %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.atk = load ptr, ptr %6, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i563 = icmp eq ptr %i.atk, null
  br i1 %.not.i.i.i563, label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit569, label %bb.da

bb.da:                                            ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562
  %i.atl = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.atm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !136 ; 2 uses
  %i.ato = load ptr, ptr %i.atl, align 8, !tbaa !124 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 8
  %i.atq = icmp ult ptr %i.atn, %i.atp
  br i1 %i.atq, label %.lr.ph.i.i.i.i565, label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i564

.lr.ph.i.i.i.i565:                                ; preds = %bb.da, %.lr.ph.i.i.i.i565
  %.06.i.i.i.i566 = phi ptr [ %i.ats, %.lr.ph.i.i.i.i565 ], [ %i.atn, %bb.da ] ; 3 uses
  %i.atr = load ptr, ptr %.06.i.i.i.i566, align 8, !tbaa !123
  call void @_ZdlPvm(ptr noundef %i.atr, i64 noundef 512) #23
  %i.ats = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i566, i64 8
  %i.att = icmp ult ptr %.06.i.i.i.i566, %i.ato
  br i1 %i.att, label %.lr.ph.i.i.i.i565, label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i567, !llvm.loop !2

_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i567: ; preds = %.lr.ph.i.i.i.i565
  %.pre.i.i.i568 = load ptr, ptr %6, align 8, !tbaa !135
  br label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i564

_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i564: ; preds = %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i567, %bb.da
  %i.atu = phi ptr [ %.pre.i.i.i568, %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i567 ], [ %i.atk, %bb.da ]
  %i.atv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.atw = load i64, ptr %i.atv, align 8, !tbaa !137
  %i.atx = shl i64 %i.atw, 3
  call void @_ZdlPvm(ptr noundef %i.atu, i64 noundef %i.atx) #23
  br label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit569

_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit569: ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562, %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i564
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn295.pn.pn.pn
}

end_hunk_1
