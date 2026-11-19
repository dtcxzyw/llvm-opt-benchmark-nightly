Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/swapcoords?download=true
inline.NumInlined: 2349
inline.NumDeleted: 1072
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNSt6vectorIfSaIfEE17_M_default_appendEm:bb.a
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
  %.sroa.0 = alloca i32, align 4                  ; 4 uses
  %.sroa.4 = alloca i32, align 4                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
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
  %i.ai = extractelement <2 x float> %i.d, i64 0
  %i.aj = extractelement <2 x float> %i.d, i64 1
  br label %bb.b

bb.a:                                             ; preds = %bb.aq
  %i.ak = load i32, ptr %i.q, align 4, !tbaa !86
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond3 = or i1 %8, %i.al
  br i1 %or.cond3, label %bb.at, label %bb.ar

bb.b:                                             ; preds = %.split, %bb.aq
  %i.am = phi i1 [ false, %.split ], [ true, %bb.aq ] ; 2 uses
  %i.an = phi i1 [ true, %.split ], [ false, %bb.aq ]
  %indvars.iv125.sroa.phi = phi ptr [ %.sroa.0, %.split ], [ %.sroa.4, %bb.aq ] ; 2 uses
  %indvars.iv125 = phi i64 [ 0, %.split ], [ 1, %bb.aq ] ; 2 uses
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
  br label %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit

_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit: ; preds = %bb.b, %bb.c
  %.124.i = phi float [ %.30.i, %bb.c ], [ %..i, %bb.b ] ; 2 uses
  %.1.i = phi float [ %i.bb, %bb.c ], [ %.30.i, %bb.b ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %indvars.iv125 ; 13 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !227
  store i32 0, ptr %indvars.iv125.sroa.phi, align 4, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !187 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !186
  %.not.i.i = icmp eq ptr %i.bg, %i.be
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZL26get_compartment_boundaries11CompartmentPN10SwapCoords4ImplEPA3_KfPfS6_.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !214 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !213
  %.not.i.i105 = icmp eq ptr %i.bk, %i.bi
  br i1 %.not.i.i105, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !213
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
  %i.br = fsub float %.1.i, %i.bq                 ; 2 uses
  %i.bs = fsub float %.124.i, %i.bq               ; 2 uses
  %i.bt = fsub float %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.ak, %_ZNSt6vectorIfSaIfEE5clearEv.exit
  br i1 %8, label %bb.aq, label %bb.al

bb.d:                                             ; preds = %.lr.ph, %bb.ak
  %i.bw = phi i32 [ 0, %.lr.ph ], [ %i.jd, %bb.ak ] ; 4 uses
  %.0119 = phi i32 [ 0, %.lr.ph ], [ %i.jf, %bb.ak ] ; 4 uses
  %.0119.a = phi i32 [ 0, %.lr.ph ], [ %17, %bb.ak ] ; 2 uses
  %i.bx = load i32, ptr %3, align 8, !tbaa !183
  %i.by = sext i32 %.0119 to i64                  ; 3 uses
  %i.bz = load ptr, ptr %i.o, align 8, !tbaa !200
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %i.by
  %i.cb = sext i32 %i.bx to i64                   ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !198
  %i.ce = getelementptr inbounds [12 x i8], ptr %4, i64 %i.cb
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cb
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !198 ; 3 uses
  %i.ch = load float, ptr %i.bo, align 4, !tbaa !198
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
  %i.cx = load ptr, ptr %i.bf, align 8, !tbaa !186 ; 4 uses
  %i.cy = load ptr, ptr %i.bu, align 8, !tbaa !222
  %.not.i.i106 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %.0119, ptr %i.cx, align 4, !tbaa !59
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store ptr %i.cz, ptr %i.bf, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.g:                                             ; preds = %bb.e
  %i.da = load ptr, ptr %i.bd, align 8, !tbaa !187 ; 4 uses
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 5 uses
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
  store i32 %.0119, ptr %i.dm, align 4, !tbaa !59
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
  %i.dp = load ptr, ptr %i.bu, align 8, !tbaa !222
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dr) #28
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dl, ptr %i.bd, align 8, !tbaa !187
  store ptr %i.do, ptr %i.bf, align 8, !tbaa !186
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.ds, ptr %i.bu, align 8, !tbaa !222
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.f
  %i.dt = load ptr, ptr %i.bj, align 8, !tbaa !213 ; 4 uses
  %i.du = load ptr, ptr %i.bv, align 8, !tbaa !257
  %.not.i3.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  store float %i.ct, ptr %i.dt, align 4, !tbaa !198
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store ptr %i.dv, ptr %i.bj, align 8, !tbaa !213
  br label %_ZL11add_to_listiP16swap_compartmentf.exit

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %i.dw = load ptr, ptr %i.bh, align 8, !tbaa !214 ; 4 uses
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 5 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775804
  br i1 %i.ea, label %bb.m, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.eb = ashr exact i64 %i.dz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i4.i = call i64 @llvm.umax.i64(i64 %i.eb, i64 1)
  %i.ec = add nsw i64 %.sroa.speculated.i.i.i4.i, %i.eb ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.eb
  %i.ee = call i64 @llvm.umin.i64(i64 %i.ec, i64 2305843009213693951)
  %i.ef = select i1 %i.ed, i64 2305843009213693951, i64 %i.ee ; 3 uses
  %.not.i.i.i5.i = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %.not.i.i.i5.i)
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #27 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.dz ; 2 uses
  store float %i.ct, ptr %i.ei, align 4, !tbaa !198
  %i.ej = icmp sgt i64 %i.dz, 0
  br i1 %i.ej, label %bb.n, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr align 4 %i.dw, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %.not.i17.i.i6.i = icmp eq ptr %i.dw, null
  br i1 %.not.i17.i.i6.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.el = load ptr, ptr %i.bv, align 8, !tbaa !257
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.en) #28
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.eh, ptr %i.bh, align 8, !tbaa !214
  store ptr %i.ek, ptr %i.bj, align 8, !tbaa !213
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ef
  store ptr %i.eo, ptr %i.bv, align 8, !tbaa !257
  br label %_ZL11add_to_listiP16swap_compartmentf.exit

