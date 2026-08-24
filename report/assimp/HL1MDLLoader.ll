Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  %i.yd = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIhEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.ya, i32 noundef %i.yc)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448 unwind label %bb.cs

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448: ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit
  %i.ye = getelementptr inbounds nuw i8, ptr %.22542383, i64 88
  %i.yf = load i32, ptr %i.ye, align 1
  %i.yg = load i32, ptr %i.xw, align 1
  %i.yh = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIA3_fEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.yf, i32 noundef %i.yg)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit unwind label %bb.ct

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit: ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448
  %i.yi = getelementptr inbounds nuw i8, ptr %.22542383, i64 100
  %i.yj = load i32, ptr %i.yi, align 1
  %i.yk = load i32, ptr %i.yb, align 1
  %i.yl = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIA3_fEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.yj, i32 noundef %i.yk)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451 unwind label %.loopexit842

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451: ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit
  %i.ym = load i32, ptr %i.xw, align 1            ; 2 uses
  %i.yn = sext i32 %i.ym to i64                   ; 4 uses
  %i.yo = ptrtoint ptr %.sroa.12772.12377 to i64  ; 2 uses
  %i.yp = ptrtoint ptr %.sroa.0765.12378 to i64   ; 2 uses
  %i.yq = sub i64 %i.yo, %i.yp                    ; 2 uses
  %i.yr = sdiv exact i64 %i.yq, 12                ; 7 uses
  %i.ys = icmp ult i64 %i.yr, %i.yn
  br i1 %i.ys, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451
  %i.yt = sub nuw nsw i64 %i.yn, %i.yr            ; 5 uses
  %i.yu = ptrtoint ptr %.sroa.18775.12376 to i64  ; 2 uses
  %i.yv = sub i64 %i.yu, %i.yo
  %i.yw = sdiv exact i64 %i.yv, 12                ; 2 uses
  %i.yx = icmp ult i64 %i.yr, 768614336404564651
  call void @llvm.assume(i1 %i.yx)
  %i.yy = sub nuw nsw i64 768614336404564650, %i.yr
  %i.yz = icmp ule i64 %i.yw, %i.yy
  call void @llvm.assume(i1 %i.yz)
  %.not28.i = icmp ult i64 %i.yw, %i.yt
  br i1 %.not28.i, label %bb.cf, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.ce
  %i.za = mul nuw nsw i64 %i.yt, 12               ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.12772.12377, i8 0, i64 %i.za, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.12772.12377, i64 %i.za
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cf:                                            ; preds = %bb.ce
  %i.zb = icmp slt i32 %i.ym, 0
  br i1 %i.zb, label %bb.cg, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #25
          to label %.noexc639 unwind label %.loopexit.split-lp843

.noexc639:                                        ; preds = %bb.cg
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.cf
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.yr, i64 %i.yt)
  %i.zc = add nuw nsw i64 %.sroa.speculated.i.i, %i.yr
  %i.zd = call i64 @llvm.umin.i64(i64 %i.zc, i64 768614336404564650) ; 2 uses
  %i.ze = mul nuw nsw i64 %i.zd, 12
  %i.zf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ze) #26
          to label %.noexc640 unwind label %.loopexit842 ; 4 uses

.noexc640:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.yq ; 2 uses
  %i.zh = mul nuw nsw i64 %i.yt, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.zg, i8 0, i64 %i.zh, i1 false)
  %.not10.i.i.i.i635 = icmp eq ptr %.sroa.0765.12378, %.sroa.12772.12377
  br i1 %.not10.i.i.i.i635, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636

