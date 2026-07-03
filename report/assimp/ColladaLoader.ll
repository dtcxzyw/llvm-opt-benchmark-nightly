inline.NumInlined: 3826
inline.NumDeleted: 1929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp13ColladaLoader10CreateMeshERKNS_13ColladaParserEPKNS_7Collada4MeshERKNS4_7SubMeshEPKNS4_10ControllerEmm:bb.a
  %i.zh = getelementptr inbounds nuw i8, ptr %4, i64 296 ; 4 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %4, i64 304 ; 3 uses
  %i.zj = load ptr, ptr %i.zi, align 8            ; 2 uses
  %i.zk = load ptr, ptr %i.zh, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.zl = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.zm = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.zn = load ptr, ptr %i.zm, align 8
  store ptr %i.zn, ptr %10, align 8
  %.not1169 = icmp eq ptr %i.zj, %i.zk
  br i1 %.not1169, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit.thread, label %bb.fr

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit.thread: ; preds = %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.preheader

bb.fr:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.zo = ptrtoint ptr %i.zk to i64
  %i.zp = ptrtoint ptr %i.zj to i64
  %i.zq = sub i64 %i.zp, %i.zo
  %i.zr = ashr exact i64 %i.zq, 3
  invoke void @_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE14_M_fill_insertENS1_IPS8_SA_EEmRKS8_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr null, i64 noundef %i.zr, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit unwind label %bb.ft

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit: ; preds = %bb.fr
  %.pre1086 = load ptr, ptr %i.zi, align 8
  %.pre1087 = load ptr, ptr %i.zh, align 8
  %i.zs = icmp eq ptr %.pre1086, %.pre1087
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %i.zs, label %.preheader, label %.lr.ph948.preheader

.lr.ph948.preheader:                              ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit
  %i.zt = load ptr, ptr %i.zl, align 8
  br label %.lr.ph948

.preheader:                                       ; preds = %.lr.ph948, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit.thread, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE6resizeEmRKS8_.exit
  %i.zu = icmp ult i64 %5, %i.cb
  br i1 %i.zu, label %.lr.ph955, label %._crit_edge956

.lr.ph955:                                        ; preds = %.preheader
  %i.zv = getelementptr inbounds nuw i8, ptr %2, i64 656
  %i.zw = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %i.zy = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %i.zz = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  br label %bb.fu

bb.fs:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.fq
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.ft:                                            ; preds = %bb.fr
  %i.aab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.hl

.lr.ph948:                                        ; preds = %.lr.ph948.preheader, %.lr.ph948
  %.0370947 = phi i64 [ %i.aaj, %.lr.ph948 ], [ 0, %.lr.ph948.preheader ] ; 3 uses
  %.sroa.0572.0946 = phi ptr [ %i.aai, %.lr.ph948 ], [ %i.zt, %.lr.ph948.preheader ] ; 2 uses
  %i.aac = load ptr, ptr %9, align 8
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.aac, i64 %.0370947
  %i.aae = ptrtoint ptr %.sroa.0572.0946 to i64
  store i64 %i.aae, ptr %i.aad, align 8
  %i.aaf = load ptr, ptr %i.zh, align 8           ; 2 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %.0370947
  %i.aah = load i64, ptr %i.aag, align 8
  %i.aai = getelementptr inbounds [16 x i8], ptr %.sroa.0572.0946, i64 %i.aah
  %i.aaj = add nuw i64 %.0370947, 1               ; 2 uses
  %i.aak = load ptr, ptr %i.zi, align 8
  %i.aal = ptrtoint ptr %i.aak to i64
  %i.aam = ptrtoint ptr %i.aaf to i64
  %i.aan = sub i64 %i.aal, %i.aam
  %i.aao = ashr exact i64 %i.aan, 3
  %i.aap = icmp ult i64 %i.aaj, %i.aao
  br i1 %i.aap, label %.lr.ph948, label %.preheader, !llvm.loop !92

._crit_edge956:                                   ; preds = %._crit_edge953, %.preheader
  %.not669957 = icmp eq ptr %.pre1089, %i.ze
  br i1 %.not669957, label %._crit_edge962.thread, label %.lr.ph961

._crit_edge962.thread:                            ; preds = %._crit_edge956
  %i.aaq = load ptr, ptr %7, align 8              ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 216
  store i32 0, ptr %i.aar, align 8
  br label %bb.gb

.lr.ph961:                                        ; preds = %._crit_edge956
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 369
  br label %bb.gc

bb.fu:                                            ; preds = %.lr.ph955, %._crit_edge953
  %.0369954 = phi i64 [ %5, %.lr.ph955 ], [ %i.abf, %._crit_edge953 ] ; 3 uses
  %i.aat = load ptr, ptr %i.zv, align 8
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.aat, i64 %.0369954
  %i.aav = load i64, ptr %i.aau, align 8          ; 2 uses
  %i.aaw = load ptr, ptr %i.zh, align 8
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aaw, i64 %i.aav
  %i.aay = load i64, ptr %i.aax, align 8          ; 2 uses
  %.not974 = icmp eq i64 %i.aay, 0
  br i1 %.not974, label %._crit_edge953, label %.lr.ph952