_ZL11add_to_listiP16swap_compartmentf.exit:       ; preds = %bb.k, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i
  %i.ep = load i32, ptr %i.bc, align 8, !tbaa !227
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.bc, align 8, !tbaa !227
  %i.er = load i32, ptr %i.q, align 4, !tbaa !86
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.p, label %bb.ak

bb.p:                                             ; preds = %_ZL11add_to_listiP16swap_compartmentf.exit
  %i.et = load ptr, ptr %i.r, align 8, !tbaa !258
  %i.eu = load ptr, ptr %i.s, align 8, !tbaa !258
  %i.ev = icmp eq ptr %i.et, %i.eu
  %or.cond = or i1 %8, %i.ev
  br i1 %or.cond, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ew = call { ptr, ptr } @_ZNK3gmx12LocalAtomSet11globalIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.ex = extractvalue { ptr, ptr } %i.ew, 0
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.by
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !59
  %i.fa = add nsw i32 %i.ez, 1                    ; 3 uses
  %i.fb = load ptr, ptr %i.o, align 8, !tbaa !200
  %i.fc = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %i.by ; 2 uses
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.fc, align 4 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.sroa.212.0.copyload = load float, ptr %.sroa.212.0..sroa_idx, align 4, !tbaa !22 ; 2 uses
  %16 = zext nneg i32 %.0119.a to i64             ; 3 uses
  %i.fd = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %16 ; 9 uses
  %i.ff = load ptr, ptr %i.t, align 8, !tbaa !229
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !241
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %16 ; 6 uses
  %i.fi = load ptr, ptr %i.u, align 8, !tbaa !235
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !237
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.fl = load i32, ptr %3, align 8, !tbaa !183   ; 5 uses
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !197 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 232
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.fn, align 8
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 240
  %.sroa.213.0.copyload.i = load float, ptr %.sroa.213.0..sroa_idx.i, align 8, !tbaa !22
  %i.fo = load float, ptr %i.v, align 8, !tbaa !217
  %i.fp = load float, ptr %i.w, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store <2 x float> %.sroa.011.0.copyload, ptr %12, align 8
  store float %.sroa.212.0.copyload, ptr %.sroa.212.0..sroa_idx.i.i, align 8
  store <2 x float> %.sroa.012.0.copyload.i, ptr %13, align 8
  store float %.sroa.213.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %i.x, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14)
  %i.fq = sext i32 %i.fl to i64                   ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !198 ; 2 uses
  %i.ft = fcmp ogt float %i.fs, %i.fo
  %i.fu = fneg float %i.fp
  %i.fv = fcmp olt float %i.fs, %i.fu
  %or.cond.i.i = or i1 %i.ft, %i.fv
  br i1 %or.cond.i.i, label %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fw = add nuw nsw i32 %i.fl, 2
  %i.fx = srem i32 %i.fw, 3
  %i.fy = add nuw nsw i32 %i.fl, 1
  %i.fz = srem i32 %i.fy, 3
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !198 ; 2 uses
  %i.gd = sext i32 %i.fx to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !198 ; 2 uses
  %i.gg = fmul float %i.gf, %i.gf
  %i.gh = call float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %i.gg)
  %i.gi = fcmp ule float %i.gh, %i.ai
  br label %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i

