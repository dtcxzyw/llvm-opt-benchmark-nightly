Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.cj
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.zr, i64 %i.zt)
  %i.aac = add nuw nsw i64 %.sroa.speculated.i.i, %i.zr
  %i.aad = call i64 @llvm.umin.i64(i64 %i.aac, i64 768614336404564650) ; 2 uses
  %i.aae = mul nuw nsw i64 %i.aad, 12
  %i.aaf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aae) #26
          to label %.noexc640 unwind label %.loopexit851 ; 4 uses

.noexc640:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.zq ; 2 uses
  %i.aah = mul nuw nsw i64 %i.zt, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aag, i8 0, i64 %i.aah, i1 false)
  %.not10.i.i.i.i635 = icmp eq ptr %.sroa.0772.12387, %.sroa.12779.12386
  br i1 %.not10.i.i.i.i635, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636

.lr.ph.i.i.i.i636:                                ; preds = %.noexc640, %.lr.ph.i.i.i.i636
  %.012.i.i.i.i637 = phi ptr [ %i.aaj, %.lr.ph.i.i.i.i636 ], [ %i.aaf, %.noexc640 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aai, %.lr.ph.i.i.i.i636 ], [ %.sroa.0772.12387, %.noexc640 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i637, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !228
  %i.aai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i637, i64 12
  %.not.i.i.i.i638 = icmp eq ptr %i.aai, %.sroa.12779.12386
  br i1 %.not.i.i.i.i638, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636, !llvm.loop !197

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i636, %.noexc640
  %.not.i36.i = icmp eq ptr %.sroa.0772.12387, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aak = sub i64 %i.zu, %i.zp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0772.12387, i64 noundef %i.aak) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.cl, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aal = getelementptr inbounds nuw [12 x i8], ptr %i.aag, i64 %i.zt
  %i.aam = getelementptr inbounds nuw [12 x i8], ptr %i.aaf, i64 %i.aad
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cm:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451
  %i.aan = icmp ugt i64 %i.zr, %i.zn
  br i1 %i.aan, label %bb.cn, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cn:                                            ; preds = %bb.cm
  %i.aao = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0772.12387, i64 %i.zn ; 2 uses
  %.not.i.i452 = icmp eq ptr %.sroa.12779.12386, %i.aao
  %spec.select801 = select i1 %.not.i.i452, ptr %.sroa.12779.12386, ptr %i.aao
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.cn, %bb.cm, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i
  %.sroa.18782.4 = phi ptr [ %.sroa.18782.12385, %bb.cm ], [ %.sroa.18782.12385, %bb.cn ], [ %.sroa.18782.12385, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.aam, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 28 uses
  %.sroa.12779.2 = phi ptr [ %.sroa.12779.12386, %bb.cm ], [ %spec.select801, %bb.cn ], [ %scevgep.i.i.i.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.aal, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 4 uses
  %.sroa.0772.4 = phi ptr [ %.sroa.0772.12387, %bb.cm ], [ %.sroa.0772.12387, %bb.cn ], [ %.sroa.0772.12387, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.aaf, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 32 uses
  %i.aap = load i32, ptr %i.zb, align 1           ; 2 uses
  %i.aaq = sext i32 %i.aap to i64                 ; 4 uses
  %i.aar = ptrtoint ptr %.sroa.12766.12383 to i64 ; 2 uses
  %i.aas = ptrtoint ptr %.sroa.0759.12384 to i64  ; 2 uses
  %i.aat = sub i64 %i.aar, %i.aas                 ; 2 uses
  %i.aau = sdiv exact i64 %i.aat, 12              ; 7 uses
  %i.aav = icmp ult i64 %i.aau, %i.aaq
  br i1 %i.aav, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.aaw = sub nuw nsw i64 %i.aaq, %i.aau         ; 5 uses
  %i.aax = ptrtoint ptr %.sroa.18.12382 to i64    ; 2 uses
  %i.aay = sub i64 %i.aax, %i.aar
  %i.aaz = sdiv exact i64 %i.aay, 12              ; 2 uses
  %i.aba = icmp ult i64 %i.aau, 768614336404564651
  call void @llvm.assume(i1 %i.aba)
  %i.abb = sub nuw nsw i64 768614336404564650, %i.aau
  %i.abc = icmp ule i64 %i.aaz, %i.abb
  call void @llvm.assume(i1 %i.abc)
  %.not28.i642 = icmp ult i64 %i.aaz, %i.aaw
  br i1 %.not28.i642, label %bb.cp, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643: ; preds = %bb.co
  %i.abd = mul nuw nsw i64 %i.aaw, 12             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.12766.12383, i8 0, i64 %i.abd, i1 false)
  %scevgep.i.i.i.i644 = getelementptr i8, ptr %.sroa.12766.12383, i64 %i.abd
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.cp:                                            ; preds = %bb.co
  %i.abe = icmp slt i32 %i.aap, 0
  br i1 %i.abe, label %bb.cq, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #25
          to label %.noexc655 unwind label %.loopexit.split-lp852

.noexc655:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645: ; preds = %bb.cp
  %.sroa.speculated.i.i646 = call i64 @llvm.umax.i64(i64 %i.aau, i64 %i.aaw)
  %i.abf = add nuw nsw i64 %.sroa.speculated.i.i646, %i.aau
  %i.abg = call i64 @llvm.umin.i64(i64 %i.abf, i64 768614336404564650) ; 2 uses
  %i.abh = mul nuw nsw i64 %i.abg, 12
  %i.abi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abh) #26
          to label %.noexc656 unwind label %.loopexit851 ; 4 uses

.noexc656:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.aat ; 2 uses
  %i.abk = mul nuw nsw i64 %i.aaw, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.abj, i8 0, i64 %i.abk, i1 false)
  %.not10.i.i.i.i647 = icmp eq ptr %.sroa.0759.12384, %.sroa.12766.12383
  br i1 %.not10.i.i.i.i647, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652, label %.lr.ph.i.i.i.i648

