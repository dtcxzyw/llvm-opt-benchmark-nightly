inline.NumInlined: 2349
inline.NumDeleted: 1072
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathC2IA36_cS1_EERKT_NS1_6formatE:bb.a
  store i64 %i.i, ptr %i.j, align 8, !tbaa !21
  %i.k = load ptr, ptr %0, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !24
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !335  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !24
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !344    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !481
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
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
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !302
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !302
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !343
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
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !302
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !302
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
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #28
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !344
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !343
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !481
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
  %.sroa.0 = alloca i32, align 4                  ; 4 uses
  %.sroa.4 = alloca i32, align 4                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 8, !tbaa !302 ; 2 uses
  %i.d = fmul <2 x float> %i.c, %i.c              ; 2 uses
  %i.e = load i32, ptr %2, align 8, !tbaa !96
  %i.f = sext i32 %i.e to i64
  %i.g = sdiv i64 %5, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !103
  %i.j = sext i32 %i.i to i64
  %i.k = srem i64 %i.g, %i.j                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
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
  %.sroa.212.0..sroa_idx.i85.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0..sroa_idx.i86.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 424 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 392 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = icmp sgt i64 %i.k, -1
  %i.ai = extractelement <2 x float> %i.d, i64 0
  %i.aj = extractelement <2 x float> %i.d, i64 1
  br label %bb.b

bb.a:                                             ; preds = %bb.aq
  %i.ak = load i32, ptr %i.q, align 4, !tbaa !104
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond3 = or i1 %8, %i.al
  br i1 %or.cond3, label %bb.at, label %bb.ar

bb.b:                                             ; preds = %.split, %bb.aq
  %i.am = phi i1 [ false, %.split ], [ true, %bb.aq ] ; 2 uses
  %i.an = phi i1 [ true, %.split ], [ false, %bb.aq ]
  %indvars.iv125.sroa.phi = phi ptr [ %.sroa.0, %.split ], [ %.sroa.4, %bb.aq ] ; 2 uses
  %indvars.iv125 = phi i64 [ 0, %.split ], [ 1, %bb.aq ] ; 2 uses
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !301 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.aq = load i32, ptr %3, align 8, !tbaa !195
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !302 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 704
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar
  %i.aw = load float, ptr %i.av, align 4, !tbaa !302 ; 3 uses
  %i.ax = fcmp olt float %i.at, %i.aw             ; 2 uses
  %..i = select i1 %i.ax, float %i.aw, float %i.at ; 2 uses
  %.30.i = select i1 %i.ax, float %i.at, float %i.aw ; 2 uses
  br i1 %i.am, label %bb.c, label %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ar
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ar
  %i.ba = load float, ptr %i.az, align 4, !tbaa !302
  %i.bb = fadd float %.30.i, %i.ba
  br label %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit

_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit: ; preds = %bb.b, %bb.c
  %.124.i = phi float [ %i.bb, %bb.c ], [ %..i, %bb.b ] ; 2 uses
  %.1.i = phi float [ %..i, %bb.c ], [ %.30.i, %bb.b ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %indvars.iv125 ; 13 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !371
  store i32 0, ptr %indvars.iv125.sroa.phi, align 4, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !209 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !207
  %.not.i.i = icmp eq ptr %i.bg, %i.be
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !207
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !344 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !343
  %.not.i.i105 = icmp eq ptr %i.bk, %i.bi
  br i1 %.not.i.i105, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !343
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.bl = call noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv125
  %i.bp = fadd float %.124.i, %.1.i
  %i.bq = fmul float %i.bp, 5.000000e-01          ; 3 uses
  %i.br = fsub float %.124.i, %i.bq               ; 2 uses
  %i.bs = fsub float %.1.i, %i.bq                 ; 2 uses
  %i.bt = fsub float %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.ak, %_ZNSt6vectorIfSaIfEE5clearEv.exit
  br i1 %8, label %bb.aq, label %bb.al

bb.d:                                             ; preds = %.lr.ph, %bb.ak
  %i.bw = phi i32 [ 0, %.lr.ph ], [ %i.iz, %bb.ak ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ak ] ; 4 uses
  %.099118 = phi i32 [ 0, %.lr.ph ], [ %i.jb, %bb.ak ] ; 4 uses
  %i.bx = load i32, ptr %3, align 8, !tbaa !195
  %i.by = sext i32 %.099118 to i64                ; 3 uses
  %i.bz = load ptr, ptr %i.o, align 8, !tbaa !304
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %i.by
  %i.cb = sext i32 %i.bx to i64                   ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !302
  %i.ce = getelementptr inbounds [12 x i8], ptr %4, i64 %i.cb
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cb
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !302 ; 3 uses
  %i.ch = load float, ptr %i.bo, align 4, !tbaa !302
  %i.ci = fsub float %i.cd, %i.bq                 ; 3 uses
  %i.cj = fmul float %i.cg, 5.000000e-01          ; 3 uses
  %i.ck = fcmp ogt float %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi float [ %i.ci, %bb.d ], [ %i.cn, %.lr.ph.i ] ; 3 uses
  %i.cl = fneg float %i.cj                        ; 2 uses
  %i.cm = fcmp ugt float %.0.lcssa.i, %i.cl
  br i1 %i.cm, label %_ZL25compartment_contains_atomfffffPf.exit, label %.lr.ph29.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.027.i = phi float [ %i.cn, %.lr.ph.i ], [ %i.ci, %bb.d ]
  %i.cn = fsub float %.027.i, %i.cg               ; 3 uses
  %i.co = fcmp ogt float %i.cn, %i.cj
  br i1 %i.co, label %.lr.ph.i, label %.preheader.i, !llvm.loop !510

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.128.i = phi float [ %i.cp, %.lr.ph29.i ], [ %.0.lcssa.i, %.preheader.i ]
  %i.cp = fadd float %i.cg, %.128.i               ; 3 uses
  %i.cq = fcmp ugt float %i.cp, %i.cl
  br i1 %i.cq, label %_ZL25compartment_contains_atomfffffPf.exit, label %.lr.ph29.i, !llvm.loop !511

_ZL25compartment_contains_atomfffffPf.exit:       ; preds = %.lr.ph29.i, %.preheader.i
  %.1.lcssa.i = phi float [ %.0.lcssa.i, %.preheader.i ], [ %i.cp, %.lr.ph29.i ] ; 3 uses
  %i.cr = fmul float %i.ch, -5.000000e-01
  %i.cs = call float @llvm.fmuladd.f32(float %i.cr, float %i.bt, float %.1.lcssa.i)
  %i.ct = call noundef float @llvm.fabs.f32(float %i.cs) ; 2 uses
  %i.cu = fcmp oge float %.1.lcssa.i, %i.bs
  %i.cv = fcmp olt float %.1.lcssa.i, %i.br
  %i.cw = and i1 %i.cu, %i.cv
  br i1 %i.cw, label %bb.e, label %bb.aj

bb.e:                                             ; preds = %_ZL25compartment_contains_atomfffffPf.exit
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !207 ; 4 uses
  %i.cy = load ptr, ptr %i.bu, align 8, !tbaa !359
  %.not.i.i106 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %.099118, ptr %i.cx, align 4, !tbaa !63
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store ptr %i.cz, ptr %i.bf, align 8, !tbaa !207
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.g:                                             ; preds = %bb.e
  %i.da = load ptr, ptr %i.bd, align 8, !tbaa !209 ; 4 uses
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775804
  br i1 %i.de, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.df = ashr exact i64 %i.dd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 2305843009213693951)
  %i.dj = select i1 %i.dh, i64 2305843009213693951, i64 %i.di ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %i.dl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #27 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.dd ; 2 uses
  store i32 %.099118, ptr %i.dm, align 4, !tbaa !63
  %i.dn = icmp sgt i64 %i.dd, 0
  br i1 %i.dn, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 4 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #28
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dl, ptr %i.bd, align 8, !tbaa !209
  store ptr %i.do, ptr %i.bf, align 8, !tbaa !207
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.dp, ptr %i.bu, align 8, !tbaa !359
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.f
  %i.dq = load ptr, ptr %i.bj, align 8, !tbaa !343 ; 4 uses
  %i.dr = load ptr, ptr %i.bv, align 8, !tbaa !481
  %.not.i3.i = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
end_hunk_0
begin_hunk_1_@_ZL29sortMoleculesIntoCompartmentsP9t_swapgrpRKN3gmx7MpiCommERK12t_swapcoordsPN10SwapCoords4ImplEPA3_KflP8_IO_FILEbb:.split