.lr.ph952:                                        ; preds = %bb.fu
  %i.aaz = load ptr, ptr %9, align 8
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.aav
  %i.abb = load i64, ptr %i.aba, align 8
  %i.abc = inttoptr i64 %i.abb to ptr
  %i.abd = sub nuw i64 %.0369954, %5
  %i.abe = trunc i64 %i.abd to i32                ; 2 uses
  br label %bb.fv

._crit_edge953:                                   ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit, %bb.fu
  %i.abf = add nuw i64 %.0369954, 1               ; 2 uses
  %exitcond1083.not = icmp eq i64 %i.abf, %i.cb
  br i1 %exitcond1083.not, label %._crit_edge956, label %bb.fu, !llvm.loop !93

bb.fv:                                            ; preds = %.lr.ph952, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit
  %.0364950 = phi i64 [ 0, %.lr.ph952 ], [ %i.add, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit ]
  %.sroa.0569.0949 = phi ptr [ %i.abc, %.lr.ph952 ], [ %i.ade, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit ] ; 3 uses
  %i.abg = load i64, ptr %.sroa.0569.0949, align 8
  %i.abh = load ptr, ptr %i.zw, align 8           ; 2 uses
  %i.abi = load ptr, ptr %i.zx, align 8
  %i.abj = icmp eq ptr %i.abh, %i.abi
  br i1 %i.abj, label %.thread, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.abk = getelementptr inbounds nuw i8, ptr %.sroa.0569.0949, i64 8
  %i.abl = load i64, ptr %i.abk, align 8
  %.val = load i64, ptr %i.zy, align 8
  %.val441 = load i64, ptr %i.zz, align 8
  %i.abm = mul i64 %.val441, %i.abl
  %i.abn = getelementptr [4 x i8], ptr %i.abh, i64 %i.abm
  %i.abo = getelementptr [4 x i8], ptr %i.abn, i64 %.val
  %i.abp = load float, ptr %i.abo, align 4        ; 2 uses
  %i.abq = fcmp ogt float %i.abp, 0.000000e+00
  br i1 %i.abq, label %.thread, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

.thread:                                          ; preds = %bb.fv, %bb.fw
  %.0361655 = phi float [ %i.abp, %bb.fw ], [ 1.000000e+00, %bb.fv ] ; 2 uses
  %i.abr = getelementptr inbounds nuw [24 x i8], ptr %.pre1089, i64 %i.abg ; 4 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8 ; 4 uses
  %i.abt = load ptr, ptr %i.abs, align 8          ; 6 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 16 ; 2 uses
  %i.abv = load ptr, ptr %i.abu, align 8
  %.not.i521 = icmp eq ptr %i.abt, %i.abv
  br i1 %.not.i521, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.thread
  store i32 %i.abe, ptr %i.abt, align 4
  %.sroa_idx563 = getelementptr inbounds nuw i8, ptr %i.abt, i64 4
  store float %.0361655, ptr %.sroa_idx563, align 4
  %i.abw = load ptr, ptr %i.abs, align 8
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store ptr %i.abx, ptr %i.abs, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

bb.fy:                                            ; preds = %.thread
  %i.aby = load ptr, ptr %i.abr, align 8          ; 7 uses
  %i.abz = ptrtoint ptr %i.abt to i64             ; 2 uses
  %i.aca = ptrtoint ptr %i.aby to i64             ; 3 uses
  %i.acb = sub i64 %i.abz, %i.aca                 ; 4 uses
  %i.acc = icmp eq i64 %i.acb, 9223372036854775800
  br i1 %i.acc, label %bb.fz, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #29
          to label %.noexc525 unwind label %.loopexit.split-lp

.noexc525:                                        ; preds = %bb.fz
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fy
  %i.acd = ashr exact i64 %i.acb, 3               ; 3 uses
  %.sroa.speculated.i.i.i522 = call i64 @llvm.umax.i64(i64 %i.acd, i64 1)
  %i.ace = add nsw i64 %.sroa.speculated.i.i.i522, %i.acd ; 2 uses
  %i.acf = icmp ult i64 %i.ace, %i.acd
  %i.acg = call i64 @llvm.umin.i64(i64 %i.ace, i64 1152921504606846975)
  %i.ach = select i1 %i.acf, i64 1152921504606846975, i64 %i.acg ; 3 uses
  %.not.i.i.i523 = icmp ne i64 %i.ach, 0
  call void @llvm.assume(i1 %.not.i.i.i523)
  %i.aci = shl nuw nsw i64 %i.ach, 3
  %i.acj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aci) #30
          to label %.noexc526 unwind label %.loopexit675 ; 8 uses

.noexc526:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.acb ; 2 uses
  store i32 %i.abe, ptr %i.ack, align 4
  %.sroa_idx565 = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  store float %.0361655, ptr %.sroa_idx565, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.aby, %i.abt
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc526
  %i.acl = ptrtoaddr ptr %i.acj to i64
  %i.acm = sub i64 %i.abz, %i.aca
  %i.acn = add i64 %i.acm, -8                     ; 2 uses
  %i.aco = lshr i64 %i.acn, 3
  %i.acp = add nuw nsw i64 %i.aco, 1              ; 2 uses
  %min.iters.check1424 = icmp ult i64 %i.acn, 24
  %i.acq = sub i64 %i.acl, %i.aca
  %diff.check = icmp ult i64 %i.acq, 32
  %or.cond = or i1 %min.iters.check1424, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader1441, label %vector.ph1425