.lr.ph.i.i.i.i648:                                ; preds = %.noexc656, %.lr.ph.i.i.i.i648
  %.012.i.i.i.i649 = phi ptr [ %i.abm, %.lr.ph.i.i.i.i648 ], [ %i.abi, %.noexc656 ] ; 2 uses
  %.0911.i.i.i.i650 = phi ptr [ %i.abl, %.lr.ph.i.i.i.i648 ], [ %.sroa.0759.12384, %.noexc656 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i649, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i650, i64 12, i1 false), !alias.scope !229
  %i.abl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i650, i64 12 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i649, i64 12
  %.not.i.i.i.i651 = icmp eq ptr %i.abl, %.sroa.12766.12383
  br i1 %.not.i.i.i.i651, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652, label %.lr.ph.i.i.i.i648, !llvm.loop !197

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652: ; preds = %.lr.ph.i.i.i.i648, %.noexc656
  %.not.i36.i653 = icmp eq ptr %.sroa.0759.12384, null
  br i1 %.not.i36.i653, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652
  %i.abn = sub i64 %i.aax, %i.aas
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0759.12384, i64 noundef %i.abn) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654: ; preds = %bb.cr, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652
  %i.abo = getelementptr inbounds nuw [12 x i8], ptr %i.abj, i64 %i.aaw
  %i.abp = getelementptr inbounds nuw [12 x i8], ptr %i.abi, i64 %i.abg
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.cs:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.abq = icmp ugt i64 %i.aau, %i.aaq
  br i1 %i.abq, label %bb.ct, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.ct:                                            ; preds = %bb.cs
  %i.abr = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0759.12384, i64 %i.aaq ; 2 uses
  %.not.i.i454 = icmp eq ptr %.sroa.12766.12383, %i.abr
  %spec.select802 = select i1 %.not.i.i454, ptr %.sroa.12766.12383, ptr %i.abr
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457: ; preds = %bb.ct, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654, %bb.cs
  %.sroa.18.3 = phi ptr [ %.sroa.18.12382, %bb.cs ], [ %.sroa.18.12382, %bb.ct ], [ %.sroa.18.12382, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.abp, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 26 uses
  %.sroa.12766.2 = phi ptr [ %.sroa.12766.12383, %bb.cs ], [ %spec.select802, %bb.ct ], [ %scevgep.i.i.i.i644, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.abo, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 4 uses
  %.sroa.0759.3 = phi ptr [ %.sroa.0759.12384, %bb.cs ], [ %.sroa.0759.12384, %bb.ct ], [ %.sroa.0759.12384, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.abi, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 30 uses
  %.not2434 = icmp eq ptr %.sroa.12779.2, %.sroa.0772.4
  br i1 %.not2434, label %.preheader850, label %.lr.ph2308.preheader

.lr.ph2308.preheader:                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457
  %i.abs = ptrtoint ptr %.sroa.12779.2 to i64
  %i.abt = ptrtoint ptr %.sroa.0772.4 to i64
  %i.abu = sub i64 %i.abs, %i.abt
  %i.abv = sdiv exact i64 %i.abu, 12
  br label %.lr.ph2308

.preheader850:                                    ; preds = %.lr.ph2308, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457
  %.not2435 = icmp eq ptr %.sroa.12766.2, %.sroa.0759.3
  br i1 %.not2435, label %._crit_edge2311, label %.lr.ph2310.preheader

.lr.ph2310.preheader:                             ; preds = %.preheader850
  %i.abw = ptrtoint ptr %.sroa.12766.2 to i64
  %i.abx = ptrtoint ptr %.sroa.0759.3 to i64
  %i.aby = sub i64 %i.abw, %i.abx
  %i.abz = sdiv exact i64 %i.aby, 12
  br label %.lr.ph2310

bb.cu:                                            ; preds = %.lr.ph2395
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cv:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_8Mesh_HL1EEEPKT_ii.exit
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cw:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit
  %i.acc = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cx:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit851:                                     ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645
  %.sroa.18782.2.ph = phi ptr [ %.sroa.18782.12385, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit ], [ %.sroa.18782.12385, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.18782.4, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645 ]
  %.sroa.0772.2.ph = phi ptr [ %.sroa.0772.12387, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit ], [ %.sroa.0772.12387, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0772.4, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645 ]
  %lpad.loopexit855 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit.split-lp852:                            ; preds = %bb.ck, %bb.cq
  %.sroa.18782.2.ph853 = phi ptr [ %.sroa.18782.12385, %bb.ck ], [ %.sroa.18782.4, %bb.cq ]
  %.sroa.0772.2.ph854 = phi ptr [ %.sroa.0772.12387, %bb.ck ], [ %.sroa.0772.4, %bb.cq ]
  %lpad.loopexit.split-lp856 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.lr.ph2308:                                       ; preds = %.lr.ph2308.preheader, %.lr.ph2308
  %.02942307 = phi i64 [ %i.adj, %.lr.ph2308 ], [ 0, %.lr.ph2308.preheader ] ; 4 uses
  %i.ace = getelementptr inbounds nuw [12 x i8], ptr %i.zh, i64 %.02942307 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.yy, i64 %.02942307
  %i.acg = load i8, ptr %i.acf, align 1
  %i.ach = zext i8 %i.acg to i64
  %i.aci = load ptr, ptr %i.vg, align 8
  %i.acj = getelementptr inbounds nuw [160 x i8], ptr %i.aci, i64 %i.ach ; 5 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %32 = load <3 x float>, ptr %i.ace, align 4     ; 5 uses
  %i.acl = load float, ptr %i.ace, align 4
  %i.acm = load <8 x float>, ptr %i.ack, align 4  ; 4 uses
  %33 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acn = shufflevector <8 x float> %i.acm, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.aco = fmul <2 x float> %33, %i.acn
  %i.acp = shufflevector <8 x float> %i.acm, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.acq = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> zeroinitializer
  %i.acr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acp, <2 x float> %i.acq, <2 x float> %i.aco)
  %i.acs = shufflevector <8 x float> %i.acm, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %34 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.act = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acs, <2 x float> %34, <2 x float> %i.acr)
  %i.acu = shufflevector <8 x float> %i.acm, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.acv = fadd <2 x float> %i.acu, %i.act
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acj, i64 40
  %i.acx = load float, ptr %i.acw, align 4
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acj, i64 44
  %i.acz = load float, ptr %i.acy, align 4
  %35 = extractelement <3 x float> %32, i64 1
  %i.ada = fmul float %35, %i.acz
  %i.adb = call float @llvm.fmuladd.f32(float %i.acx, float %i.acl, float %i.ada)
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acj, i64 48
  %i.add = load float, ptr %i.adc, align 4
  %36 = extractelement <3 x float> %32, i64 2
  %i.ade = call float @llvm.fmuladd.f32(float %i.add, float %36, float %i.adb)
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acj, i64 52
  %i.adg = load float, ptr %i.adf, align 4
  %i.adh = fadd float %i.adg, %i.ade
  %i.adi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0772.4, i64 %.02942307 ; 2 uses
  store <2 x float> %i.acv, ptr %i.adi, align 4
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  store float %i.adh, ptr %.sroa.4128.0..sroa_idx, align 4
  %i.adj = add nuw i64 %.02942307, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.adj, %i.abv
  br i1 %exitcond.not, label %.preheader850, label %.lr.ph2308, !llvm.loop !201

._crit_edge2311:                                  ; preds = %bb.cy, %.preheader850
  %i.adk = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.da unwind label %bb.dd     ; 6 uses

.lr.ph2310:                                       ; preds = %.lr.ph2310.preheader, %bb.cy
  %.02562309 = phi i64 [ %i.afe, %bb.cy ], [ 0, %.lr.ph2310.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.adl = getelementptr inbounds nuw i8, ptr %i.zd, i64 %.02562309
  %i.adm = load i8, ptr %i.adl, align 1
  %i.adn = zext i8 %i.adm to i64
  %i.ado = load ptr, ptr %i.vg, align 8
  %i.adp = getelementptr inbounds nuw [160 x i8], ptr %i.ado, i64 %i.adn
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %i.adq, i64 64, i1 false)
  %i.adr = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %28)
          to label %bb.cy unwind label %bb.cz     ; 14 uses

