inline.NumInlined: 1393
inline.NumDeleted: 732
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.fi = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #24
          to label %.noexc185 unwind label %.loopexit.split-lp599.loopexit ; 3 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fi, ptr noundef nonnull align 4 dereferenceable(12) %i.fh, i64 12, i1 false)
  %.not.i23.i.i = icmp eq ptr %.sroa.0485.16572, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc185
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0485.16572, i64 noundef 0) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ab, %.noexc185
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aa
  %.sroa.45.17 = phi ptr [ %i.fj, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.45.16568, %bb.aa ] ; 3 uses
  %.sroa.0485.17 = phi ptr [ %i.fi, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0485.16572, %bb.aa ] ; 5 uses
  %i.fk = invoke fastcc { <2 x float>, <2 x float> } @"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %.1.i)
          to label %bb.ac unwind label %bb.ak     ; 2 uses

bb.ac:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.fl = extractvalue { <2 x float>, <2 x float> } %i.fk, 0 ; 2 uses
  %i.fm = extractvalue { <2 x float>, <2 x float> } %i.fk, 1 ; 2 uses
  %.not.i.i186 = icmp eq ptr %.sroa.0440.15, %.sroa.37.15
  br i1 %.not.i.i186, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store <2 x float> %i.fl, ptr %.sroa.0440.15, align 4
  %.sroa.6432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0440.15, i64 8
  store <2 x float> %i.fm, ptr %.sroa.6432.0..sroa_idx, align 4
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.fn = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
          to label %.noexc190 unwind label %bb.ak ; 4 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  store <2 x float> %i.fl, ptr %i.fn, align 4
  %.sroa.6432.0..sroa_idx433 = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store <2 x float> %i.fm, ptr %.sroa.6432.0..sroa_idx433, align 4
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0440.15, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc190
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.15, i64 noundef 0) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ae, %.noexc190
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ad
  %.sroa.0440.16 = phi ptr [ %i.fn, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0440.15, %bb.ad ] ; 4 uses
  %.sroa.37.16 = phi ptr [ %i.fo, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.37.15, %bb.ad ] ; 2 uses
  %.not = icmp eq i64 %.1.i, 0
  %.sroa.05.023.i1198.pre1805 = load ptr, ptr %i.bx, align 8 ; 3 uses
  %.not6.i = icmp eq ptr %.sroa.05.023.i1198.pre1805, %i.bx
  %or.cond = select i1 %.not, i1 true, i1 %.not6.i
  br i1 %or.cond, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit", label %.lr.ph8.i

.loopexit.i:                                      ; preds = %bb.ah, %.lr.ph8.i
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.07.i, align 8 ; 2 uses
  %.not.i191 = icmp eq ptr %.sroa.01.0.i, %i.bx
  br i1 %.not.i191, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit", label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit, %.loopexit.i
  %.sroa.01.07.i = phi ptr [ %.sroa.01.0.i, %.loopexit.i ], [ %.sroa.05.023.i1198.pre1805, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 16 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8            ; 2 uses
  %.not9.i = icmp eq i32 %i.fq, 0
  br i1 %.not9.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph8.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 24
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i
  %i.fs = phi i32 [ %i.fq, %.lr.ph.i ], [ %i.fy, %bb.ah ]
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fz, %bb.ah ] ; 2 uses
  %i.ft = load ptr, ptr %i.fr, align 8
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.04.i ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = zext i32 %i.fv to i64
  %i.fx = icmp eq i64 %.1.i, %i.fw
  br i1 %i.fx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.fu, align 4
  %.pre.i = load i32, ptr %i.fp, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fy = phi i32 [ %i.fs, %bb.af ], [ %.pre.i, %bb.ag ] ; 2 uses
  %i.fz = add nuw nsw i64 %.04.i, 1               ; 2 uses
  %i.ga = zext i32 %i.fy to i64
  %i.gb = icmp samesign ult i64 %i.fz, %i.ga
  br i1 %i.gb, label %bb.af, label %.loopexit.i, !llvm.loop !48