vector.ph1425:                                    ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec1427 = and i64 %i.acp, 4611686018427387900 ; 3 uses
  %i.acr = shl i64 %n.vec1427, 3                  ; 2 uses
  %i.acs = getelementptr i8, ptr %i.acj, i64 %i.acr ; 2 uses
  %i.act = getelementptr i8, ptr %i.aby, i64 %i.acr
  br label %vector.body1428

vector.body1428:                                  ; preds = %vector.body1428, %vector.ph1425
  %index1429 = phi i64 [ 0, %vector.ph1425 ], [ %index.next1434, %vector.body1428 ] ; 2 uses
  %i.acu = shl i64 %index1429, 3                  ; 2 uses
  %next.gep1430 = getelementptr i8, ptr %i.acj, i64 %i.acu ; 2 uses
  %next.gep1431 = getelementptr i8, ptr %i.aby, i64 %i.acu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.acv = getelementptr i8, ptr %next.gep1431, i64 16
  %wide.load1432 = load <2 x i64>, ptr %next.gep1431, align 4, !alias.scope !97, !noalias !94
  %wide.load1433 = load <2 x i64>, ptr %i.acv, align 4, !alias.scope !97, !noalias !94
  %i.acw = getelementptr i8, ptr %next.gep1430, i64 16
  store <2 x i64> %wide.load1432, ptr %next.gep1430, align 4, !alias.scope !94, !noalias !97
  store <2 x i64> %wide.load1433, ptr %i.acw, align 4, !alias.scope !94, !noalias !97
  %index.next1434 = add nuw i64 %index1429, 4     ; 2 uses
  %i.acx = icmp eq i64 %index.next1434, %n.vec1427
  br i1 %i.acx, label %middle.block1435, label %vector.body1428, !llvm.loop !99

middle.block1435:                                 ; preds = %vector.body1428
  %cmp.n1436 = icmp eq i64 %i.acp, %n.vec1427
  br i1 %cmp.n1436, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader1441

.lr.ph.i.i.i.i.i.preheader1441:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block1435
  %.012.i.i.i.i.i.ph = phi ptr [ %i.acj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.acs, %middle.block1435 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.aby, %.lr.ph.i.i.i.i.i.preheader ], [ %i.act, %middle.block1435 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1441, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ada, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1441 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.acz, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1441 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.acy = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !97, !noalias !94
  store i64 %i.acy, ptr %.012.i.i.i.i.i, align 4, !alias.scope !94, !noalias !97
  %i.acz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.acz, %i.abt
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block1435, %.noexc526
  %.0.lcssa.i.i.i.i.i524 = phi ptr [ %i.acj, %.noexc526 ], [ %i.acs, %middle.block1435 ], [ %i.ada, %.lr.ph.i.i.i.i.i ]
  %i.adb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i524, i64 8
  %.not.i23.i.i = icmp eq ptr %i.aby, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aby, i64 noundef %i.acb) #27
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ga, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.acj, ptr %i.abr, align 8
  store ptr %i.adb, ptr %i.abs, align 8
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %i.ach
  store ptr %i.adc, ptr %i.abu, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

.loopexit675:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

.loopexit.split-lp:                               ; preds = %bb.fz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.fx, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.fw
  %i.add = add nuw i64 %.0364950, 1               ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.0569.0949, i64 16
  %exitcond1082.not = icmp eq i64 %i.add, %i.aay
  br i1 %exitcond1082.not, label %._crit_edge953, label %bb.fv, !llvm.loop !101

._crit_edge962:                                   ; preds = %bb.gf
  %i.adf = trunc i64 %.1360 to i32
  %i.adg = load ptr, ptr %7, align 8              ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 216
  store i32 %i.adf, ptr %i.adh, align 8
  %i.adi = icmp ugt i64 %.1360, 2305843009213693951
  %i.adj = shl i64 %.1360, 3
  %spec.select = select i1 %i.adi, i64 -1, i64 %i.adj
  br label %bb.gb

bb.gb:                                            ; preds = %._crit_edge962, %._crit_edge962.thread
  %i.adk = phi ptr [ %i.aaq, %._crit_edge962.thread ], [ %i.adg, %._crit_edge962 ]
  %i.adl = phi i64 [ 0, %._crit_edge962.thread ], [ %spec.select, %._crit_edge962 ]
  %i.adm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adl) #30
          to label %bb.gg unwind label %bb.gk