.lr.ph.i.i.i.i636:                                ; preds = %.noexc640, %.lr.ph.i.i.i.i636
  %.012.i.i.i.i637 = phi ptr [ %i.zj, %.lr.ph.i.i.i.i636 ], [ %i.zf, %.noexc640 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.zi, %.lr.ph.i.i.i.i636 ], [ %.sroa.0765.12378, %.noexc640 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i637, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !194
  %i.zi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i637, i64 12
  %.not.i.i.i.i638 = icmp eq ptr %i.zi, %.sroa.12772.12377
  br i1 %.not.i.i.i.i638, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636, !llvm.loop !198

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i636, %.noexc640
  %.not.i36.i = icmp eq ptr %.sroa.0765.12378, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.zk = sub i64 %i.yu, %i.yp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0765.12378, i64 noundef %i.zk) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.ch, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.zl = getelementptr inbounds nuw [12 x i8], ptr %i.zg, i64 %i.yt
  %i.zm = getelementptr inbounds nuw [12 x i8], ptr %i.zf, i64 %i.zd
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.ci:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451
  %i.zn = icmp ugt i64 %i.yr, %i.yn
  br i1 %i.zn, label %bb.cj, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cj:                                            ; preds = %bb.ci
  %i.zo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0765.12378, i64 %i.yn ; 2 uses
  %.not.i.i452 = icmp eq ptr %.sroa.12772.12377, %i.zo
  %spec.select793 = select i1 %.not.i.i452, ptr %.sroa.12772.12377, ptr %i.zo
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.cj, %bb.ci, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i
  %.sroa.18775.4 = phi ptr [ %.sroa.18775.12376, %bb.ci ], [ %.sroa.18775.12376, %bb.cj ], [ %.sroa.18775.12376, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.zm, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 28 uses
  %.sroa.12772.2 = phi ptr [ %.sroa.12772.12377, %bb.ci ], [ %spec.select793, %bb.cj ], [ %scevgep.i.i.i.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.zl, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 4 uses
  %.sroa.0765.4 = phi ptr [ %.sroa.0765.12378, %bb.ci ], [ %.sroa.0765.12378, %bb.cj ], [ %.sroa.0765.12378, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.zf, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 32 uses
  %i.zp = load i32, ptr %i.yb, align 1            ; 2 uses
  %i.zq = sext i32 %i.zp to i64                   ; 4 uses
  %i.zr = ptrtoint ptr %.sroa.12760.12374 to i64  ; 2 uses
  %i.zs = ptrtoint ptr %.sroa.0753.12375 to i64   ; 2 uses
  %i.zt = sub i64 %i.zr, %i.zs                    ; 2 uses
  %i.zu = sdiv exact i64 %i.zt, 12                ; 7 uses
  %i.zv = icmp ult i64 %i.zu, %i.zq
  br i1 %i.zv, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.zw = sub nuw nsw i64 %i.zq, %i.zu            ; 5 uses
  %i.zx = ptrtoint ptr %.sroa.18.12373 to i64     ; 2 uses
  %i.zy = sub i64 %i.zx, %i.zr
  %i.zz = sdiv exact i64 %i.zy, 12                ; 2 uses
  %i.aaa = icmp ult i64 %i.zu, 768614336404564651
  call void @llvm.assume(i1 %i.aaa)
  %i.aab = sub nuw nsw i64 768614336404564650, %i.zu
  %i.aac = icmp ule i64 %i.zz, %i.aab
  call void @llvm.assume(i1 %i.aac)
  %.not28.i642 = icmp ult i64 %i.zz, %i.zw
  br i1 %.not28.i642, label %bb.cl, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643: ; preds = %bb.ck
  %i.aad = mul nuw nsw i64 %i.zw, 12              ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.12760.12374, i8 0, i64 %i.aad, i1 false)
  %scevgep.i.i.i.i644 = getelementptr i8, ptr %.sroa.12760.12374, i64 %i.aad
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.cl:                                            ; preds = %bb.ck
  %i.aae = icmp slt i32 %i.zp, 0
  br i1 %i.aae, label %bb.cm, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #25
          to label %.noexc655 unwind label %.loopexit.split-lp843

.noexc655:                                        ; preds = %bb.cm
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645: ; preds = %bb.cl
  %.sroa.speculated.i.i646 = call i64 @llvm.umax.i64(i64 %i.zu, i64 %i.zw)
  %i.aaf = add nuw nsw i64 %.sroa.speculated.i.i646, %i.zu
  %i.aag = call i64 @llvm.umin.i64(i64 %i.aaf, i64 768614336404564650) ; 2 uses
  %i.aah = mul nuw nsw i64 %i.aag, 12
  %i.aai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aah) #26
          to label %.noexc656 unwind label %.loopexit842 ; 4 uses

.noexc656:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.zt ; 2 uses
  %i.aak = mul nuw nsw i64 %i.zw, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aaj, i8 0, i64 %i.aak, i1 false)
  %.not10.i.i.i.i647 = icmp eq ptr %.sroa.0753.12375, %.sroa.12760.12374
  br i1 %.not10.i.i.i.i647, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652, label %.lr.ph.i.i.i.i648

