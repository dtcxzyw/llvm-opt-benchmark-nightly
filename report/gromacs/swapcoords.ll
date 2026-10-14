Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/swapcoords?download=true
inline.NumInlined: 2349
inline.NumDeleted: 1072
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_Z19write_sto_conf_mtopRKNSt10filesystem7__cxx114pathEPKcRK10gmx_mtop_tPA3_KfSB_7PbcTypeSB_

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA36_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(36) %1, i8 noundef zeroext %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %1) #25 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.b, ptr %i.a, align 8, !tbaa !253
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !75
  %i.f = load i64, ptr %i.a, align 8, !tbaa !253
  store i64 %i.f, ptr %i.c, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !22
  store i8 %i.h, ptr %i.g, align 1, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !253  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !21
  %i.k = load ptr, ptr %0, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !212  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !214    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !257
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !198
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !198
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !213
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !198
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !198
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !257
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #28
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !214
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !213
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !257
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL29sortMoleculesIntoCompartmentsP9t_swapgrpRKN3gmx7MpiCommERK12t_swapcoordsPN10SwapCoords4ImplEPA3_KflP8_IO_FILEbb(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef captures(address_is_null) %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #18 personality ptr @__gxx_personality_v0 {
.split:
  %9 = alloca %"class.gmx::BasicVector", align 8  ; 6 uses
  %10 = alloca %"class.gmx::BasicVector", align 8 ; 6 uses
  %11 = alloca %"class.gmx::BasicVector", align 4 ; 7 uses
  %12 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %13 = alloca %"class.gmx::BasicVector", align 8 ; 5 uses
  %14 = alloca %"class.gmx::BasicVector", align 4 ; 6 uses
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 8, !tbaa !198 ; 2 uses
  %i.d = fmul <2 x float> %i.c, %i.c              ; 2 uses
  %i.e = load i32, ptr %2, align 8, !tbaa !84
  %i.f = sext i32 %i.e to i64
  %i.g = sdiv i64 %5, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !85
  %i.j = sext i32 %i.i to i64
  %i.k = srem i64 %i.g, %i.j                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.212.0..sroa_idx.i86.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0..sroa_idx.i87.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 424 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 392 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = icmp sgt i64 %i.k, -1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ai = extractelement <2 x float> %i.d, i64 0
  %i.aj = extractelement <2 x float> %i.d, i64 1
  br label %bb.b

bb.a:                                             ; preds = %bb.aq
  %i.ak = load i32, ptr %i.q, align 4, !tbaa !86
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond3 = or i1 %8, %i.al
  br i1 %or.cond3, label %bb.at, label %bb.ar

bb.b:                                             ; preds = %.split, %bb.aq
  %i.am = phi i1 [ false, %.split ], [ true, %bb.aq ] ; 5 uses
  %i.an = phi i1 [ true, %.split ], [ false, %bb.aq ]
  %.sroa.7.0158 = phi i32 [ undef, %.split ], [ %.sroa.7.1.lcssa, %bb.aq ]
  %.sroa.0118.0157 = phi i32 [ undef, %.split ], [ %.sroa.0118.1.lcssa, %bb.aq ]
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !197 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.aq = load i32, ptr %3, align 8, !tbaa !183
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !198 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 704
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar
  %i.aw = load float, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = fcmp olt float %i.at, %i.aw             ; 2 uses
  %..i = select i1 %i.ax, float %i.at, float %i.aw ; 2 uses
  %.30.i = select i1 %i.ax, float %i.aw, float %i.at ; 2 uses
  br i1 %i.am, label %bb.c, label %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ar
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ar
  %i.ba = load float, ptr %i.az, align 4, !tbaa !198
  %i.bb = fadd float %..i, %i.ba
  store i32 0, ptr %16, align 8, !tbaa !227
  br label %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit.a

_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit: ; preds = %bb.b
  store i32 0, ptr %i.n, align 8, !tbaa !227
  br label %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit.a

_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit.a: ; preds = %bb.c, %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit
  %17 = phi ptr [ %i.n, %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit ], [ %16, %bb.c ] ; 12 uses
  %18 = phi i64 [ 0, %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit ], [ 1, %bb.c ]
  %.1.i = phi float [ %.30.i, %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit ], [ %i.bb, %bb.c ] ; 2 uses
  %.124.i126 = phi float [ %..i, %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit ], [ %.30.i, %bb.c ] ; 2 uses
  %.sroa.0118.3 = phi i32 [ 0, %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit ], [ %.sroa.0118.0157, %bb.c ] ; 2 uses
  %.sroa.7.3 = phi i32 [ %.sroa.7.0158, %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit ], [ 0, %bb.c ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !187 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !186
  %.not.i.i = icmp eq ptr %i.bf, %i.bd
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit.a
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !214 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 5 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !213
  %.not.i.i105 = icmp eq ptr %i.bj, %i.bh
  br i1 %.not.i.i105, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !213
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.bk = call noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %18
  %i.bo = fadd float %.1.i, %.124.i126
  %i.bp = fmul float %i.bo, 5.000000e-01          ; 3 uses
  %i.bq = fsub float %.1.i, %i.bp                 ; 2 uses
  %i.br = fsub float %.124.i126, %i.bp            ; 2 uses
  %i.bs = fsub float %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.ak, %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %.sroa.0118.1.lcssa = phi i32 [ %.sroa.0118.3, %_ZNSt6vectorIfSaIfEE5clearEv.exit ], [ %.sroa.0118.2, %bb.ak ] ; 3 uses
  %.sroa.7.1.lcssa = phi i32 [ %.sroa.7.3, %_ZNSt6vectorIfSaIfEE5clearEv.exit ], [ %i.jc, %bb.ak ] ; 3 uses
  br i1 %8, label %bb.aq, label %bb.al

bb.d:                                             ; preds = %.lr.ph, %bb.ak
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ak ] ; 4 uses
  %i.bv = phi i32 [ 0, %.lr.ph ], [ %i.je, %bb.ak ] ; 4 uses
  %.sroa.7.1151 = phi i32 [ %.sroa.7.3, %.lr.ph ], [ %i.jc, %bb.ak ] ; 5 uses
  %.0119 = phi i32 [ %.sroa.0118.3, %.lr.ph ], [ %.sroa.0118.2, %bb.ak ] ; 5 uses
  %i.bw = load i32, ptr %3, align 8, !tbaa !183
  %i.bx = sext i32 %i.bv to i64                   ; 3 uses
  %i.by = load ptr, ptr %i.o, align 8, !tbaa !200
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.by, i64 %i.bx
  %i.ca = sext i32 %i.bw to i64                   ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !198
  %i.cd = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ca
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !198 ; 3 uses
  %i.cg = load float, ptr %i.bn, align 4, !tbaa !198
  %i.ch = fsub float %i.cc, %i.bp                 ; 3 uses
  %i.ci = fmul float %i.cf, 5.000000e-01          ; 3 uses
  %i.cj = fcmp ogt float %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi float [ %i.ch, %bb.d ], [ %i.cm, %.lr.ph.i ] ; 3 uses
  %i.ck = fneg float %i.ci                        ; 2 uses
  %i.cl = fcmp ugt float %.0.lcssa.i, %i.ck
  br i1 %i.cl, label %_ZL25compartment_contains_atomfffffPf.exit, label %.lr.ph29.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.027.i = phi float [ %i.cm, %.lr.ph.i ], [ %i.ch, %bb.d ]
  %i.cm = fsub float %.027.i, %i.cf               ; 3 uses
  %i.cn = fcmp ogt float %i.cm, %i.ci
  br i1 %i.cn, label %.lr.ph.i, label %.preheader.i, !llvm.loop !509

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.128.i = phi float [ %i.co, %.lr.ph29.i ], [ %.0.lcssa.i, %.preheader.i ]
  %i.co = fadd float %i.cf, %.128.i               ; 3 uses
  %i.cp = fcmp ugt float %i.co, %i.ck
  br i1 %i.cp, label %_ZL25compartment_contains_atomfffffPf.exit, label %.lr.ph29.i, !llvm.loop !510

_ZL25compartment_contains_atomfffffPf.exit:       ; preds = %.lr.ph29.i, %.preheader.i
  %.1.lcssa.i = phi float [ %.0.lcssa.i, %.preheader.i ], [ %i.co, %.lr.ph29.i ] ; 3 uses
  %i.cq = fmul float %i.cg, -5.000000e-01
  %i.cr = call float @llvm.fmuladd.f32(float %i.cq, float %i.bs, float %.1.lcssa.i)
  %i.cs = call noundef float @llvm.fabs.f32(float %i.cr) ; 2 uses
  %i.ct = fcmp oge float %.1.lcssa.i, %i.br
  %i.cu = fcmp olt float %.1.lcssa.i, %i.bq
  %i.cv = and i1 %i.ct, %i.cu
  br i1 %i.cv, label %bb.e, label %bb.aj

bb.e:                                             ; preds = %_ZL25compartment_contains_atomfffffPf.exit
  %i.cw = load ptr, ptr %i.be, align 8, !tbaa !186 ; 4 uses
  %i.cx = load ptr, ptr %i.bt, align 8, !tbaa !222
  %.not.i.i106 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.bv, ptr %i.cw, align 4, !tbaa !59
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store ptr %i.cy, ptr %i.be, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.g:                                             ; preds = %bb.e
  %i.cz = load ptr, ptr %i.bc, align 8, !tbaa !187 ; 4 uses
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = sub i64 %i.da, %i.db                    ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775804
  br i1 %i.dd, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.de = ashr exact i64 %i.dc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 2305843009213693951)
  %i.di = select i1 %i.dg, i64 2305843009213693951, i64 %i.dh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #27 ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 2 uses
  store i32 %i.bv, ptr %i.dl, align 4, !tbaa !59
  %i.dm = icmp sgt i64 %i.dc, 0
  br i1 %i.dm, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dk, ptr align 4 %i.cz, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.do = load ptr, ptr %i.bt, align 8, !tbaa !222
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dq) #28
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dk, ptr %i.bc, align 8, !tbaa !187
  store ptr %i.dn, ptr %i.be, align 8, !tbaa !186
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.dr, ptr %i.bt, align 8, !tbaa !222
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.f
  %i.ds = load ptr, ptr %i.bi, align 8, !tbaa !213 ; 4 uses
  %i.dt = load ptr, ptr %i.bu, align 8, !tbaa !257
  %.not.i3.i = icmp eq ptr %i.ds, %i.dt
  br i1 %.not.i3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  store float %i.cs, ptr %i.ds, align 4, !tbaa !198
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store ptr %i.du, ptr %i.bi, align 8, !tbaa !213
  br label %_ZL11add_to_listiP16swap_compartmentf.exit

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %i.dv = load ptr, ptr %i.bg, align 8, !tbaa !214 ; 4 uses
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 5 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775804
  br i1 %i.dz, label %bb.m, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ea = ashr exact i64 %i.dy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i4.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i4.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 2305843009213693951)
  %i.ee = select i1 %i.ec, i64 2305843009213693951, i64 %i.ed ; 3 uses
  %.not.i.i.i5.i = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i5.i)
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #27 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  store float %i.cs, ptr %i.eh, align 4, !tbaa !198
  %i.ei = icmp sgt i64 %i.dy, 0
  br i1 %i.ei, label %bb.n, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr align 4 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %.not.i17.i.i6.i = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i6.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.ek = load ptr, ptr %i.bu, align 8, !tbaa !257
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.em) #28
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.eg, ptr %i.bg, align 8, !tbaa !214
  store ptr %i.ej, ptr %i.bi, align 8, !tbaa !213
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.en, ptr %i.bu, align 8, !tbaa !257
  br label %_ZL11add_to_listiP16swap_compartmentf.exit

