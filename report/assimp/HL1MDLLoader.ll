inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  %i.yz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yy) #26
          to label %.noexc640 unwind label %.loopexit842 ; 4 uses

.noexc640:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.yk ; 2 uses
  %i.zb = mul nuw nsw i64 %i.yn, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.za, i8 0, i64 %i.zb, i1 false)
  %.not10.i.i.i.i635 = icmp eq ptr %.sroa.0765.12378, %.sroa.12772.12377
  br i1 %.not10.i.i.i.i635, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636

.lr.ph.i.i.i.i636:                                ; preds = %.noexc640, %.lr.ph.i.i.i.i636
  %.012.i.i.i.i637 = phi ptr [ %i.zd, %.lr.ph.i.i.i.i636 ], [ %i.yz, %.noexc640 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.zc, %.lr.ph.i.i.i.i636 ], [ %.sroa.0765.12378, %.noexc640 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i637, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !194
  %i.zc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i637, i64 12
  %.not.i.i.i.i638 = icmp eq ptr %i.zc, %.sroa.12772.12377
  br i1 %.not.i.i.i.i638, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636, !llvm.loop !198

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i636, %.noexc640
  %.not.i36.i = icmp eq ptr %.sroa.0765.12378, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ze = sub i64 %i.yo, %i.yj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0765.12378, i64 noundef %i.ze) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.ch, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.zf = getelementptr inbounds nuw [12 x i8], ptr %i.za, i64 %i.yn
  %i.zg = getelementptr inbounds nuw [12 x i8], ptr %i.yz, i64 %i.yx
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.ci:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451
  %i.zh = icmp ugt i64 %i.yl, %i.yh
  br i1 %i.zh, label %bb.cj, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cj:                                            ; preds = %bb.ci
  %i.zi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0765.12378, i64 %i.yh ; 2 uses
  %.not.i.i452 = icmp eq ptr %.sroa.12772.12377, %i.zi
  %spec.select793 = select i1 %.not.i.i452, ptr %.sroa.12772.12377, ptr %i.zi
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.cj, %bb.ci, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i
  %.sroa.18775.4 = phi ptr [ %.sroa.18775.12376, %bb.ci ], [ %.sroa.18775.12376, %bb.cj ], [ %.sroa.18775.12376, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.zg, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 28 uses
  %.sroa.12772.2 = phi ptr [ %.sroa.12772.12377, %bb.ci ], [ %spec.select793, %bb.cj ], [ %scevgep.i.i.i.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.zf, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 4 uses
  %.sroa.0765.4 = phi ptr [ %.sroa.0765.12378, %bb.ci ], [ %.sroa.0765.12378, %bb.cj ], [ %.sroa.0765.12378, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.yz, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 32 uses
  %i.zj = load i32, ptr %i.xv, align 1            ; 2 uses
  %i.zk = sext i32 %i.zj to i64                   ; 4 uses
  %i.zl = ptrtoint ptr %.sroa.12760.12374 to i64  ; 2 uses
  %i.zm = ptrtoint ptr %.sroa.0753.12375 to i64   ; 2 uses
  %i.zn = sub i64 %i.zl, %i.zm                    ; 2 uses
  %i.zo = sdiv exact i64 %i.zn, 12                ; 7 uses
  %i.zp = icmp ult i64 %i.zo, %i.zk
  br i1 %i.zp, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.zq = sub nuw nsw i64 %i.zk, %i.zo            ; 5 uses
  %i.zr = ptrtoint ptr %.sroa.18.12373 to i64     ; 2 uses
  %i.zs = sub i64 %i.zr, %i.zl
  %i.zt = sdiv exact i64 %i.zs, 12                ; 2 uses
  %i.zu = icmp ult i64 %i.zo, 768614336404564651
  call void @llvm.assume(i1 %i.zu)
  %i.zv = sub nuw nsw i64 768614336404564650, %i.zo
  %i.zw = icmp ule i64 %i.zt, %i.zv
  call void @llvm.assume(i1 %i.zw)
  %.not28.i642 = icmp ult i64 %i.zt, %i.zq
  br i1 %.not28.i642, label %bb.cl, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643: ; preds = %bb.ck
  %i.zx = mul nuw nsw i64 %i.zq, 12               ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.12760.12374, i8 0, i64 %i.zx, i1 false)
  %scevgep.i.i.i.i644 = getelementptr i8, ptr %.sroa.12760.12374, i64 %i.zx
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.cl:                                            ; preds = %bb.ck
  %i.zy = icmp slt i32 %i.zj, 0
  br i1 %i.zy, label %bb.cm, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #25
          to label %.noexc655 unwind label %.loopexit.split-lp843

.noexc655:                                        ; preds = %bb.cm
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645: ; preds = %bb.cl
  %.sroa.speculated.i.i646 = call i64 @llvm.umax.i64(i64 %i.zo, i64 %i.zq)
  %i.zz = add nuw nsw i64 %.sroa.speculated.i.i646, %i.zo
  %i.aaa = call i64 @llvm.umin.i64(i64 %i.zz, i64 768614336404564650) ; 2 uses
  %i.aab = mul nuw nsw i64 %i.aaa, 12
  %i.aac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aab) #26
          to label %.noexc656 unwind label %.loopexit842 ; 4 uses

.noexc656:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.zn ; 2 uses
  %i.aae = mul nuw nsw i64 %i.zq, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aad, i8 0, i64 %i.aae, i1 false)
  %.not10.i.i.i.i647 = icmp eq ptr %.sroa.0753.12375, %.sroa.12760.12374
  br i1 %.not10.i.i.i.i647, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652, label %.lr.ph.i.i.i.i648