.lr.ph.i.i.i.i648:                                ; preds = %.noexc656, %.lr.ph.i.i.i.i648
  %.012.i.i.i.i649 = phi ptr [ %i.aam, %.lr.ph.i.i.i.i648 ], [ %i.aai, %.noexc656 ] ; 2 uses
  %.0911.i.i.i.i650 = phi ptr [ %i.aal, %.lr.ph.i.i.i.i648 ], [ %.sroa.0753.12375, %.noexc656 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i649, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i650, i64 12, i1 false), !alias.scope !199
  %i.aal = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i650, i64 12 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i649, i64 12
  %.not.i.i.i.i651 = icmp eq ptr %i.aal, %.sroa.12760.12374
  br i1 %.not.i.i.i.i651, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652, label %.lr.ph.i.i.i.i648, !llvm.loop !198

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652: ; preds = %.lr.ph.i.i.i.i648, %.noexc656
  %.not.i36.i653 = icmp eq ptr %.sroa.0753.12375, null
  br i1 %.not.i36.i653, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652
  %i.aan = sub i64 %i.zx, %i.zs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0753.12375, i64 noundef %i.aan) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654: ; preds = %bb.cn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652
  %i.aao = getelementptr inbounds nuw [12 x i8], ptr %i.aaj, i64 %i.zw
  %i.aap = getelementptr inbounds nuw [12 x i8], ptr %i.aai, i64 %i.aag
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.co:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.aaq = icmp ugt i64 %i.zu, %i.zq
  br i1 %i.aaq, label %bb.cp, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.cp:                                            ; preds = %bb.co
  %i.aar = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0753.12375, i64 %i.zq ; 2 uses
  %.not.i.i454 = icmp eq ptr %.sroa.12760.12374, %i.aar
  %spec.select794 = select i1 %.not.i.i454, ptr %.sroa.12760.12374, ptr %i.aar
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457: ; preds = %bb.cp, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654, %bb.co
  %.sroa.18.3 = phi ptr [ %.sroa.18.12373, %bb.co ], [ %.sroa.18.12373, %bb.cp ], [ %.sroa.18.12373, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.aap, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 26 uses
  %.sroa.12760.2 = phi ptr [ %.sroa.12760.12374, %bb.co ], [ %spec.select794, %bb.cp ], [ %scevgep.i.i.i.i644, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.aao, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 4 uses
  %.sroa.0753.3 = phi ptr [ %.sroa.0753.12375, %bb.co ], [ %.sroa.0753.12375, %bb.cp ], [ %.sroa.0753.12375, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.aai, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 30 uses
  %32 = ptrtoint ptr %.sroa.12772.2 to i64
  %33 = ptrtoint ptr %.sroa.0765.4 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 12
  %.not2425 = icmp eq ptr %.sroa.12772.2, %.sroa.0765.4
  br i1 %.not2425, label %.lr.ph2301.preheader, label %.lr.ph2299

.lr.ph2301.preheader:                             ; preds = %.lr.ph2299, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457
  %i.aas = ptrtoint ptr %.sroa.12760.2 to i64
  %i.aat = ptrtoint ptr %.sroa.0753.3 to i64
  %i.aau = sub i64 %i.aas, %i.aat
  %i.aav = sdiv exact i64 %i.aau, 12
  %.not2426 = icmp eq ptr %.sroa.12760.2, %.sroa.0753.3
  br i1 %.not2426, label %._crit_edge2302, label %.lr.ph2301

bb.cq:                                            ; preds = %.lr.ph2386
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cr:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_8Mesh_HL1EEEPKT_ii.exit
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cs:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.ct:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448
  %i.aaz = landingpad { ptr, i32 }
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

.lr.ph2299:                                       ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457, %.lr.ph2299
  %.02942298 = phi i64 [ %i.aco, %.lr.ph2299 ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457 ] ; 4 uses
  %i.aba = getelementptr inbounds nuw [12 x i8], ptr %i.yh, i64 %.02942298 ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.xy, i64 %.02942298
  %i.abc = load i8, ptr %i.abb, align 1
  %i.abd = zext i8 %i.abc to i64
  %i.abe = load ptr, ptr %i.va, align 8
  %i.abf = getelementptr inbounds nuw [160 x i8], ptr %i.abe, i64 %i.abd ; 5 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abh = load float, ptr %i.aba, align 4        ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %i.abj = load float, ptr %i.abi, align 4        ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abl = load float, ptr %i.abk, align 4        ; 2 uses
  %i.abm = load <8 x float>, ptr %i.abg, align 4  ; 4 uses
  %i.abn = insertelement <2 x float> poison, float %i.abj, i64 0
  %i.abo = shufflevector <2 x float> %i.abn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abp = shufflevector <8 x float> %i.abm, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.abq = fmul <2 x float> %i.abo, %i.abp
  %i.abr = shufflevector <8 x float> %i.abm, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.abs = insertelement <2 x float> poison, float %i.abh, i64 0
  %i.abt = shufflevector <2 x float> %i.abs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abr, <2 x float> %i.abt, <2 x float> %i.abq)
  %i.abv = shufflevector <8 x float> %i.abm, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.abw = insertelement <2 x float> poison, float %i.abl, i64 0
  %i.abx = shufflevector <2 x float> %i.abw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aby = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abv, <2 x float> %i.abx, <2 x float> %i.abu)
  %i.abz = shufflevector <8 x float> %i.abm, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.aca = fadd <2 x float> %i.abz, %i.aby
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abf, i64 40
  %i.acc = load float, ptr %i.acb, align 4
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abf, i64 44
  %i.ace = load float, ptr %i.acd, align 4
  %i.acf = fmul float %i.abj, %i.ace
  %i.acg = call float @llvm.fmuladd.f32(float %i.acc, float %i.abh, float %i.acf)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abf, i64 48
  %i.aci = load float, ptr %i.ach, align 4
  %i.acj = call float @llvm.fmuladd.f32(float %i.aci, float %i.abl, float %i.acg)
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abf, i64 52
  %i.acl = load float, ptr %i.ack, align 4
  %i.acm = fadd float %i.acl, %i.acj
  %i.acn = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0765.4, i64 %.02942298 ; 2 uses
  store <2 x float> %i.aca, ptr %i.acn, align 4
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  store float %i.acm, ptr %.sroa.4128.0..sroa_idx, align 4
  %i.aco = add nuw i64 %.02942298, 1              ; 2 uses
  %36 = icmp ult i64 %i.aco, %35
  br i1 %36, label %.lr.ph2299, label %.lr.ph2301.preheader, !llvm.loop !203

._crit_edge2302:                                  ; preds = %bb.cu, %.lr.ph2301.preheader
  %i.acp = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.cw unwind label %bb.cz     ; 6 uses

.lr.ph2301:                                       ; preds = %.lr.ph2301.preheader, %bb.cu
  %.02562300 = phi i64 [ %i.aeu, %bb.cu ], [ 0, %.lr.ph2301.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.acq = getelementptr inbounds nuw i8, ptr %i.yd, i64 %.02562300
  %i.acr = load i8, ptr %i.acq, align 1
  %i.acs = zext i8 %i.acr to i64
  %i.act = load ptr, ptr %i.va, align 8
  %i.acu = getelementptr inbounds nuw [160 x i8], ptr %i.act, i64 %i.acs
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %i.acv, i64 64, i1 false)
  %i.acw = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %28)
          to label %bb.cu unwind label %bb.cv     ; 14 uses