_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit89.i: ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i
  %i.gm = add nsw i32 %i.ff, 2
  %i.gn = srem i32 %i.gm, 3
  %i.go = add nsw i32 %i.ff, 1
  %i.gp = srem i32 %i.go, 3
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !302 ; 2 uses
  %i.gt = sext i32 %i.gn to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !302 ; 2 uses
  %i.gw = fmul float %i.gv, %i.gv
  %i.gx = call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gw)
  %i.gy = fcmp ule float %i.gx, %i.aj             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %or.cond.i = and i1 %.0.i.i, %i.gy
  br i1 %or.cond.i, label %.thread97.i, label %bb.s

.thread97.i:                                      ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit89.i
  %i.gz = load i32, ptr %i.ab, align 8, !tbaa !419
  %i.ha = add nsw i32 %i.gz, 1
  store i32 %i.ha, ptr %i.ab, align 8, !tbaa !419
  store i32 0, ptr %i.ey, align 4, !tbaa !409
  store i32 0, ptr %i.fb, align 4, !tbaa !409
  store i32 0, ptr %i.fe, align 4, !tbaa !399
  %.pre.i = load i32, ptr %i.ey, align 4, !tbaa !409
  br label %bb.z

bb.s:                                             ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit89.i
  br i1 %.0.i.i, label %bb.t, label %bb.u

.thread.i:                                        ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %.0.i.i, label %bb.t, label %.thread95.i

bb.t:                                             ; preds = %.thread.i, %bb.s
  store i32 1, ptr %i.fe, align 4, !tbaa !399
  store i32 0, ptr %i.ey, align 4, !tbaa !409
  %i.hb = load i32, ptr %i.ac, align 8, !tbaa !63
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ac, align 8, !tbaa !63
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  br i1 %i.gy, label %bb.v, label %.thread95.i

bb.v:                                             ; preds = %bb.u
  store i32 2, ptr %i.fe, align 4, !tbaa !399
  store i32 0, ptr %i.ey, align 4, !tbaa !409
  %i.hd = load i32, ptr %i.aa, align 4, !tbaa !63
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.aa, align 4, !tbaa !63
  br label %bb.y

.thread95.i:                                      ; preds = %bb.u, %.thread.i
  br i1 %i.an, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread95.i
  store i32 1, ptr %i.ey, align 4, !tbaa !409
  br label %bb.y

bb.x:                                             ; preds = %.thread95.i
  store i32 2, ptr %i.ey, align 4, !tbaa !409
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %.not.i = phi i1 [ true, %bb.t ], [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.v ]
  %i.hf = phi i32 [ 0, %bb.t ], [ 1, %bb.w ], [ 2, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.pr.i = load i32, ptr %i.fb, align 4, !tbaa !409 ; 3 uses
  %i.hg = icmp eq i32 %.pr.i, 0
  br i1 %i.hg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %.thread97.i
  %i.hh = phi i32 [ %.pre.i, %.thread97.i ], [ %i.hf, %bb.y ]
  store i32 %i.hh, ptr %i.fb, align 4, !tbaa !409
  br label %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit

bb.aa:                                            ; preds = %bb.y
  %.not83.i = icmp eq i32 %.pr.i, %i.hf
  %or.cond84.i = or i1 %.not.i, %.not83.i
  br i1 %or.cond84.i, label %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hi = load i32, ptr %i.fe, align 4, !tbaa !399 ; 3 uses
  switch i32 %i.hi, label %bb.ag [
    i32 0, label %bb.ac
    i32 1, label %bb.af
    i32 2, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.hj = load i32, ptr %i.ae, align 8, !tbaa !512
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr %i.ae, align 8, !tbaa !512
  %i.hl = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.hm = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.hn = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %5, ptr noundef nonnull %i.a)
  %i.ho = load i32, ptr %i.fb, align 4, !tbaa !409
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !64
  %i.hs = load i32, ptr %i.ey, align 4, !tbaa !409
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !64
  %i.hw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hl, ptr noundef nonnull @.str.71, ptr noundef %i.hm, ptr noundef %i.hn, i32 noundef range(i32 -2147483647, -2147483648) %i.eu, ptr noundef %i.hr, ptr noundef %i.hv) #30 ; 0 uses
  %i.hx = load ptr, ptr @stderr, align 8, !tbaa !94 ; 2 uses
  br i1 %7, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hy = call i64 @fwrite(ptr nonnull @.str.72, i64 53, i64 1, ptr %i.hx) #31 ; 0 uses
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.hz = call i64 @fwrite(ptr nonnull @.str.73, i64 109, i64 1, ptr %i.hx) #31 ; 0 uses
  %i.ia = load ptr, ptr %i.af, align 8, !tbaa !349
  %i.ib = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %5, ptr noundef nonnull %i.a)
  %i.ic = load i32, ptr %i.fb, align 4, !tbaa !409
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !64
  %i.ig = load i32, ptr %i.ey, align 4, !tbaa !409
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !64
  %i.ik = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.74, ptr noundef %i.ib, i32 noundef range(i32 -2147483647, -2147483648) %i.eu, ptr noundef %i.if, ptr noundef %i.ij) #25 ; 0 uses
  br label %bb.ai