.lr.ph.i.i.i.i648:                                ; preds = %.noexc656, %.lr.ph.i.i.i.i648
  %.012.i.i.i.i649 = phi ptr [ %i.aag, %.lr.ph.i.i.i.i648 ], [ %i.aac, %.noexc656 ] ; 2 uses
  %.0911.i.i.i.i650 = phi ptr [ %i.aaf, %.lr.ph.i.i.i.i648 ], [ %.sroa.0753.12375, %.noexc656 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i649, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i650, i64 12, i1 false), !alias.scope !199
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i650, i64 12 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i649, i64 12
  %.not.i.i.i.i651 = icmp eq ptr %i.aaf, %.sroa.12760.12374
  br i1 %.not.i.i.i.i651, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652, label %.lr.ph.i.i.i.i648, !llvm.loop !198

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652: ; preds = %.lr.ph.i.i.i.i648, %.noexc656
  %.not.i36.i653 = icmp eq ptr %.sroa.0753.12375, null
  br i1 %.not.i36.i653, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652
  %i.aah = sub i64 %i.zr, %i.zm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0753.12375, i64 noundef %i.aah) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654: ; preds = %bb.cn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652
  %i.aai = getelementptr inbounds nuw [12 x i8], ptr %i.aad, i64 %i.zq
  %i.aaj = getelementptr inbounds nuw [12 x i8], ptr %i.aac, i64 %i.aaa
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.co:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.aak = icmp ugt i64 %i.zo, %i.zk
  br i1 %i.aak, label %bb.cp, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.cp:                                            ; preds = %bb.co
  %i.aal = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0753.12375, i64 %i.zk ; 2 uses
  %.not.i.i454 = icmp eq ptr %.sroa.12760.12374, %i.aal
  %spec.select794 = select i1 %.not.i.i454, ptr %.sroa.12760.12374, ptr %i.aal
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457: ; preds = %bb.cp, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654, %bb.co
  %.sroa.18.3 = phi ptr [ %.sroa.18.12373, %bb.co ], [ %.sroa.18.12373, %bb.cp ], [ %.sroa.18.12373, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.aaj, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 26 uses
  %.sroa.12760.2 = phi ptr [ %.sroa.12760.12374, %bb.co ], [ %spec.select794, %bb.cp ], [ %scevgep.i.i.i.i644, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.aai, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 4 uses
  %.sroa.0753.3 = phi ptr [ %.sroa.0753.12375, %bb.co ], [ %.sroa.0753.12375, %bb.cp ], [ %.sroa.0753.12375, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.aac, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 30 uses
  %.not2425 = icmp eq ptr %.sroa.12772.2, %.sroa.0765.4
  br i1 %.not2425, label %.preheader841, label %.lr.ph2299.preheader

.lr.ph2299.preheader:                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457
  %i.aam = ptrtoint ptr %.sroa.12772.2 to i64
  %i.aan = ptrtoint ptr %.sroa.0765.4 to i64
  %i.aao = sub i64 %i.aam, %i.aan
  %i.aap = sdiv exact i64 %i.aao, 12
  br label %.lr.ph2299

.preheader841:                                    ; preds = %.lr.ph2299, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457
  %.not2426 = icmp eq ptr %.sroa.12760.2, %.sroa.0753.3
  br i1 %.not2426, label %._crit_edge2302, label %.lr.ph2301.preheader

.lr.ph2301.preheader:                             ; preds = %.preheader841
  %i.aaq = ptrtoint ptr %.sroa.12760.2 to i64
  %i.aar = ptrtoint ptr %.sroa.0753.3 to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = sdiv exact i64 %i.aas, 12
  br label %.lr.ph2301

bb.cq:                                            ; preds = %.lr.ph2386
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cr:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_8Mesh_HL1EEEPKT_ii.exit
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cs:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.ct:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit842:                                     ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645
  %.sroa.18775.2.ph = phi ptr [ %.sroa.18775.12376, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit ], [ %.sroa.18775.12376, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.18775.4, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645 ]
  %.sroa.0765.2.ph = phi ptr [ %.sroa.0765.12378, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit ], [ %.sroa.0765.12378, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0765.4, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645 ]
  %lpad.loopexit846 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit.split-lp843:                            ; preds = %bb.cg, %bb.cm
  %.sroa.18775.2.ph844 = phi ptr [ %.sroa.18775.12376, %bb.cg ], [ %.sroa.18775.4, %bb.cm ]
  %.sroa.0765.2.ph845 = phi ptr [ %.sroa.0765.12378, %bb.cg ], [ %.sroa.0765.4, %bb.cm ]
  %lpad.loopexit.split-lp847 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.lr.ph2299:                                       ; preds = %.lr.ph2299.preheader, %.lr.ph2299
  %.03082298 = phi i64 [ %i.abx, %.lr.ph2299 ], [ 0, %.lr.ph2299.preheader ] ; 4 uses
  %i.aay = getelementptr inbounds nuw [12 x i8], ptr %i.yb, i64 %.03082298 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.xs, i64 %.03082298
  %i.aba = load i8, ptr %i.aaz, align 1
  %i.abb = zext i8 %i.aba to i64
  %i.abc = load ptr, ptr %i.va, align 8
  %i.abd = getelementptr inbounds nuw [160 x i8], ptr %i.abc, i64 %i.abb ; 12 uses
  %32 = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %33 = load float, ptr %i.aay, align 4           ; 3 uses
  %34 = getelementptr inbounds nuw i8, ptr %i.aay, i64 4
  %35 = load float, ptr %34, align 4              ; 3 uses
  %36 = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %37 = load float, ptr %36, align 4              ; 3 uses
  %38 = load float, ptr %32, align 4
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 12
  %i.abf = load float, ptr %i.abe, align 4
  %39 = fmul float %35, %i.abf
  %40 = call float @llvm.fmuladd.f32(float %38, float %33, float %39)
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %i.abh = load float, ptr %i.abg, align 4
  %41 = call float @llvm.fmuladd.f32(float %i.abh, float %37, float %40)
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abd, i64 20
  %i.abj = load float, ptr %i.abi, align 4
  %42 = fadd float %i.abj, %41
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %42, i64 0
  %43 = getelementptr inbounds nuw i8, ptr %i.abd, i64 24
  %44 = load float, ptr %43, align 4
  %45 = getelementptr inbounds nuw i8, ptr %i.abd, i64 28
  %46 = load float, ptr %45, align 4
  %47 = fmul float %35, %46
  %48 = call float @llvm.fmuladd.f32(float %44, float %33, float %47)
  %49 = getelementptr inbounds nuw i8, ptr %i.abd, i64 32
  %50 = load float, ptr %49, align 4
  %51 = call float @llvm.fmuladd.f32(float %50, float %37, float %48)
  %52 = getelementptr inbounds nuw i8, ptr %i.abd, i64 36
  %53 = load float, ptr %52, align 4
  %54 = fadd float %53, %51
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %54, i64 1
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abd, i64 40
  %i.abl = load float, ptr %i.abk, align 4
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abd, i64 44
  %i.abn = load float, ptr %i.abm, align 4
  %i.abo = fmul float %35, %i.abn
  %i.abp = call float @llvm.fmuladd.f32(float %i.abl, float %33, float %i.abo)
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abd, i64 48
  %i.abr = load float, ptr %i.abq, align 4
  %i.abs = call float @llvm.fmuladd.f32(float %i.abr, float %37, float %i.abp)
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abd, i64 52
  %i.abu = load float, ptr %i.abt, align 4
  %i.abv = fadd float %i.abu, %i.abs
  %i.abw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0765.4, i64 %.03082298 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.abw, align 4
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store float %i.abv, ptr %.sroa.4128.0..sroa_idx, align 4
  %i.abx = add nuw i64 %.03082298, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.abx, %i.aap
  br i1 %exitcond.not, label %.preheader841, label %.lr.ph2299, !llvm.loop !203

._crit_edge2302:                                  ; preds = %bb.cu, %.preheader841
  %i.aby = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.cw unwind label %bb.cz     ; 6 uses

.lr.ph2301:                                       ; preds = %.lr.ph2301.preheader, %bb.cu
  %.03042300 = phi i64 [ %i.add, %bb.cu ], [ 0, %.lr.ph2301.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.abz = getelementptr inbounds nuw i8, ptr %i.xx, i64 %.03042300
  %i.aca = load i8, ptr %i.abz, align 1
  %i.acb = zext i8 %i.aca to i64
  %i.acc = load ptr, ptr %i.va, align 8
  %i.acd = getelementptr inbounds nuw [160 x i8], ptr %i.acc, i64 %i.acb
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %i.ace, i64 64, i1 false)
  %i.acf = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %28)
          to label %bb.cu unwind label %bb.cv     ; 15 uses

bb.cu:                                            ; preds = %.lr.ph2301
  %i.acg = getelementptr inbounds nuw [12 x i8], ptr %i.yf, i64 %.03042300 ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 16 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 4 ; 2 uses
  %55 = load float, ptr %i.ach, align 4           ; 2 uses
  %56 = load float, ptr %i.aci, align 4           ; 2 uses
  store float %56, ptr %i.ach, align 4
  store float %55, ptr %i.aci, align 4
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acf, i64 32 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acf, i64 8 ; 2 uses
  %i.acl = load float, ptr %i.acj, align 4        ; 2 uses
  %57 = load float, ptr %i.ack, align 4           ; 2 uses
  store float %57, ptr %i.acj, align 4
  store float %i.acl, ptr %i.ack, align 4
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acf, i64 36 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acf, i64 24 ; 2 uses
  %i.aco = load float, ptr %i.acm, align 4        ; 2 uses
  %58 = load float, ptr %i.acn, align 4           ; 2 uses
  store float %58, ptr %i.acm, align 4
  store float %i.aco, ptr %i.acn, align 4
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acf, i64 48 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acf, i64 12 ; 2 uses
  %i.acr = load float, ptr %i.acp, align 4        ; 2 uses
  %i.acs = load float, ptr %i.acq, align 4
  store float %i.acs, ptr %i.acp, align 4
  store float %i.acr, ptr %i.acq, align 4
  %i.act = getelementptr inbounds nuw i8, ptr %i.acf, i64 52 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acf, i64 28 ; 2 uses
  %i.acv = load float, ptr %i.act, align 4        ; 2 uses
  %59 = load float, ptr %i.acu, align 4
  store float %59, ptr %i.act, align 4
  store float %i.acv, ptr %i.acu, align 4
  %60 = getelementptr inbounds nuw i8, ptr %i.acf, i64 56 ; 2 uses
  %61 = getelementptr inbounds nuw i8, ptr %i.acf, i64 44 ; 2 uses
  %62 = load float, ptr %60, align 4              ; 2 uses
  %63 = load float, ptr %61, align 4
  store float %63, ptr %60, align 4
  store float %62, ptr %61, align 4
  %.sroa.0715.0.copyload = load float, ptr %i.acf, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acf, i64 20
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acf, i64 40
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %64 = load float, ptr %i.acg, align 4           ; 3 uses
  %65 = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.acw = load float, ptr %65, align 4           ; 3 uses
  %66 = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.acx = load float, ptr %66, align 4           ; 3 uses
  %67 = fmul float %55, %i.acw
  %68 = call float @llvm.fmuladd.f32(float %.sroa.0715.0.copyload, float %64, float %67)
  %69 = call float @llvm.fmuladd.f32(float %i.acl, float %i.acx, float %68)
  %70 = fadd float %i.acr, %69
  %.sroa.0.0.vec.insert.i458 = insertelement <2 x float> poison, float %70, i64 0
  %71 = fmul float %.sroa.9.0.copyload, %i.acw
  %72 = call float @llvm.fmuladd.f32(float %56, float %64, float %71)
  %73 = call float @llvm.fmuladd.f32(float %i.aco, float %i.acx, float %72)
  %74 = fadd float %i.acv, %73
  %.sroa.0.4.vec.insert.i459 = insertelement <2 x float> %.sroa.0.0.vec.insert.i458, float %74, i64 1
  %i.acy = fmul float %58, %i.acw
  %i.acz = call float @llvm.fmuladd.f32(float %57, float %64, float %i.acy)
  %i.ada = call float @llvm.fmuladd.f32(float %.sroa.14.0.copyload, float %i.acx, float %i.acz)
  %i.adb = fadd float %62, %i.ada
  %i.adc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0753.3, i64 %.03042300 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i459, ptr %i.adc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  store float %i.adb, ptr %.sroa.4.0..sroa_idx, align 4
  %i.add = add nuw i64 %.03042300, 1              ; 2 uses
  %exitcond3390.not = icmp eq i64 %i.add, %i.aat
  br i1 %exitcond3390.not, label %._crit_edge2302, label %.lr.ph2301, !llvm.loop !204

bb.cv:                                            ; preds = %.lr.ph2301
  %i.ade = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body661

bb.cw:                                            ; preds = %._crit_edge2302
  %i.adf = zext i32 %.32972382 to i64
  %i.adg = load ptr, ptr %18, align 8
  %i.adh = getelementptr inbounds nuw [32 x i8], ptr %i.adg, i64 %i.adf
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.aby, ptr noundef nonnull align 8 dereferenceable(32) %i.adh)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.aby, ptr %.03062380, align 8
  %i.adi = getelementptr inbounds nuw i8, ptr %i.aby, i64 1096
  store ptr %i.wb, ptr %i.adi, align 8
  %i.adj = load i32, ptr %i.xl, align 1           ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.aby, i64 1120
  store i32 %i.adj, ptr %i.adk, align 8
  %i.adl = zext i32 %i.adj to i64
  %i.adm = shl nuw nsw i64 %i.adl, 2
  %i.adn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adm) #26
          to label %bb.cy unwind label %bb.cz     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.ado = getelementptr inbounds nuw i8, ptr %i.aby, i64 1128
  store ptr %i.adn, ptr %i.ado, align 8
  %i.adp = load i32, ptr %i.xl, align 1
  %i.adq = icmp sgt i32 %i.adp, 0
  br i1 %i.adq, label %.lr.ph2363, label %._crit_edge2364