bb.cy:                                            ; preds = %.lr.ph2310
  %i.ads = getelementptr inbounds nuw [12 x i8], ptr %i.zl, i64 %.02562309 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 16 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 4 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 32 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adr, i64 8 ; 2 uses
  %i.adx = load float, ptr %i.adw, align 4        ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adr, i64 36
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adr, i64 24 ; 2 uses
  %i.aea = load float, ptr %i.adz, align 4        ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adr, i64 48 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adr, i64 12 ; 2 uses
  %i.aed = load float, ptr %i.aec, align 4
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adr, i64 52
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adr, i64 28 ; 2 uses
  %i.aeg = load float, ptr %i.aef, align 4
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adr, i64 56 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adr, i64 44 ; 2 uses
  %i.aej = load float, ptr %i.aeh, align 4        ; 2 uses
  %i.aek = load float, ptr %i.aei, align 4
  store float %i.aek, ptr %i.aeh, align 4
  store float %i.aej, ptr %i.aei, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adr, i64 40
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %i.ael = load float, ptr %i.adu, align 4
  %i.aem = load <2 x float>, ptr %i.adr, align 4
  %i.aen = load <2 x float>, ptr %i.adt, align 4  ; 2 uses
  store float %i.ael, ptr %i.adt, align 4
  %i.aeo = extractelement <2 x float> %i.aen, i64 0
  store float %i.aeo, ptr %i.adu, align 4
  %i.aep = load <2 x float>, ptr %i.adv, align 4  ; 3 uses
  store float %i.adx, ptr %i.adv, align 4
  %i.aeq = extractelement <2 x float> %i.aep, i64 0
  store float %i.aeq, ptr %i.adw, align 4
  store float %i.aea, ptr %i.ady, align 4
  %i.aer = extractelement <2 x float> %i.aep, i64 1
  store float %i.aer, ptr %i.adz, align 4
  %i.aes = load <2 x float>, ptr %i.aeb, align 4  ; 3 uses
  store float %i.aed, ptr %i.aeb, align 4
  %i.aet = extractelement <2 x float> %i.aes, i64 0
  store float %i.aet, ptr %i.aec, align 4
  store float %i.aeg, ptr %i.aee, align 4
  %i.aeu = extractelement <2 x float> %i.aes, i64 1
  store float %i.aeu, ptr %i.aef, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %37 = load <3 x float>, ptr %i.ads, align 4     ; 5 uses
  %i.aev = load float, ptr %i.ads, align 4
  %38 = shufflevector <3 x float> %37, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aew = fmul <2 x float> %i.aen, %38
  %i.aex = shufflevector <3 x float> %37, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aey = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aem, <2 x float> %i.aex, <2 x float> %i.aew)
  %39 = shufflevector <3 x float> %37, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %40 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aep, <2 x float> %39, <2 x float> %i.aey)
  %41 = fadd <2 x float> %i.aes, %40
  %42 = extractelement <3 x float> %37, i64 1
  %i.aez = fmul float %i.aea, %42
  %i.afa = call float @llvm.fmuladd.f32(float %i.adx, float %i.aev, float %i.aez)
  %43 = extractelement <3 x float> %37, i64 2
  %i.afb = call float @llvm.fmuladd.f32(float %.sroa.14.0.copyload, float %43, float %i.afa)
  %i.afc = fadd float %i.aej, %i.afb
  %i.afd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0759.3, i64 %.02562309 ; 2 uses
  store <2 x float> %41, ptr %i.afd, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  store float %i.afc, ptr %.sroa.4.0..sroa_idx, align 4
  %i.afe = add nuw i64 %.02562309, 1              ; 2 uses
  %exitcond3399.not = icmp eq i64 %i.afe, %i.abz
  br i1 %exitcond3399.not, label %._crit_edge2311, label %.lr.ph2310, !llvm.loop !202