bb.ai:                                            ; preds = %bb.t, %.lr.ph1306
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %bb.cv, %.loopexit596, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295
  %.sroa.45.0 = phi ptr [ %i.ds, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.45.14, %bb.cv ], [ %.sroa.45.14, %.loopexit596 ], [ %.sroa.45.14, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295 ]
  %.sroa.0464.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0464.2, %bb.cv ], [ %.sroa.0464.2, %.loopexit596 ], [ %.sroa.0464.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295 ]
  %.sroa.31.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.31.2, %bb.cv ], [ %.sroa.31.2, %.loopexit596 ], [ %.sroa.31.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295 ]
  %.sroa.0440.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0440.13, %bb.cv ], [ %.sroa.0440.13, %.loopexit596 ], [ %.sroa.0440.13, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295 ]
  %.sroa.37.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.37.13, %bb.cv ], [ %.sroa.37.13, %.loopexit596 ], [ %.sroa.37.13, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295 ]
  %.sroa.0485.0 = phi ptr [ %i.dr, %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0485.14, %bb.cv ], [ %.sroa.0485.14, %.loopexit596 ], [ %.sroa.0485.14, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295 ]
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit598:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217
  %lpad.loopexit600 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp599.loopexit:                   ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit612 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp599.loopexit.split-lp:          ; preds = %bb.at, %bb.ap, %bb.y
  %.sroa.45.1.ph.ph = phi ptr [ %.sroa.22.01208, %bb.at ], [ %.sroa.45.16568, %bb.y ], [ %.sroa.45.21200, %bb.ap ]
  %.sroa.0440.1.ph.ph = phi ptr [ %.sroa.0440.21201, %bb.at ], [ %.sroa.0440.15, %bb.y ], [ %.sroa.0440.21201, %bb.ap ]
  %.sroa.37.1.ph.ph = phi ptr [ %.sroa.37.21203, %bb.at ], [ %.sroa.37.15, %bb.y ], [ %.sroa.37.21203, %bb.ap ]
  %.sroa.0485.1.ph.ph = phi ptr [ %.sroa.0485.21206, %bb.at ], [ %.sroa.0485.16572, %bb.y ], [ %.sroa.0485.21206, %bb.ap ]
  %lpad.loopexit.split-lp613 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