._crit_edge2364:                                  ; preds = %.loopexit828, %bb.cy
  %.sroa.36.2.lcssa = phi ptr [ %.sroa.36.12370, %bb.cy ], [ %.sroa.36.3.lcssa, %.loopexit828 ] ; 2 uses
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.12371, %bb.cy ], [ %.sroa.19.3.lcssa, %.loopexit828 ] ; 2 uses
  %.sroa.0729.2.lcssa = phi ptr [ %.sroa.0729.12372, %bb.cy ], [ %.sroa.0729.3.lcssa, %.loopexit828 ] ; 2 uses
  %.2302.lcssa = phi i32 [ %.13012381, %bb.cy ], [ %i.azq, %.loopexit828 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.12352384, %bb.cy ], [ %.3.lcssa, %.loopexit828 ] ; 2 uses
  %i.adr = add nuw nsw i32 %.03072379, 1          ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.22432383, i64 112
  %i.adt = getelementptr inbounds nuw i8, ptr %.03062380, i64 8
  %i.adu = add i32 %.32972382, 1                  ; 2 uses
  %i.adv = load i32, ptr %i.vy, align 4
  %i.adw = icmp slt i32 %i.adr, %i.adv
  br i1 %i.adw, label %.lr.ph2386, label %._crit_edge2387, !llvm.loop !205