bb.gc:                                            ; preds = %.lr.ph961, %bb.gf
  %.0359959 = phi i64 [ 0, %.lr.ph961 ], [ %.1360, %bb.gf ] ; 2 uses
  %.sroa.0560.0958 = phi ptr [ %.pre1089, %.lr.ph961 ], [ %i.adu, %bb.gf ] ; 3 uses
  %i.adn = load ptr, ptr %.sroa.0560.0958, align 8
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.0560.0958, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = icmp eq ptr %i.adn, %i.adp
  br i1 %i.adq, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.adr = load i8, ptr %i.aas, align 1, !range !9, !noundef !10
  %i.ads = trunc nuw i8 %i.adr to i1
  br i1 %i.ads, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.adt = add i64 %.0359959, 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %bb.ge
  %.1360 = phi i64 [ %i.adt, %bb.ge ], [ %.0359959, %bb.gd ] ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.sroa.0560.0958, i64 24 ; 2 uses
  %.not669 = icmp eq ptr %i.adu, %i.ze
  br i1 %.not669, label %._crit_edge962, label %bb.gc

bb.gg:                                            ; preds = %bb.gb
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adk, i64 224
  store ptr %i.adm, ptr %i.adv, align 8
  br i1 %.not.i.i.i.i516, label %._crit_edge968, label %.lr.ph967

.lr.ph967:                                        ; preds = %bb.gg
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.adx = getelementptr inbounds nuw i8, ptr %i.xg, i64 24
  %i.ady = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.adz = getelementptr inbounds nuw i8, ptr %i.xl, i64 16 ; 12 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.xl, i64 24 ; 12 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.xn, i64 8 ; 12 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.aed = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aee = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aef = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aej = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ael = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aem = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.gl

._crit_edge968:                                   ; preds = %bb.hk, %bb.gg
  %.pr.i = phi ptr [ %.pre1089, %bb.gg ], [ %i.anz, %bb.hk ] ; 5 uses
  %i.aen = load ptr, ptr %9, align 8              ; 3 uses
  %.not.i.i.i527 = icmp eq ptr %i.aen, null
  br i1 %.not.i.i.i527, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit, label %bb.gh

bb.gh:                                            ; preds = %._crit_edge968
  %i.aeo = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aep = load ptr, ptr %i.aeo, align 8
  %i.aeq = ptrtoint ptr %i.aep to i64
  %i.aer = ptrtoint ptr %i.aen to i64
  %i.aes = sub i64 %i.aeq, %i.aer
  call void @_ZdlPvm(ptr noundef nonnull %i.aen, i64 noundef %i.aes) #27
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit: ; preds = %._crit_edge968, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.aet = load ptr, ptr %i.zf, align 8           ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.aet
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.afa, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit ] ; 3 uses
  %i.aeu = load ptr, ptr %.05.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i528 = icmp eq ptr %i.aeu, null
  br i1 %.not.i.i.i.i.i.i.i528, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.i.i.i
  %i.aev = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = ptrtoint ptr %i.aew to i64
  %i.aey = ptrtoint ptr %i.aeu to i64
  %i.aez = sub i64 %i.aex, %i.aey
  call void @_ZdlPvm(ptr noundef nonnull %i.aeu, i64 noundef %i.aez) #27
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i: ; preds = %bb.gi, %.lr.ph.i.i.i
  %i.afa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i529 = icmp eq ptr %i.afa, %i.aet
  br i1 %.not.i.i.i529, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !102

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit, label %bb.gj

bb.gj:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i
  %i.afb = load ptr, ptr %i.zg, align 8
  %i.afc = ptrtoint ptr %i.afb to i64
  %i.afd = ptrtoint ptr %.pr.i to i64
  %i.afe = sub i64 %i.afc, %i.afd
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.afe) #27
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, %bb.gj
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE14_M_fill_insertENS1_IPS8_SA_EEmRKS8_:bb.a
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = sub i64 %i.f, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -8                          ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 4 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.o = add i64 %2, 2305843009213693951
  %i.p = and i64 %i.o, 2305843009213693951        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check170 = icmp samesign ult i64 %i.p, 3
  br i1 %min.iters.check170, label %.lr.ph.i.i.i.i.i.preheader255, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec173 = and i64 %i.q, 4611686018427387900   ; 3 uses
  %i.r = shl i64 %n.vec173, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  %i.t = getelementptr i8, ptr %i.n, i64 %i.r
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph171
  %index175 = phi i64 [ 0, %vector.ph171 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %i.u = shl i64 %index175, 3                     ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.d, i64 %i.u ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.n, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load178 = load <2 x i64>, ptr %next.gep177, align 8
  %wide.load179 = load <2 x i64>, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x i64> %wide.load178, ptr %next.gep176, align 8
  store <2 x i64> %wide.load179, ptr %i.w, align 8
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.x, label %middle.block181, label %vector.body174, !llvm.loop !235

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.q, %n.vec173
  br i1 %cmp.n182, label %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.preheader255

.lr.ph.i.i.i.i.i.preheader255:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block181
  %.013.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %middle.block181 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %middle.block181 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader255, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader255 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader255 ] ; 2 uses
  %i.y = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8
  store i64 %i.y, ptr %.013.i.i.i.i.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !236

_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block181
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit

_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit.loopexit, %bb.d
  %i.ab = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %2
  store ptr %i.ac, ptr %i.c, align 8
  %i.ad = ptrtoint ptr %i.n to i64
  %i.ae = sub i64 %i.ad, %i.j                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %1, i64 %i.ae, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.al = load i64, ptr %1, align 8
  store i64 %i.al, ptr %i.ak, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.an = add nsw i64 %.idx, -8                   ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.an, 24
  br i1 %min.iters.check186, label %.lr.ph.i.i.i.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %bb.h
  %n.vec189 = and i64 %i.ap, 4611686018427387900  ; 3 uses
  %i.aq = shl i64 %n.vec189, 3
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %broadcast.splatinsert190 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat191 = shufflevector <2 x i64> %broadcast.splatinsert190, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph187
  %index193 = phi i64 [ 0, %vector.ph187 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.as = shl i64 %index193, 3
  %next.gep194 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep194, i64 16
  store <2 x i64> %broadcast.splat191, ptr %next.gep194, align 8
  store <2 x i64> %broadcast.splat191, ptr %i.at, align 8
  %index.next195 = add nuw i64 %index193, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.au, label %middle.block196, label %vector.body192, !llvm.loop !237

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.ap, %n.vec189
  br i1 %cmp.n197, label %_ZSt4fillIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEES9_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h, %middle.block196
  %.06.i.i.i.ph = phi ptr [ %1, %bb.h ], [ %i.ar, %middle.block196 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.am
  br i1 %.not.i.i.i, label %_ZSt4fillIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEES9_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !238

bb.i:                                             ; preds = %bb.c
  %i.aw = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not7.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aw, -4                      ; 3 uses
  %i.ax = shl i64 %n.vec, 3
  %i.ay = getelementptr i8, ptr %i.d, i64 %i.ax   ; 2 uses
  %i.az = and i64 %i.aw, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.bb, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader258

.lr.ph.i.i.i.i.preheader258:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader258, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ]
  store i64 %i.i, ptr %.09.i.i.i.i, align 8
  %i.bd = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !240

_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.i
  %i.bf = phi ptr [ %i.d, %bb.i ], [ %i.ay, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i ] ; 6 uses
  store ptr %i.bf, ptr %i.c, align 8
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = sub i64 %i.f, %i.j
  %i.bi = add i64 %i.bh, -8                       ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.bi, 56
  %i.bl = sub i64 %i.bg, %i.j
  %diff.check = icmp ult i64 %i.bl, 32
  %or.cond = select i1 %min.iters.check141, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i70.preheader257, label %vector.ph142

vector.ph142:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec144 = and i64 %i.bk, 4611686018427387900  ; 3 uses
  %i.bm = shl i64 %n.vec144, 3                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph142
  %index146 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body145 ] ; 2 uses
  %i.bp = shl i64 %index146, 3                    ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.bf, i64 %i.bp ; 2 uses
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep148, align 8
  %wide.load149 = load <2 x i64>, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %next.gep147, i64 16
  store <2 x i64> %wide.load, ptr %next.gep147, align 8
  store <2 x i64> %wide.load149, ptr %i.br, align 8
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.bs, label %middle.block151, label %vector.body145, !llvm.loop !241

middle.block151:                                  ; preds = %vector.body145
  %cmp.n152 = icmp eq i64 %i.bk, %n.vec144
  br i1 %cmp.n152, label %.lr.ph.preheader.i.i.i77, label %.lr.ph.i.i.i.i.i70.preheader257

.lr.ph.i.i.i.i.i70.preheader257:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block151
  %.013.i.i.i.i.i71.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bn, %middle.block151 ]
  %.sroa.08.012.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.bo, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.k
  store ptr %i.bt, ptr %i.c, align 8
  br label %_ZSt4fillIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEES9_EvT_SB_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader257, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i70 ], [ %.013.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader257 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.08.012.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader257 ] ; 2 uses
  %i.bu = load i64, ptr %.sroa.08.012.i.i.i.i.i72, align 8
  store i64 %i.bu, ptr %.013.i.i.i.i.i71, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 8
  %.not.i.i.i.i.i73 = icmp eq ptr %i.bv, %i.d
  br i1 %.not.i.i.i.i.i73, label %.lr.ph.preheader.i.i.i77, label %.lr.ph.i.i.i.i.i70, !llvm.loop !242

.lr.ph.preheader.i.i.i77:                         ; preds = %.lr.ph.i.i.i.i.i70, %middle.block151
  %i.bx = load ptr, ptr %i.c, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.k
  store ptr %i.by, ptr %i.c, align 8
  %i.bz = sub i64 %i.f, %i.j
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check156 = icmp ult i64 %i.ca, 24
  br i1 %min.iters.check156, label %.lr.ph.i.i.i79.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph.preheader.i.i.i77
  %n.vec159 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.cd = shl i64 %n.vec159, 3
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert160 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat161 = shufflevector <2 x i64> %broadcast.splatinsert160, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph157
  %index163 = phi i64 [ 0, %vector.ph157 ], [ %index.next165, %vector.body162 ] ; 2 uses
  %i.cf = shl i64 %index163, 3
  %next.gep164 = getelementptr i8, ptr %1, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x i64> %broadcast.splat161, ptr %next.gep164, align 8
  store <2 x i64> %broadcast.splat161, ptr %i.cg, align 8
  %index.next165 = add nuw i64 %index163, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next165, %n.vec159
  br i1 %i.ch, label %middle.block166, label %vector.body162, !llvm.loop !243