_ZL11add_to_listiP16swap_compartmentf.exit:       ; preds = %bb.k, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i
  %i.eo = load i32, ptr %17, align 8, !tbaa !227
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %17, align 8, !tbaa !227
  %i.eq = load i32, ptr %i.q, align 4, !tbaa !86
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.p, label %bb.ak

bb.p:                                             ; preds = %_ZL11add_to_listiP16swap_compartmentf.exit
  %i.es = load ptr, ptr %i.r, align 8, !tbaa !258
  %i.et = load ptr, ptr %i.s, align 8, !tbaa !258
  %i.eu = icmp eq ptr %i.es, %i.et
  %or.cond = or i1 %8, %i.eu
  br i1 %or.cond, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ev = call { ptr, ptr } @_ZNK3gmx12LocalAtomSet11globalIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.ew = extractvalue { ptr, ptr } %i.ev, 0
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.bx
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !59
  %i.ez = add nsw i32 %i.ey, 1                    ; 3 uses
  %i.fa = load ptr, ptr %i.o, align 8, !tbaa !200
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %i.bx ; 2 uses
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.fb, align 4 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.212.0.copyload = load float, ptr %.sroa.212.0..sroa_idx, align 4, !tbaa !22 ; 2 uses
  %i.fc = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv ; 9 uses
  %i.fe = load ptr, ptr %i.t, align 8, !tbaa !229
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !241
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv ; 6 uses
  %i.fh = load ptr, ptr %i.u, align 8, !tbaa !235
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !237
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.fk = load i32, ptr %3, align 8, !tbaa !183   ; 5 uses
  %i.fl = load ptr, ptr %i.l, align 8, !tbaa !197 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 232
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.fm, align 8
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 240
  %.sroa.213.0.copyload.i = load float, ptr %.sroa.213.0..sroa_idx.i, align 8, !tbaa !22
  %i.fn = load float, ptr %i.v, align 8, !tbaa !217
  %i.fo = load float, ptr %i.w, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store <2 x float> %.sroa.011.0.copyload, ptr %12, align 8
  store float %.sroa.212.0.copyload, ptr %.sroa.212.0..sroa_idx.i.i, align 8
  store <2 x float> %.sroa.012.0.copyload.i, ptr %13, align 8
  store float %.sroa.213.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %i.x, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14)
  %i.fp = sext i32 %i.fk to i64                   ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !198 ; 2 uses
  %i.fs = fcmp ogt float %i.fr, %i.fn
  %i.ft = fneg float %i.fo
  %i.fu = fcmp olt float %i.fr, %i.ft
  %or.cond.i.i = or i1 %i.fs, %i.fu
  br i1 %or.cond.i.i, label %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fv = add nuw nsw i32 %i.fk, 2
  %i.fw = srem i32 %i.fv, 3
  %i.fx = add nuw nsw i32 %i.fk, 1
  %i.fy = srem i32 %i.fx, 3
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !198 ; 2 uses
  %i.gc = sext i32 %i.fw to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !198 ; 2 uses
  %i.gf = fmul float %i.ge, %i.ge
  %i.gg = call float @llvm.fmuladd.f32(float %i.gb, float %i.gb, float %i.gf)
  %i.gh = fcmp ule float %i.gg, %i.ai
  br label %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i