bb.cz:                                            ; preds = %bb.cx, %._crit_edge2302
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.da:                                            ; preds = %bb.cw
  %i.ady = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aby, i64 noundef 1144) #24
  br label %.body661

.lr.ph2363:                                       ; preds = %bb.cy, %.loopexit828
  %.22361 = phi i32 [ %.3.lcssa, %.loopexit828 ], [ %.12352384, %bb.cy ] ; 2 uses
  %.02462360 = phi ptr [ %i.azp, %.loopexit828 ], [ %i.xn, %bb.cy ] ; 3 uses
  %.02922359 = phi i32 [ %i.azo, %.loopexit828 ], [ 0, %bb.cy ]
  %.02932358 = phi ptr [ %i.azr, %.loopexit828 ], [ %i.adn, %bb.cy ] ; 2 uses
  %.23022357 = phi i32 [ %i.azq, %.loopexit828 ], [ %.13012381, %bb.cy ] ; 3 uses
  %.sroa.0729.22356 = phi ptr [ %.sroa.0729.3.lcssa, %.loopexit828 ], [ %.sroa.0729.12372, %bb.cy ] ; 5 uses
  %.sroa.19.22355 = phi ptr [ %.sroa.19.3.lcssa, %.loopexit828 ], [ %.sroa.19.12371, %bb.cy ] ; 2 uses
  %.sroa.36.22354 = phi ptr [ %.sroa.36.3.lcssa, %.loopexit828 ], [ %.sroa.36.12370, %bb.cy ] ; 3 uses
  store i32 %.23022357, ptr %.02932358, align 4
  %i.adz = load ptr, ptr %i.a, align 8
  %i.aea = getelementptr inbounds nuw i8, ptr %.02462360, i64 4
  %i.aeb = load i32, ptr %i.aea, align 1
  %i.aec = getelementptr inbounds nuw i8, ptr %.02462360, i64 8 ; 2 uses
  %i.aed = load i32, ptr %i.aec, align 1
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.aee
  %i.aeg = load i16, ptr %i.aef, align 2
  %i.aeh = sext i16 %i.aeg to i64
  %i.aei = getelementptr inbounds [80 x i8], ptr %i.r, i64 %i.aeh ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 68
  %i.aek = load i32, ptr %i.aej, align 1
  %i.ael = sitofp i32 %i.aek to float
  %i.aem = fdiv nnan float 1.000000e+00, %i.ael
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aei, i64 72
  %i.aeo = load i32, ptr %i.aen, align 1
  %i.aep = sitofp i32 %i.aeo to float
  %i.aeq = load ptr, ptr %20, align 8             ; 2 uses
  %i.aer = load ptr, ptr %i.vb, align 8
  %.not.i.i462 = icmp eq ptr %i.aer, %i.aeq
  br i1 %.not.i.i462, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.lr.ph2363
  store ptr %i.aeq, ptr %i.vb, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit: ; preds = %.lr.ph2363, %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.aes = load i32, ptr %i.xq, align 1           ; 2 uses
  %.not3628 = icmp eq i32 %i.aes, 0
  br i1 %.not3628, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit
  %i.aet = sext i32 %i.aes to i64
  invoke void @_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %i.aet)
          to label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit unwind label %bb.de

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, %bb.db
  %i.aeu = sext i32 %i.aeb to i64
  %i.aev = getelementptr inbounds i8, ptr %i.adz, i64 %i.aeu ; 2 uses
  %i.aew = load ptr, ptr %22, align 8             ; 2 uses
  %i.aex = load ptr, ptr %i.vc, align 8
  %.not.i.i466 = icmp eq ptr %i.aex, %i.aew
  br i1 %.not.i.i466, label %_ZNSt6vectorIsSaIsEE5clearEv.exit, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit
  store ptr %i.aew, ptr %i.vc, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit

_ZNSt6vectorIsSaIsEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i
  %.not.i.i467 = icmp eq ptr %.sroa.19.22355, %.sroa.0729.22356
  %spec.select795 = select i1 %.not.i.i467, ptr %.sroa.19.22355, ptr %.sroa.0729.22356 ; 2 uses
  %i.aey = load ptr, ptr %i.uj, align 8
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.aey)
          to label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit unwind label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  %i.aez = landingpad { ptr, i32 }
          catch ptr null
  %i.afa = extractvalue { ptr, i32 } %i.aez, 0
  call void @__clang_call_terminate(ptr %i.afa) #27
  unreachable

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit: ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  store ptr null, ptr %i.uj, align 8
  store ptr %i.ui, ptr %i.uk, align 8
  store ptr %i.ui, ptr %i.ul, align 8
  store i64 0, ptr %i.um, align 8
  %i.afb = load ptr, ptr %i.uo, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.afb)
          to label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit unwind label %bb.dd

bb.dd:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  %i.afc = landingpad { ptr, i32 }
          catch ptr null
  %i.afd = extractvalue { ptr, i32 } %i.afc, 0
  call void @__clang_call_terminate(ptr %i.afd) #27
  unreachable

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit: ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  store ptr null, ptr %i.uo, align 8
  store ptr %i.un, ptr %i.up, align 8
  store ptr %i.un, ptr %i.uq, align 8
  store i64 0, ptr %i.ur, align 8
  %i.afe = load i16, ptr %i.aev, align 2          ; 2 uses
  %.not3292323 = icmp eq i16 %i.afe, 0
  br i1 %.not3292323, label %._crit_edge2329, label %.lr.ph2328

