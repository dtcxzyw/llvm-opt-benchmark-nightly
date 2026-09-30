Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset?download=true
inline.NumInlined: 6241
inline.NumDeleted: 2000
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lET_S7_S7_S7_T1_S8_T0_S8_:bb.a
  %i.an = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit, %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit
  %.sroa.032.0 = phi ptr [ %i.s, %_ZSt4moveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEEET0_T_S8_S7_.exit ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !274  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !273    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !205  ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !200    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775804
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !185

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #37
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !184
  %.pre44 = ptrtoint ptr %.pre43 to i64
  %.pre45 = ptrtoint ptr %.pre to i64
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi46 = phi i64 [ %.pre45, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.v, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre44, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.u, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.z = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.t, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ null, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !200
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !205
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !201
  %i.ae = sub i64 %.pre-phi, %.pre-phi46          ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 4
  br i1 %i.af, label %bb.d, label %bb.e, !prof !188

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.z, i64 %i.ae, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.ae, 4
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !138
  store i32 %i.ah, ptr %i.aa, align 4, !tbaa !138
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !205
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !184, !alias.scope !548, !noalias !547
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !184, !alias.scope !547, !noalias !548
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !201, !alias.scope !548, !noalias !547
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !201, !alias.scope !547, !noalias !548
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !548, !noalias !547
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ao, %.lr.ph.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %i.ap, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.aq = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !184, !alias.scope !550, !noalias !549
  store <2 x ptr> %i.aq, ptr %.012.i.i.i29, align 8, !tbaa !184, !alias.scope !549, !noalias !550
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !201, !alias.scope !550, !noalias !549
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !201, !alias.scope !549, !noalias !550
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !550, !noalias !549
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !13

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ap, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.av, %.lr.ph.i.i.i28 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !275
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #36
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !273
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !274
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !275
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = tail call ptr @__cxa_begin_catch(ptr %i.bd) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #36
  invoke void @__cxa_rethrow() #38
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.l:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #40
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM7Dataset9ConstructEPSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS3_EESaIS6_EEiRKS1_IS1_IdSaIdEESaISB_EEPPiPPdPKiimRKNS_6ConfigE(ptr noundef nonnull align 8 dereferenceable(864) initializes((84, 88)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(1656) %9) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::vector.3", align 8    ; 15 uses
  %11 = alloca %"class.std::vector.120", align 16 ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::vector.64", align 8   ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::vector.120", align 16 ; 10 uses
  %18 = alloca %"class.std::vector.82", align 8   ; 14 uses
  %19 = alloca %"class.std::unique_ptr.74", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !303
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !168    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = icmp eq i32 %2, %i.i
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, i32 noundef 340)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !268 ; 2 uses
  %.pre474 = load ptr, ptr %1, align 8, !tbaa !168 ; 2 uses
  %.pre490 = ptrtoint ptr %.pre to i64
  %.pre491 = ptrtoint ptr %.pre474 to i64
  %.pre493 = sub i64 %.pre490, %.pre491
  %.pre495 = lshr exact i64 %.pre493, 3
  %.pre497 = trunc i64 %.pre495 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi498 = phi i32 [ %.pre497, %bb.b ], [ %i.i, %bb.a ]
  %i.k = phi ptr [ %.pre474, %bb.b ], [ %i.d, %bb.a ]
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.m = icmp sgt i32 %.pre-phi498, 0
  br i1 %i.m, label %.lr.ph, label %.thread610

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  store ptr %i.au, ptr %i.n, align 8
  store ptr %i.at, ptr %i.o, align 8
  store ptr %i.av, ptr %10, align 8
  %.not666 = icmp eq ptr %i.av, %i.au
  br i1 %.not666, label %.thread610, label %bb.n

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.p = phi ptr [ %i.k, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 4 uses
  %i.q = phi ptr [ %i.l, %.lr.ph ], [ %i.as, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 4 uses
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.at, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 7 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.au, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 7 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.av, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 11 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !170  ; 2 uses
  %.not326 = icmp eq ptr %i.v, null
  br i1 %.not326, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i8, ptr %i.w, align 8, !tbaa !572, !range !129, !noundef !130
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.z, ptr %i.s, align 4, !tbaa !138
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = ptrtoint ptr %i.r to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775804
  br i1 %i.ae, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.s, ptr %i.n, align 8
  store ptr %i.r, ptr %i.o, align 8
  store ptr %i.t, ptr %10, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc unwind label %.loopexit.split-lp346

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.af = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 2305843009213693951)
  %i.aj = select i1 %i.ah, i64 2305843009213693951, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #37
          to label %.noexc116 unwind label %.loopexit345 ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !138
  %i.ao = icmp sgt i64 %i.ad, 0
  br i1 %i.ao, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc116
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %i.t, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc116
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  %.pre475 = load ptr, ptr %i.b, align 8, !tbaa !268
  %.pre476 = load ptr, ptr %1, align 8, !tbaa !168
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

.loopexit345:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit347 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %i.n, align 8
  store ptr %i.r, ptr %i.o, align 8
  store ptr %i.t, ptr %10, align 8
  br label %bb.dk

.loopexit.split-lp346:                            ; preds = %bb.j
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.h, %bb.e, %bb.f
  %i.ar = phi ptr [ %.pre476, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.p, %bb.h ], [ %i.p, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %i.as = phi ptr [ %.pre475, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.q, %bb.h ], [ %i.q, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.at = phi ptr [ %i.aq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.r, %bb.h ], [ %i.r, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  %i.au = phi ptr [ %i.ap, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.aa, %bb.h ], [ %i.s, %bb.e ], [ %i.s, %bb.f ] ; 5 uses
  %i.av = phi ptr [ %i.al, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.t, %bb.h ], [ %i.t, %bb.e ], [ %i.t, %bb.f ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %sext = shl i64 %i.ay, 29
  %i.az = ashr i64 %sext, 32
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.e, label %bb.d, !llvm.loop !551

.thread610:                                       ; preds = %bb.c, %bb.d
  %.lcssa382612 = phi ptr [ %i.av, %bb.d ], [ null, %bb.c ]
  %i.bb = phi ptr [ %i.au, %bb.d ], [ null, %bb.c ]
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.39)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.thread610
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.n:                                             ; preds = %.thread610, %bb.d
  %i.bd = phi i1 [ false, %.thread610 ], [ true, %bb.d ]
  %.lcssa382613 = phi ptr [ %.lcssa382612, %.thread610 ], [ %i.av, %bb.d ]
  %i.be = phi ptr [ %i.bb, %.thread610 ], [ %i.au, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZN8LightGBM18OneFeaturePerGroupERKSt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.120") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %._crit_edge.i.i unwind label %bb.p

._crit_edge.i.i:                                  ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 892
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !581, !range !129, !noundef !130 ; 4 uses
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.bj, ptr %12, align 8, !tbaa !43
  store i32 1633973603, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.bk, align 8, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i8 0, ptr %i.bl, align 4, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 264 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !49
  %i.bo = icmp eq i64 %i.bn, 4
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = load i32, ptr %i.bj, align 1
  %i.bs = icmp ne i32 %i.bq, %i.br
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i32 2, ptr @_ZN8LightGBM12LGBM_config_14current_deviceE, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.bv, ptr %13, align 8, !tbaa !43
  store i32 1633973603, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 4, ptr %i.bw, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i8 0, ptr %i.bx, align 4, !tbaa !48
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = load i32, ptr %i.bv, align 1
  %i.cb = icmp ne i32 %i.bz, %i.ca
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = and i1 %i.cd, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br i1 %i.ce, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.41)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.q:                                             ; preds = %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.089 = phi i8 [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ 0, %bb.o ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ch = ptrtoint ptr %i.be to i64
  %i.ci = ptrtoint ptr %.lcssa382613 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2                 ; 4 uses
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc127 unwind label %bb.ab

.noexc127:                                        ; preds = %bb.s
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.r
  br i1 %i.bd, label %bb.t, label %.thread614

.thread614:                                       ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %bb.ad

bb.t:                                             ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #37
          to label %bb.u unwind label %bb.ab      ; 3 uses

bb.u:                                             ; preds = %bb.t
  store ptr %i.cm, ptr %14, align 8, !tbaa !207
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %21, ptr %22, align 8, !tbaa !293
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cm, i8 0, i64 %i.ck, i1 false)
  store ptr %21, ptr %20, align 8, !tbaa !282
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 893
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !582, !range !129, !noundef !130
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %._crit_edge.i.i129, label %bb.ad

._crit_edge.i.i129:                               ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.cq, ptr %15, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cq, ptr noundef nonnull align 1 dereferenceable(3) @.str.42, i64 3, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 3, ptr %i.cr, align 8, !tbaa !49
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 19
  store i8 0, ptr %i.cs, align 1, !tbaa !48
  %i.ct = load i64, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 3
  br i1 %i.cu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134.thread317

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134: ; preds = %._crit_edge.i.i129
  %i.cv = load ptr, ptr %i.bi, align 8, !tbaa !47 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 1
  %i.cx = load i16, ptr %i.cq, align 1
  %i.cy = xor i16 %i.cw, %i.cx
  %i.cz = getelementptr i8, ptr %i.cv, i64 2
  %i.da = getelementptr i8, ptr %i.cq, i64 2
  %i.db = load i8, ptr %i.cz, align 1
  %i.dc = load i8, ptr %i.da, align 1
  %i.dd = zext i8 %i.db to i16
  %i.de = zext i8 %i.dc to i16
  %i.df = xor i16 %i.dd, %i.de
  %i.dg = or i16 %i.cy, %i.df
  %i.dh = icmp ne i16 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134.thread317.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134.thread317.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134.thread317: ; preds = %._crit_edge.i.i129
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dk, ptr %16, align 8, !tbaa !43
  store i32 1633973603, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 4, ptr %i.dl, align 8, !tbaa !49
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i8 0, ptr %i.dm, align 4, !tbaa !48
  %i.dn = icmp eq i64 %i.ct, 4
  br i1 %i.dn, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134.thread317
  %i.do = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = load i32, ptr %i.dk, align 1
  %i.dr = icmp ne i32 %i.dp, %i.dq
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134.thread317.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134.thread317, %bb.v
  %.ph = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134.thread317 ], [ %i.dt, %bb.v ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134.thread317.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.du = phi i1 [ %.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit134 ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre478 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.dv = trunc i64 %8 to i32
  %i.dw = trunc nuw i8 %.089 to i1
  invoke void @_ZN8LightGBM19FastFeatureBundlingERKSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS2_EESaIS5_EEPPiPPdPKiiiRKS0_IiSaIiEEibbPS0_IaSaIaEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.120") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %.pre478, i1 noundef zeroext %i.du, i1 noundef zeroext %i.dw, ptr noundef nonnull %14)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.dx = load ptr, ptr %11, align 16, !tbaa !273 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !274 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 16, !tbaa !275
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ed = load <2 x ptr>, ptr %17, align 16, !tbaa !288
  store <2 x ptr> %i.ed, ptr %11, align 16, !tbaa !288
  %i.ee = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 16, !tbaa !275
  store ptr %i.ef, ptr %i.ea, align 16, !tbaa !275
  %.not4.i.i.i.i.i = icmp eq ptr %i.dx, %i.dz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.em, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i ], [ %i.dx, %bb.w ] ; 3 uses
  %i.eg = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !201
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #36
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.em, %i.dz
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i, %bb.w
  %.not.i.i1.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.en = ptrtoint ptr %i.eb to i64
  %i.eo = ptrtoint ptr %i.dx to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ep) #36
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit:      ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.y
  %i.eq = load ptr, ptr %17, align 16, !tbaa !273 ; 3 uses
  %i.er = load ptr, ptr %i.ec, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ey, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.eq, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %i.es = load ptr, ptr %.05.i.i.i, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !201
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #36
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.z, %.lr.ph.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %i.ey, %i.er
  br i1 %.not.i.i.i147, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !273
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit
  %i.ez = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.eq, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.fa = load ptr, ptr %i.ee, align 16, !tbaa !275
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fd) #36
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ad

bb.ab:                                            ; preds = %bb.t, %bb.s
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit262

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit225

bb.ad:                                            ; preds = %.thread614, %bb.u, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  store i32 0, ptr %i.fg, align 8, !tbaa !304
  %i.fh = load ptr, ptr %11, align 16, !tbaa !288 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !288 ; 2 uses
  %.not325394 = icmp eq ptr %i.fh, %i.fj
  br i1 %.not325394, label %bb.ae, label %.lr.ph397

._crit_edge398:                                   ; preds = %.lr.ph397
  store i32 %i.ga, ptr %i.fg, align 8, !tbaa !304
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge398, %bb.ad
  %i.fk = load i32, ptr %i.a, align 4, !tbaa !303 ; 3 uses
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = icmp slt i32 %i.fk, 0
  br i1 %i.fm, label %bb.af, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc154 unwind label %bb.bc

.noexc154:                                        ; preds = %bb.af
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ae
  %.not.i.i.i.i151 = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i.i151, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fn = shl nuw nsw i64 %i.fl, 2                ; 3 uses
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #37
          to label %.noexc155 unwind label %bb.bc ; 4 uses

.noexc155:                                        ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fo, i8 -1, i64 %i.fn, i1 false), !tbaa !138
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fl
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

.lr.ph397:                                        ; preds = %bb.ad, %.lr.ph397
  %i.fr = phi i32 [ %i.ga, %.lr.ph397 ], [ 0, %bb.ad ]
  %.sroa.0301.0395 = phi ptr [ %i.gb, %.lr.ph397 ], [ %i.fh, %bb.ad ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0301.0395, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !205
  %i.fu = load ptr, ptr %.sroa.0301.0395, align 8, !tbaa !200
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr exact i64 %i.fx, 2
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = add nsw i32 %i.fr, %i.fz                ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0301.0395, i64 24 ; 2 uses
  %.not325 = icmp eq ptr %i.gb, %i.fj
  br i1 %.not325, label %._crit_edge398, label %.lr.ph397

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc155, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0287.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.fo, %.noexc155 ]
  %.sroa.11290.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.fp, %.noexc155 ]
  %.0.i.i.i.i.i.i.i153 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.fq, %.noexc155 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !200 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !201
  store ptr %.sroa.0287.0, ptr %i.gc, align 8, !tbaa !200
  store ptr %.0.i.i.i.i.i.i.i153, ptr %i.ge, align 8, !tbaa !205
  store ptr %.sroa.11290.0, ptr %i.gf, align 8, !tbaa !201
  %.not.i.i.i.i.i156 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i156, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.gd to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gj) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.gk = load ptr, ptr %i.fi, align 8, !tbaa !274
  %i.gl = load ptr, ptr %11, align 16, !tbaa !273
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = sdiv exact i64 %i.go, 24
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  store i32 %i.gq, ptr %i.gr, align 8, !tbaa !95
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.gt = load i32, ptr %i.fg, align 8, !tbaa !304
  %i.gu = sext i32 %i.gt to i64                   ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !205 ; 2 uses
  %i.gx = load ptr, ptr %i.gs, align 8, !tbaa !200 ; 2 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 2                 ; 3 uses
  %i.hc = icmp ult i64 %i.hb, %i.gu
  br i1 %i.hc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.hd = sub nuw nsw i64 %i.gu, %i.hb
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i64 noundef %i.hd)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.bd

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.ai
  %.pre479 = load i32, ptr %i.fg, align 8, !tbaa !304
  %.pre499 = sext i32 %.pre479 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.he = icmp ugt i64 %i.hb, %i.gu
  br i1 %i.he, label %bb.ak, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gu ; 2 uses
  %.not.i.i = icmp eq ptr %i.gw, %i.hf
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ak
  store ptr %i.hf, ptr %i.gv, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.ak, %bb.aj
  %.pre-phi500 = phi i64 [ %.pre499, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.gu, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.gu, %bb.ak ], [ %i.gu, %bb.aj ] ; 7 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !205 ; 2 uses
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !200 ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = ashr exact i64 %i.hm, 2                 ; 3 uses
  %i.ho = icmp ult i64 %i.hn, %.pre-phi500
  br i1 %i.ho, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.hp = sub nuw nsw i64 %.pre-phi500, %i.hn
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, i64 noundef %i.hp)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit162_crit_edge unwind label %bb.bd