_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i: ; preds = %bb.r, %bb.q
  %.0.i.i = phi i1 [ false, %bb.q ], [ %i.gh, %bb.r ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.gi = load ptr, ptr %i.l, align 8, !tbaa !197 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 704
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.gj, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 712
  %.sroa.25.0.copyload.i = load float, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !22
  %i.gk = load float, ptr %i.y, align 4, !tbaa !219
  %i.gl = load float, ptr %i.z, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x float> %.sroa.011.0.copyload, ptr %9, align 8
  store float %.sroa.212.0.copyload, ptr %.sroa.212.0..sroa_idx.i86.i, align 8
  store <2 x float> %.sroa.04.0.copyload.i, ptr %10, align 8
  store float %.sroa.25.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i87.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %i.x, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.fp
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !198 ; 2 uses
  %i.go = fcmp ogt float %i.gn, %i.gk
  %i.gp = fneg float %i.gl
  %i.gq = fcmp olt float %i.gn, %i.gp
  %or.cond.i88.i = or i1 %i.go, %i.gq
  br i1 %or.cond.i88.i, label %.thread.i, label %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit90.i

_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit90.i: ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i
  %i.gr = add nuw nsw i32 %i.fk, 2
  %i.gs = srem i32 %i.gr, 3
  %i.gt = add nuw nsw i32 %i.fk, 1
  %i.gu = srem i32 %i.gt, 3
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !198 ; 2 uses
  %i.gy = sext i32 %i.gs to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.gy
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !198 ; 2 uses
  %i.hb = fmul float %i.ha, %i.ha
  %i.hc = call float @llvm.fmuladd.f32(float %i.gx, float %i.gx, float %i.hb)
  %i.hd = fcmp ule float %i.hc, %i.aj             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %or.cond.i = and i1 %.0.i.i, %i.hd
  br i1 %or.cond.i, label %.thread98.i, label %bb.s

.thread98.i:                                      ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit90.i
  %i.he = load i32, ptr %i.ab, align 8, !tbaa !246
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.ab, align 8, !tbaa !246
  store i32 0, ptr %i.fd, align 4, !tbaa !244
  store i32 0, ptr %i.fg, align 4, !tbaa !244
  store i32 0, ptr %i.fj, align 4, !tbaa !240
  %.pre.i = load i32, ptr %i.fd, align 4, !tbaa !244
  br label %bb.z

bb.s:                                             ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit90.i
  br i1 %.0.i.i, label %bb.t, label %bb.u

.thread.i:                                        ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %.0.i.i, label %bb.t, label %.thread96.i

bb.t:                                             ; preds = %.thread.i, %bb.s
  store i32 1, ptr %i.fj, align 4, !tbaa !240
  store i32 0, ptr %i.fd, align 4, !tbaa !244
  %i.hg = load i32, ptr %i.ac, align 8, !tbaa !59
  %i.hh = add nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.ac, align 8, !tbaa !59
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  br i1 %i.hd, label %bb.v, label %.thread96.i

bb.v:                                             ; preds = %bb.u
  store i32 2, ptr %i.fj, align 4, !tbaa !240
  store i32 0, ptr %i.fd, align 4, !tbaa !244
  %i.hi = load i32, ptr %i.aa, align 4, !tbaa !59
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.aa, align 4, !tbaa !59
  br label %bb.y

.thread96.i:                                      ; preds = %bb.u, %.thread.i
  br i1 %i.an, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread96.i
  store i32 1, ptr %i.fd, align 4, !tbaa !244
  br label %bb.y

bb.x:                                             ; preds = %.thread96.i
  store i32 2, ptr %i.fd, align 4, !tbaa !244
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %.not.i = phi i1 [ true, %bb.t ], [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.v ]
  %i.hk = phi i32 [ 0, %bb.t ], [ 1, %bb.w ], [ 2, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.pr.i = load i32, ptr %i.fg, align 4, !tbaa !244 ; 3 uses
  %i.hl = icmp eq i32 %.pr.i, 0
  br i1 %i.hl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %.thread98.i
  %i.hm = phi i32 [ %.pre.i, %.thread98.i ], [ %i.hk, %bb.y ]
  store i32 %i.hm, ptr %i.fg, align 4, !tbaa !244
  br label %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit

bb.aa:                                            ; preds = %bb.y
  %.not83.i = icmp eq i32 %.pr.i, %i.hk
  %or.cond85.i = or i1 %.not.i, %.not83.i
  br i1 %or.cond85.i, label %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hn = load i32, ptr %i.fj, align 4, !tbaa !240 ; 3 uses
  switch i32 %i.hn, label %bb.ag [
    i32 0, label %bb.ac
    i32 1, label %bb.af
    i32 2, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ho = load i32, ptr %i.ae, align 8, !tbaa !260
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !260
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.hr = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75
  %i.hs = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %5, ptr noundef nonnull %i.a)
  %i.ht = load i32, ptr %i.fg, align 4, !tbaa !244
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !60
  %i.hx = load i32, ptr %i.fd, align 4, !tbaa !244
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !60
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hq, ptr noundef nonnull @.str.71, ptr noundef %i.hr, ptr noundef %i.hs, i32 noundef range(i32 -2147483647, -2147483648) %i.ez, ptr noundef %i.hw, ptr noundef %i.ia) #30 ; 0 uses
  %i.ic = load ptr, ptr @stderr, align 8, !tbaa !77 ; 2 uses
  br i1 %7, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %fwrite84.i = call i64 @fwrite(ptr nonnull @.str.72, i64 53, i64 1, ptr %i.ic) #31 ; 0 uses
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.73, i64 109, i64 1, ptr %i.ic) #31 ; 0 uses
  %i.id = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.ie = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %5, ptr noundef nonnull %i.a)
  %i.if = load i32, ptr %i.fg, align 4, !tbaa !244
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.ij = load i32, ptr %i.fd, align 4, !tbaa !244
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !60
  %i.in = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.74, ptr noundef %i.ie, i32 noundef range(i32 -2147483647, -2147483648) %i.ez, ptr noundef %i.ii, ptr noundef %i.im) #25 ; 0 uses
  br label %bb.ai