bb.ak:                                            ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.sroa.37.15.lcssa1535 = phi ptr [ %.sroa.0440.15, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.37.15, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ]
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit": ; preds = %.loopexit.i
  %.sroa.05.023.i1198.pre = load ptr, ptr %i.bx, align 8
  br label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit"

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit": ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit", %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit
  %.sroa.05.023.i1198 = phi ptr [ %.sroa.05.023.i1198.pre, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit.loopexit" ], [ %.sroa.05.023.i1198.pre1805, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.18.01196 = getelementptr inbounds nuw i8, ptr %.sroa.0440.16, i64 16 ; 2 uses
  %.sroa.22.01197 = getelementptr inbounds nuw i8, ptr %.sroa.0485.17, i64 12 ; 2 uses
  %.not1724.i1199 = icmp eq ptr %.sroa.05.023.i1198, %i.bx
  br i1 %.not1724.i1199, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %.lr.ph26.i.preheader

.lr.ph26.i.preheader:                             ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit", %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259"
  %.sroa.05.023.i1209 = phi ptr [ %.sroa.05.023.i, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ %.sroa.05.023.i1198, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 4 uses
  %.sroa.22.01208 = phi ptr [ %.sroa.22.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ %.sroa.22.01197, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 9 uses
  %.sroa.18.01207 = phi ptr [ %.sroa.18.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ %.sroa.18.01196, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 9 uses
  %.sroa.0485.21206 = phi ptr [ %.sroa.0485.18, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ %.sroa.0485.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 12 uses
  %.sroa.0485.17.pn1205 = phi ptr [ %.0.lcssa.i.i.i.i.i226.pn, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ %.sroa.0485.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 2 uses
  %.05571204 = phi i64 [ %i.jv, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ 0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 6 uses
  %.sroa.37.21203 = phi ptr [ %.sroa.37.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ %.sroa.37.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 8 uses
  %.sroa.0440.16.pn1202 = phi ptr [ %.0.lcssa.i.i.i.i.i.i242.pn, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ %.sroa.0440.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 3 uses
  %.sroa.0440.21201 = phi ptr [ %.sroa.0440.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ %.sroa.0440.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 14 uses
  %.sroa.45.21200 = phi ptr [ %.sroa.45.18, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ], [ %.sroa.45.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ] ; 5 uses
  %.sroa.0440.16.pn12023338 = ptrtoint ptr %.sroa.0440.16.pn1202 to i64
  %.sroa.0485.17.pn12053334 = ptrtoint ptr %.sroa.0485.17.pn1205 to i64
  br label %.lr.ph26.i

.loopexit20.i:                                    ; preds = %bb.al, %.lr.ph26.i
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.025.i, align 8 ; 2 uses
  %.not17.i = icmp eq ptr %.sroa.05.0.i, %i.bx
  br i1 %.not17.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader, %.loopexit20.i
  %.sroa.05.025.i = phi ptr [ %.sroa.05.0.i, %.loopexit20.i ], [ %.sroa.05.023.i1209, %.lr.ph26.i.preheader ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 16
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = zext i32 %i.gg to i64
  %.not37.i = icmp eq i32 %i.gg, 0
  br i1 %.not37.i, label %.loopexit20.i, label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %.lr.ph26.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %i.gk = add nuw nsw i64 %.04122.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gk, %i.gh
  br i1 %exitcond.not.i, label %.loopexit20.i, label %bb.am, !llvm.loop !49

bb.am:                                            ; preds = %bb.al, %.lr.ph.i193
  %.04122.i = phi i64 [ 0, %.lr.ph.i193 ], [ %i.gk, %bb.al ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %.04122.i
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %i.go = icmp samesign ult i64 %.05571204, %i.gn
  br i1 %i.go, label %.lr.ph34.split.i, label %bb.al

.loopexit.i195.loopexit.unr-lcssa:                ; preds = %bb.an
  %lcmp.mod3329.not = trunc i32 %i.gu to i1
  br i1 %lcmp.mod3329.not, label %.epil.preheader3326, label %.loopexit.i195

.epil.preheader3326:                              ; preds = %.loopexit.i195.loopexit.unr-lcssa, %.lr.ph29.i
  %.028.i.epil.init = phi i64 [ 0, %.lr.ph29.i ], [ %i.hh, %.loopexit.i195.loopexit.unr-lcssa ]
  %.527.i.epil.init = phi i64 [ %.432.i, %.lr.ph29.i ], [ %.6.i.1, %.loopexit.i195.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod3331 = trunc i32 %i.gu to i1
  call void @llvm.assume(i1 %lcmp.mod3331)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.028.i.epil.init
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = zext i32 %i.gq to i64                   ; 4 uses
  %.not39.i.epil = icmp ugt i64 %.527.i.epil.init, %i.gr
  %.5.mux.i.epil = call i64 @llvm.umin.i64(i64 %.527.i.epil.init, i64 %i.gr)
  %i.gs = icmp samesign ult i64 %.05571204, %i.gr
  %spec.select.i.epil = select i1 %i.gs, i64 %i.gr, i64 %.527.i.epil.init
  %.6.i.epil = select i1 %.not39.i.epil, i64 %spec.select.i.epil, i64 %.5.mux.i.epil
  br label %.loopexit.i195

.loopexit.i195:                                   ; preds = %.epil.preheader3326, %.loopexit.i195.loopexit.unr-lcssa, %.lr.ph34.split.i
  %.5.lcssa.i = phi i64 [ %.432.i, %.lr.ph34.split.i ], [ %.6.i.1, %.loopexit.i195.loopexit.unr-lcssa ], [ %.6.i.epil, %.epil.preheader3326 ] ; 8 uses
  %.sroa.01.0.i196 = load ptr, ptr %.sroa.01.033.i, align 8 ; 2 uses
  %.not18.i = icmp eq ptr %.sroa.01.0.i196, %i.bx
  br i1 %.not18.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212", label %.lr.ph34.split.i

.lr.ph34.split.i:                                 ; preds = %bb.am, %.loopexit.i195
  %.sroa.01.033.i = phi ptr [ %.sroa.01.0.i196, %.loopexit.i195 ], [ %.sroa.05.023.i1209, %bb.am ] ; 3 uses
  %.432.i = phi i64 [ %.5.lcssa.i, %.loopexit.i195 ], [ %i.gn, %bb.am ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 16
  %i.gu = load i32, ptr %i.gt, align 8            ; 5 uses
  %.not38.i = icmp eq i32 %i.gu, 0
  br i1 %.not38.i, label %.loopexit.i195, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph34.split.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.01.033.i, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8            ; 3 uses
  %i.gx = icmp eq i32 %i.gu, 1
  br i1 %i.gx, label %.epil.preheader3326, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %11 = and i32 %i.gu, -2
  %unroll_iter3332 = zext i32 %11 to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph29.i.new
  %.028.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %i.hh, %bb.an ] ; 3 uses
  %.527.i = phi i64 [ %.432.i, %.lr.ph29.i.new ], [ %.6.i.1, %bb.an ] ; 3 uses
  %niter3333 = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter3333.next.1, %bb.an ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.028.i
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = zext i32 %i.gz to i64                   ; 4 uses
  %.not39.i = icmp ugt i64 %.527.i, %i.ha
  %.5.mux.i = call i64 @llvm.umin.i64(i64 %.527.i, i64 %i.ha)
  %i.hb = icmp samesign ult i64 %.05571204, %i.ha
  %spec.select.i = select i1 %i.hb, i64 %i.ha, i64 %.527.i
  %.6.i = select i1 %.not39.i, i64 %spec.select.i, i64 %.5.mux.i ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.028.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = zext i32 %i.he to i64                   ; 4 uses
  %.not39.i.1 = icmp ugt i64 %.6.i, %i.hf
  %.5.mux.i.1 = call i64 @llvm.umin.i64(i64 %.6.i, i64 %i.hf)
  %i.hg = icmp samesign ult i64 %.05571204, %i.hf
  %spec.select.i.1 = select i1 %i.hg, i64 %i.hf, i64 %.6.i
  %.6.i.1 = select i1 %.not39.i.1, i64 %spec.select.i.1, i64 %.5.mux.i.1 ; 3 uses
  %i.hh = add nuw nsw i64 %.028.i, 2              ; 2 uses
  %niter3333.next.1 = add i64 %niter3333, 2       ; 2 uses
  %niter3333.ncmp.1 = icmp eq i64 %niter3333.next.1, %unroll_iter3332
  br i1 %niter3333.ncmp.1, label %.loopexit.i195.loopexit.unr-lcssa, label %bb.an, !llvm.loop !47

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212": ; preds = %.loopexit.i195
  %i.hi = icmp eq i64 %.5.lcssa.i, %.05571204
  br i1 %i.hi, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %bb.ao

bb.ao:                                            ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212"
  %i.hj = load ptr, ptr %i.o, align 8
  %i.hk = load ptr, ptr %2, align 8               ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv exact i64 %i.hn, 12                ; 2 uses
  %.not.i.i213 = icmp ult i64 %.5.lcssa.i, %i.ho
  br i1 %.not.i.i213, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, i64 noundef %.5.lcssa.i, i64 noundef %i.ho) #22
          to label %.noexc214 unwind label %.loopexit.split-lp599.loopexit.split-lp

.noexc214:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hp = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %.5.lcssa.i ; 2 uses
  %.not.i216 = icmp eq ptr %.sroa.22.01208, %.sroa.45.21200
  br i1 %.not.i216, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.22.01208, ptr noundef nonnull align 4 dereferenceable(12) %i.hp, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231

bb.as:                                            ; preds = %bb.aq
  %i.hq = ptrtoint ptr %.sroa.22.01208 to i64
  %i.hr = ptrtoint ptr %.sroa.0485.21206 to i64   ; 2 uses
  %i.hs = sub i64 %i.hq, %i.hr                    ; 4 uses
  %i.ht = icmp eq i64 %i.hs, 9223372036854775800
  br i1 %i.ht, label %bb.at, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc229 unwind label %.loopexit.split-lp599.loopexit.split-lp

.noexc229:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217: ; preds = %bb.as
  %i.hu = sdiv exact i64 %i.hs, 12                ; 3 uses
  %.sroa.speculated.i.i.i218 = call i64 @llvm.umax.i64(i64 %i.hu, i64 1)
  %i.hv = add nsw i64 %.sroa.speculated.i.i.i218, %i.hu ; 2 uses
  %i.hw = icmp ult i64 %i.hv, %i.hu
  %i.hx = call i64 @llvm.umin.i64(i64 %i.hv, i64 768614336404564650)
  %i.hy = select i1 %i.hw, i64 768614336404564650, i64 %i.hx ; 3 uses
  %.not.i.i.i219 = icmp ne i64 %i.hy, 0
  call void @llvm.assume(i1 %.not.i.i.i219)
  %i.hz = mul nuw nsw i64 %i.hy, 12
  %i.ia = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #24
          to label %.noexc230 unwind label %.loopexit598 ; 6 uses

.noexc230:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i217
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ib, ptr noundef nonnull align 4 dereferenceable(12) %i.hp, i64 12, i1 false)
  %.not10.i.i.i.i.i220 = icmp eq ptr %.sroa.0485.21206, %.sroa.22.01208
  br i1 %.not10.i.i.i.i.i220, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225, label %.lr.ph.i.i.i.i.i221.preheader

.lr.ph.i.i.i.i.i221.preheader:                    ; preds = %.noexc230
  %i.ic = sub i64 %.sroa.0485.17.pn12053334, %i.hr ; 2 uses
  %i.id = udiv i64 %i.ic, 12
  %i.ie = add nuw nsw i64 %i.id, 1
  %xtraiter3335 = and i64 %i.ie, 3                ; 2 uses
  %lcmp.mod3336.not = icmp eq i64 %xtraiter3335, 0
  br i1 %lcmp.mod3336.not, label %.lr.ph.i.i.i.i.i221.prol.loopexit, label %.lr.ph.i.i.i.i.i221.prol

.lr.ph.i.i.i.i.i221.prol:                         ; preds = %.lr.ph.i.i.i.i.i221.preheader, %.lr.ph.i.i.i.i.i221.prol
  %.012.i.i.i.i.i222.prol = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i221.prol ], [ %i.ia, %.lr.ph.i.i.i.i.i221.preheader ] ; 2 uses
  %.0911.i.i.i.i.i223.prol = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i221.prol ], [ %.sroa.0485.21206, %.lr.ph.i.i.i.i.i221.preheader ] ; 2 uses
  %prol.iter3337 = phi i64 [ %prol.iter3337.next, %.lr.ph.i.i.i.i.i221.prol ], [ 0, %.lr.ph.i.i.i.i.i221.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i222.prol, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i223.prol, i64 12, i1 false), !alias.scope !50
  %i.if = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i223.prol, i64 12 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i222.prol, i64 12 ; 3 uses
  %prol.iter3337.next = add i64 %prol.iter3337, 1 ; 2 uses
  %prol.iter3337.cmp.not = icmp eq i64 %prol.iter3337.next, %xtraiter3335
  br i1 %prol.iter3337.cmp.not, label %.lr.ph.i.i.i.i.i221.prol.loopexit, label %.lr.ph.i.i.i.i.i221.prol, !llvm.loop !54

.lr.ph.i.i.i.i.i221.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i221.prol, %.lr.ph.i.i.i.i.i221.preheader
  %.lcssa2889.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i221.preheader ], [ %i.ig, %.lr.ph.i.i.i.i.i221.prol ]
  %.012.i.i.i.i.i222.unr = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i221.preheader ], [ %i.ig, %.lr.ph.i.i.i.i.i221.prol ]
  %.0911.i.i.i.i.i223.unr = phi ptr [ %.sroa.0485.21206, %.lr.ph.i.i.i.i.i221.preheader ], [ %i.if, %.lr.ph.i.i.i.i.i221.prol ]
  %i.ih = icmp ult i64 %i.ic, 36
  br i1 %i.ih, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225, label %.lr.ph.i.i.i.i.i221

.lr.ph.i.i.i.i.i221:                              ; preds = %.lr.ph.i.i.i.i.i221.prol.loopexit, %.lr.ph.i.i.i.i.i221
  %.012.i.i.i.i.i222 = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i221 ], [ %.012.i.i.i.i.i222.unr, %.lr.ph.i.i.i.i.i221.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i223 = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i221 ], [ %.0911.i.i.i.i.i223.unr, %.lr.ph.i.i.i.i.i221.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i222, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i223, i64 12, i1 false), !alias.scope !50
  %i.ii = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i223, i64 12
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i222, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ij, ptr noundef nonnull align 4 dereferenceable(12) %i.ii, i64 12, i1 false), !alias.scope !50
  %i.ik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i223, i64 24
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i222, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.il, ptr noundef nonnull align 4 dereferenceable(12) %i.ik, i64 12, i1 false), !alias.scope !50
  %i.im = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i223, i64 36 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i222, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.in, ptr noundef nonnull align 4 dereferenceable(12) %i.im, i64 12, i1 false), !alias.scope !50
  %i.io = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i223, i64 48
  %i.ip = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i222, i64 48 ; 2 uses
  %.not.i.i.i.i.i224.3 = icmp eq ptr %i.im, %.sroa.0485.17.pn1205
  br i1 %.not.i.i.i.i.i224.3, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225, label %.lr.ph.i.i.i.i.i221, !llvm.loop !9

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225: ; preds = %.lr.ph.i.i.i.i.i221.prol.loopexit, %.lr.ph.i.i.i.i.i221, %.noexc230
  %.0.lcssa.i.i.i.i.i226 = phi ptr [ %i.ia, %.noexc230 ], [ %.lcssa2889.unr, %.lr.ph.i.i.i.i.i221.prol.loopexit ], [ %i.ip, %.lr.ph.i.i.i.i.i221 ]
  %.not.i23.i.i227 = icmp eq ptr %.sroa.0485.21206, null
  br i1 %.not.i23.i.i227, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0485.21206, i64 noundef %i.hs) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228: ; preds = %bb.au, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i225
  %i.iq = getelementptr inbounds nuw [12 x i8], ptr %i.ia, i64 %i.hy
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228, %bb.ar
  %.sroa.45.18 = phi ptr [ %i.iq, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228 ], [ %.sroa.45.21200, %bb.ar ] ; 4 uses
  %.0.lcssa.i.i.i.i.i226.pn = phi ptr [ %.0.lcssa.i.i.i.i.i226, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228 ], [ %.sroa.22.01208, %bb.ar ] ; 2 uses
  %.sroa.0485.18 = phi ptr [ %i.ia, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i228 ], [ %.sroa.0485.21206, %bb.ar ] ; 4 uses
  %i.ir = invoke fastcc { <2 x float>, <2 x float> } @"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %.5.lcssa.i)
          to label %bb.av unwind label %.loopexit603 ; 2 uses

bb.av:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231
  %i.is = extractvalue { <2 x float>, <2 x float> } %i.ir, 0 ; 2 uses
  %i.it = extractvalue { <2 x float>, <2 x float> } %i.ir, 1 ; 2 uses
  %.not.i.i232 = icmp eq ptr %.sroa.18.01207, %.sroa.37.21203
  br i1 %.not.i.i232, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store <2 x float> %i.is, ptr %.sroa.18.01207, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0440.16.pn1202, i64 24
  store <2 x float> %i.it, ptr %.sroa.6.0..sroa_idx, align 4
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247

bb.ax:                                            ; preds = %bb.av
  %i.iu = ptrtoint ptr %.sroa.18.01207 to i64
  %i.iv = ptrtoint ptr %.sroa.0440.21201 to i64   ; 2 uses
  %i.iw = sub i64 %i.iu, %i.iv                    ; 4 uses
  %i.ix = icmp eq i64 %i.iw, 9223372036854775792
  br i1 %i.ix, label %bb.ay, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc245 unwind label %.loopexit.split-lp604

.noexc245:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233: ; preds = %bb.ax
  %i.iy = ashr exact i64 %i.iw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i234 = call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.iz = add nsw i64 %.sroa.speculated.i.i.i.i234, %i.iy ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.iy
  %i.jb = call i64 @llvm.umin.i64(i64 %i.iz, i64 576460752303423487)
  %i.jc = select i1 %i.ja, i64 576460752303423487, i64 %i.jb ; 3 uses
  %.not.i.i.i.i235 = icmp ne i64 %i.jc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i235)
  %i.jd = shl nuw nsw i64 %i.jc, 4
  %i.je = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #24
          to label %.noexc246 unwind label %.loopexit603 ; 6 uses

.noexc246:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.iw ; 2 uses
  store <2 x float> %i.is, ptr %i.jf, align 4
  %.sroa.6.0..sroa_idx428 = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store <2 x float> %i.it, ptr %.sroa.6.0..sroa_idx428, align 4
  %.not10.i.i.i.i.i.i236 = icmp eq ptr %.sroa.0440.21201, %.sroa.18.01207
end_hunk_0