bb.cz:                                            ; preds = %.lr.ph2310
  %i.aff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body661

bb.da:                                            ; preds = %._crit_edge2311
  %i.afg = zext i32 %.33072388 to i64
  %i.afh = load ptr, ptr %18, align 8
  %i.afi = getelementptr inbounds nuw [32 x i8], ptr %i.afh, i64 %i.afg
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.adk, ptr noundef nonnull align 8 dereferenceable(32) %i.afi)
          to label %bb.db unwind label %bb.de

bb.db:                                            ; preds = %bb.da
  store ptr %i.adk, ptr %.02962390, align 8
  %i.afj = getelementptr inbounds nuw i8, ptr %i.adk, i64 1096
  store ptr %i.wn, ptr %i.afj, align 8
  %i.afk = load i32, ptr %i.yr, align 1           ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.adk, i64 1120
  store i32 %i.afk, ptr %i.afl, align 8
  %i.afm = zext i32 %i.afk to i64
  %i.afn = shl nuw nsw i64 %i.afm, 2
  %i.afo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afn) #26
          to label %bb.dc unwind label %bb.dd     ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.afp = getelementptr inbounds nuw i8, ptr %i.adk, i64 1128
  store ptr %i.afo, ptr %i.afp, align 8
  %i.afq = load i32, ptr %i.yr, align 1
  %i.afr = icmp sgt i32 %i.afq, 0
  br i1 %i.afr, label %.lr.ph2372, label %._crit_edge2373