bb.af:                                            ; preds = %bb.ab, %bb.ab
  %i.io = icmp ne i32 %i.hn, 1
  %..i107 = zext i1 %i.io to i64
  %i.ip = icmp eq i32 %.pr.i, 1
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %..i107 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !59
  %.100.i = select i1 %i.ip, i32 1, i32 -1
  %i.is = add nsw i32 %i.ir, %.100.i
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !59
  %i.it = zext nneg i32 %i.hn to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ChannelString, i64 %i.it
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !60
  %i.iw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.75, i32 noundef range(i32 -2147483647, -2147483648) %i.ez, ptr noundef %i.iv) #25 ; 0 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 1 dereferenceable(64) @.str.4, i8 noundef zeroext 2)
  %i.ix = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75
  %i.iy = load ptr, ptr %0, align 8, !tbaa !75
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 777, ptr noundef nonnull @.str.76, ptr noundef %i.ix, ptr noundef %i.iy) #29
          to label %bb.ah unwind label %common.resume

bb.ah:                                            ; preds = %bb.ag
  unreachable

common.resume:                                    ; preds = %bb.ag
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.iz

bb.ai:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.ja = load i32, ptr %i.fd, align 4, !tbaa !244
  store i32 %i.ja, ptr %i.fg, align 4, !tbaa !244
  store i32 0, ptr %i.fj, align 4, !tbaa !240
  br label %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit

_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit: ; preds = %bb.z, %bb.aa, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ak

bb.aj:                                            ; preds = %_ZL25compartment_contains_atomfffffPf.exit
  %.sroa.speculated = select i1 %i.am, i32 %.sroa.7.1151, i32 %.0119
  %i.jb = add nsw i32 %.sroa.speculated, 1        ; 2 uses
  %spec.select = select i1 %i.am, i32 %.0119, i32 %i.jb
  %spec.select132 = select i1 %i.am, i32 %i.jb, i32 %.sroa.7.1151
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZL11add_to_listiP16swap_compartmentf.exit, %bb.p, %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit
  %.sroa.0118.2 = phi i32 [ %.0119, %bb.p ], [ %.0119, %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit ], [ %.0119, %_ZL11add_to_listiP16swap_compartmentf.exit ], [ %spec.select, %bb.aj ] ; 2 uses
  %i.jc = phi i32 [ %.sroa.7.1151, %bb.p ], [ %.sroa.7.1151, %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit ], [ %.sroa.7.1151, %_ZL11add_to_listiP16swap_compartmentf.exit ], [ %spec.select132, %bb.aj ] ; 2 uses
  %i.jd = load i32, ptr %i.ag, align 8, !tbaa !58
  %i.je = add nsw i32 %i.jd, %i.bv                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.jf = call noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = icmp slt i32 %i.je, %i.jg
  br i1 %i.jh, label %bb.d, label %._crit_edge, !llvm.loop !511