middle.block166:                                  ; preds = %vector.body162
  %cmp.n167 = icmp eq i64 %i.cc, %n.vec159
  br i1 %cmp.n167, label %_ZSt4fillIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEES9_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i79.preheader

.lr.ph.i.i.i79.preheader:                         ; preds = %.lr.ph.preheader.i.i.i77, %middle.block166
  %.06.i.i.i80.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i77 ], [ %i.ce, %middle.block166 ]
  br label %.lr.ph.i.i.i79

.lr.ph.i.i.i79:                                   ; preds = %.lr.ph.i.i.i79.preheader, %.lr.ph.i.i.i79
  %.06.i.i.i80 = phi ptr [ %i.ci, %.lr.ph.i.i.i79 ], [ %.06.i.i.i80.ph, %.lr.ph.i.i.i79.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i80, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 8 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.ci, %i.d
  br i1 %.not.i.i.i81, label %_ZSt4fillIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEES9_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i79, !llvm.loop !244

bb.j:                                             ; preds = %bb.b
  %i.cj = load ptr, ptr %0, align 8               ; 7 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 5 uses
  %i.cl = sub i64 %i.f, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3                 ; 4 uses
  %i.cn = sub nsw i64 1152921504606846975, %i.cm
  %i.co = icmp ult i64 %i.cn, %2
  br i1 %i.co, label %bb.k, label %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %2)
  %i.cp = add nsw i64 %.sroa.speculated.i, %i.cm  ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cm
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %i.ct = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.cu = sub i64 %i.ct, %i.ck
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %.lr.ph.preheader.i.i.i.i84, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE12_M_check_lenEmPKc.exit
  %i.cv = shl nuw nsw i64 %i.cs, 3
  %i.cw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #30
  br label %.lr.ph.preheader.i.i.i.i84

.lr.ph.preheader.i.i.i.i84:                       ; preds = %bb.l, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE12_M_check_lenEmPKc.exit
  %i.cx = phi ptr [ %i.cw, %bb.l ], [ null, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmES_IS3_SaIS3_EEEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 3 uses
  %.pre.i.i.i.i85 = load i64, ptr %3, align 8     ; 2 uses
  %min.iters.check200 = icmp ult i64 %2, 4
  br i1 %min.iters.check200, label %.lr.ph.i.i.i.i86.preheader, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph.preheader.i.i.i.i84
  %n.vec203 = and i64 %2, -4                      ; 3 uses
  %i.da = shl i64 %n.vec203, 3
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.da
  %i.dc = and i64 %2, 3
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %.pre.i.i.i.i85, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph201
  %index207 = phi i64 [ 0, %vector.ph201 ], [ %index.next209, %vector.body206 ] ; 2 uses
  %i.dd = shl i64 %index207, 3
  %next.gep208 = getelementptr i8, ptr %i.cz, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep208, i64 16
  store <2 x i64> %broadcast.splat205, ptr %next.gep208, align 8
  store <2 x i64> %broadcast.splat205, ptr %i.de, align 8
  %index.next209 = add nuw i64 %index207, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next209, %n.vec203
  br i1 %i.df, label %middle.block210, label %vector.body206, !llvm.loop !245

middle.block210:                                  ; preds = %vector.body206
  %cmp.n211 = icmp eq i64 %2, %n.vec203
  br i1 %cmp.n211, label %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit91, label %.lr.ph.i.i.i.i86.preheader

.lr.ph.i.i.i.i86.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i84, %middle.block210
  %.09.i.i.i.i87.ph = phi ptr [ %i.cz, %.lr.ph.preheader.i.i.i.i84 ], [ %i.db, %middle.block210 ]
  %.068.i.i.i.i88.ph = phi i64 [ %2, %.lr.ph.preheader.i.i.i.i84 ], [ %i.dc, %middle.block210 ]
  br label %.lr.ph.i.i.i.i86

.lr.ph.i.i.i.i86:                                 ; preds = %.lr.ph.i.i.i.i86.preheader, %.lr.ph.i.i.i.i86
  %.09.i.i.i.i87 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i86 ], [ %.09.i.i.i.i87.ph, %.lr.ph.i.i.i.i86.preheader ] ; 2 uses
  %.068.i.i.i.i88 = phi i64 [ %i.dg, %.lr.ph.i.i.i.i86 ], [ %.068.i.i.i.i88.ph, %.lr.ph.i.i.i.i86.preheader ]
  store i64 %.pre.i.i.i.i85, ptr %.09.i.i.i.i87, align 8
  %i.dg = add i64 %.068.i.i.i.i88, -1             ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i87, i64 8
  %.not.i.i.i.i89 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i89, label %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit91, label %.lr.ph.i.i.i.i86, !llvm.loop !246

_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit91: ; preds = %.lr.ph.i.i.i.i86, %middle.block210
  %.not11.i.i.i.i.i92 = icmp eq ptr %i.cj, %1
  br i1 %.not11.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i93.preheader