._crit_edge2373:                                  ; preds = %.loopexit836, %bb.dc
  %.sroa.20.2.lcssa = phi ptr [ %.sroa.20.12379, %bb.dc ], [ %.sroa.20.3.lcssa, %.loopexit836 ] ; 2 uses
  %.sroa.38.2.lcssa = phi ptr [ %.sroa.38.12380, %bb.dc ], [ %.sroa.38.3.lcssa, %.loopexit836 ] ; 2 uses
  %.sroa.0729.2.lcssa = phi ptr [ %.sroa.0729.12381, %bb.dc ], [ %.sroa.0729.3.lcssa, %.loopexit836 ] ; 2 uses
  %.2301.lcssa = phi i32 [ %.13002389, %bb.dc ], [ %i.bco, %.loopexit836 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.12482393, %bb.dc ], [ %.3.lcssa, %.loopexit836 ] ; 2 uses
  %i.afs = add nuw nsw i32 %.02952391, 1          ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %.22542392, i64 112
  %i.afu = getelementptr inbounds nuw i8, ptr %.02962390, i64 8
  %i.afv = add i32 %.33072388, 1                  ; 2 uses
  %i.afw = load i32, ptr %i.wk, align 1
  %i.afx = icmp slt i32 %i.afs, %i.afw
  br i1 %i.afx, label %.lr.ph2395, label %._crit_edge2396, !llvm.loop !203