bb.af:                                            ; preds = %bb.ab, %bb.ab
  %i.il = icmp ne i32 %i.hi, 1
  %..i107 = zext i1 %i.il to i64
  %i.im = icmp eq i32 %.pr.i, 1
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %..i107 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !63
  %.99.i = select i1 %i.im, i32 1, i32 -1
  %i.ip = add nsw i32 %i.io, %.99.i
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !63
  %i.iq = zext nneg i32 %i.hi to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ChannelString, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !64
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.75, i32 noundef range(i32 -2147483647, -2147483648) %i.eu, ptr noundef %i.is) #25 ; 0 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 1 dereferenceable(64) @.str.4, i8 noundef zeroext 2)
  %i.iu = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.iv = load ptr, ptr %0, align 8, !tbaa !93
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 777, ptr noundef nonnull @.str.76, ptr noundef %i.iu, ptr noundef %i.iv) #29
          to label %bb.ah unwind label %common.resume

bb.ah:                                            ; preds = %bb.ag
  unreachable

common.resume:                                    ; preds = %bb.ag
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.iw

bb.ai:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.ix = load i32, ptr %i.ey, align 4, !tbaa !409
  store i32 %i.ix, ptr %i.fb, align 4, !tbaa !409
  store i32 0, ptr %i.fe, align 4, !tbaa !399
  br label %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit

_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit: ; preds = %bb.z, %bb.aa, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ak

bb.aj:                                            ; preds = %_ZL25compartment_contains_atomfffffPf.exit
  %i.iy = add nsw i32 %i.bw, 1                    ; 2 uses
  store i32 %i.iy, ptr %indvars.iv125.sroa.phi, align 4, !tbaa !63
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL11add_to_listiP16swap_compartmentf.exit, %bb.p, %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit, %bb.aj
  %i.iz = phi i32 [ %i.bw, %_ZL11add_to_listiP16swap_compartmentf.exit ], [ %i.bw, %bb.p ], [ %i.bw, %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit ], [ %i.iy, %bb.aj ]
  %i.ja = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.jb = add nsw i32 %i.ja, %.099118             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.jc = call noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.jd = trunc i64 %i.jc to i32
  %i.je = icmp slt i32 %i.jb, %i.jd
  br i1 %i.je, label %bb.d, label %._crit_edge, !llvm.loop !513

bb.al:                                            ; preds = %._crit_edge
  %i.jf = load i32, ptr %i.h, align 8, !tbaa !103 ; 4 uses
  br i1 %i.ah, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jg = load i32, ptr %i.bc, align 8, !tbaa !371
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !209
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.k
  store i32 %i.jg, ptr %i.jj, align 4, !tbaa !63
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jk = icmp sgt i32 %i.jf, 0
  br i1 %i.jk, label %.lr.ph.i108, label %_ZL18update_time_windowP16swap_compartmentii.exit

.lr.ph.i108:                                      ; preds = %bb.an
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !209 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.jf to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.jn = icmp ult i32 %i.jf, 8
  br i1 %i.jn, label %.epil.preheader, label %.lr.ph.i108.new