.lr.ph.i.i.i.i.i93.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit91
  %i.di = sub i64 %i.ct, %i.ck
  %i.dj = add i64 %i.di, -8                       ; 2 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check217 = icmp ult i64 %i.dj, 56
  %i.dm = sub i64 %i.cy, %i.ck
  %diff.check215 = icmp ult i64 %i.dm, 32
  %or.cond251 = or i1 %min.iters.check217, %diff.check215
  br i1 %or.cond251, label %.lr.ph.i.i.i.i.i93.preheader253, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.i.i.i.i.i93.preheader
  %n.vec220 = and i64 %i.dl, 4611686018427387900  ; 3 uses
  %i.dn = shl i64 %n.vec220, 3                    ; 2 uses
  %i.do = getelementptr i8, ptr %i.cx, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cj, i64 %i.dn
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph218
  %index222 = phi i64 [ 0, %vector.ph218 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %i.dq = shl i64 %index222, 3                    ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.cx, i64 %i.dq ; 2 uses
  %next.gep224 = getelementptr i8, ptr %i.cj, i64 %i.dq ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep224, i64 16
  %wide.load225 = load <2 x i64>, ptr %next.gep224, align 8
  %wide.load226 = load <2 x i64>, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %next.gep223, i64 16
  store <2 x i64> %wide.load225, ptr %next.gep223, align 8
  store <2 x i64> %wide.load226, ptr %i.ds, align 8
  %index.next227 = add nuw i64 %index222, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.dt, label %middle.block228, label %vector.body221, !llvm.loop !247

middle.block228:                                  ; preds = %vector.body221
  %cmp.n229 = icmp eq i64 %i.dl, %n.vec220
  br i1 %cmp.n229, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i93.preheader253

.lr.ph.i.i.i.i.i93.preheader253:                  ; preds = %.lr.ph.i.i.i.i.i93.preheader, %middle.block228
  %.013.i.i.i.i.i94.ph = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i93.preheader ], [ %i.do, %middle.block228 ]
  %.sroa.08.012.i.i.i.i.i95.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i93.preheader ], [ %i.dp, %middle.block228 ]
  br label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %.lr.ph.i.i.i.i.i93.preheader253, %.lr.ph.i.i.i.i.i93
  %.013.i.i.i.i.i94 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i93 ], [ %.013.i.i.i.i.i94.ph, %.lr.ph.i.i.i.i.i93.preheader253 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i95 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i93 ], [ %.sroa.08.012.i.i.i.i.i95.ph, %.lr.ph.i.i.i.i.i93.preheader253 ] ; 2 uses
  %i.du = load i64, ptr %.sroa.08.012.i.i.i.i.i95, align 8
  store i64 %i.du, ptr %.013.i.i.i.i.i94, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i95, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i94, i64 8 ; 2 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.dv, %1
  br i1 %.not.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i93, !llvm.loop !248

_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i93, %middle.block228, %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit91
  %.0.lcssa.i.i.i.i.i97 = phi ptr [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEEmS9_S9_ET_SB_T0_RKT1_RSaIT2_E.exit91 ], [ %i.do, %middle.block228 ], [ %i.dw, %.lr.ph.i.i.i.i.i93 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i97233 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i97 to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i.i.i.i97, i64 %2 ; 5 uses
  %.not11.i.i.i.i.i98 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit104, label %.lr.ph.i.i.i.i.i99.preheader

.lr.ph.i.i.i.i.i99.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  %i.dy = sub i64 %i.f, %i.ct
  %i.dz = add i64 %i.dy, -8                       ; 2 uses
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check236 = icmp ult i64 %i.dz, 104
  br i1 %min.iters.check236, label %.lr.ph.i.i.i.i.i99.preheader252, label %vector.memcheck232

vector.memcheck232:                               ; preds = %.lr.ph.i.i.i.i.i99.preheader
  %i.ec = shl i64 %2, 3
  %i.ed = add i64 %i.ec, %.0.lcssa.i.i.i.i.i97233
  %i.ee = sub i64 %i.ed, %i.ct
  %diff.check234 = icmp ult i64 %i.ee, 32
  br i1 %diff.check234, label %.lr.ph.i.i.i.i.i99.preheader252, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck232
  %n.vec239 = and i64 %i.eb, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec239, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %1, i64 %i.ef
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph237
  %index241 = phi i64 [ 0, %vector.ph237 ], [ %index.next246, %vector.body240 ] ; 2 uses
  %i.ei = shl i64 %index241, 3                    ; 2 uses
  %next.gep242 = getelementptr i8, ptr %i.dx, i64 %i.ei ; 2 uses
  %next.gep243 = getelementptr i8, ptr %1, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep243, i64 16
  %wide.load244 = load <2 x i64>, ptr %next.gep243, align 8
  %wide.load245 = load <2 x i64>, ptr %i.ej, align 8
  %i.ek = getelementptr i8, ptr %next.gep242, i64 16
  store <2 x i64> %wide.load244, ptr %next.gep242, align 8
  store <2 x i64> %wide.load245, ptr %i.ek, align 8
  %index.next246 = add nuw i64 %index241, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next246, %n.vec239
  br i1 %i.el, label %middle.block247, label %vector.body240, !llvm.loop !249

middle.block247:                                  ; preds = %vector.body240
  %cmp.n248 = icmp eq i64 %i.eb, %n.vec239
  br i1 %cmp.n248, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit104, label %.lr.ph.i.i.i.i.i99.preheader252

.lr.ph.i.i.i.i.i99.preheader252:                  ; preds = %vector.memcheck232, %.lr.ph.i.i.i.i.i99.preheader, %middle.block247
  %.013.i.i.i.i.i100.ph = phi ptr [ %i.dx, %vector.memcheck232 ], [ %i.dx, %.lr.ph.i.i.i.i.i99.preheader ], [ %i.eg, %middle.block247 ]
  %.sroa.08.012.i.i.i.i.i101.ph = phi ptr [ %1, %vector.memcheck232 ], [ %1, %.lr.ph.i.i.i.i.i99.preheader ], [ %i.eh, %middle.block247 ]
  br label %.lr.ph.i.i.i.i.i99

.lr.ph.i.i.i.i.i99:                               ; preds = %.lr.ph.i.i.i.i.i99.preheader252, %.lr.ph.i.i.i.i.i99
  %.013.i.i.i.i.i100 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i99 ], [ %.013.i.i.i.i.i100.ph, %.lr.ph.i.i.i.i.i99.preheader252 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i101 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i99 ], [ %.sroa.08.012.i.i.i.i.i101.ph, %.lr.ph.i.i.i.i.i99.preheader252 ] ; 2 uses
  %i.em = load i64, ptr %.sroa.08.012.i.i.i.i.i101, align 8
  store i64 %i.em, ptr %.013.i.i.i.i.i100, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i101, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i100, i64 8 ; 2 uses
  %.not.i.i.i.i.i102 = icmp eq ptr %i.en, %i.d
  br i1 %.not.i.i.i.i.i102, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit104, label %.lr.ph.i.i.i.i.i99, !llvm.loop !250