.lr.ph2328:                                       ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit, %.loopexit804
  %i.aff = phi i16 [ %i.asa, %.loopexit804 ], [ %i.afe, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %.1291.lcssa.pn = phi ptr [ %i.aop, %.loopexit804 ], [ %i.aev, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.32327 = phi i32 [ %i.arz, %.loopexit804 ], [ %.22361, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.sroa.0729.32326 = phi ptr [ %.sroa.0729.7, %.loopexit804 ], [ %.sroa.0729.22356, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 15 uses
  %.sroa.19.32325 = phi ptr [ %.sroa.19.7, %.loopexit804 ], [ %spec.select795, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %.sroa.36.32324 = phi ptr [ %.sroa.36.7, %.loopexit804 ], [ %.sroa.36.22354, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 12 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.1291.lcssa.pn, i64 2
  %i.afh = icmp slt i16 %i.aff, 0
  %i.afi = call i16 @llvm.abs.i16(i16 %i.aff, i1 false)
  %spec.select = zext i16 %i.afi to i32
  %i.afj = load ptr, ptr %21, align 8             ; 2 uses
  %i.afk = load ptr, ptr %i.vd, align 8
  %.not.i.i468 = icmp eq ptr %i.afk, %i.afj
  br i1 %.not.i.i468, label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469:     ; preds = %.lr.ph2328
  store ptr %i.afj, ptr %i.vd, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader

_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader:   ; preds = %.lr.ph2328, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470

bb.de:                                            ; preds = %bb.db
  %i.afl = landingpad { ptr, i32 }
          cleanup
  br label %.body661

_ZNSt6vectorIsSaIsEE5clearEv.exit470:             ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496
  %.12882306 = phi i32 [ %i.aoo, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %spec.select, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 2 uses
  %.12912304 = phi ptr [ %i.aop, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %i.afg, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 19 uses
  %i.afm = load i16, ptr %.12912304, align 1      ; 7 uses
  %i.afn = sext i16 %i.afm to i64                 ; 2 uses
  %i.afo = getelementptr inbounds i8, ptr %i.xs, i64 %i.afn
  %i.afp = load i8, ptr %i.afo, align 1
  %i.afq = zext i8 %i.afp to i32                  ; 3 uses
  %i.afr = load ptr, ptr %20, align 8
  %i.afs = getelementptr inbounds nuw [10 x i8], ptr %i.afr, i64 %i.afn ; 9 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 8 ; 6 uses
  %i.afu = load i16, ptr %i.aft, align 2          ; 2 uses
end_hunk_0