bb.cu:                                            ; preds = %.lr.ph2301
  %i.acx = getelementptr inbounds nuw [12 x i8], ptr %i.yl, i64 %.02562300 ; 3 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acw, i64 16 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acw, i64 4 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acw, i64 32 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acw, i64 8 ; 2 uses
  %i.adc = load float, ptr %i.adb, align 4        ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.acw, i64 36
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acw, i64 24 ; 2 uses
  %i.adf = load float, ptr %i.ade, align 4        ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acw, i64 48 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acw, i64 12 ; 2 uses
  %i.adi = load float, ptr %i.adh, align 4
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acw, i64 52
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acw, i64 28 ; 2 uses
  %i.adl = load float, ptr %i.adk, align 4
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acw, i64 56 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acw, i64 44 ; 2 uses
  %i.ado = load float, ptr %i.adm, align 4        ; 2 uses
  %i.adp = load float, ptr %i.adn, align 4
  store float %i.adp, ptr %i.adm, align 4
  store float %i.ado, ptr %i.adn, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acw, i64 40
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %i.adq = getelementptr inbounds nuw i8, ptr %i.acx, i64 4
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  %i.ads = load float, ptr %i.acz, align 4
  %i.adt = load <2 x float>, ptr %i.acw, align 4
  %i.adu = load <2 x float>, ptr %i.acy, align 4  ; 2 uses
  store float %i.ads, ptr %i.acy, align 4
  %i.adv = extractelement <2 x float> %i.adu, i64 0
  store float %i.adv, ptr %i.acz, align 4
  %i.adw = load <2 x float>, ptr %i.ada, align 4  ; 3 uses
  store float %i.adc, ptr %i.ada, align 4
  %i.adx = extractelement <2 x float> %i.adw, i64 0
  store float %i.adx, ptr %i.adb, align 4
  store float %i.adf, ptr %i.add, align 4
  %i.ady = extractelement <2 x float> %i.adw, i64 1
  store float %i.ady, ptr %i.ade, align 4
  %i.adz = load <2 x float>, ptr %i.adg, align 4  ; 3 uses
  store float %i.adi, ptr %i.adg, align 4
  %i.aea = extractelement <2 x float> %i.adz, i64 0
  store float %i.aea, ptr %i.adh, align 4
  store float %i.adl, ptr %i.adj, align 4
  %i.aeb = extractelement <2 x float> %i.adz, i64 1
  store float %i.aeb, ptr %i.adk, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.aec = load float, ptr %i.acx, align 4        ; 2 uses
  %i.aed = load float, ptr %i.adq, align 4        ; 2 uses
  %i.aee = load float, ptr %i.adr, align 4        ; 2 uses
  %i.aef = insertelement <2 x float> poison, float %i.aed, i64 0
  %i.aeg = shufflevector <2 x float> %i.aef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeh = fmul <2 x float> %i.adu, %i.aeg
  %i.aei = insertelement <2 x float> poison, float %i.aec, i64 0
  %i.aej = shufflevector <2 x float> %i.aei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aek = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adt, <2 x float> %i.aej, <2 x float> %i.aeh)
  %i.ael = insertelement <2 x float> poison, float %i.aee, i64 0
  %i.aem = shufflevector <2 x float> %i.ael, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aen = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adw, <2 x float> %i.aem, <2 x float> %i.aek)
  %i.aeo = fadd <2 x float> %i.adz, %i.aen
  %i.aep = fmul float %i.adf, %i.aed
  %i.aeq = call float @llvm.fmuladd.f32(float %i.adc, float %i.aec, float %i.aep)
  %i.aer = call float @llvm.fmuladd.f32(float %.sroa.14.0.copyload, float %i.aee, float %i.aeq)
  %i.aes = fadd float %i.ado, %i.aer
  %i.aet = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0753.3, i64 %.02562300 ; 2 uses
  store <2 x float> %i.aeo, ptr %i.aet, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  store float %i.aes, ptr %.sroa.4.0..sroa_idx, align 4
  %i.aeu = add nuw i64 %.02562300, 1              ; 2 uses
  %37 = icmp ult i64 %i.aeu, %i.aav
  br i1 %37, label %.lr.ph2301, label %._crit_edge2302, !llvm.loop !204