_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit104: ; preds = %.lr.ph.i.i.i.i.i99, %middle.block247, %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  %.0.lcssa.i.i.i.i.i103 = phi ptr [ %i.dx, %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit ], [ %i.eg, %middle.block247 ], [ %i.eo, %.lr.ph.i.i.i.i.i99 ]
  %.not.i105 = icmp eq ptr %i.cj, null
  br i1 %.not.i105, label %_ZNSt12_Vector_baseIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit104
  %i.ep = load ptr, ptr %i.a, align 8
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.er) #27
  br label %_ZNSt12_Vector_baseIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit104, %bb.m
  store ptr %i.cx, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i103, ptr %i.c, align 8
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cs
  store ptr %i.es, ptr %i.a, align 8
  br label %_ZSt4fillIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEES9_EvT_SB_RKT0_.exit

_ZSt4fillIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEES9_EvT_SB_RKT0_.exit: ; preds = %.lr.ph.i.i.i79, %.lr.ph.i.i.i, %middle.block166, %middle.block196, %_ZSt22__uninitialized_move_aIPN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESA_SaIS9_EET0_T_SD_SC_RT1_.exit75.thread, %_ZNSt12_Vector_baseIN9__gnu_cxx17__normal_iteratorIPKSt4pairImmESt6vectorIS3_SaIS3_EEEESaIS9_EE13_M_deallocateEPS9_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA3_KcERA1024_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1024) %3, ptr noundef nonnull align 1 dereferenceable(3) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1024) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(1024) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA3_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(3) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  resume { ptr, i32 } %i.q
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp15MorphTimeValuesESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.d = load float, ptr %i.c, align 8
  store float %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8
  store <2 x ptr> %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -32 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN6Assimp15MorphTimeValuesES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZN6Assimp15MorphTimeValuesaSEOS0_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aj, %_ZN6Assimp15MorphTimeValuesaSEOS0_.exit.i.i.i.i.i ], [ %i.q, %bb.a ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.t, %_ZN6Assimp15MorphTimeValuesaSEOS0_.exit.i.i.i.i.i ], [ %i.k, %bb.a ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.s, %_ZN6Assimp15MorphTimeValuesaSEOS0_.exit.i.i.i.i.i ], [ %i.m, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.u = load float, ptr %i.s, align 8
  store float %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.v, align 8
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.y, align 8
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.af, ptr %i.z, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6Assimp15MorphTimeValuesaSEOS0_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ai) #27
  br label %_ZN6Assimp15MorphTimeValuesaSEOS0_.exit.i.i.i.i.i

_ZN6Assimp15MorphTimeValuesaSEOS0_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.aj = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN6Assimp15MorphTimeValuesES2_ET0_T_S4_S3_.exit, !llvm.loop !251

_ZSt13move_backwardIPN6Assimp15MorphTimeValuesES2_ET0_T_S4_S3_.exit: ; preds = %_ZN6Assimp15MorphTimeValuesaSEOS0_.exit.i.i.i.i.i, %bb.a
  %i.al = load float, ptr %2, align 8
  store float %i.al, ptr %1, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.an, align 8
  store ptr %i.as, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  store ptr %i.au, ptr %i.ap, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_1