bb.al:                                            ; preds = %._crit_edge
  %i.ji = load i32, ptr %i.h, align 8, !tbaa !85  ; 4 uses
  br i1 %i.ah, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jj = load i32, ptr %17, align 8, !tbaa !227
  %i.jk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !187
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.k
  store i32 %i.jj, ptr %i.jm, align 4, !tbaa !59
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jn = icmp sgt i32 %i.ji, 0
  br i1 %i.jn, label %.lr.ph.i108, label %_ZL18update_time_windowP16swap_compartmentii.exit

.lr.ph.i108:                                      ; preds = %bb.an
  %i.jo = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !187 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.ji to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.jq = icmp ult i32 %i.ji, 8
  br i1 %i.jq, label %.epil.preheader, label %.lr.ph.i108.new

.lr.ph.i108.new:                                  ; preds = %.lr.ph.i108
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i108.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i108.new ], [ %indvars.iv.next.i.7, %bb.ao ] ; 9 uses
  %.01316.i = phi float [ 0.000000e+00, %.lr.ph.i108.new ], [ %i.ld, %bb.ao ]
  %niter = phi i64 [ 0, %.lr.ph.i108.new ], [ %niter.next.7, %bb.ao ]
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !59
  %i.jt = sitofp i32 %i.js to float
  %i.ju = fadd float %.01316.i, %i.jt
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !59
  %i.jy = sitofp i32 %i.jx to float
  %i.jz = fadd float %i.ju, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !59
  %i.kd = sitofp i32 %i.kc to float
  %i.ke = fadd float %i.jz, %i.kd
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !59
  %i.ki = sitofp i32 %i.kh to float
  %i.kj = fadd float %i.ke, %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !59
  %i.kn = sitofp i32 %i.km to float
  %i.ko = fadd float %i.kj, %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 20
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !59
  %i.ks = sitofp i32 %i.kr to float
  %i.kt = fadd float %i.ko, %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !59
  %i.kx = sitofp i32 %i.kw to float
  %i.ky = fadd float %i.kt, %i.kx
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 28
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !59
  %i.lc = sitofp i32 %i.lb to float
  %i.ld = fadd float %i.ky, %i.lc                 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !0