bb.cv:                                            ; preds = %.lr.ph2301
  %i.aev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body661

bb.cw:                                            ; preds = %._crit_edge2302
  %i.aew = zext i32 %.33072379 to i64
  %i.aex = load ptr, ptr %18, align 8
  %i.aey = getelementptr inbounds nuw [32 x i8], ptr %i.aex, i64 %i.aew
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.acp, ptr noundef nonnull align 8 dereferenceable(32) %i.aey)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.acp, ptr %.02962381, align 8
  %i.aez = getelementptr inbounds nuw i8, ptr %i.acp, i64 1096
  store ptr %i.wh, ptr %i.aez, align 8
  %i.afa = load i32, ptr %i.xr, align 1           ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.acp, i64 1120
  store i32 %i.afa, ptr %i.afb, align 8
  %i.afc = zext i32 %i.afa to i64
  %i.afd = shl nuw nsw i64 %i.afc, 2
  %i.afe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afd) #26
          to label %bb.cy unwind label %bb.cz     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.aff = getelementptr inbounds nuw i8, ptr %i.acp, i64 1128
  store ptr %i.afe, ptr %i.aff, align 8
  %i.afg = load i32, ptr %i.xr, align 1
  %i.afh = icmp sgt i32 %i.afg, 0
  br i1 %i.afh, label %.lr.ph2363, label %._crit_edge2364