.lr.ph.i108.new:                                  ; preds = %.lr.ph.i108
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i108.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i108.new ], [ %indvars.iv.next.i.7, %bb.ao ] ; 9 uses
  %.01316.i = phi float [ 0.000000e+00, %.lr.ph.i108.new ], [ %i.la, %bb.ao ]
  %niter = phi i64 [ 0, %.lr.ph.i108.new ], [ %niter.next.7, %bb.ao ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !63
  %i.jq = sitofp i32 %i.jp to float
  %i.jr = fadd float %.01316.i, %i.jq
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !63
  %i.jv = sitofp i32 %i.ju to float
  %i.jw = fadd float %i.jr, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !63
  %i.ka = sitofp i32 %i.jz to float
  %i.kb = fadd float %i.jw, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !63
  %i.kf = sitofp i32 %i.ke to float
  %i.kg = fadd float %i.kb, %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !63
  %i.kk = sitofp i32 %i.kj to float
  %i.kl = fadd float %i.kg, %i.kk
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 20
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !63
  %i.kp = sitofp i32 %i.ko to float
  %i.kq = fadd float %i.kl, %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !63
  %i.ku = sitofp i32 %i.kt to float
  %i.kv = fadd float %i.kq, %i.ku
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 28
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !63
  %i.kz = sitofp i32 %i.ky to float
  %i.la = fadd float %i.kv, %i.kz                 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !381

_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL18update_time_windowP16swap_compartmentii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa, %.lr.ph.i108
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i108 ], [ %indvars.iv.next.i.7, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa ]
  %.01316.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i108 ], [ %i.la, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ap ] ; 2 uses
  %.01316.i.epil = phi float [ %.01316.i.epil.init, %.epil.preheader ], [ %i.le, %bb.ap ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ap ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.epil
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !63
  %i.ld = sitofp i32 %i.lc to float
  %i.le = fadd float %.01316.i.epil, %i.ld        ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL18update_time_windowP16swap_compartmentii.exit, label %bb.ap, !llvm.loop !514

_ZL18update_time_windowP16swap_compartmentii.exit: ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa, %bb.ap, %bb.an
  %.013.lcssa.i = phi float [ 0.000000e+00, %bb.an ], [ %i.la, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa ], [ %i.le, %bb.ap ]
  %i.lf = sitofp i32 %i.jf to float
  %i.lg = fdiv float %.013.lcssa.i, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store float %i.lg, ptr %i.lh, align 4, !tbaa !370
  br label %bb.aq

bb.aq:                                            ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit, %._crit_edge
  br i1 %i.am, label %bb.a, label %bb.b

bb.ar:                                            ; preds = %bb.a
  %i.li = load i32, ptr %i.ab, align 8, !tbaa !419 ; 2 uses
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lk = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.ll = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93 ; 2 uses
  %i.lm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lk, ptr noundef nonnull @.str.65, ptr noundef %i.ll, i32 noundef %i.li, ptr noundef %i.ll, i64 noundef %5) #30 ; 0 uses
  %i.ln = load ptr, ptr %i.af, align 8, !tbaa !349
  %i.lo = load i32, ptr %i.ab, align 8, !tbaa !419
  %i.lp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ln, ptr noundef nonnull @.str.66, i32 noundef %i.lo) #25 ; 0 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !419
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.a
  %i.lq = icmp ne ptr %6, null
  %or.cond5 = and i1 %i.lq, %8
  br i1 %or.cond5, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lr = load i32, ptr %i.m, align 8, !tbaa !371
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !371
  %i.lu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.83, i32 noundef %i.lr, ptr noundef nonnull @.str.84, i32 noundef %i.lt) #25 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.lv = call noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.lw = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.lx = sext i32 %i.lw to i64
  %i.ly = udiv i64 %i.lv, %i.lx
  %i.lz = trunc i64 %i.ly to i32                  ; 4 uses
  %.sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 4, !tbaa !63 ; 2 uses
  %.sroa.4.0..sroa.4.4. = load i32, ptr %.sroa.4, align 4, !tbaa !63 ; 2 uses
  %i.ma = add nsw i32 %.sroa.4.0..sroa.4.4., %.sroa.0.0..sroa.0.0.
  %.not103 = icmp eq i32 %i.ma, %i.lz
  br i1 %.not103, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mb = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.mc = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.md = load ptr, ptr %0, align 8, !tbaa !93
  %i.me = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mb, ptr noundef nonnull @.str.68, ptr noundef %i.mc, ptr noundef %i.md, i32 noundef %.sroa.0.0..sroa.0.0., i32 noundef %.sroa.4.0..sroa.4.4., i32 noundef %i.lz) #30 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.mf = load i32, ptr %i.m, align 8, !tbaa !371
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !371
  %i.mi = add nsw i32 %i.mh, %i.mf                ; 2 uses
  %.not104 = icmp eq i32 %i.mi, %i.lz
  br i1 %.not104, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mj = load ptr, ptr @stderr, align 8, !tbaa !94
  %i.mk = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !93
  %i.ml = load ptr, ptr %0, align 8, !tbaa !93
  %i.mm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mj, ptr noundef nonnull @.str.69, ptr noundef %i.mk, i32 noundef %i.lz, ptr noundef %i.ml, i32 noundef %i.mi) #30 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt6vectorI14ChannelHistorySaIS1_EEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !398
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
end_hunk_1