_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL18update_time_windowP16swap_compartmentii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa, %.lr.ph.i108
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i108 ], [ %indvars.iv.next.i.7, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa ]
  %.01316.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i108 ], [ %i.ld, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ap ] ; 2 uses
  %.01316.i.epil = phi float [ %.01316.i.epil.init, %.epil.preheader ], [ %i.lh, %bb.ap ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ap ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.i.epil
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !59
  %i.lg = sitofp i32 %i.lf to float
  %i.lh = fadd float %.01316.i.epil, %i.lg        ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL18update_time_windowP16swap_compartmentii.exit, label %bb.ap, !llvm.loop !512

_ZL18update_time_windowP16swap_compartmentii.exit: ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa, %bb.ap, %bb.an
  %.013.lcssa.i = phi float [ 0.000000e+00, %bb.an ], [ %i.ld, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa ], [ %i.lh, %bb.ap ]
  %i.li = sitofp i32 %i.ji to float
  %i.lj = fdiv float %.013.lcssa.i, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %17, i64 12
  store float %i.lj, ptr %i.lk, align 4, !tbaa !226
  br label %bb.aq

bb.aq:                                            ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit, %._crit_edge
  br i1 %i.am, label %bb.a, label %bb.b

bb.ar:                                            ; preds = %bb.a
  %i.ll = load i32, ptr %i.ab, align 8, !tbaa !246 ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.lo = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75 ; 2 uses
  %i.lp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ln, ptr noundef nonnull @.str.65, ptr noundef %i.lo, i32 noundef %i.ll, ptr noundef %i.lo, i64 noundef %5) #30 ; 0 uses
  %i.lq = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.lr = load i32, ptr %i.ab, align 8, !tbaa !246
  %i.ls = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lq, ptr noundef nonnull @.str.66, i32 noundef %i.lr) #25 ; 0 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !246
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.a
  %i.lt = icmp ne ptr %6, null
  %or.cond5 = and i1 %i.lt, %8
  br i1 %or.cond5, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lu = load i32, ptr %i.n, align 8, !tbaa !227
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !227
  %i.lx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.83, i32 noundef %i.lu, ptr noundef nonnull @.str.84, i32 noundef %i.lw) #25 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ly = call noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.lz = load i32, ptr %i.ag, align 8, !tbaa !58
  %i.ma = sext i32 %i.lz to i64
  %i.mb = udiv i64 %i.ly, %i.ma
  %i.mc = trunc i64 %i.mb to i32                  ; 4 uses
  %i.md = add nsw i32 %.sroa.7.1.lcssa, %.sroa.0118.1.lcssa
  %.not103 = icmp eq i32 %i.md, %i.mc
  br i1 %.not103, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.me = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.mf = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75
  %i.mg = load ptr, ptr %0, align 8, !tbaa !75
  %i.mh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.me, ptr noundef nonnull @.str.68, ptr noundef %i.mf, ptr noundef %i.mg, i32 noundef %.sroa.0118.1.lcssa, i32 noundef %.sroa.7.1.lcssa, i32 noundef %i.mc) #30 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.mi = load i32, ptr %i.n, align 8, !tbaa !227
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !227
  %i.ml = add nsw i32 %i.mk, %i.mi                ; 2 uses
  %.not104 = icmp eq i32 %i.ml, %i.mc
  br i1 %.not104, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mm = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.mn = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75
  %i.mo = load ptr, ptr %0, align 8, !tbaa !75
  %i.mp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mm, ptr noundef nonnull @.str.69, ptr noundef %i.mn, i32 noundef %i.mc, ptr noundef %i.mo, i32 noundef %i.ml) #30 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

declare noundef ptr @_Z12gmx_step_strlPc(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorI14ChannelHistorySaIS1_EESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorI14ChannelHistorySaIS1_EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt6vectorI14ChannelHistorySaIS1_EEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZSt8_DestroyISt6vectorI14ChannelHistorySaIS1_EEEvPT_.exit

_ZSt8_DestroyISt6vectorI14ChannelHistorySaIS1_EEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorI14ChannelHistorySaIS1_EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6vectorI14ChannelHistorySaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorI14ChannelHistorySaIS1_EESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorI6DomainSaIS1_EESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorI6DomainSaIS1_EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt6vectorI6DomainSaIS1_EEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !242
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZSt8_DestroyISt6vectorI6DomainSaIS1_EEEvPT_.exit

_ZSt8_DestroyISt6vectorI6DomainSaIS1_EEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorI6DomainSaIS1_EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6vectorI6DomainSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorI6DomainSaIS1_EESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
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
define linkonce_odr void @_ZNSt6vectorI6DomainSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !241    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !242
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !244
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIP6DomainmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !244
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIP6DomainmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP6DomainmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !245
  br label %bb.h
end_hunk_0