._crit_edge2364:                                  ; preds = %.loopexit828, %bb.cy
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.12370, %bb.cy ], [ %.sroa.19.3.lcssa, %.loopexit828 ] ; 2 uses
  %.sroa.36.2.lcssa = phi ptr [ %.sroa.36.12371, %bb.cy ], [ %.sroa.36.3.lcssa, %.loopexit828 ] ; 2 uses
  %.sroa.0729.2.lcssa = phi ptr [ %.sroa.0729.12372, %bb.cy ], [ %.sroa.0729.3.lcssa, %.loopexit828 ] ; 2 uses
  %.2301.lcssa = phi i32 [ %.13002380, %bb.cy ], [ %i.bbg, %.loopexit828 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.12482384, %bb.cy ], [ %.3.lcssa, %.loopexit828 ] ; 2 uses
  %i.afi = add nuw nsw i32 %.02952382, 1          ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.22542383, i64 112
  %i.afk = getelementptr inbounds nuw i8, ptr %.02962381, i64 8
  %i.afl = add i32 %.33072379, 1                  ; 2 uses
  %i.afm = load i32, ptr %i.we, align 4
  %i.afn = icmp slt i32 %i.afi, %i.afm
  br i1 %i.afn, label %.lr.ph2386, label %._crit_edge2387, !llvm.loop !205

bb.cz:                                            ; preds = %bb.cx, %._crit_edge2302
  %i.afo = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.da:                                            ; preds = %bb.cw
  %i.afp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.acp, i64 noundef 1144) #24
  br label %.body661