_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i: ; preds = %bb.r, %bb.q
  %.0.i.i = phi i1 [ false, %bb.q ], [ %i.gi, %bb.r ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.gj = load ptr, ptr %i.l, align 8, !tbaa !197 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 704
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.gk, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 712
  %.sroa.25.0.copyload.i = load float, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !22
  %i.gl = load float, ptr %i.y, align 4, !tbaa !219
  %i.gm = load float, ptr %i.z, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x float> %.sroa.011.0.copyload, ptr %9, align 8
  store float %.sroa.212.0.copyload, ptr %.sroa.212.0..sroa_idx.i86.i, align 8
  store <2 x float> %.sroa.04.0.copyload.i, ptr %10, align 8
  store float %.sroa.25.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i87.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %i.x, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.fq
  %i.go = load float, ptr %i.gn, align 4, !tbaa !198 ; 2 uses
  %i.gp = fcmp ogt float %i.go, %i.gl
  %i.gq = fneg float %i.gm
  %i.gr = fcmp olt float %i.go, %i.gq
  %or.cond.i88.i = or i1 %i.gp, %i.gr
  br i1 %or.cond.i88.i, label %.thread.i, label %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit90.i

_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit90.i: ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i
  %i.gs = add nuw nsw i32 %i.fl, 2
  %i.gt = srem i32 %i.gs, 3
  %i.gu = add nuw nsw i32 %i.fl, 1
  %i.gv = srem i32 %i.gu, 3
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !198 ; 2 uses
  %i.gz = sext i32 %i.gt to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.gz
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !198 ; 2 uses
  %i.hc = fmul float %i.hb, %i.hb
  %i.hd = call float @llvm.fmuladd.f32(float %i.gy, float %i.gy, float %i.hc)
  %i.he = fcmp ule float %i.hd, %i.aj             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %or.cond.i = and i1 %.0.i.i, %i.he
  br i1 %or.cond.i, label %.thread98.i, label %bb.s

.thread98.i:                                      ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit90.i
  %i.hf = load i32, ptr %i.ab, align 8, !tbaa !246
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.ab, align 8, !tbaa !246
  store i32 0, ptr %i.fe, align 4, !tbaa !244
  store i32 0, ptr %i.fh, align 4, !tbaa !244
  store i32 0, ptr %i.fk, align 4, !tbaa !240
  %.pre.i = load i32, ptr %i.fe, align 4, !tbaa !244
  br label %bb.z

bb.s:                                             ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit90.i
  br i1 %.0.i.i, label %bb.t, label %bb.u

.thread.i:                                        ; preds = %_ZL13is_in_channelN3gmx11BasicVectorIfEES1_fffP5t_pbci.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %.0.i.i, label %bb.t, label %.thread96.i

bb.t:                                             ; preds = %.thread.i, %bb.s
  store i32 1, ptr %i.fk, align 4, !tbaa !240
  store i32 0, ptr %i.fe, align 4, !tbaa !244
  %i.hh = load i32, ptr %i.ac, align 8, !tbaa !59
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %i.ac, align 8, !tbaa !59
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  br i1 %i.he, label %bb.v, label %.thread96.i

bb.v:                                             ; preds = %bb.u
  store i32 2, ptr %i.fk, align 4, !tbaa !240
  store i32 0, ptr %i.fe, align 4, !tbaa !244
  %i.hj = load i32, ptr %i.aa, align 4, !tbaa !59
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr %i.aa, align 4, !tbaa !59
  br label %bb.y

.thread96.i:                                      ; preds = %bb.u, %.thread.i
  br i1 %i.an, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread96.i
  store i32 1, ptr %i.fe, align 4, !tbaa !244
  br label %bb.y

bb.x:                                             ; preds = %.thread96.i
  store i32 2, ptr %i.fe, align 4, !tbaa !244
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %.not.i = phi i1 [ true, %bb.t ], [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.v ]
  %i.hl = phi i32 [ 0, %bb.t ], [ 1, %bb.w ], [ 2, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.pr.i = load i32, ptr %i.fh, align 4, !tbaa !244 ; 3 uses
  %i.hm = icmp eq i32 %.pr.i, 0
  br i1 %i.hm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %.thread98.i
  %i.hn = phi i32 [ %.pre.i, %.thread98.i ], [ %i.hl, %bb.y ]
  store i32 %i.hn, ptr %i.fh, align 4, !tbaa !244
  br label %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit

bb.aa:                                            ; preds = %bb.y
  %.not83.i = icmp eq i32 %.pr.i, %i.hl
  %or.cond85.i = or i1 %.not.i, %.not83.i
  br i1 %or.cond85.i, label %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ho = load i32, ptr %i.fk, align 4, !tbaa !240 ; 3 uses
  switch i32 %i.ho, label %bb.ag [
    i32 0, label %bb.ac
    i32 1, label %bb.af
    i32 2, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.hp = load i32, ptr %i.ae, align 8, !tbaa !260
  %i.hq = add nsw i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ae, align 8, !tbaa !260
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.hs = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75
  %i.ht = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %5, ptr noundef nonnull %i.a)
  %i.hu = load i32, ptr %i.fh, align 4, !tbaa !244
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !60
  %i.hy = load i32, ptr %i.fe, align 4, !tbaa !244
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !60
  %i.ic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str.71, ptr noundef %i.hs, ptr noundef %i.ht, i32 noundef range(i32 -2147483647, -2147483648) %i.fa, ptr noundef %i.hx, ptr noundef %i.ib) #30 ; 0 uses
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !77 ; 2 uses
  br i1 %7, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %fwrite84.i = call i64 @fwrite(ptr nonnull @.str.72, i64 53, i64 1, ptr %i.id) #31 ; 0 uses
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.73, i64 109, i64 1, ptr %i.id) #31 ; 0 uses
  %i.ie = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.if = call noundef ptr @_Z12gmx_step_strlPc(i64 noundef %5, ptr noundef nonnull %i.a)
  %i.ig = load i32, ptr %i.fh, align 4, !tbaa !244
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !60
  %i.ik = load i32, ptr %i.fe, align 4, !tbaa !244
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr @_ZL12DomainString, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !60
  %i.io = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ie, ptr noundef nonnull @.str.74, ptr noundef %i.if, i32 noundef range(i32 -2147483647, -2147483648) %i.fa, ptr noundef %i.ij, ptr noundef %i.in) #25 ; 0 uses
  br label %bb.ai