bb.dd:                                            ; preds = %bb.db, %._crit_edge2311
  %i.afy = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.de:                                            ; preds = %bb.da
  %i.afz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.adk, i64 noundef 1144) #24
  br label %.body661

.lr.ph2372:                                       ; preds = %bb.dc, %.loopexit836
  %.02452370 = phi i32 [ %i.bcm, %.loopexit836 ], [ 0, %bb.dc ]
  %.02462369 = phi ptr [ %i.bcp, %.loopexit836 ], [ %i.afo, %bb.dc ] ; 2 uses
  %.22368 = phi i32 [ %.3.lcssa, %.loopexit836 ], [ %.12482393, %bb.dc ] ; 2 uses
  %.02552367 = phi ptr [ %i.bcn, %.loopexit836 ], [ %i.yt, %bb.dc ] ; 3 uses
  %.23012366 = phi i32 [ %i.bco, %.loopexit836 ], [ %.13002389, %bb.dc ] ; 3 uses
  %.sroa.0729.22365 = phi ptr [ %.sroa.0729.3.lcssa, %.loopexit836 ], [ %.sroa.0729.12381, %bb.dc ] ; 5 uses
  %.sroa.38.22364 = phi ptr [ %.sroa.38.3.lcssa, %.loopexit836 ], [ %.sroa.38.12380, %bb.dc ] ; 3 uses
  %.sroa.20.22363 = phi ptr [ %.sroa.20.3.lcssa, %.loopexit836 ], [ %.sroa.20.12379, %bb.dc ] ; 2 uses
  store i32 %.23012366, ptr %.02462369, align 4
  %i.aga = load ptr, ptr %i.a, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %.02552367, i64 4
  %i.agc = load i32, ptr %i.agb, align 1
  %i.agd = getelementptr inbounds nuw i8, ptr %.02552367, i64 8 ; 2 uses
  %i.age = load i32, ptr %i.agd, align 1
  %i.agf = sext i32 %i.age to i64
  %i.agg = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.agf
  %i.agh = load i16, ptr %i.agg, align 2
  %i.agi = sext i16 %i.agh to i64
  %i.agj = getelementptr inbounds [80 x i8], ptr %i.r, i64 %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 68
  %i.agl = load <2 x i32>, ptr %i.agk, align 1
  %i.agm = sitofp <2 x i32> %i.agl to <2 x float> ; 2 uses
  %i.agn = extractelement <2 x float> %i.agm, i64 0
  %i.ago = fdiv nnan float 1.000000e+00, %i.agn
  %i.agp = load ptr, ptr %20, align 8             ; 2 uses
  %i.agq = load ptr, ptr %i.vh, align 8
  %.not.i.i462 = icmp eq ptr %i.agq, %i.agp
  br i1 %.not.i.i462, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.lr.ph2372
  store ptr %i.agp, ptr %i.vh, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit: ; preds = %.lr.ph2372, %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.agr = load i32, ptr %i.yw, align 1           ; 2 uses
  %.not3641 = icmp eq i32 %i.agr, 0
  br i1 %.not3641, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit
  %i.ags = sext i32 %i.agr to i64
  invoke void @_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %i.ags)
          to label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit unwind label %bb.di

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, %bb.df
  %i.agt = sext i32 %i.agc to i64
  %i.agu = getelementptr inbounds i8, ptr %i.aga, i64 %i.agt ; 2 uses
  %i.agv = load ptr, ptr %22, align 8             ; 2 uses
  %i.agw = load ptr, ptr %i.vi, align 8
  %.not.i.i466 = icmp eq ptr %i.agw, %i.agv
  br i1 %.not.i.i466, label %_ZNSt6vectorIsSaIsEE5clearEv.exit, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit
  store ptr %i.agv, ptr %i.vi, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit

_ZNSt6vectorIsSaIsEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i
  %.not.i.i467 = icmp eq ptr %.sroa.20.22363, %.sroa.0729.22365
  %spec.select803 = select i1 %.not.i.i467, ptr %.sroa.20.22363, ptr %.sroa.0729.22365 ; 2 uses
  %i.agx = load ptr, ptr %i.un, align 8
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.agx)
          to label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit unwind label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  %i.agy = landingpad { ptr, i32 }
          catch ptr null
  %i.agz = extractvalue { ptr, i32 } %i.agy, 0
  call void @__clang_call_terminate(ptr %i.agz) #27
  unreachable

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit: ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  store ptr null, ptr %i.un, align 8
  store <2 x ptr> %i.vu, ptr %i.uo, align 8
  store i64 0, ptr %i.uq, align 8
  %i.aha = load ptr, ptr %i.us, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.aha)
          to label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit unwind label %bb.dh

bb.dh:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  %i.ahb = landingpad { ptr, i32 }
          catch ptr null
  %i.ahc = extractvalue { ptr, i32 } %i.ahb, 0
  call void @__clang_call_terminate(ptr %i.ahc) #27
  unreachable

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit: ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  store ptr null, ptr %i.us, align 8
  store <2 x ptr> %i.vw, ptr %i.ut, align 8
  store i64 0, ptr %i.uv, align 8
  %i.ahd = load i16, ptr %i.agu, align 2          ; 2 uses
  %.not3292332 = icmp eq i16 %i.ahd, 0
  br i1 %.not3292332, label %._crit_edge2338, label %.lr.ph2337

.lr.ph2337:                                       ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit, %.loopexit812
  %i.ahe = phi i16 [ %i.aul, %.loopexit812 ], [ %i.ahd, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %.1244.lcssa.pn = phi ptr [ %i.ara, %.loopexit812 ], [ %i.agu, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.32336 = phi i32 [ %i.auk, %.loopexit812 ], [ %.22368, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.sroa.0729.32335 = phi ptr [ %.sroa.0729.7, %.loopexit812 ], [ %.sroa.0729.22365, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 15 uses
  %.sroa.38.32334 = phi ptr [ %.sroa.38.7, %.loopexit812 ], [ %.sroa.38.22364, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 12 uses
  %.sroa.20.32333 = phi ptr [ %.sroa.20.7, %.loopexit812 ], [ %spec.select803, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.1244.lcssa.pn, i64 2
  %i.ahg = icmp slt i16 %i.ahe, 0
  %i.ahh = call i16 @llvm.abs.i16(i16 %i.ahe, i1 false)
  %spec.select = zext i16 %i.ahh to i32
  %i.ahi = load ptr, ptr %21, align 8             ; 2 uses
  %i.ahj = load ptr, ptr %i.vj, align 8
  %.not.i.i468 = icmp eq ptr %i.ahj, %i.ahi
  br i1 %.not.i.i468, label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469:     ; preds = %.lr.ph2337
  store ptr %i.ahi, ptr %i.vj, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader

_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader:   ; preds = %.lr.ph2337, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470

bb.di:                                            ; preds = %bb.df
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %.body661

_ZNSt6vectorIsSaIsEE5clearEv.exit470:             ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496
  %.12422315 = phi i32 [ %i.aqz, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %spec.select, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 2 uses
  %.12442313 = phi ptr [ %i.ara, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %i.ahf, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 19 uses
  %i.ahl = load i16, ptr %.12442313, align 1      ; 7 uses
  %i.ahm = sext i16 %i.ahl to i64                 ; 2 uses
  %i.ahn = getelementptr inbounds i8, ptr %i.yy, i64 %i.ahm
  %i.aho = load i8, ptr %i.ahn, align 1
  %i.ahp = zext i8 %i.aho to i32                  ; 3 uses
  %i.ahq = load ptr, ptr %20, align 8
  %i.ahr = getelementptr inbounds nuw [10 x i8], ptr %i.ahq, i64 %i.ahm ; 9 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8 ; 6 uses
  %i.aht = load i16, ptr %i.ahs, align 2          ; 2 uses
  %i.ahu = icmp eq i16 %i.aht, -1
  br i1 %i.ahu, label %bb.dj, label %bb.ds

bb.dj:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470
end_hunk_0