.lr.ph2363:                                       ; preds = %bb.cy, %.loopexit828
  %.02452361 = phi i32 [ %i.bbe, %.loopexit828 ], [ 0, %bb.cy ]
  %.02462360 = phi ptr [ %i.bbh, %.loopexit828 ], [ %i.afe, %bb.cy ] ; 2 uses
  %.22359 = phi i32 [ %.3.lcssa, %.loopexit828 ], [ %.12482384, %bb.cy ] ; 2 uses
  %.02552358 = phi ptr [ %i.bbf, %.loopexit828 ], [ %i.xt, %bb.cy ] ; 3 uses
  %.23012357 = phi i32 [ %i.bbg, %.loopexit828 ], [ %.13002380, %bb.cy ] ; 3 uses
  %.sroa.0729.22356 = phi ptr [ %.sroa.0729.3.lcssa, %.loopexit828 ], [ %.sroa.0729.12372, %bb.cy ] ; 5 uses
  %.sroa.36.22355 = phi ptr [ %.sroa.36.3.lcssa, %.loopexit828 ], [ %.sroa.36.12371, %bb.cy ] ; 3 uses
  %.sroa.19.22354 = phi ptr [ %.sroa.19.3.lcssa, %.loopexit828 ], [ %.sroa.19.12370, %bb.cy ] ; 2 uses
  store i32 %.23012357, ptr %.02462360, align 4
  %i.afq = load ptr, ptr %i.a, align 8
  %i.afr = getelementptr inbounds nuw i8, ptr %.02552358, i64 4
  %i.afs = load i32, ptr %i.afr, align 1
  %i.aft = getelementptr inbounds nuw i8, ptr %.02552358, i64 8 ; 2 uses
  %i.afu = load i32, ptr %i.aft, align 1
  %i.afv = sext i32 %i.afu to i64
  %i.afw = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.afv
  %i.afx = load i16, ptr %i.afw, align 2
  %i.afy = sext i16 %i.afx to i64
  %i.afz = getelementptr inbounds [80 x i8], ptr %i.r, i64 %i.afy
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 68
  %i.agb = load <2 x i32>, ptr %i.aga, align 1
  %i.agc = sitofp <2 x i32> %i.agb to <2 x float> ; 2 uses
  %i.agd = extractelement <2 x float> %i.agc, i64 0
  %i.age = fdiv nnan float 1.000000e+00, %i.agd
  %i.agf = load ptr, ptr %20, align 8             ; 2 uses
  %i.agg = load ptr, ptr %i.vb, align 8
  %.not.i.i462 = icmp eq ptr %i.agg, %i.agf
  br i1 %.not.i.i462, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.lr.ph2363
  store ptr %i.agf, ptr %i.vb, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit: ; preds = %.lr.ph2363, %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.agh = load i32, ptr %i.xw, align 1           ; 2 uses
  %.not3628 = icmp eq i32 %i.agh, 0
  br i1 %.not3628, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit
  %i.agi = sext i32 %i.agh to i64
  invoke void @_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %i.agi)
          to label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit unwind label %bb.de

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, %bb.db
  %i.agj = sext i32 %i.afs to i64
  %i.agk = getelementptr inbounds i8, ptr %i.afq, i64 %i.agj ; 2 uses
  %i.agl = load ptr, ptr %22, align 8             ; 2 uses
  %i.agm = load ptr, ptr %i.vc, align 8
  %.not.i.i466 = icmp eq ptr %i.agm, %i.agl
  br i1 %.not.i.i466, label %_ZNSt6vectorIsSaIsEE5clearEv.exit, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit
  store ptr %i.agl, ptr %i.vc, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit

_ZNSt6vectorIsSaIsEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i
  %.not.i.i467 = icmp eq ptr %.sroa.19.22354, %.sroa.0729.22356
  %spec.select795 = select i1 %.not.i.i467, ptr %.sroa.19.22354, ptr %.sroa.0729.22356 ; 2 uses
  %i.agn = load ptr, ptr %i.uj, align 8
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.agn)
          to label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit unwind label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  %i.ago = landingpad { ptr, i32 }
          catch ptr null
  %i.agp = extractvalue { ptr, i32 } %i.ago, 0
  call void @__clang_call_terminate(ptr %i.agp) #27
  unreachable

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit: ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  store ptr null, ptr %i.uj, align 8
  store <2 x ptr> %i.vo, ptr %i.uk, align 8
  store i64 0, ptr %i.um, align 8
  %i.agq = load ptr, ptr %i.uo, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.agq)
          to label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit unwind label %bb.dd