bb.af:                                            ; preds = %bb.ab, %bb.ab
  %i.ip = icmp ne i32 %i.ho, 1
  %..i107 = zext i1 %i.ip to i64
  %i.iq = icmp eq i32 %.pr.i, 1
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %..i107 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !59
  %.100.i = select i1 %i.iq, i32 1, i32 -1
  %i.it = add nsw i32 %i.is, %.100.i
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !59
  %i.iu = zext nneg i32 %i.ho to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ChannelString, i64 %i.iu
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !60
  %i.ix = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.75, i32 noundef range(i32 -2147483647, -2147483648) %i.fa, ptr noundef %i.iw) #25 ; 0 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 1 dereferenceable(64) @.str.4, i8 noundef zeroext 2)
  %i.iy = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75
  %i.iz = load ptr, ptr %0, align 8, !tbaa !75
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 777, ptr noundef nonnull @.str.76, ptr noundef %i.iy, ptr noundef %i.iz) #29
          to label %bb.ah unwind label %common.resume

bb.ah:                                            ; preds = %bb.ag
  unreachable

common.resume:                                    ; preds = %bb.ag
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.ja

bb.ai:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.jb = load i32, ptr %i.fe, align 4, !tbaa !244
  store i32 %i.jb, ptr %i.fh, align 4, !tbaa !244
  store i32 0, ptr %i.fk, align 4, !tbaa !240
  br label %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit

_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit: ; preds = %bb.z, %bb.aa, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ak

bb.aj:                                            ; preds = %_ZL25compartment_contains_atomfffffPf.exit
  %i.jc = add nsw i32 %i.bw, 1                    ; 2 uses
  store i32 %i.jc, ptr %indvars.iv125.sroa.phi, align 4, !tbaa !59
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL11add_to_listiP16swap_compartmentf.exit, %bb.p, %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit, %bb.aj
  %i.jd = phi i32 [ %i.bw, %_ZL11add_to_listiP16swap_compartmentf.exit ], [ %i.bw, %bb.p ], [ %i.bw, %_ZL23detect_flux_per_channelP9t_swapgrpi11CompartmentN3gmx11BasicVectorIfEEP6DomainS6_P14ChannelHistoryRK12t_swapcoordsPN10SwapCoords4ImplEfflbP8_IO_FILE.exit ], [ %i.jc, %bb.aj ]
  %i.je = load i32, ptr %i.ag, align 8, !tbaa !58
  %i.jf = add nsw i32 %i.je, %.0119               ; 2 uses
  %17 = add nuw nsw i32 %.0119.a, 1
  %i.jg = call noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = icmp slt i32 %i.jf, %i.jh
  br i1 %i.ji, label %bb.d, label %._crit_edge, !llvm.loop !512

bb.al:                                            ; preds = %._crit_edge
  %i.jj = load i32, ptr %i.h, align 8, !tbaa !85  ; 4 uses
  br i1 %i.ah, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jk = load i32, ptr %i.bc, align 8, !tbaa !227
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !187
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.k
  store i32 %i.jk, ptr %i.jn, align 4, !tbaa !59
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jo = icmp sgt i32 %i.jj, 0
  br i1 %i.jo, label %.lr.ph.i108, label %_ZL18update_time_windowP16swap_compartmentii.exit

.lr.ph.i108:                                      ; preds = %bb.an
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !187 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.jj to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.jr = icmp ult i32 %i.jj, 8
  br i1 %i.jr, label %.epil.preheader, label %.lr.ph.i108.new

.lr.ph.i108.new:                                  ; preds = %.lr.ph.i108
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i108.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i108.new ], [ %indvars.iv.next.i.7, %bb.ao ] ; 9 uses
  %.01316.i = phi float [ 0.000000e+00, %.lr.ph.i108.new ], [ %i.le, %bb.ao ]
  %niter = phi i64 [ 0, %.lr.ph.i108.new ], [ %niter.next.7, %bb.ao ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !59
  %i.ju = sitofp i32 %i.jt to float
  %i.jv = fadd float %.01316.i, %i.ju
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !59
  %i.jz = sitofp i32 %i.jy to float
  %i.ka = fadd float %i.jv, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !59
  %i.ke = sitofp i32 %i.kd to float
  %i.kf = fadd float %i.ka, %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !59
  %i.kj = sitofp i32 %i.ki to float
  %i.kk = fadd float %i.kf, %i.kj
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !59
  %i.ko = sitofp i32 %i.kn to float
  %i.kp = fadd float %i.kk, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 20
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !59
  %i.kt = sitofp i32 %i.ks to float
  %i.ku = fadd float %i.kp, %i.kt
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !59
  %i.ky = sitofp i32 %i.kx to float
  %i.kz = fadd float %i.ku, %i.ky
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 28
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !59
  %i.ld = sitofp i32 %i.lc to float
  %i.le = fadd float %i.kz, %i.ld                 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !0

_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL18update_time_windowP16swap_compartmentii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa, %.lr.ph.i108
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i108 ], [ %indvars.iv.next.i.7, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa ]
  %.01316.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i108 ], [ %i.le, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ap ] ; 2 uses
  %.01316.i.epil = phi float [ %.01316.i.epil.init, %.epil.preheader ], [ %i.li, %bb.ap ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ap ]
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i.epil
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !59
  %i.lh = sitofp i32 %i.lg to float
  %i.li = fadd float %.01316.i.epil, %i.lh        ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL18update_time_windowP16swap_compartmentii.exit, label %bb.ap, !llvm.loop !513