._ZNSt6vectorIiSaIiEE6resizeEm.exit162_crit_edge: ; preds = %bb.al
  %.pre480 = load i32, ptr %i.fg, align 8, !tbaa !304
  %.pre501 = sext i32 %.pre480 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit162

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.hq = icmp ugt i64 %i.hn, %.pre-phi500
  br i1 %i.hq, label %bb.an, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit162

bb.an:                                            ; preds = %bb.am
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.pre-phi500 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.hi, %i.hr
  br i1 %.not.i.i159, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit162, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i160

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i160:     ; preds = %bb.an
  store ptr %i.hr, ptr %i.hh, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit162

_ZNSt6vectorIiSaIiEE6resizeEm.exit162:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit162_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i160, %bb.an, %bb.am
  %.pre-phi502 = phi i64 [ %.pre501, %._ZNSt6vectorIiSaIiEE6resizeEm.exit162_crit_edge ], [ %.pre-phi500, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i160 ], [ %.pre-phi500, %bb.an ], [ %.pre-phi500, %bb.am ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !205 ; 2 uses
  %i.hv = load ptr, ptr %i.hs, align 8, !tbaa !200 ; 2 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 2                 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %.pre-phi502
  br i1 %i.ia, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit162
  %i.ib = sub nuw nsw i64 %.pre-phi502, %i.hz
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 noundef %i.ib)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166 unwind label %bb.bd

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit162
  %i.ic = icmp ugt i64 %i.hz, %.pre-phi502
  br i1 %i.ic, label %bb.aq, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166

bb.aq:                                            ; preds = %bb.ap
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %.pre-phi502 ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.hu, %i.id
  br i1 %.not.i.i163, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i164

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i164:     ; preds = %bb.aq
  store ptr %i.id, ptr %i.ht, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit166

_ZNSt6vectorIiSaIiEE6resizeEm.exit166:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i164, %bb.aq, %bb.ap, %bb.ao
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !200 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !205
  %.not.i.i167 = icmp eq ptr %i.ih, %i.if
  br i1 %.not.i.i167, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i168

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i168:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit166
end_hunk_0