bb.dd:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  %i.agr = landingpad { ptr, i32 }
          catch ptr null
  %i.ags = extractvalue { ptr, i32 } %i.agr, 0
  call void @__clang_call_terminate(ptr %i.ags) #27
  unreachable

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit: ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  store ptr null, ptr %i.uo, align 8
  store <2 x ptr> %i.vq, ptr %i.up, align 8
  store i64 0, ptr %i.ur, align 8
  %i.agt = load i16, ptr %i.agk, align 2          ; 2 uses
  %.not3292323 = icmp eq i16 %i.agt, 0
  br i1 %.not3292323, label %._crit_edge2329, label %.lr.ph2328

.lr.ph2328:                                       ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit, %.loopexit804
  %i.agu = phi i16 [ %i.atp, %.loopexit804 ], [ %i.agt, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %.1244.lcssa.pn = phi ptr [ %i.aqe, %.loopexit804 ], [ %i.agk, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.32327 = phi i32 [ %i.ato, %.loopexit804 ], [ %.22359, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.sroa.0729.32326 = phi ptr [ %.sroa.0729.7, %.loopexit804 ], [ %.sroa.0729.22356, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 15 uses
  %.sroa.36.32325 = phi ptr [ %.sroa.36.7, %.loopexit804 ], [ %.sroa.36.22355, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 12 uses
  %.sroa.19.32324 = phi ptr [ %.sroa.19.7, %.loopexit804 ], [ %spec.select795, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.1244.lcssa.pn, i64 2
  %i.agw = icmp slt i16 %i.agu, 0
  %i.agx = call i16 @llvm.abs.i16(i16 %i.agu, i1 false)
  %spec.select = zext i16 %i.agx to i32
  %i.agy = load ptr, ptr %21, align 8             ; 2 uses
  %i.agz = load ptr, ptr %i.vd, align 8
  %.not.i.i468 = icmp eq ptr %i.agz, %i.agy
  br i1 %.not.i.i468, label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469:     ; preds = %.lr.ph2328
  store ptr %i.agy, ptr %i.vd, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader

_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader:   ; preds = %.lr.ph2328, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470

bb.de:                                            ; preds = %bb.db
  %i.aha = landingpad { ptr, i32 }
          cleanup
  br label %.body661

_ZNSt6vectorIsSaIsEE5clearEv.exit470:             ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496
  %.12422306 = phi i32 [ %i.aqd, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %spec.select, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 2 uses
  %.12442304 = phi ptr [ %i.aqe, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %i.agv, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 19 uses
  %i.ahb = load i16, ptr %.12442304, align 1      ; 7 uses
  %i.ahc = sext i16 %i.ahb to i64                 ; 2 uses
  %i.ahd = getelementptr inbounds i8, ptr %i.xy, i64 %i.ahc
  %i.ahe = load i8, ptr %i.ahd, align 1
  %i.ahf = zext i8 %i.ahe to i32                  ; 3 uses
  %i.ahg = load ptr, ptr %20, align 8
  %i.ahh = getelementptr inbounds nuw [10 x i8], ptr %i.ahg, i64 %i.ahc ; 9 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8 ; 6 uses
  %i.ahj = load i16, ptr %i.ahi, align 2          ; 2 uses
  %i.ahk = icmp eq i16 %i.ahj, -1
  br i1 %i.ahk, label %bb.df, label %bb.do

bb.df:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470
  store i16 %i.ahb, ptr %i.ahh, align 2
  %i.ahl = getelementptr inbounds nuw i8, ptr %.12442304, i64 2
  %i.ahm = load i16, ptr %i.ahl, align 1
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahh, i64 2
  store i16 %i.ahm, ptr %i.ahn, align 2
end_hunk_0