_ZL18update_time_windowP16swap_compartmentii.exit: ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa, %bb.ap, %bb.an
  %.013.lcssa.i = phi float [ 0.000000e+00, %bb.an ], [ %i.le, %_ZL18update_time_windowP16swap_compartmentii.exit.loopexit.unr-lcssa ], [ %i.li, %bb.ap ]
  %i.lj = sitofp i32 %i.jj to float
  %i.lk = fdiv float %.013.lcssa.i, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store float %i.lk, ptr %i.ll, align 4, !tbaa !226
  br label %bb.aq

bb.aq:                                            ; preds = %_ZL18update_time_windowP16swap_compartmentii.exit, %._crit_edge
  br i1 %i.am, label %bb.a, label %bb.b

bb.ar:                                            ; preds = %bb.a
  %i.lm = load i32, ptr %i.ab, align 8, !tbaa !246 ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lo = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.lp = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75 ; 2 uses
  %i.lq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lo, ptr noundef nonnull @.str.65, ptr noundef %i.lp, i32 noundef %i.lm, ptr noundef %i.lp, i64 noundef %5) #30 ; 0 uses
  %i.lr = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.ls = load i32, ptr %i.ab, align 8, !tbaa !246
  %i.lt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lr, ptr noundef nonnull @.str.66, i32 noundef %i.ls) #25 ; 0 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !246
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.a
  %i.lu = icmp ne ptr %6, null
  %or.cond5 = and i1 %i.lu, %8
  br i1 %or.cond5, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = load i32, ptr %i.m, align 8, !tbaa !227
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !227
  %i.ly = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.83, i32 noundef %i.lv, ptr noundef nonnull @.str.84, i32 noundef %i.lx) #25 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.lz = call noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.ma = load i32, ptr %i.ag, align 8, !tbaa !58
  %i.mb = sext i32 %i.ma to i64
  %i.mc = udiv i64 %i.lz, %i.mb
  %i.md = trunc i64 %i.mc to i32                  ; 4 uses
  %.sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 4, !tbaa !59 ; 2 uses
  %.sroa.4.0..sroa.4.4. = load i32, ptr %.sroa.4, align 4, !tbaa !59 ; 2 uses
  %i.me = add nsw i32 %.sroa.4.0..sroa.4.4., %.sroa.0.0..sroa.0.0.
  %.not103 = icmp eq i32 %i.me, %i.md
  br i1 %.not103, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mf = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.mg = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75
  %i.mh = load ptr, ptr %0, align 8, !tbaa !75
  %i.mi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mf, ptr noundef nonnull @.str.68, ptr noundef %i.mg, ptr noundef %i.mh, i32 noundef %.sroa.0.0..sroa.0.0., i32 noundef %.sroa.4.0..sroa.4.4., i32 noundef %i.md) #30 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.mj = load i32, ptr %i.m, align 8, !tbaa !227
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !227
  %i.mm = add nsw i32 %i.ml, %i.mj                ; 2 uses
  %.not104 = icmp eq i32 %i.mm, %i.md
  br i1 %.not104, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mn = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.mo = load ptr, ptr @_ZL3SwSB5cxx11, align 8, !tbaa !75
  %i.mp = load ptr, ptr %0, align 8, !tbaa !75
  %i.mq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mn, ptr noundef nonnull @.str.69, ptr noundef %i.mo, i32 noundef %i.md, ptr noundef %i.mp, i32 noundef %i.mm) #30 ; 0 uses
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

end_hunk_0
