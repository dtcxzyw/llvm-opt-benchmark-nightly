Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_fusion_qdq?download=true
inline.NumInlined: 1844
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
  %i.ok = shl i64 %index10902, 2                  ; 2 uses
  %next.gep10903 = getelementptr i8, ptr %i.ny, i64 %i.ok ; 2 uses
  %next.gep10904 = getelementptr i8, ptr %.sroa.03404.05921, i64 %i.ok ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.ol = getelementptr i8, ptr %next.gep10904, i64 16
  %wide.load10905 = load <4 x i32>, ptr %next.gep10904, align 4, !tbaa !31, !alias.scope !274
  %wide.load10906 = load <4 x i32>, ptr %i.ol, align 4, !tbaa !31, !alias.scope !274
  %i.om = getelementptr i8, ptr %next.gep10903, i64 16
  store <4 x i32> %wide.load10905, ptr %next.gep10903, align 4, !tbaa !31, !alias.scope !273
  store <4 x i32> %wide.load10906, ptr %i.om, align 4, !tbaa !31, !alias.scope !273
  %index.next10907 = add nuw i64 %index10902, 8   ; 2 uses
  %i.on = icmp eq i64 %index.next10907, %n.vec10900
  br i1 %i.on, label %middle.block10908, label %vector.body10901, !llvm.loop !165

middle.block10908:                                ; preds = %vector.body10901
  %cmp.n10909 = icmp eq i64 %i.of, %n.vec10900
  br i1 %cmp.n10909, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10981

.lr.ph.i.i.i.i.i.preheader10981:                  ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block10908
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i.preheader ], [ %i.oi, %middle.block10908 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.03404.05921, %.lr.ph.i.i.i.i.i.preheader ], [ %i.oj, %middle.block10908 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10981, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.oq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10981 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.op, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10981 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.oo = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !31, !alias.scope !274
  store i32 %i.oo, ptr %.012.i.i.i.i.i, align 4, !tbaa !31, !alias.scope !273
  %i.op = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.op, %.sroa.153409.05920
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !166

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block10908, %.noexc2350
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ny, %.noexc2350 ], [ %i.oi, %middle.block10908 ], [ %i.oq, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.03404.05921, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03404.05921, i64 noundef %i.nq) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nw
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ae
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.10.05919, %bb.ae ]
  %.sroa.153409.9 = phi ptr [ %i.or, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.153409.05920, %bb.ae ] ; 2 uses
  %.sroa.03404.9 = phi ptr [ %i.ny, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.03404.05921, %bb.ae ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 4 ; 2 uses
  %i.os = add nuw i64 %.016735928, 1              ; 2 uses
  %i.ot = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !48
  %i.ox = load ptr, ptr %i.ou, align 8, !tbaa !49 ; 2 uses
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = ashr exact i64 %i.pa, 2
  %i.pc = icmp ult i64 %i.os, %i.pb
  br i1 %i.pc, label %.lr.ph5929, label %.critedge2246, !llvm.loop !167

.critedge2246:                                    ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit, %bb.o, %bb.q, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i, %bb.m, %.noexc2335, %.noexc2334
  %.sroa.10.0.lcssa.ph = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.10.05919, %bb.o ], [ %.sroa.10.05919, %bb.q ], [ %.sroa.10.05919, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.10.05919, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.10.05919, %bb.m ], [ %.sroa.10.05919, %.noexc2335 ], [ %.sroa.10.05919, %.noexc2334 ]
  %.sroa.153409.0.lcssa.ph = phi ptr [ %.sroa.153409.9, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.153409.05920, %bb.o ], [ %.sroa.153409.05920, %bb.q ], [ %.sroa.153409.05920, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.153409.05920, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.153409.05920, %bb.m ], [ %.sroa.153409.05920, %.noexc2335 ], [ %.sroa.153409.05920, %.noexc2334 ] ; 9 uses
  %.sroa.03404.0.lcssa.ph = phi ptr [ %.sroa.03404.9, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.03404.05921, %bb.o ], [ %.sroa.03404.05921, %bb.q ], [ %.sroa.03404.05921, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.03404.05921, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.03404.05921, %bb.m ], [ %.sroa.03404.05921, %.noexc2335 ], [ %.sroa.03404.05921, %.noexc2334 ] ; 9 uses
  %.sroa.133419.0.lcssa.ph = phi ptr [ %.sroa.133419.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.133419.05922, %bb.o ], [ %.sroa.133419.05922, %bb.q ], [ %.sroa.133419.05922, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.133419.05922, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.133419.05922, %bb.m ], [ %.sroa.133419.05922, %.noexc2335 ], [ %.sroa.133419.05922, %.noexc2334 ] ; 3 uses
  %.sroa.9.0.lcssa.ph = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.9.05923, %bb.o ], [ %.sroa.9.05923, %bb.q ], [ %.sroa.9.05923, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.9.05923, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.9.05923, %bb.m ], [ %.sroa.9.05923, %.noexc2335 ], [ %.sroa.9.05923, %.noexc2334 ] ; 2 uses
  %.sroa.03414.0.lcssa.ph = phi ptr [ %.sroa.03414.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.03414.05924, %bb.o ], [ %.sroa.03414.05924, %bb.q ], [ %.sroa.03414.05924, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.03414.05924, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.03414.05924, %bb.m ], [ %.sroa.03414.05924, %.noexc2335 ], [ %.sroa.03414.05924, %.noexc2334 ] ; 7 uses
  %.sroa.19.0.lcssa.ph = phi ptr [ %.sroa.19.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.19.05925, %bb.o ], [ %.sroa.19.05925, %bb.q ], [ %.sroa.19.05925, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.19.05925, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.19.05925, %bb.m ], [ %.sroa.19.05925, %.noexc2335 ], [ %.sroa.19.05925, %.noexc2334 ] ; 3 uses
  %.sroa.153433.0.lcssa.ph = phi ptr [ %.sroa.153433.1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.153433.05926, %bb.o ], [ %.sroa.153433.05926, %bb.q ], [ %.sroa.153433.05926, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.153433.05926, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.153433.05926, %bb.m ], [ %.sroa.153433.05926, %.noexc2335 ], [ %.sroa.153433.05926, %.noexc2334 ]
  %.sroa.03423.0.lcssa.ph = phi ptr [ %.sroa.03423.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.03423.05927, %bb.o ], [ %.sroa.03423.05927, %bb.q ], [ %.sroa.03423.05927, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit ], [ %.sroa.03423.05927, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i ], [ %.sroa.03423.05927, %bb.m ], [ %.sroa.03423.05927, %.noexc2335 ], [ %.sroa.03423.05927, %.noexc2334 ] ; 11 uses
  %i.pd = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.01120.0.copyload = load i32, ptr %19, align 4, !tbaa !31
  %i.pe = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.pd, i32 %.sroa.01120.0.copyload)
          to label %bb.ai unwind label %.loopexit3856

bb.ai:                                            ; preds = %.critedge2246
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 88
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !277
  %i.ph = icmp ugt i32 %i.pg, 1
  %i.pi = ptrtoint ptr %.sroa.153433.0.lcssa.ph to i64
  %i.pj = ptrtoint ptr %.sroa.03423.0.lcssa.ph to i64 ; 2 uses
  %i.pk = sub i64 %i.pi, %i.pj
  %i.pl = ashr exact i64 %i.pk, 3
  %i.pm = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 40
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !48
  %i.pq = load ptr, ptr %i.pn, align 8, !tbaa !49
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = ashr exact i64 %i.pt, 2
  %i.pv = icmp ne i64 %i.pl, %i.pu
  %or.cond52.not = select i1 %i.pv, i1 true, i1 %i.ph ; 2 uses
  br i1 %or.cond52.not, label %bb.ct, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.pw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.ak unwind label %bb.am     ; 4 uses

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.pw, ptr %20, align 8, !tbaa !63
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  store ptr %i.px, ptr %i.bl, align 8, !tbaa !64
  store float 0.000000e+00, ptr %i.pw, align 4, !tbaa !66
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  store i32 0, ptr %i.py, align 4
  store ptr %i.px, ptr %i.bm, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.pz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.al unwind label %bb.an     ; 4 uses

bb.al:                                            ; preds = %bb.ak
  store ptr %i.pz, ptr %21, align 8, !tbaa !21
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  store ptr %i.qa, ptr %i.bn, align 8, !tbaa !22
  store i32 0, ptr %i.pz, align 4, !tbaa !31
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  store i32 0, ptr %i.qb, align 4
  store ptr %i.qa, ptr %i.bo, align 8, !tbaa !32
  %i.qc = load ptr, ptr %0, align 8, !tbaa !20
  %i.qd = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !49
  %.sroa.01104.0.copyload = load i32, ptr %i.qf, align 4, !tbaa !31
  %i.qg = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.qc, i32 %.sroa.01104.0.copyload)
          to label %bb.ao unwind label %.loopexit.split-lp3835

.loopexit3856:                                    ; preds = %.critedge2246
  %lpad.loopexit3858 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit.split-lp3857:                           ; preds = %bb.l
  %lpad.loopexit.split-lp3859 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.am:                                            ; preds = %bb.aj
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2426

bb.an:                                            ; preds = %bb.ak
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2424

bb.ao:                                            ; preds = %bb.al
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 88
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !277 ; 2 uses
  %i.ql = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 40
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !48
  %i.qp = load ptr, ptr %i.qm, align 8, !tbaa !49 ; 2 uses
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = icmp ugt i64 %i.qs, 8
  br i1 %i.qt, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.qu = load ptr, ptr %0, align 8, !tbaa !20
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %.sroa.01102.0.copyload = load i32, ptr %i.qv, align 4, !tbaa !31
  %i.qw = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.qu, i32 %.sroa.01102.0.copyload)
          to label %bb.aq unwind label %.loopexit.split-lp3835

bb.aq:                                            ; preds = %bb.ap
  %.pre7904 = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272 ; 2 uses
  br i1 %i.qw, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.qx = load ptr, ptr %0, align 8, !tbaa !20
  %i.qy = getelementptr inbounds nuw i8, ptr %.pre7904, i64 32
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !49
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %.sroa.01101.0.copyload = load i32, ptr %i.ra, align 4, !tbaa !31
  %i.rb = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.qx, i32 %.sroa.01101.0.copyload)
          to label %bb.as unwind label %.loopexit.split-lp3835

bb.as:                                            ; preds = %bb.ar
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 88
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !277
  %.pre = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272
  br label %bb.at

bb.at:                                            ; preds = %bb.ao, %bb.aq, %bb.as
  %i.re = phi ptr [ %.pre, %bb.as ], [ %.pre7904, %bb.aq ], [ %i.ql, %bb.ao ]
  %i.rf = phi i32 [ %i.rd, %bb.as ], [ -2, %bb.aq ], [ -2, %bb.ao ]
  %i.rg = icmp slt i32 %i.qk, 0
  %i.rh = select i1 %i.rg, i32 %i.rf, i32 %i.qk
  %i.ri = icmp ult i32 %i.rh, 2
  %i.rj = load ptr, ptr %0, align 8, !tbaa !20
  %i.rk = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !49
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %.sroa.01098.0.copyload = load i32, ptr %i.rm, align 4, !tbaa !31
  %i.rn = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.rj, i32 %.sroa.01098.0.copyload)
          to label %_ZN2cv3Mat2atIfEERT_i.exit unwind label %.loopexit.split-lp3835

_ZN2cv3Mat2atIfEERT_i.exit:                       ; preds = %bb.at
  %.0.i2354.in = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %.0.i2354 = load ptr, ptr %.0.i2354.in, align 8, !tbaa !72
  %i.ro = load float, ptr %.0.i2354, align 4, !tbaa !66
  %i.rp = load ptr, ptr %20, align 8, !tbaa !63
  store float %i.ro, ptr %i.rp, align 4, !tbaa !66
  %i.rq = load ptr, ptr %0, align 8, !tbaa !20
  %i.rr = load ptr, ptr %.sroa.03423.0.lcssa.ph, align 8, !tbaa !272
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !49
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %.sroa.01094.0.copyload = load i32, ptr %i.ru, align 4, !tbaa !31
  %i.rv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.rq, i32 %.sroa.01094.0.copyload)
          to label %bb.au unwind label %.loopexit.split-lp3835 ; 2 uses

bb.au:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !73
  %i.rx = and i32 %i.rw, 31
  %i.ry = icmp eq i32 %i.rx, 0
  %.0.i2356.in = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %.0.i2356 = load ptr, ptr %.0.i2356.in, align 8, !tbaa !72
  %i.rz = load i8, ptr %.0.i2356, align 1, !tbaa !74 ; 2 uses
  %i.sa = zext i8 %i.rz to i32
  %i.sb = sext i8 %i.rz to i32
  %i.sc = select i1 %i.ry, i32 %i.sa, i32 %i.sb
  %i.sd = load ptr, ptr %21, align 8, !tbaa !21
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !31
  %i.se = load ptr, ptr %0, align 8, !tbaa !20
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.03423.0.lcssa.ph, i64 8 ; 5 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !272
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !49
  %.sroa.01104.0.copyload.1 = load i32, ptr %i.si, align 4, !tbaa !31
  %i.sj = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.se, i32 %.sroa.01104.0.copyload.1)
          to label %bb.av unwind label %.loopexit.split-lp3835

bb.av:                                            ; preds = %bb.au
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 88
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !277 ; 2 uses
  %i.sm = load ptr, ptr %i.sf, align 8, !tbaa !272 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 40
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !48
  %i.sq = load ptr, ptr %i.sn, align 8, !tbaa !49 ; 2 uses
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = sub i64 %i.sr, %i.ss
  %i.su = icmp ugt i64 %i.st, 8
  br i1 %i.su, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.sv = load ptr, ptr %0, align 8, !tbaa !20
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %.sroa.01102.0.copyload.1 = load i32, ptr %i.sw, align 4, !tbaa !31
  %i.sx = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.sv, i32 %.sroa.01102.0.copyload.1)
          to label %bb.ax unwind label %.loopexit.split-lp3835

bb.ax:                                            ; preds = %bb.aw
  %.pre7906 = load ptr, ptr %i.sf, align 8, !tbaa !272 ; 2 uses
  br i1 %i.sx, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.sy = load ptr, ptr %0, align 8, !tbaa !20
  %i.sz = getelementptr inbounds nuw i8, ptr %.pre7906, i64 32
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !49
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %.sroa.01101.0.copyload.1 = load i32, ptr %i.tb, align 4, !tbaa !31
  %i.tc = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.sy, i32 %.sroa.01101.0.copyload.1)
          to label %bb.az unwind label %.loopexit.split-lp3835

bb.az:                                            ; preds = %bb.ay
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 88
  %i.te = load i32, ptr %i.td, align 8, !tbaa !277
  %.pre7905 = load ptr, ptr %i.sf, align 8, !tbaa !272
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax, %bb.av
  %i.tf = phi ptr [ %.pre7905, %bb.az ], [ %.pre7906, %bb.ax ], [ %i.sm, %bb.av ]
  %i.tg = phi i32 [ %i.te, %bb.az ], [ -2, %bb.ax ], [ -2, %bb.av ]
  %i.th = icmp slt i32 %i.sl, 0
  %i.ti = select i1 %i.th, i32 %i.tg, i32 %i.sl
  %i.tj = icmp ult i32 %i.ti, 2
  %i.tk = select i1 %i.ri, i1 %i.tj, i1 false
  %i.tl = load ptr, ptr %0, align 8, !tbaa !20
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tf, i64 32
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !49
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %.sroa.01098.0.copyload.1 = load i32, ptr %i.to, align 4, !tbaa !31
  %i.tp = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.tl, i32 %.sroa.01098.0.copyload.1)
          to label %_ZN2cv3Mat2atIfEERT_i.exit.1 unwind label %.loopexit.split-lp3835

_ZN2cv3Mat2atIfEERT_i.exit.1:                     ; preds = %bb.ba
  %.0.i2354.in.1 = getelementptr inbounds nuw i8, ptr %i.tp, i64 24
  %.0.i2354.1 = load ptr, ptr %.0.i2354.in.1, align 8, !tbaa !72
  %i.tq = load float, ptr %.0.i2354.1, align 4, !tbaa !66
  %i.tr = load ptr, ptr %20, align 8, !tbaa !63
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  store float %i.tq, ptr %i.ts, align 4, !tbaa !66
  %i.tt = load ptr, ptr %0, align 8, !tbaa !20
  %i.tu = load ptr, ptr %i.sf, align 8, !tbaa !272
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !49
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %.sroa.01094.0.copyload.1 = load i32, ptr %i.tx, align 4, !tbaa !31
  %i.ty = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.tt, i32 %.sroa.01094.0.copyload.1)
          to label %bb.bb unwind label %.loopexit.split-lp3835 ; 2 uses

bb.bb:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit.1
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !73
  %i.ua = and i32 %i.tz, 31
  %i.ub = icmp eq i32 %i.ua, 0
  %.0.i2356.in.1 = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %.0.i2356.1 = load ptr, ptr %.0.i2356.in.1, align 8, !tbaa !72
  %i.uc = load i8, ptr %.0.i2356.1, align 1, !tbaa !74 ; 2 uses
  %i.ud = zext i8 %i.uc to i32
  %i.ue = sext i8 %i.uc to i32
  %i.uf = select i1 %i.ub, i32 %i.ud, i32 %i.ue
  %i.ug = load ptr, ptr %21, align 8, !tbaa !21   ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  store i32 %i.uf, ptr %i.uh, align 4, !tbaa !31
  br i1 %i.tk, label %bb.bc, label %.thread8553

bb.bc:                                            ; preds = %bb.bb
  %i.ui = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.01092.0.copyload = load i32, ptr %18, align 4, !tbaa !31
  %i.uj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.ui, i32 %.sroa.01092.0.copyload)
          to label %_ZN2cv3Mat2atIfEERT_i.exit2361 unwind label %.loopexit.split-lp3835

_ZN2cv3Mat2atIfEERT_i.exit2361:                   ; preds = %bb.bc
  %.0.i2360.in = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %.0.i2360 = load ptr, ptr %.0.i2360.in, align 8, !tbaa !72
  %i.uk = load float, ptr %.0.i2360, align 4, !tbaa !66
  %i.ul = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.01088.0.copyload = load i32, ptr %19, align 4, !tbaa !31
  %i.um = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.ul, i32 %.sroa.01088.0.copyload)
          to label %bb.bd unwind label %.loopexit.split-lp3835 ; 2 uses

bb.bd:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit2361
  %i.un = load i32, ptr %i.um, align 8, !tbaa !73
  %i.uo = and i32 %i.un, 31
  %i.up = icmp eq i32 %i.uo, 0
  %.0.i2363.in = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  %.0.i2363 = load ptr, ptr %.0.i2363.in, align 8, !tbaa !72
  %i.uq = load i8, ptr %.0.i2363, align 1, !tbaa !74 ; 2 uses
  %i.ur = zext i8 %i.uq to i32
  %i.us = sext i8 %i.uq to i32
  %i.ut = select i1 %i.up, i32 %i.ur, i32 %i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store ptr %i.bp, ptr %22, align 8, !tbaa !75
  store i64 0, ptr %i.bq, align 8, !tbaa !76
  store i8 0, ptr %i.bp, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, i8 0, i64 48, i1 false)
  store float 1.000000e+00, ptr %i.bs, align 8, !tbaa !279
  store i32 0, ptr %i.bt, align 4, !tbaa !280
  store i8 0, ptr %i.bu, align 8, !tbaa !281
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bw, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  store i64 3, ptr %i.bx, align 8, !tbaa !76
  store i8 0, ptr %i.by, align 1, !tbaa !74
  %i.uu = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.uv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bd
  %i.uw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.be unwind label %bb.bu     ; 0 uses

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ux = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.bf unwind label %bb.bu     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  store float %i.uk, ptr %i.bs, align 8, !tbaa !279
  store i32 %i.ut, ptr %i.bt, align 4, !tbaa !280
  %i.uy = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 156
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !284
  %i.vb = icmp eq i32 %i.va, 15
  %.str..str.1 = select i1 %i.vb, ptr @.str, ptr @.str.1
  %i.vc = load i64, ptr %i.bx, align 8, !tbaa !76
  %i.vd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef 0, i64 noundef %i.vc, ptr noundef nonnull %.str..str.1, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.bu ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZN2cv3dnn14dnn5_v2026060517Eltwise2Int8Layer6createERKNS1_18Eltwise2Int8ParamsE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.125") align 8 %23, ptr noundef nonnull align 8 dereferenceable(128) %22)
          to label %bb.bg unwind label %bb.bv

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ve = load ptr, ptr %0, align 8, !tbaa !20
  %i.vf = load ptr, ptr %23, align 8, !tbaa !93   ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 80
  store ptr %i.ve, ptr %i.vg, align 8, !tbaa !285
  %i.vh = load i32, ptr %i.a, align 4, !tbaa !31  ; 3 uses
  %i.vi = sext i32 %i.vh to i64
  %i.vj = load ptr, ptr %12, align 8, !tbaa !30
  %i.vk = getelementptr inbounds nuw [16 x i8], ptr %i.vj, i64 %i.vi ; 2 uses
  store ptr %i.vf, ptr %i.vk, align 8, !tbaa !45
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8 ; 3 uses
  %i.vm = load ptr, ptr %i.ca, align 8, !tbaa !94 ; 4 uses
  %i.vn = load ptr, ptr %i.vl, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i2370 = icmp eq ptr %i.vm, %i.vn
  br i1 %.not.i.i.i.i2370, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_17Eltwise2Int8LayerEEERS4_RKNS0_IT_EE.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not7.i.i.i.i = icmp eq ptr %i.vm, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 8 ; 3 uses
  %i.vp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i2371 = icmp eq i8 %i.vp, 0
  br i1 %.not.i.i.i.i.i2371, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.vq = load i32, ptr %i.vo, align 4, !tbaa !31
  %i.vr = add nsw i32 %i.vq, 1
  store i32 %i.vr, ptr %i.vo, align 4, !tbaa !31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.vs = atomicrmw volatile add ptr %i.vo, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.vl, align 8, !tbaa !94
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bk, %bb.bj, %bb.bh
  %i.vt = phi ptr [ %i.vn, %bb.bh ], [ %i.vn, %bb.bj ], [ %.pr.pre.i.i.i.i, %bb.bk ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.vt, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 8 ; 4 uses
  %i.vv = load atomic i64, ptr %i.vu acquire, align 8 ; 2 uses
  %i.vw = icmp eq i64 %i.vv, 4294967297
  %i.vx = trunc i64 %i.vv to i32                  ; 2 uses
  br i1 %i.vw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.vu, align 8, !tbaa !96
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vt, i64 12
  store i32 0, ptr %i.vy, align 4, !tbaa !97
  %i.vz = load ptr, ptr %i.vt, align 8, !tbaa !26
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.wb = load ptr, ptr %i.wa, align 8
  call void %i.wb(ptr noundef nonnull align 8 dereferenceable(16) %i.vt) #23, !inline_history !168
  %i.wc = load ptr, ptr %i.vt, align 8, !tbaa !26
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(16) %i.vt) #23, !inline_history !168
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.wf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i.i.i.i = icmp eq i8 %i.wf, 0
  br i1 %.not.i9.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.wg = add nsw i32 %i.vx, -1
  store i32 %i.wg, ptr %i.vu, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.wh = atomicrmw volatile add ptr %i.vu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i = phi i32 [ %i.vx, %bb.bo ], [ %i.wh, %bb.bp ]
  %i.wi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.wi, label %bb.bq, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !98

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vt) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bm, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.vm, ptr %i.vl, align 8, !tbaa !94
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEaSINS2_17Eltwise2Int8LayerEEERS4_RKNS0_IT_EE.exit

end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
  %i.blc = icmp eq i64 %i.blb, 9223372036854775804
  br i1 %i.blc, label %bb.jw, label %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2740

bb.jw:                                            ; preds = %bb.jv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc2752 unwind label %.loopexit.split-lp3820.loopexit.split-lp

.noexc2752:                                       ; preds = %bb.jw
  unreachable

_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2740: ; preds = %bb.jv
  %i.bld = ashr exact i64 %i.blb, 2               ; 3 uses
  %.sroa.speculated.i.i.i2741 = call i64 @llvm.umax.i64(i64 %i.bld, i64 1)
  %i.ble = add nsw i64 %.sroa.speculated.i.i.i2741, %i.bld ; 2 uses
  %i.blf = icmp ult i64 %i.ble, %i.bld
  %i.blg = call i64 @llvm.umin.i64(i64 %i.ble, i64 2305843009213693951)
  %i.blh = select i1 %i.blf, i64 2305843009213693951, i64 %i.blg ; 3 uses
  %.not.i.i.i2742 = icmp ne i64 %i.blh, 0
  call void @llvm.assume(i1 %.not.i.i.i2742)
  %i.bli = shl nuw nsw i64 %i.blh, 2
  %i.blj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bli) #26
          to label %.noexc2753 unwind label %.loopexit.split-lp3820.loopexit.split-lp ; 8 uses

.noexc2753:                                       ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2740
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 %i.blb
  store i32 %.sroa.03329.1.ph, ptr %i.blk, align 4, !tbaa !31
  %.not10.i.i.i.i.i2743 = icmp eq ptr %i.bky, %i.bkv
  br i1 %.not10.i.i.i.i.i2743, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2748, label %.lr.ph.i.i.i.i.i2744.preheader

.lr.ph.i.i.i.i.i2744.preheader:                   ; preds = %.noexc2753
  %i.bll = ptrtoaddr ptr %i.blj to i64
  %i.blm = add i64 %i.bkz, -4
  %i.bln = sub i64 %i.blm, %i.bla                 ; 2 uses
  %i.blo = lshr i64 %i.bln, 2
  %i.blp = add nuw nsw i64 %i.blo, 1              ; 2 uses
  %min.iters.check10762 = icmp ult i64 %i.bln, 28
  %i.blq = sub i64 %i.bla, %i.bll
  %diff.check10760 = icmp ugt i64 %i.blq, -32
  %or.cond10938 = or i1 %min.iters.check10762, %diff.check10760
  br i1 %or.cond10938, label %.lr.ph.i.i.i.i.i2744.preheader10978, label %vector.ph10763

vector.ph10763:                                   ; preds = %.lr.ph.i.i.i.i.i2744.preheader
  %n.vec10764 = and i64 %i.blp, 9223372036854775800 ; 3 uses
  %i.blr = shl i64 %n.vec10764, 2                 ; 2 uses
  %i.bls = getelementptr i8, ptr %i.blj, i64 %i.blr ; 2 uses
  %i.blt = getelementptr i8, ptr %i.bky, i64 %i.blr
  br label %vector.body10765

vector.body10765:                                 ; preds = %vector.body10765, %vector.ph10763
  %index10766 = phi i64 [ 0, %vector.ph10763 ], [ %index.next10771, %vector.body10765 ] ; 2 uses
  %i.blu = shl i64 %index10766, 2                 ; 2 uses
  %next.gep10767 = getelementptr i8, ptr %i.blj, i64 %i.blu ; 2 uses
  %next.gep10768 = getelementptr i8, ptr %i.bky, i64 %i.blu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.blv = getelementptr i8, ptr %next.gep10768, i64 16
  %wide.load10769 = load <4 x i32>, ptr %next.gep10768, align 4, !tbaa !31, !alias.scope !310
  %wide.load10770 = load <4 x i32>, ptr %i.blv, align 4, !tbaa !31, !alias.scope !310
  %i.blw = getelementptr i8, ptr %next.gep10767, i64 16
  store <4 x i32> %wide.load10769, ptr %next.gep10767, align 4, !tbaa !31, !alias.scope !309
  store <4 x i32> %wide.load10770, ptr %i.blw, align 4, !tbaa !31, !alias.scope !309
  %index.next10771 = add nuw i64 %index10766, 8   ; 2 uses
  %i.blx = icmp eq i64 %index.next10771, %n.vec10764
  br i1 %i.blx, label %middle.block10772, label %vector.body10765, !llvm.loop !215

middle.block10772:                                ; preds = %vector.body10765
  %cmp.n10773 = icmp eq i64 %i.blp, %n.vec10764
  br i1 %cmp.n10773, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2748, label %.lr.ph.i.i.i.i.i2744.preheader10978

.lr.ph.i.i.i.i.i2744.preheader10978:              ; preds = %.lr.ph.i.i.i.i.i2744.preheader, %middle.block10772
  %.012.i.i.i.i.i2745.ph = phi ptr [ %i.blj, %.lr.ph.i.i.i.i.i2744.preheader ], [ %i.bls, %middle.block10772 ]
  %.0911.i.i.i.i.i2746.ph = phi ptr [ %i.bky, %.lr.ph.i.i.i.i.i2744.preheader ], [ %i.blt, %middle.block10772 ]
  br label %.lr.ph.i.i.i.i.i2744

.lr.ph.i.i.i.i.i2744:                             ; preds = %.lr.ph.i.i.i.i.i2744.preheader10978, %.lr.ph.i.i.i.i.i2744
  %.012.i.i.i.i.i2745 = phi ptr [ %i.bma, %.lr.ph.i.i.i.i.i2744 ], [ %.012.i.i.i.i.i2745.ph, %.lr.ph.i.i.i.i.i2744.preheader10978 ] ; 2 uses
  %.0911.i.i.i.i.i2746 = phi ptr [ %i.blz, %.lr.ph.i.i.i.i.i2744 ], [ %.0911.i.i.i.i.i2746.ph, %.lr.ph.i.i.i.i.i2744.preheader10978 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.bly = load i32, ptr %.0911.i.i.i.i.i2746, align 4, !tbaa !31, !alias.scope !310
  store i32 %i.bly, ptr %.012.i.i.i.i.i2745, align 4, !tbaa !31, !alias.scope !309
  %i.blz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i2746, i64 4 ; 2 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i2745, i64 4 ; 2 uses
  %.not.i.i.i.i.i2747 = icmp eq ptr %i.blz, %i.bkv
  br i1 %.not.i.i.i.i.i2747, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2748, label %.lr.ph.i.i.i.i.i2744, !llvm.loop !216

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2748: ; preds = %.lr.ph.i.i.i.i.i2744, %middle.block10772, %.noexc2753
  %.0.lcssa.i.i.i.i.i2749 = phi ptr [ %i.blj, %.noexc2753 ], [ %i.bls, %middle.block10772 ], [ %i.bma, %.lr.ph.i.i.i.i.i2744 ]
  %i.bmb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i2749, i64 4
  %.not.i23.i.i2750 = icmp eq ptr %i.bky, null
  br i1 %.not.i23.i.i2750, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751, label %bb.jx

bb.jx:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2748
  %i.bmc = load ptr, ptr %i.de, align 8, !tbaa !99
  %i.bmd = ptrtoint ptr %i.bmc to i64
  %i.bme = sub i64 %i.bmd, %i.bla
  call void @_ZdlPvm(ptr noundef nonnull %i.bky, i64 noundef %i.bme) #24
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751: ; preds = %bb.jx, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i2748
  store ptr %i.blj, ptr %32, align 8, !tbaa !49
  store ptr %i.bmb, ptr %i.dd, align 8, !tbaa !48
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %i.blh
  store ptr %i.bmf, ptr %i.de, align 8, !tbaa !99
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754.thread

.loopexit.split-lp3815.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.jr
  %lpad.loopexit.split-lp11015 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp3810

.loopexit.split-lp3820.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_M_check_lenEmPKc.exit.i.i2740, %bb.jw
  %lpad.loopexit.split-lp11018 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp3810

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754.thread: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751, %bb.ju, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2715, %bb.jc
  %.sroa.03349.5.ph = phi ptr [ %.sroa.03349.10, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2715 ], [ %.sroa.03349.10, %bb.jc ], [ %.sroa.03349.11, %bb.ju ], [ %.sroa.03349.11, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751 ] ; 2 uses
  %.sroa.15.3.ph = phi ptr [ %.sroa.15.4, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2715 ], [ %.sroa.15.4, %bb.jc ], [ %.sroa.15.5, %bb.ju ], [ %.sroa.15.5, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751 ]
  %.sroa.21.5.ph = phi ptr [ %.sroa.21.10, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2715 ], [ %.sroa.21.10, %bb.jc ], [ %.sroa.21.11, %bb.ju ], [ %.sroa.21.11, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751 ] ; 2 uses
  %.sroa.03337.5.ph = phi ptr [ %.sroa.03337.10, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2715 ], [ %.sroa.03337.10, %bb.jc ], [ %.sroa.03337.11, %bb.ju ], [ %.sroa.03337.11, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751 ] ; 2 uses
  %.sroa.11.3.ph = phi ptr [ %.sroa.11.5, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2715 ], [ %.sroa.11.5, %bb.jc ], [ %.sroa.11.6, %bb.ju ], [ %.sroa.11.6, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751 ] ; 2 uses
  %.sroa.18.5.ph = phi ptr [ %.sroa.18.10, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2715 ], [ %.sroa.18.10, %bb.jc ], [ %.sroa.18.11, %bb.ju ], [ %.sroa.18.11, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i2751 ] ; 2 uses
  %i.bmg = add nuw i64 %.018006033, 1             ; 2 uses
  %i.bmh = load ptr, ptr %i.bek, align 8, !tbaa !48
  %i.bmi = load ptr, ptr %i.bej, align 8, !tbaa !49 ; 2 uses
  %i.bmj = ptrtoint ptr %i.bmh to i64
  %i.bmk = ptrtoint ptr %i.bmi to i64
  %i.bml = sub i64 %i.bmj, %i.bmk
  %i.bmm = ashr exact i64 %i.bml, 2
  %i.bmn = icmp ult i64 %i.bmg, %i.bmm
  br i1 %i.bmn, label %.lr.ph6035, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754, !llvm.loop !217

_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754: ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754.thread, %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit, %bb.jh, %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.ih
  %.sroa.03349.0.lcssa = phi ptr [ null, %bb.ih ], [ %.sroa.03349.06027, %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %.sroa.03349.06027, %bb.jh ], [ %.sroa.03349.06027, %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit ], [ %.sroa.03349.5.ph, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754.thread ] ; 10 uses
  %.sroa.21.0.lcssa = phi ptr [ null, %bb.ih ], [ %.sroa.21.06029, %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %.sroa.21.06029, %bb.jh ], [ %.sroa.21.06029, %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit ], [ %.sroa.21.5.ph, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754.thread ] ; 3 uses
  %.sroa.03337.0.lcssa = phi ptr [ null, %bb.ih ], [ %.sroa.03337.06030, %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %.sroa.03337.06030, %bb.jh ], [ %.sroa.03337.06030, %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit ], [ %.sroa.03337.5.ph, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754.thread ] ; 7 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %bb.ih ], [ %.sroa.11.06031, %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %.sroa.11.06031, %bb.jh ], [ %.sroa.11.06031, %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit ], [ %.sroa.11.3.ph, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754.thread ] ; 2 uses
  %.sroa.18.0.lcssa = phi ptr [ null, %bb.ih ], [ %.sroa.18.06032, %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %.sroa.18.06032, %bb.jh ], [ %.sroa.18.06032, %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit ], [ %.sroa.18.5.ph, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754.thread ] ; 3 uses
  %i.bmo = load ptr, ptr %i.ji, align 8, !tbaa !288 ; 2 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  %i.bmq = load ptr, ptr %i.bmp, align 8, !tbaa !288
  %i.bmr = icmp eq ptr %i.bmo, %i.bmq
  br i1 %i.bmr, label %.thread3504, label %bb.jy

bb.jy:                                            ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754
  %i.bms = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0920.0.copyload = load i32, ptr %i.bmo, align 4, !tbaa !31
  %i.bmt = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bms, i32 %.sroa.0920.0.copyload)
          to label %bb.jz unwind label %.loopexit.split-lp3810.loopexit

bb.jz:                                            ; preds = %bb.jy
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmt, i64 88
  %i.bmv = load i32, ptr %i.bmu, align 8, !tbaa !277 ; 3 uses
  %i.bmw = icmp slt i32 %i.bmv, 0
  br i1 %i.bmw, label %.thread3504, label %bb.kf

.thread3504:                                      ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754, %bb.jz
  %i.bmx = phi i32 [ %i.bmv, %bb.jz ], [ -1, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE9push_backERKS3_.exit2754 ]
  %i.bmy = load ptr, ptr %0, align 8, !tbaa !20
  %i.bmz = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 8
  %.sroa.0919.0.copyload = load i32, ptr %i.bna, align 4, !tbaa !31
  %i.bnb = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bmy, i32 %.sroa.0919.0.copyload)
          to label %bb.ka unwind label %.loopexit.split-lp3810.loopexit

bb.ka:                                            ; preds = %.thread3504
  br i1 %i.bnb, label %bb.kb, label %bb.kf

bb.kb:                                            ; preds = %bb.ka
  %i.bnc = load ptr, ptr %0, align 8, !tbaa !20
  %i.bnd = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 8
  %.sroa.0916.0.copyload = load i32, ptr %i.bne, align 4, !tbaa !31
  %i.bnf = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bnc, i32 %.sroa.0916.0.copyload)
          to label %bb.kc unwind label %.loopexit.split-lp3810.loopexit ; 2 uses

bb.kc:                                            ; preds = %bb.kb
  %i.bng = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.bnf)
          to label %bb.kd unwind label %.loopexit.split-lp3810.loopexit

bb.kd:                                            ; preds = %bb.kc
  br i1 %i.bng, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bnh = load i32, ptr %i.bnf, align 8, !tbaa !73
  %i.bni = and i32 %i.bnh, 4095
  br label %bb.kf

.loopexit.split-lp3810.loopexit:                  ; preds = %bb.jy, %.thread3504, %bb.kc, %bb.kb
  %lpad.loopexit3884 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp3810

.loopexit.split-lp3810.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ik, %bb.jm
  %lpad.loopexit.split-lp11012 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp3810

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %bb.ka, %bb.jz
  %.01804 = phi i32 [ %i.bmv, %bb.jz ], [ %i.bmx, %bb.ka ], [ %i.bni, %bb.ke ], [ 0, %bb.kd ]
  %i.bnj = icmp ult i32 %.01804, 2
  %i.bnk = load ptr, ptr %i.dd, align 8, !tbaa !48
  %i.bnl = load ptr, ptr %32, align 8, !tbaa !49  ; 2 uses
  %i.bnm = ptrtoint ptr %i.bnk to i64
  %i.bnn = ptrtoint ptr %i.bnl to i64
  %i.bno = sub i64 %i.bnm, %i.bnn
  %i.bnp = load ptr, ptr %i.bek, align 8, !tbaa !48
  %i.bnq = load ptr, ptr %i.bej, align 8, !tbaa !49
  %i.bnr = ptrtoint ptr %i.bnp to i64
  %i.bns = ptrtoint ptr %i.bnq to i64
  %i.bnt = sub i64 %i.bnr, %i.bns
  %i.bnu = icmp eq i64 %i.bno, %i.bnt
  %or.cond70 = and i1 %i.bnj, %i.bnu
  br i1 %or.cond70, label %bb.kg, label %bb.nt

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %i.bnv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.kh unwind label %bb.kj     ; 4 uses

bb.kh:                                            ; preds = %bb.kg
  store ptr %i.bnv, ptr %33, align 8, !tbaa !63
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 8 ; 2 uses
  store ptr %i.bnw, ptr %i.df, align 8, !tbaa !64
  store float 0.000000e+00, ptr %i.bnv, align 4, !tbaa !66
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnv, i64 4
  store i32 0, ptr %i.bnx, align 4
  store ptr %i.bnw, ptr %i.dg, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %i.bny = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.ki unwind label %bb.kk     ; 11 uses

bb.ki:                                            ; preds = %bb.kh
  store ptr %i.bny, ptr %34, align 8, !tbaa !21
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 8 ; 2 uses
  store ptr %i.bnz, ptr %i.dh, align 8, !tbaa !22
  store i32 0, ptr %i.bny, align 4, !tbaa !31
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bny, i64 4
  store i32 0, ptr %i.boa, align 4
  store ptr %i.bnz, ptr %i.di, align 8, !tbaa !32
  %i.bob = load ptr, ptr %.sroa.03349.0.lcssa, align 8, !tbaa !272 ; 2 uses
  %.not2177 = icmp eq ptr %i.bob, null
  br i1 %.not2177, label %bb.kt, label %bb.kl

bb.kj:                                            ; preds = %bb.kg
  %i.boc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2857

bb.kk:                                            ; preds = %bb.kh
  %i.bod = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2855

bb.kl:                                            ; preds = %bb.ki
  %i.boe = load ptr, ptr %0, align 8, !tbaa !20
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bob, i64 32
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !49
  %.sroa.0894.0.copyload = load i32, ptr %i.bog, align 4, !tbaa !31
  %i.boh = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.boe, i32 %.sroa.0894.0.copyload)
          to label %bb.km unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp

bb.km:                                            ; preds = %bb.kl
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 88
  %i.boj = load i32, ptr %i.boi, align 8, !tbaa !277 ; 2 uses
  %i.bok = icmp slt i32 %i.boj, 0
  br i1 %i.bok, label %bb.kn, label %bb.kr

bb.kn:                                            ; preds = %bb.km
  %i.bol = load ptr, ptr %0, align 8, !tbaa !20
  %i.bom = load ptr, ptr %.sroa.03349.0.lcssa, align 8, !tbaa !272
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 32
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !49
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 8
  %.sroa.0891.0.copyload = load i32, ptr %i.bop, align 4, !tbaa !31
  %i.boq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bol, i32 %.sroa.0891.0.copyload)
          to label %bb.ko unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ko:                                            ; preds = %bb.kn
  %i.bor = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.boq)
          to label %bb.kp unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp

bb.kp:                                            ; preds = %bb.ko
  br i1 %i.bor, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.bos = load i32, ptr %i.boq, align 8, !tbaa !73
  %i.bot = and i32 %i.bos, 4095
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp, %bb.km
  %.01810 = phi i32 [ %i.boj, %bb.km ], [ %i.bot, %bb.kq ], [ 0, %bb.kp ]
  %i.bou = icmp samesign ult i32 %.01810, 2
  %i.bov = zext i1 %i.bou to i8
  %i.bow = load ptr, ptr %0, align 8, !tbaa !20
  %i.box = load ptr, ptr %.sroa.03349.0.lcssa, align 8, !tbaa !272
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 32
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !49
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 4
  %.sroa.0890.0.copyload = load i32, ptr %i.bpa, align 4, !tbaa !31
  %i.bpb = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bow, i32 %.sroa.0890.0.copyload)
          to label %_ZN2cv3Mat2atIfEERT_i.exit2762 unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp

_ZN2cv3Mat2atIfEERT_i.exit2762:                   ; preds = %bb.kr
  %.0.i2761.in = getelementptr inbounds nuw i8, ptr %i.bpb, i64 24
  %.0.i2761 = load ptr, ptr %.0.i2761.in, align 8, !tbaa !72
  %i.bpc = load float, ptr %.0.i2761, align 4, !tbaa !66
  %i.bpd = load ptr, ptr %33, align 8, !tbaa !63
  store float %i.bpc, ptr %i.bpd, align 4, !tbaa !66
  %i.bpe = load ptr, ptr %0, align 8, !tbaa !20
  %i.bpf = load ptr, ptr %.sroa.03349.0.lcssa, align 8, !tbaa !272
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 32
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !49
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 8
  %.sroa.0886.0.copyload = load i32, ptr %i.bpi, align 4, !tbaa !31
  %i.bpj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bpe, i32 %.sroa.0886.0.copyload)
          to label %bb.ks unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ks:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit2762
  %i.bpk = load i32, ptr %i.bpj, align 8, !tbaa !73
  %i.bpl = and i32 %i.bpk, 31
  %i.bpm = icmp eq i32 %i.bpl, 0
  %.0.i2764.in = getelementptr inbounds nuw i8, ptr %i.bpj, i64 24
  %.0.i2764 = load ptr, ptr %.0.i2764.in, align 8, !tbaa !72
  %i.bpn = load i8, ptr %.0.i2764, align 1, !tbaa !74 ; 2 uses
  %i.bpo = zext i8 %i.bpn to i32
  %i.bpp = sext i8 %i.bpn to i32
  %i.bpq = select i1 %i.bpm, i32 %i.bpo, i32 %i.bpp
  %i.bpr = load ptr, ptr %34, align 8, !tbaa !21  ; 2 uses
  store i32 %i.bpq, ptr %i.bpr, align 4, !tbaa !31
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit

bb.kt:                                            ; preds = %bb.ki
  %i.bps = load ptr, ptr %i.bej, align 8, !tbaa !49
  %i.bpt = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i2769 = icmp eq ptr %i.bpt, null
  %.pre7912 = load i32, ptr %i.bps, align 4, !tbaa !31 ; 3 uses
  br i1 %.not10.i.i.i2769, label %.critedge2252, label %.lr.ph.i.i.i2770

.lr.ph.i.i.i2770:                                 ; preds = %bb.kt, %.lr.ph.i.i.i2770
  %.012.i.i.i2771 = phi ptr [ %.1.i.i.i2776, %.lr.ph.i.i.i2770 ], [ %i.bpt, %bb.kt ] ; 4 uses
  %.0811.i.i.i2772 = phi ptr [ %.19.i.i.i2773, %.lr.ph.i.i.i2770 ], [ %i.az, %bb.kt ] ; 2 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %.012.i.i.i2771, i64 32
  %i.bpv = load i32, ptr %i.bpu, align 4, !tbaa !31
  %i.bpw = icmp slt i32 %i.bpv, %.pre7912         ; 3 uses
  %.19.i.i.i2773 = select i1 %i.bpw, ptr %.0811.i.i.i2772, ptr %.012.i.i.i2771 ; 3 uses
  %.1.in.v.i.i.i2774 = select i1 %i.bpw, i64 24, i64 16
  %.1.in.i.i.i2775 = getelementptr inbounds nuw i8, ptr %.012.i.i.i2771, i64 %.1.in.v.i.i.i2774
  %.1.i.i.i2776 = load ptr, ptr %.1.in.i.i.i2775, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i2777 = icmp eq ptr %.1.i.i.i2776, null
  br i1 %.not.i.i.i2777, label %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2778, label %.lr.ph.i.i.i2770, !llvm.loop !0

_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2778: ; preds = %.lr.ph.i.i.i2770
  %i.bpx = icmp eq ptr %.19.i.i.i2773, %i.az
  br i1 %i.bpx, label %.critedge2252, label %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit2781

_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit2781: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2778
  %.19.i.i.i2773.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bpw, ptr %.0811.i.i.i2772, ptr %.012.i.i.i2771
  %.19.i.i.i2773.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i2773.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bpy = load i32, ptr %.19.i.i.i2773.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !31
  %i.bpz = icmp slt i32 %.pre7912, %i.bpy
  br i1 %i.bpz, label %.critedge2252, label %bb.ku

bb.ku:                                            ; preds = %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit2781
  %i.bqa = getelementptr inbounds nuw i8, ptr %.19.i.i.i2773, i64 48
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !311 ; 3 uses
  %.not2178 = icmp eq ptr %i.bqb, null
  br i1 %.not2178, label %.critedge2252, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 208
  %i.bqd = load float, ptr %i.bqc, align 8, !tbaa !108
  %i.bqe = load ptr, ptr %33, align 8, !tbaa !63
  store float %i.bqd, ptr %i.bqe, align 4, !tbaa !66
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqb, i64 212
  %i.bqg = load i32, ptr %i.bqf, align 4, !tbaa !109
  store i32 %i.bqg, ptr %i.bny, align 4, !tbaa !31
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit

.critedge2252:                                    ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2778, %bb.kt, %bb.ku, %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit2781
  %i.bqh = sext i32 %.pre7912 to i64              ; 3 uses
  %i.bqi = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.bqj = load ptr, ptr %11, align 8, !tbaa !21  ; 2 uses
  %i.bqk = ptrtoint ptr %i.bqi to i64
  %i.bql = ptrtoint ptr %i.bqj to i64
  %i.bqm = sub i64 %i.bqk, %i.bql
  %i.bqn = ashr exact i64 %i.bqm, 2               ; 2 uses
  %.not.i.i2782 = icmp ugt i64 %i.bqn, %i.bqh
  br i1 %.not.i.i2782, label %bb.kw, label %.invoke10939

.invoke10939:                                     ; preds = %bb.mb, %.critedge2252, %.critedge2252.1
  %i.bqo = phi i64 [ %i.btx, %.critedge2252.1 ], [ %i.bqh, %.critedge2252 ], [ %i.bvw, %bb.mb ]
  %i.bqp = phi i64 [ %i.bud, %.critedge2252.1 ], [ %i.bqn, %.critedge2252 ], [ %i.bwc, %bb.mb ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef %i.bqo, i64 noundef %i.bqp) #25
          to label %.cont10940 unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp

.cont10940:                                       ; preds = %.invoke10939
  unreachable

bb.kw:                                            ; preds = %.critedge2252
  %i.bqq = getelementptr inbounds nuw [4 x i8], ptr %i.bqj, i64 %i.bqh
  %i.bqr = load i32, ptr %i.bqq, align 4, !tbaa !31 ; 2 uses
  %i.bqs = icmp sgt i32 %i.bqr, -1
  br i1 %i.bqs, label %bb.kx, label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit

bb.kx:                                            ; preds = %bb.kw
  %i.bqt = zext nneg i32 %i.bqr to i64
  %i.bqu = load ptr, ptr %12, align 8, !tbaa !30
  %i.bqv = getelementptr inbounds nuw [16 x i8], ptr %i.bqu, i64 %i.bqt
  %i.bqw = load ptr, ptr %i.bqv, align 8, !tbaa !45 ; 4 uses
  %i.bqx = icmp eq ptr %i.bqw, null
  br i1 %i.bqx, label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.bqy = load ptr, ptr %33, align 8, !tbaa !63  ; 3 uses
  %i.bqz = call ptr @__dynamic_cast(ptr nonnull %i.bqw, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060514Conv2Int8LayerE, i64 0) #23 ; 3 uses
  %.not.not.i = icmp eq ptr %i.bqz, null
  br i1 %.not.not.i, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 168
  %i.brb = load float, ptr %i.bra, align 8, !tbaa !112
  store float %i.brb, ptr %i.bqy, align 4, !tbaa !66
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqz, i64 160
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread

bb.la:                                            ; preds = %bb.ky
  %i.brd = call ptr @__dynamic_cast(ptr nonnull %i.bqw, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerE, i64 0) #23 ; 3 uses
  %.not30.not.i = icmp eq ptr %i.brd, null
  br i1 %.not30.not.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 208
  %i.brf = load float, ptr %i.bre, align 8, !tbaa !108
  store float %i.brf, ptr %i.bqy, align 4, !tbaa !66
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brd, i64 212
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread

bb.lc:                                            ; preds = %bb.la
  %i.brh = call ptr @__dynamic_cast(ptr nonnull %i.bqw, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521InnerProductLayerInt8E, i64 0) #23 ; 3 uses
  %.not31.not.i = icmp eq ptr %i.brh, null
  br i1 %.not31.not.i, label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 172
  %i.brj = load float, ptr %i.bri, align 4, !tbaa !115
  store float %i.brj, ptr %i.bqy, align 4, !tbaa !66
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brh, i64 164
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread

_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread: ; preds = %bb.kz, %bb.lb, %bb.ld
  %.sink.in.i = phi ptr [ %i.brk, %bb.ld ], [ %i.brg, %bb.lb ], [ %i.brc, %bb.kz ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !31
  store i32 %.sink.i, ptr %i.bny, align 4, !tbaa !31
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit

_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit: ; preds = %bb.kw, %bb.kx, %bb.kv, %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread, %bb.lc, %bb.ks
  %i.brl = phi ptr [ %i.bpr, %bb.ks ], [ %i.bny, %bb.kv ], [ %i.bny, %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread ], [ %i.bny, %bb.lc ], [ %i.bny, %bb.kx ], [ %i.bny, %bb.kw ] ; 2 uses
  %.31808 = phi i8 [ %i.bov, %bb.ks ], [ 1, %bb.kv ], [ 1, %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread ], [ 0, %bb.lc ], [ 0, %bb.kx ], [ 0, %bb.kw ] ; 3 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %.sroa.03349.0.lcssa, i64 8 ; 4 uses
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !272 ; 2 uses
  %.not2177.1 = icmp eq ptr %i.brn, null
  br i1 %.not2177.1, label %bb.lm, label %bb.le

bb.le:                                            ; preds = %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit
  %i.bro = load ptr, ptr %0, align 8, !tbaa !20
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brn, i64 32
  %i.brq = load ptr, ptr %i.brp, align 8, !tbaa !49
  %.sroa.0894.0.copyload.1 = load i32, ptr %i.brq, align 4, !tbaa !31
  %i.brr = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bro, i32 %.sroa.0894.0.copyload.1)
          to label %bb.lf unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp

bb.lf:                                            ; preds = %bb.le
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 88
  %i.brt = load i32, ptr %i.brs, align 8, !tbaa !277 ; 2 uses
  %i.bru = icmp slt i32 %i.brt, 0
  br i1 %i.bru, label %bb.lg, label %bb.lk

bb.lg:                                            ; preds = %bb.lf
  %i.brv = load ptr, ptr %0, align 8, !tbaa !20
  %i.brw = load ptr, ptr %i.brm, align 8, !tbaa !272
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brw, i64 32
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !49
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bry, i64 8
  %.sroa.0891.0.copyload.1 = load i32, ptr %i.brz, align 4, !tbaa !31
  %i.bsa = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.brv, i32 %.sroa.0891.0.copyload.1)
          to label %bb.lh unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.lh:                                            ; preds = %bb.lg
  %i.bsb = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.bsa)
          to label %bb.li unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp

bb.li:                                            ; preds = %bb.lh
  br i1 %i.bsb, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsc = load i32, ptr %i.bsa, align 8, !tbaa !73
  %i.bsd = and i32 %i.bsc, 4095
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li, %bb.lf
  %.01810.1 = phi i32 [ %i.brt, %bb.lf ], [ %i.bsd, %bb.lj ], [ 0, %bb.li ]
  %i.bse = trunc nuw i8 %.31808 to i1
  %i.bsf = icmp samesign ult i32 %.01810.1, 2
  %narrow.1 = select i1 %i.bse, i1 %i.bsf, i1 false
  %i.bsg = zext i1 %narrow.1 to i8
  %i.bsh = load ptr, ptr %0, align 8, !tbaa !20
  %i.bsi = load ptr, ptr %i.brm, align 8, !tbaa !272
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsi, i64 32
  %i.bsk = load ptr, ptr %i.bsj, align 8, !tbaa !49
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 4
  %.sroa.0890.0.copyload.1 = load i32, ptr %i.bsl, align 4, !tbaa !31
  %i.bsm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bsh, i32 %.sroa.0890.0.copyload.1)
          to label %_ZN2cv3Mat2atIfEERT_i.exit2762.1 unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp

_ZN2cv3Mat2atIfEERT_i.exit2762.1:                 ; preds = %bb.lk
  %.0.i2761.in.1 = getelementptr inbounds nuw i8, ptr %i.bsm, i64 24
  %.0.i2761.1 = load ptr, ptr %.0.i2761.in.1, align 8, !tbaa !72
  %i.bsn = load float, ptr %.0.i2761.1, align 4, !tbaa !66
  %i.bso = load ptr, ptr %33, align 8, !tbaa !63
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 4
  store float %i.bsn, ptr %i.bsp, align 4, !tbaa !66
  %i.bsq = load ptr, ptr %0, align 8, !tbaa !20
  %i.bsr = load ptr, ptr %i.brm, align 8, !tbaa !272
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsr, i64 32
  %i.bst = load ptr, ptr %i.bss, align 8, !tbaa !49
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 8
  %.sroa.0886.0.copyload.1 = load i32, ptr %i.bsu, align 4, !tbaa !31
  %i.bsv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bsq, i32 %.sroa.0886.0.copyload.1)
          to label %bb.ll unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ll:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit2762.1
  %i.bsw = load i32, ptr %i.bsv, align 8, !tbaa !73
  %i.bsx = and i32 %i.bsw, 31
  %i.bsy = icmp eq i32 %i.bsx, 0
  %.0.i2764.in.1 = getelementptr inbounds nuw i8, ptr %i.bsv, i64 24
  %.0.i2764.1 = load ptr, ptr %.0.i2764.in.1, align 8, !tbaa !72
  %i.bsz = load i8, ptr %.0.i2764.1, align 1, !tbaa !74 ; 2 uses
  %i.bta = zext i8 %i.bsz to i32
  %i.btb = sext i8 %i.bsz to i32
  %i.btc = select i1 %i.bsy, i32 %i.bta, i32 %i.btb
  %i.btd = load ptr, ptr %34, align 8, !tbaa !21
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btd, i64 4
  store i32 %i.btc, ptr %i.bte, align 4, !tbaa !31
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.1

bb.lm:                                            ; preds = %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit
  %i.btf = load ptr, ptr %i.bej, align 8, !tbaa !49
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 4
  %i.bth = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i2769.1 = icmp eq ptr %i.bth, null
  %.pre7913 = load i32, ptr %i.btg, align 4, !tbaa !31 ; 3 uses
  br i1 %.not10.i.i.i2769.1, label %.critedge2252.1, label %.lr.ph.i.i.i2770.1

.lr.ph.i.i.i2770.1:                               ; preds = %bb.lm, %.lr.ph.i.i.i2770.1
  %.012.i.i.i2771.1 = phi ptr [ %.1.i.i.i2776.1, %.lr.ph.i.i.i2770.1 ], [ %i.bth, %bb.lm ] ; 4 uses
  %.0811.i.i.i2772.1 = phi ptr [ %.19.i.i.i2773.1, %.lr.ph.i.i.i2770.1 ], [ %i.az, %bb.lm ] ; 2 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %.012.i.i.i2771.1, i64 32
  %i.btj = load i32, ptr %i.bti, align 4, !tbaa !31
  %i.btk = icmp slt i32 %i.btj, %.pre7913         ; 3 uses
  %.19.i.i.i2773.1 = select i1 %i.btk, ptr %.0811.i.i.i2772.1, ptr %.012.i.i.i2771.1 ; 3 uses
  %.1.in.v.i.i.i2774.1 = select i1 %i.btk, i64 24, i64 16
  %.1.in.i.i.i2775.1 = getelementptr inbounds nuw i8, ptr %.012.i.i.i2771.1, i64 %.1.in.v.i.i.i2774.1
  %.1.i.i.i2776.1 = load ptr, ptr %.1.in.i.i.i2775.1, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i2777.1 = icmp eq ptr %.1.i.i.i2776.1, null
  br i1 %.not.i.i.i2777.1, label %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2778.1, label %.lr.ph.i.i.i2770.1, !llvm.loop !0

_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2778.1: ; preds = %.lr.ph.i.i.i2770.1
  %i.btl = icmp eq ptr %.19.i.i.i2773.1, %i.az
  br i1 %i.btl, label %.critedge2252.1, label %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit2781.1

_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit2781.1: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2778.1
  %.19.i.i.i2773.sroa.sel.v.1.sroa.sel.v.sroa.sel.v = select i1 %i.btk, ptr %.0811.i.i.i2772.1, ptr %.012.i.i.i2771.1
  %.19.i.i.i2773.sroa.sel.v.1.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i2773.sroa.sel.v.1.sroa.sel.v.sroa.sel.v, i64 32
  %i.btm = load i32, ptr %.19.i.i.i2773.sroa.sel.v.1.sroa.sel.v.sroa.sel, align 4, !tbaa !31
  %i.btn = icmp slt i32 %.pre7913, %i.btm
  br i1 %i.btn, label %.critedge2252.1, label %bb.ln

bb.ln:                                            ; preds = %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit2781.1
  %i.bto = getelementptr inbounds nuw i8, ptr %.19.i.i.i2773.1, i64 48
  %i.btp = load ptr, ptr %i.bto, align 8, !tbaa !311 ; 3 uses
  %.not2178.1 = icmp eq ptr %i.btp, null
  br i1 %.not2178.1, label %.critedge2252.1, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 208
  %i.btr = load float, ptr %i.btq, align 8, !tbaa !108
  %i.bts = load ptr, ptr %33, align 8, !tbaa !63
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bts, i64 4
  store float %i.btr, ptr %i.btt, align 4, !tbaa !66
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btp, i64 212
  %i.btv = load i32, ptr %i.btu, align 4, !tbaa !109
  %i.btw = getelementptr inbounds nuw i8, ptr %i.brl, i64 4
  store i32 %i.btv, ptr %i.btw, align 4, !tbaa !31
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.1

.critedge2252.1:                                  ; preds = %bb.ln, %_ZNSt3mapIiSt4pairIN2cv3dnn14dnn5_v202606053ArgEPNS3_17Eltwise2Int8LayerEESt4lessIiESaIS0_IKiS7_EEE4findERSA_.exit2781.1, %_ZNSt8_Rb_treeIiSt4pairIKiS0_IN2cv3dnn14dnn5_v202606053ArgEPNS4_17Eltwise2Int8LayerEEESt10_Select1stIS9_ESt4lessIiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2778.1, %bb.lm
  %i.btx = sext i32 %.pre7913 to i64              ; 3 uses
  %i.bty = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.btz = load ptr, ptr %11, align 8, !tbaa !21  ; 2 uses
  %i.bua = ptrtoint ptr %i.bty to i64
  %i.bub = ptrtoint ptr %i.btz to i64
  %i.buc = sub i64 %i.bua, %i.bub
  %i.bud = ashr exact i64 %i.buc, 2               ; 2 uses
  %.not.i.i2782.1 = icmp ugt i64 %i.bud, %i.btx
  br i1 %.not.i.i2782.1, label %bb.lp, label %.invoke10939

bb.lp:                                            ; preds = %.critedge2252.1
  %i.bue = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %i.btx
  %i.buf = load i32, ptr %i.bue, align 4, !tbaa !31 ; 2 uses
  %i.bug = icmp sgt i32 %i.buf, -1
  br i1 %i.bug, label %bb.lq, label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.1.thread

bb.lq:                                            ; preds = %bb.lp
  %i.buh = zext nneg i32 %i.buf to i64
  %i.bui = load ptr, ptr %12, align 8, !tbaa !30
  %i.buj = getelementptr inbounds nuw [16 x i8], ptr %i.bui, i64 %i.buh
  %i.buk = load ptr, ptr %i.buj, align 8, !tbaa !45 ; 4 uses
  %i.bul = icmp eq ptr %i.buk, null
  br i1 %i.bul, label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.1.thread, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bum = load ptr, ptr %33, align 8, !tbaa !63
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 4 ; 3 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %i.brl, i64 4
  %i.bup = call ptr @__dynamic_cast(ptr nonnull %i.buk, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060514Conv2Int8LayerE, i64 0) #23 ; 3 uses
  %.not.not.i.1 = icmp eq ptr %i.bup, null
  br i1 %.not.not.i.1, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bup, i64 168
  %i.bur = load float, ptr %i.buq, align 8, !tbaa !112
  store float %i.bur, ptr %i.bun, align 4, !tbaa !66
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bup, i64 160
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread.1

bb.lt:                                            ; preds = %bb.lr
  %i.but = call ptr @__dynamic_cast(ptr nonnull %i.buk, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060517Eltwise2Int8LayerE, i64 0) #23 ; 3 uses
  %.not30.not.i.1 = icmp eq ptr %i.but, null
  br i1 %.not30.not.i.1, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.buu = getelementptr inbounds nuw i8, ptr %i.but, i64 208
  %i.buv = load float, ptr %i.buu, align 8, !tbaa !108
  store float %i.buv, ptr %i.bun, align 4, !tbaa !66
  %i.buw = getelementptr inbounds nuw i8, ptr %i.but, i64 212
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread.1

bb.lv:                                            ; preds = %bb.lt
  %i.bux = call ptr @__dynamic_cast(ptr nonnull %i.buk, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521InnerProductLayerInt8E, i64 0) #23 ; 3 uses
  %.not31.not.i.1 = icmp eq ptr %i.bux, null
  br i1 %.not31.not.i.1, label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.1.thread, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 172
  %i.buz = load float, ptr %i.buy, align 4, !tbaa !115
  store float %i.buz, ptr %i.bun, align 4, !tbaa !66
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bux, i64 164
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread.1

_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread.1: ; preds = %bb.lw, %bb.lu, %bb.ls
  %.sink.in.i.1 = phi ptr [ %i.bva, %bb.lw ], [ %i.buw, %bb.lu ], [ %i.bus, %bb.ls ]
  %.sink.i.1 = load i32, ptr %.sink.in.i.1, align 4, !tbaa !31
  store i32 %.sink.i.1, ptr %i.buo, align 4, !tbaa !31
  br label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.1

_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.1: ; preds = %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread.1, %bb.lo, %bb.ll
  %.31808.1 = phi i8 [ %i.bsg, %bb.ll ], [ %.31808, %bb.lo ], [ %.31808, %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.thread.1 ]
  %i.bvb = trunc nuw i8 %.31808.1 to i1
  br i1 %i.bvb, label %bb.lx, label %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.1.thread

bb.lx:                                            ; preds = %_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ19getInt8OutputParamsEPNS1_5LayerERfRi.exit.1
  %i.bvc = load ptr, ptr %0, align 8, !tbaa !20
  %i.bvd = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 4
  %.sroa.0875.0.copyload = load i32, ptr %i.bve, align 4, !tbaa !31
  %i.bvf = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bvc, i32 %.sroa.0875.0.copyload)
          to label %_ZN2cv3Mat2atIfEERT_i.exit2787 unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp

_ZN2cv3Mat2atIfEERT_i.exit2787:                   ; preds = %bb.lx
  %.0.i2786.in = getelementptr inbounds nuw i8, ptr %i.bvf, i64 24
  %.0.i2786 = load ptr, ptr %.0.i2786.in, align 8, !tbaa !72
  %i.bvg = load float, ptr %.0.i2786, align 4, !tbaa !66 ; 2 uses
  %i.bvh = load ptr, ptr %0, align 8, !tbaa !20
  %i.bvi = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 8
  %.sroa.0871.0.copyload = load i32, ptr %i.bvj, align 4, !tbaa !31
  %i.bvk = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.bvh, i32 %.sroa.0871.0.copyload)
          to label %bb.ly unwind label %.loopexit.split-lp3796.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ly:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit2787
  %i.bvl = load i32, ptr %i.bvk, align 8, !tbaa !73
  %i.bvm = and i32 %i.bvl, 31
  %i.bvn = icmp eq i32 %i.bvm, 0
  br i1 %i.bvn, label %bb.lz, label %_ZNK2cv3Mat2atIaEERKT_i.exit2790

bb.lz:                                            ; preds = %bb.ly
  %i.bvo = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIhEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.bvk, i32 noundef 0)
  %i.bvp = load i8, ptr %i.bvo, align 1, !tbaa !74
  %i.bvq = zext i8 %i.bvp to i32
  br label %bb.ma

end_hunk_1
begin_hunk_2_@_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #23
  %i.cvi = load i32, ptr %i.cvd, align 4, !tbaa !31 ; 2 uses
  store i32 %i.cvi, ptr %67, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #23
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cvd, i64 4
  %i.cvk = load i32, ptr %i.cvj, align 4, !tbaa !31 ; 2 uses
  store i32 %i.cvk, ptr %68, align 4, !tbaa !31
  %i.cvl = sext i32 %i.cvi to i64                 ; 3 uses
  %i.cvm = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.cvn = load ptr, ptr %11, align 8, !tbaa !21  ; 3 uses
  %i.cvo = ptrtoint ptr %i.cvm to i64
  %i.cvp = ptrtoint ptr %i.cvn to i64
  %i.cvq = sub i64 %i.cvo, %i.cvp
  %i.cvr = ashr exact i64 %i.cvq, 2               ; 4 uses
  %.not.i.i2919 = icmp ugt i64 %i.cvr, %i.cvl
  br i1 %.not.i.i2919, label %bb.vd, label %.invoke10212

bb.vd:                                            ; preds = %bb.vc
  %i.cvs = getelementptr inbounds nuw [4 x i8], ptr %i.cvn, i64 %i.cvl
  %i.cvt = load i32, ptr %i.cvs, align 4, !tbaa !31 ; 3 uses
  %i.cvu = sext i32 %i.cvk to i64                 ; 3 uses
  %.not.i.i2922 = icmp ugt i64 %i.cvr, %i.cvu
  br i1 %.not.i.i2922, label %bb.ve, label %.invoke10212

bb.ve:                                            ; preds = %bb.vd
  %i.cvv = getelementptr inbounds nuw [4 x i8], ptr %i.cvn, i64 %i.cvu
  %i.cvw = load i32, ptr %i.cvv, align 4, !tbaa !31 ; 3 uses
  %i.cvx = icmp sgt i32 %i.cvt, -1
  br i1 %i.cvx, label %bb.vf, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2928

bb.vf:                                            ; preds = %bb.ve
  %i.cvy = zext nneg i32 %i.cvt to i64            ; 3 uses
  %i.cvz = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.cwa = load ptr, ptr %12, align 8, !tbaa !30  ; 2 uses
  %i.cwb = ptrtoint ptr %i.cvz to i64
  %i.cwc = ptrtoint ptr %i.cwa to i64
  %i.cwd = sub i64 %i.cwb, %i.cwc
  %i.cwe = ashr exact i64 %i.cwd, 4               ; 2 uses
  %.not.i.i.i2925 = icmp ugt i64 %i.cwe, %i.cvy
  br i1 %.not.i.i.i2925, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2926, label %.invoke10212

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2926: ; preds = %bb.vf
  %i.cwf = getelementptr inbounds nuw [16 x i8], ptr %i.cwa, i64 %i.cvy
  %i.cwg = load ptr, ptr %i.cwf, align 8, !tbaa !45 ; 2 uses
  %i.cwh = icmp eq ptr %i.cwg, null
  br i1 %i.cwh, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2928, label %bb.vg

bb.vg:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2926
  %i.cwi = call ptr @__dynamic_cast(ptr nonnull %i.cwg, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerE, i64 0) #23
  br label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2928

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2928: ; preds = %bb.vg, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2926, %bb.ve
  %i.cwj = phi ptr [ null, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2926 ], [ %i.cwi, %bb.vg ], [ null, %bb.ve ] ; 3 uses
  %i.cwk = icmp sgt i32 %i.cvw, -1
  br i1 %i.cwk, label %bb.vh, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2932

bb.vh:                                            ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2928
  %i.cwl = zext nneg i32 %i.cvw to i64            ; 3 uses
  %i.cwm = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.cwn = load ptr, ptr %12, align 8, !tbaa !30  ; 2 uses
  %i.cwo = ptrtoint ptr %i.cwm to i64
  %i.cwp = ptrtoint ptr %i.cwn to i64
  %i.cwq = sub i64 %i.cwo, %i.cwp
  %i.cwr = ashr exact i64 %i.cwq, 4               ; 2 uses
  %.not.i.i.i2929 = icmp ugt i64 %i.cwr, %i.cwl
  br i1 %.not.i.i.i2929, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2930, label %.invoke10212

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2930: ; preds = %bb.vh
  %i.cws = getelementptr inbounds nuw [16 x i8], ptr %i.cwn, i64 %i.cwl
  %i.cwt = load ptr, ptr %i.cws, align 8, !tbaa !45 ; 2 uses
  %i.cwu = icmp eq ptr %i.cwt, null
  br i1 %i.cwu, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2932, label %bb.vi

bb.vi:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2930
  %i.cwv = call ptr @__dynamic_cast(ptr nonnull %i.cwt, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerE, i64 0) #23
  br label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2932

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2932: ; preds = %bb.vi, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2930, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2928
  %i.cww = phi ptr [ null, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2930 ], [ %i.cwv, %bb.vi ], [ null, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2928 ] ; 3 uses
  %i.cwx = load ptr, ptr %i.ji, align 8, !tbaa !288 ; 2 uses
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  %i.cwz = load ptr, ptr %i.cwy, align 8, !tbaa !288
  %i.cxa = icmp eq ptr %i.cwx, %i.cwz
  br i1 %i.cxa, label %.thread3543, label %bb.vj

bb.vj:                                            ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2932
  %i.cxb = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0704.0.copyload = load i32, ptr %i.cwx, align 4, !tbaa !31
  %i.cxc = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.cxb, i32 %.sroa.0704.0.copyload)
          to label %bb.vk unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vk:                                            ; preds = %bb.vj
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cxc, i64 88
  %i.cxe = load i32, ptr %i.cxd, align 8, !tbaa !277 ; 3 uses
  %i.cxf = icmp slt i32 %i.cxe, 0
  br i1 %i.cxf, label %.thread3543, label %bb.vr

.thread3543:                                      ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2932, %bb.vk
  %i.cxg = phi i32 [ %i.cxe, %bb.vk ], [ -1, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2932 ]
  %i.cxh = load ptr, ptr %0, align 8, !tbaa !20
  %i.cxi = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cxi, i64 8
  %.sroa.0703.0.copyload = load i32, ptr %i.cxj, align 4, !tbaa !31
  %i.cxk = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.cxh, i32 %.sroa.0703.0.copyload)
          to label %bb.vl unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vl:                                            ; preds = %.thread3543
  br i1 %i.cxk, label %bb.vm, label %bb.vr

bb.vm:                                            ; preds = %bb.vl
  %i.cxl = load ptr, ptr %0, align 8, !tbaa !20
  %i.cxm = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.cxn = getelementptr inbounds nuw i8, ptr %i.cxm, i64 8
  %.sroa.0700.0.copyload = load i32, ptr %i.cxn, align 4, !tbaa !31
  %i.cxo = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.cxl, i32 %.sroa.0700.0.copyload)
          to label %bb.vn unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.vn:                                            ; preds = %bb.vm
  %i.cxp = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.cxo)
          to label %bb.vo unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vo:                                            ; preds = %bb.vn
  br i1 %i.cxp, label %bb.vr, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.cxq = load i32, ptr %i.cxo, align 8, !tbaa !73
  %i.cxr = and i32 %i.cxq, 4095
  br label %bb.vr

bb.vq:                                            ; preds = %bb.uz
  %i.cxs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aoo

bb.vr:                                            ; preds = %bb.vp, %bb.vo, %bb.vl, %bb.vk
  %.01777 = phi i32 [ %i.cxe, %bb.vk ], [ %i.cxg, %bb.vl ], [ %i.cxr, %bb.vp ], [ 1, %bb.vo ] ; 2 uses
  %.not3710 = icmp eq ptr %i.cwj, null
  br i1 %.not3710, label %.thread3553, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cwj, i64 32 ; 8 uses
  %i.cxu = load ptr, ptr %i.cxt, align 8, !tbaa !288 ; 2 uses
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cwj, i64 40 ; 4 uses
  %i.cxw = load ptr, ptr %i.cxv, align 8, !tbaa !288
  %i.cxx = icmp eq ptr %i.cxu, %i.cxw
  br i1 %i.cxx, label %.thread8570, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.cxy = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0695.0.copyload = load i32, ptr %i.cxu, align 4, !tbaa !31
  %i.cxz = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.cxy, i32 %.sroa.0695.0.copyload)
          to label %bb.vu unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vu:                                            ; preds = %bb.vt
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxz, i64 88
  %i.cyb = load i32, ptr %i.cya, align 8, !tbaa !277 ; 3 uses
  %i.cyc = icmp slt i32 %i.cyb, 0
  br i1 %i.cyc, label %.thread8570, label %bb.wb

.thread8570:                                      ; preds = %bb.vs, %bb.vu
  %i.cyd = phi i32 [ %i.cyb, %bb.vu ], [ -1, %bb.vs ] ; 2 uses
  %i.cye = load ptr, ptr %i.cxv, align 8, !tbaa !48
  %i.cyf = load ptr, ptr %i.cxt, align 8, !tbaa !49 ; 2 uses
  %i.cyg = ptrtoint ptr %i.cye to i64
  %i.cyh = ptrtoint ptr %i.cyf to i64
  %i.cyi = sub i64 %i.cyg, %i.cyh
  %i.cyj = icmp ugt i64 %i.cyi, 8
  br i1 %i.cyj, label %bb.vv, label %bb.wb

bb.vv:                                            ; preds = %.thread8570
  %i.cyk = load ptr, ptr %0, align 8, !tbaa !20
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyf, i64 8
  %.sroa.0694.0.copyload = load i32, ptr %i.cyl, align 4, !tbaa !31
  %i.cym = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.cyk, i32 %.sroa.0694.0.copyload)
          to label %bb.vw unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vw:                                            ; preds = %bb.vv
  br i1 %i.cym, label %bb.vx, label %bb.wb

bb.vx:                                            ; preds = %bb.vw
  %i.cyn = load ptr, ptr %0, align 8, !tbaa !20
  %i.cyo = load ptr, ptr %i.cxt, align 8, !tbaa !49
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cyo, i64 8
  %.sroa.0691.0.copyload = load i32, ptr %i.cyp, align 4, !tbaa !31
  %i.cyq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.cyn, i32 %.sroa.0691.0.copyload)
          to label %bb.vy unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.vy:                                            ; preds = %bb.vx
  %i.cyr = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.cyq)
          to label %bb.vz unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vz:                                            ; preds = %bb.vy
  br i1 %i.cyr, label %bb.wb, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.cys = load i32, ptr %i.cyq, align 8, !tbaa !73
  %i.cyt = and i32 %i.cys, 4095
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wa, %bb.vz, %bb.vw, %.thread8570, %bb.vu
  %.01776 = phi i32 [ %i.cyb, %bb.vu ], [ %i.cyd, %bb.vw ], [ %i.cyd, %.thread8570 ], [ %i.cyt, %bb.wa ], [ 0, %bb.vz ]
  %.not3711 = icmp eq ptr %i.cww, null
  br i1 %.not3711, label %.thread3553, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  %i.cyu = load ptr, ptr %i.cxv, align 8, !tbaa !48
  %i.cyv = load ptr, ptr %i.cxt, align 8, !tbaa !49 ; 2 uses
  %i.cyw = ptrtoint ptr %i.cyu to i64
  %i.cyx = ptrtoint ptr %i.cyv to i64
  %i.cyy = sub i64 %i.cyw, %i.cyx
  %i.cyz = icmp ugt i64 %i.cyy, 8
  br i1 %i.cyz, label %bb.wd, label %.thread3553

bb.wd:                                            ; preds = %bb.wc
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cww, i64 32 ; 7 uses
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cww, i64 40 ; 3 uses
  %i.czc = load ptr, ptr %i.czb, align 8, !tbaa !48
  %i.czd = load ptr, ptr %i.cza, align 8, !tbaa !49
  %i.cze = ptrtoint ptr %i.czc to i64
  %i.czf = ptrtoint ptr %i.czd to i64
  %i.czg = sub i64 %i.cze, %i.czf
  %i.czh = icmp ugt i64 %i.czg, 8
  br i1 %i.czh, label %bb.we, label %.thread3553

bb.we:                                            ; preds = %bb.wd
  %i.czi = load ptr, ptr %0, align 8, !tbaa !20
  %i.czj = getelementptr inbounds nuw i8, ptr %i.cyv, i64 4
  %.sroa.01.0.copyload.i2934 = load i32, ptr %i.czj, align 4, !tbaa !31
  %i.czk = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.czi, i32 %.sroa.01.0.copyload.i2934)
          to label %.noexc2937 unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2937:                                       ; preds = %bb.we
  br i1 %i.czk, label %bb.wf, label %.thread3553

bb.wf:                                            ; preds = %.noexc2937
  %i.czl = load ptr, ptr %i.cxv, align 8, !tbaa !48
  %i.czm = load ptr, ptr %i.cxt, align 8, !tbaa !49 ; 2 uses
  %i.czn = ptrtoint ptr %i.czl to i64
  %i.czo = ptrtoint ptr %i.czm to i64
  %i.czp = sub i64 %i.czn, %i.czo
  %i.czq = icmp ugt i64 %i.czp, 8
  br i1 %i.czq, label %bb.wg, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2939

bb.wg:                                            ; preds = %bb.wf
  %i.czr = load ptr, ptr %0, align 8, !tbaa !20
  %i.czs = getelementptr inbounds nuw i8, ptr %i.czm, i64 8
  %.sroa.0.0.copyload.i2936 = load i32, ptr %i.czs, align 4, !tbaa !31
  %i.czt = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.czr, i32 %.sroa.0.0.copyload.i2936)
          to label %.noexc2938 unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2938:                                       ; preds = %bb.wg
  br i1 %i.czt, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2939, label %.thread3553

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2939: ; preds = %bb.wf, %.noexc2938
  %i.czu = load ptr, ptr %i.czb, align 8, !tbaa !48
  %i.czv = load ptr, ptr %i.cza, align 8, !tbaa !49 ; 2 uses
  %i.czw = ptrtoint ptr %i.czu to i64
  %i.czx = ptrtoint ptr %i.czv to i64
  %i.czy = sub i64 %i.czw, %i.czx
  %i.czz = icmp ult i64 %i.czy, 5
  br i1 %i.czz, label %.thread3553, label %bb.wh

bb.wh:                                            ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2939
  %i.daa = load ptr, ptr %0, align 8, !tbaa !20
  %i.dab = getelementptr inbounds nuw i8, ptr %i.czv, i64 4
  %.sroa.01.0.copyload.i2941 = load i32, ptr %i.dab, align 4, !tbaa !31
  %i.dac = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.daa, i32 %.sroa.01.0.copyload.i2941)
          to label %.noexc2944 unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2944:                                       ; preds = %bb.wh
  br i1 %i.dac, label %bb.wi, label %.thread3553

bb.wi:                                            ; preds = %.noexc2944
  %i.dad = load ptr, ptr %i.czb, align 8, !tbaa !48
  %i.dae = load ptr, ptr %i.cza, align 8, !tbaa !49 ; 3 uses
  %i.daf = ptrtoint ptr %i.dad to i64
  %i.dag = ptrtoint ptr %i.dae to i64
  %i.dah = sub i64 %i.daf, %i.dag
  %i.dai = icmp ugt i64 %i.dah, 8
  br i1 %i.dai, label %bb.wj, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2946

bb.wj:                                            ; preds = %bb.wi
  %i.daj = load ptr, ptr %0, align 8, !tbaa !20
  %i.dak = getelementptr inbounds nuw i8, ptr %i.dae, i64 8
  %.sroa.0.0.copyload.i2943 = load i32, ptr %i.dak, align 4, !tbaa !31
  %i.dal = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.daj, i32 %.sroa.0.0.copyload.i2943)
          to label %.noexc2945 unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2945:                                       ; preds = %bb.wj
  br i1 %i.dal, label %.noexc2945._ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2946_crit_edge, label %.thread3553

.noexc2945._ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2946_crit_edge: ; preds = %.noexc2945
  %.pre7922 = load ptr, ptr %i.cza, align 8, !tbaa !49
  br label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2946

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2946: ; preds = %.noexc2945._ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2946_crit_edge, %bb.wi
  %i.dam = phi ptr [ %.pre7922, %.noexc2945._ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2946_crit_edge ], [ %i.dae, %bb.wi ]
  %i.dan = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0689.0.copyload = load i32, ptr %i.dam, align 4, !tbaa !31
  %i.dao = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dan, i32 %.sroa.0689.0.copyload)
          to label %bb.wk unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wk:                                            ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit2946
  %i.dap = or i32 %.01776, %.01777
  %i.daq = icmp ult i32 %i.dap, 2
  %or.cond94 = and i1 %i.daq, %i.dao
  br i1 %or.cond94, label %bb.wl, label %.thread3553

bb.wl:                                            ; preds = %bb.wk
  %i.dar = load i32, ptr %67, align 4, !tbaa !51
  %i.das = sext i32 %i.dar to i64                 ; 3 uses
  %i.dat = load ptr, ptr %i.bk, align 8, !tbaa !32
  %i.dau = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 3 uses
  %i.dav = ptrtoint ptr %i.dat to i64
  %i.daw = ptrtoint ptr %i.dau to i64
  %i.dax = sub i64 %i.dav, %i.daw
  %i.day = ashr exact i64 %i.dax, 2               ; 4 uses
  %.not.i.i2947 = icmp ugt i64 %i.day, %i.das
  br i1 %.not.i.i2947, label %bb.wm, label %.invoke10212

bb.wm:                                            ; preds = %bb.wl
  %i.daz = getelementptr inbounds nuw [4 x i8], ptr %i.dau, i64 %i.das
  %i.dba = load i32, ptr %i.daz, align 4, !tbaa !31
  %i.dbb = icmp eq i32 %i.dba, 1
  br i1 %i.dbb, label %bb.wn, label %.thread3553

bb.wn:                                            ; preds = %bb.wm
  %i.dbc = load i32, ptr %68, align 4, !tbaa !51
  %i.dbd = sext i32 %i.dbc to i64                 ; 3 uses
  %.not.i.i2950 = icmp ugt i64 %i.day, %i.dbd
  br i1 %.not.i.i2950, label %bb.wo, label %.invoke10212

.invoke10212:                                     ; preds = %bb.wn, %bb.wl, %bb.vh, %bb.vf, %bb.vd, %bb.vc
  %i.dbe = phi i64 [ %i.das, %bb.wl ], [ %i.cwl, %bb.vh ], [ %i.cvy, %bb.vf ], [ %i.cvu, %bb.vd ], [ %i.cvl, %bb.vc ], [ %i.dbd, %bb.wn ]
  %i.dbf = phi i64 [ %i.day, %bb.wl ], [ %i.cwr, %bb.vh ], [ %i.cwe, %bb.vf ], [ %i.cvr, %bb.vd ], [ %i.cvr, %bb.vc ], [ %i.day, %bb.wn ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef %i.dbe, i64 noundef %i.dbf) #25
          to label %.cont10213 unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont10213:                                       ; preds = %.invoke10212
  unreachable

bb.wo:                                            ; preds = %bb.wn
  %i.dbg = getelementptr inbounds nuw [4 x i8], ptr %i.dau, i64 %i.dbd
  %i.dbh = load i32, ptr %i.dbg, align 4, !tbaa !31
  %i.dbi = icmp eq i32 %i.dbh, 1
  br i1 %i.dbi, label %bb.wp, label %.thread3553

bb.wp:                                            ; preds = %bb.wo
  %i.dbj = load ptr, ptr %0, align 8, !tbaa !20
  %i.dbk = load ptr, ptr %i.cxt, align 8, !tbaa !49
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbk, i64 4
  %.sroa.0688.0.copyload = load i32, ptr %i.dbl, align 4, !tbaa !31
  %i.dbm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dbj, i32 %.sroa.0688.0.copyload)
          to label %bb.wq unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wq:                                            ; preds = %bb.wp
  %i.dbn = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3Mat2atIfEERT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dbm, i32 noundef 0)
          to label %bb.wr unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wr:                                            ; preds = %bb.wq
  %i.dbo = load float, ptr %i.dbn, align 4, !tbaa !66 ; 3 uses
  %i.dbp = load ptr, ptr %0, align 8, !tbaa !20
  %i.dbq = load ptr, ptr %i.cxt, align 8, !tbaa !49
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbq, i64 8
  %.sroa.0684.0.copyload = load i32, ptr %i.dbr, align 4, !tbaa !31
  %i.dbs = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dbp, i32 %.sroa.0684.0.copyload)
          to label %bb.ws unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ws:                                            ; preds = %bb.wr
  %i.dbt = load i32, ptr %i.dbs, align 8, !tbaa !73
  %i.dbu = and i32 %i.dbt, 31
  %i.dbv = icmp eq i32 %i.dbu, 0
  br i1 %i.dbv, label %bb.wt, label %bb.wu

bb.wt:                                            ; preds = %bb.ws
  %i.dbw = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIhEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dbs, i32 noundef 0)
  %i.dbx = load i8, ptr %i.dbw, align 1, !tbaa !74
  %i.dby = zext i8 %i.dbx to i32
  %i.dbz = add nsw i32 %i.dby, -128
  br label %bb.wv

bb.wu:                                            ; preds = %bb.ws
  %i.dca = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIaEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dbs, i32 noundef 0)
  %i.dcb = load i8, ptr %i.dca, align 1, !tbaa !74
  %i.dcc = sext i8 %i.dcb to i32
  br label %bb.wv

bb.wv:                                            ; preds = %bb.wu, %bb.wt
  %i.dcd = phi i32 [ %i.dbz, %bb.wt ], [ %i.dcc, %bb.wu ] ; 2 uses
  %i.dce = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0683.0.copyload = load i32, ptr %18, align 4, !tbaa !31
  %i.dcf = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dce, i32 %.sroa.0683.0.copyload)
          to label %bb.ww unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ww:                                            ; preds = %bb.wv
  %i.dcg = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3Mat2atIfEERT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dcf, i32 noundef 0)
          to label %bb.wx unwind label %.loopexit.split-lp3909.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wx:                                            ; preds = %bb.ww
  %i.dch = load float, ptr %i.dcg, align 4, !tbaa !66 ; 3 uses
  %i.dci = load ptr, ptr %0, align 8, !tbaa !20
end_hunk_2
begin_hunk_3_@_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
  br i1 %i.dkc, label %bb.aaf, label %.thread3574

bb.aaf:                                           ; preds = %bb.aae
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #23
  %i.dkd = getelementptr inbounds nuw i8, ptr %.11764.1, i64 32
  %i.dke = load ptr, ptr %i.dkd, align 8, !tbaa !49 ; 2 uses
  %i.dkf = load i32, ptr %i.dke, align 4, !tbaa !31 ; 2 uses
  store i32 %i.dkf, ptr %86, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #23
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dke, i64 4
  %i.dkh = load i32, ptr %i.dkg, align 4, !tbaa !31 ; 2 uses
  store i32 %i.dkh, ptr %87, align 4, !tbaa !31
  %i.dki = sext i32 %i.dkf to i64                 ; 3 uses
  %i.dkj = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.dkk = load ptr, ptr %11, align 8, !tbaa !21  ; 3 uses
  %i.dkl = ptrtoint ptr %i.dkj to i64
  %i.dkm = ptrtoint ptr %i.dkk to i64
  %i.dkn = sub i64 %i.dkl, %i.dkm
  %i.dko = ashr exact i64 %i.dkn, 2               ; 4 uses
  %.not.i.i2971 = icmp ugt i64 %i.dko, %i.dki
  br i1 %.not.i.i2971, label %bb.aag, label %.invoke10214

bb.aag:                                           ; preds = %bb.aaf
  %i.dkp = getelementptr inbounds nuw [4 x i8], ptr %i.dkk, i64 %i.dki
  %i.dkq = load i32, ptr %i.dkp, align 4, !tbaa !31 ; 3 uses
  %i.dkr = sext i32 %i.dkh to i64                 ; 3 uses
  %.not.i.i2974 = icmp ugt i64 %i.dko, %i.dkr
  br i1 %.not.i.i2974, label %bb.aah, label %.invoke10214

bb.aah:                                           ; preds = %bb.aag
  %i.dks = getelementptr inbounds nuw [4 x i8], ptr %i.dkk, i64 %i.dkr
  %i.dkt = load i32, ptr %i.dks, align 4, !tbaa !31 ; 3 uses
  %i.dku = icmp sgt i32 %i.dkq, -1
  br i1 %i.dku, label %bb.aai, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2980

bb.aai:                                           ; preds = %bb.aah
  %i.dkv = zext nneg i32 %i.dkq to i64            ; 3 uses
  %i.dkw = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.dkx = load ptr, ptr %12, align 8, !tbaa !30  ; 2 uses
  %i.dky = ptrtoint ptr %i.dkw to i64
  %i.dkz = ptrtoint ptr %i.dkx to i64
  %i.dla = sub i64 %i.dky, %i.dkz
  %i.dlb = ashr exact i64 %i.dla, 4               ; 2 uses
  %.not.i.i.i2977 = icmp ugt i64 %i.dlb, %i.dkv
  br i1 %.not.i.i.i2977, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2978, label %.invoke10214

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2978: ; preds = %bb.aai
  %i.dlc = getelementptr inbounds nuw [16 x i8], ptr %i.dkx, i64 %i.dkv
  %i.dld = load ptr, ptr %i.dlc, align 8, !tbaa !45 ; 2 uses
  %i.dle = icmp eq ptr %i.dld, null
  br i1 %i.dle, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2980, label %bb.aaj

bb.aaj:                                           ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2978
  %i.dlf = call ptr @__dynamic_cast(ptr nonnull %i.dld, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerE, i64 0) #23
  br label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2980

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2980: ; preds = %bb.aaj, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2978, %bb.aah
  %i.dlg = phi ptr [ null, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2978 ], [ %i.dlf, %bb.aaj ], [ null, %bb.aah ] ; 4 uses
  %i.dlh = icmp sgt i32 %i.dkt, -1
  br i1 %i.dlh, label %bb.aak, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2984

bb.aak:                                           ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2980
  %i.dli = zext nneg i32 %i.dkt to i64            ; 3 uses
  %i.dlj = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.dlk = load ptr, ptr %12, align 8, !tbaa !30  ; 2 uses
  %i.dll = ptrtoint ptr %i.dlj to i64
  %i.dlm = ptrtoint ptr %i.dlk to i64
  %i.dln = sub i64 %i.dll, %i.dlm
  %i.dlo = ashr exact i64 %i.dln, 4               ; 2 uses
  %.not.i.i.i2981 = icmp ugt i64 %i.dlo, %i.dli
  br i1 %.not.i.i.i2981, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2982, label %.invoke10214

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2982: ; preds = %bb.aak
  %i.dlp = getelementptr inbounds nuw [16 x i8], ptr %i.dlk, i64 %i.dli
  %i.dlq = load ptr, ptr %i.dlp, align 8, !tbaa !45 ; 2 uses
  %i.dlr = icmp eq ptr %i.dlq, null
  br i1 %i.dlr, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2984, label %bb.aal

bb.aal:                                           ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2982
  %i.dls = call ptr @__dynamic_cast(ptr nonnull %i.dlq, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerE, i64 0) #23
  br label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2984

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2984: ; preds = %bb.aal, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2982, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2980
  %i.dlt = phi ptr [ null, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i2982 ], [ %i.dls, %bb.aal ], [ null, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2980 ] ; 4 uses
  %i.dlu = load ptr, ptr %i.ji, align 8, !tbaa !288 ; 2 uses
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  %i.dlw = load ptr, ptr %i.dlv, align 8, !tbaa !288
  %i.dlx = icmp eq ptr %i.dlu, %i.dlw
  br i1 %i.dlx, label %.thread3561, label %bb.aam

bb.aam:                                           ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2984
  %i.dly = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0598.0.copyload = load i32, ptr %i.dlu, align 4, !tbaa !31
  %i.dlz = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dly, i32 %.sroa.0598.0.copyload)
          to label %bb.aan unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aan:                                           ; preds = %bb.aam
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dlz, i64 88
  %i.dmb = load i32, ptr %i.dma, align 8, !tbaa !277 ; 3 uses
  %i.dmc = icmp slt i32 %i.dmb, 0
  br i1 %i.dmc, label %.thread3561, label %bb.aat

.thread3561:                                      ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2984, %bb.aan
  %i.dmd = phi i32 [ %i.dmb, %bb.aan ], [ -1, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit2984 ]
  %i.dme = load ptr, ptr %0, align 8, !tbaa !20
  %i.dmf = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmf, i64 8
  %.sroa.0597.0.copyload = load i32, ptr %i.dmg, align 4, !tbaa !31
  %i.dmh = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dme, i32 %.sroa.0597.0.copyload)
          to label %bb.aao unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aao:                                           ; preds = %.thread3561
  br i1 %i.dmh, label %bb.aap, label %bb.aat

bb.aap:                                           ; preds = %bb.aao
  %i.dmi = load ptr, ptr %0, align 8, !tbaa !20
  %i.dmj = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.dmk = getelementptr inbounds nuw i8, ptr %i.dmj, i64 8
  %.sroa.0594.0.copyload = load i32, ptr %i.dmk, align 4, !tbaa !31
  %i.dml = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dmi, i32 %.sroa.0594.0.copyload)
          to label %bb.aaq unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aaq:                                           ; preds = %bb.aap
  %i.dmm = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.dml)
          to label %bb.aar unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aar:                                           ; preds = %bb.aaq
  br i1 %i.dmm, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.dmn = load i32, ptr %i.dml, align 8, !tbaa !73
  %i.dmo = and i32 %i.dmn, 4095
  br label %bb.aat

bb.aat:                                           ; preds = %bb.aas, %bb.aar, %bb.aao, %bb.aan
  %.01759 = phi i32 [ %i.dmb, %bb.aan ], [ %i.dmd, %bb.aao ], [ %i.dmo, %bb.aas ], [ 1, %bb.aar ] ; 2 uses
  %.not3712 = icmp eq ptr %i.dlg, null
  br i1 %.not3712, label %.thread3578, label %bb.aau

bb.aau:                                           ; preds = %bb.aat
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dlg, i64 32 ; 7 uses
  %i.dmq = load ptr, ptr %i.dmp, align 8, !tbaa !288 ; 2 uses
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.dlg, i64 40 ; 3 uses
  %i.dms = load ptr, ptr %i.dmr, align 8, !tbaa !288
  %i.dmt = icmp eq ptr %i.dmq, %i.dms
  br i1 %i.dmt, label %.thread8571, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.dmu = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0589.0.copyload = load i32, ptr %i.dmq, align 4, !tbaa !31
  %i.dmv = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dmu, i32 %.sroa.0589.0.copyload)
          to label %bb.aaw unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aaw:                                           ; preds = %bb.aav
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dmv, i64 88
  %i.dmx = load i32, ptr %i.dmw, align 8, !tbaa !277 ; 3 uses
  %i.dmy = icmp slt i32 %i.dmx, 0
  br i1 %i.dmy, label %.thread8571, label %bb.abd

.thread8571:                                      ; preds = %bb.aau, %bb.aaw
  %i.dmz = phi i32 [ %i.dmx, %bb.aaw ], [ -1, %bb.aau ] ; 2 uses
  %i.dna = load ptr, ptr %i.dmr, align 8, !tbaa !48
  %i.dnb = load ptr, ptr %i.dmp, align 8, !tbaa !49 ; 2 uses
  %i.dnc = ptrtoint ptr %i.dna to i64
  %i.dnd = ptrtoint ptr %i.dnb to i64
  %i.dne = sub i64 %i.dnc, %i.dnd
  %i.dnf = icmp ugt i64 %i.dne, 8
  br i1 %i.dnf, label %bb.aax, label %bb.abd

bb.aax:                                           ; preds = %.thread8571
  %i.dng = load ptr, ptr %0, align 8, !tbaa !20
  %i.dnh = getelementptr inbounds nuw i8, ptr %i.dnb, i64 8
  %.sroa.0588.0.copyload = load i32, ptr %i.dnh, align 4, !tbaa !31
  %i.dni = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dng, i32 %.sroa.0588.0.copyload)
          to label %bb.aay unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aay:                                           ; preds = %bb.aax
  br i1 %i.dni, label %bb.aaz, label %bb.abd

bb.aaz:                                           ; preds = %bb.aay
  %i.dnj = load ptr, ptr %0, align 8, !tbaa !20
  %i.dnk = load ptr, ptr %i.dmp, align 8, !tbaa !49
  %i.dnl = getelementptr inbounds nuw i8, ptr %i.dnk, i64 8
  %.sroa.0585.0.copyload = load i32, ptr %i.dnl, align 4, !tbaa !31
  %i.dnm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dnj, i32 %.sroa.0585.0.copyload)
          to label %bb.aba unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aba:                                           ; preds = %bb.aaz
  %i.dnn = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.dnm)
          to label %bb.abb unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abb:                                           ; preds = %bb.aba
  br i1 %i.dnn, label %bb.abd, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  %i.dno = load i32, ptr %i.dnm, align 8, !tbaa !73
  %i.dnp = and i32 %i.dno, 4095
  br label %bb.abd

bb.abd:                                           ; preds = %bb.abc, %bb.abb, %bb.aay, %.thread8571, %bb.aaw
  %.01758 = phi i32 [ %i.dmx, %bb.aaw ], [ %i.dmz, %bb.aay ], [ %i.dmz, %.thread8571 ], [ %i.dnp, %bb.abc ], [ 0, %bb.abb ]
  %.not3713 = icmp eq ptr %i.dlt, null
  br i1 %.not3713, label %.thread3578, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  %i.dnq = load ptr, ptr %i.dmr, align 8, !tbaa !48
  %i.dnr = load ptr, ptr %i.dmp, align 8, !tbaa !49
  %i.dns = ptrtoint ptr %i.dnq to i64
  %i.dnt = ptrtoint ptr %i.dnr to i64
  %i.dnu = sub i64 %i.dns, %i.dnt
  %i.dnv = icmp ugt i64 %i.dnu, 8
  br i1 %i.dnv, label %bb.abf, label %.thread3578

bb.abf:                                           ; preds = %bb.abe
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.dlt, i64 32 ; 5 uses
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dlt, i64 40
  %i.dny = load ptr, ptr %i.dnx, align 8, !tbaa !48
  %i.dnz = load ptr, ptr %i.dnw, align 8, !tbaa !49
  %i.doa = ptrtoint ptr %i.dny to i64
  %i.dob = ptrtoint ptr %i.dnz to i64
  %i.doc = sub i64 %i.doa, %i.dob
  %i.dod = icmp ugt i64 %i.doc, 8
  br i1 %i.dod, label %bb.abg, label %.thread3578

bb.abg:                                           ; preds = %bb.abf
  %i.doe = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dlg)
          to label %bb.abh unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abh:                                           ; preds = %bb.abg
  br i1 %i.doe, label %bb.abi, label %.thread3578

bb.abi:                                           ; preds = %bb.abh
  %i.dof = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dlt)
          to label %bb.abj unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abj:                                           ; preds = %bb.abi
  br i1 %i.dof, label %bb.abk, label %.thread3578

bb.abk:                                           ; preds = %bb.abj
  %i.dog = load ptr, ptr %0, align 8, !tbaa !20
  %i.doh = load ptr, ptr %i.dnw, align 8, !tbaa !49
  %.sroa.0583.0.copyload = load i32, ptr %i.doh, align 4, !tbaa !31
  %i.doi = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dog, i32 %.sroa.0583.0.copyload)
          to label %bb.abl unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abl:                                           ; preds = %bb.abk
  %i.doj = or i32 %.01758, %.01759
  %i.dok = icmp ult i32 %i.doj, 2
  %or.cond115 = and i1 %i.dok, %i.doi
  br i1 %or.cond115, label %bb.abm, label %.thread3578

bb.abm:                                           ; preds = %bb.abl
  %i.dol = load i32, ptr %86, align 4, !tbaa !51
  %i.dom = sext i32 %i.dol to i64                 ; 3 uses
  %i.don = load ptr, ptr %i.bk, align 8, !tbaa !32
  %i.doo = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 3 uses
  %i.dop = ptrtoint ptr %i.don to i64
  %i.doq = ptrtoint ptr %i.doo to i64
  %i.dor = sub i64 %i.dop, %i.doq
  %i.dos = ashr exact i64 %i.dor, 2               ; 4 uses
  %.not.i.i2985 = icmp ugt i64 %i.dos, %i.dom
  br i1 %.not.i.i2985, label %bb.abn, label %.invoke10214

bb.abn:                                           ; preds = %bb.abm
  %i.dot = getelementptr inbounds nuw [4 x i8], ptr %i.doo, i64 %i.dom
  %i.dou = load i32, ptr %i.dot, align 4, !tbaa !31
  %i.dov = icmp eq i32 %i.dou, 1
  br i1 %i.dov, label %bb.abo, label %.thread3578

bb.abo:                                           ; preds = %bb.abn
  %i.dow = load i32, ptr %87, align 4, !tbaa !51
  %i.dox = sext i32 %i.dow to i64                 ; 3 uses
  %.not.i.i2988 = icmp ugt i64 %i.dos, %i.dox
  br i1 %.not.i.i2988, label %bb.abp, label %.invoke10214

.invoke10214:                                     ; preds = %bb.abo, %bb.abm, %bb.aak, %bb.aai, %bb.aag, %bb.aaf
  %i.doy = phi i64 [ %i.dom, %bb.abm ], [ %i.dli, %bb.aak ], [ %i.dkv, %bb.aai ], [ %i.dkr, %bb.aag ], [ %i.dki, %bb.aaf ], [ %i.dox, %bb.abo ]
  %i.doz = phi i64 [ %i.dos, %bb.abm ], [ %i.dlo, %bb.aak ], [ %i.dlb, %bb.aai ], [ %i.dko, %bb.aag ], [ %i.dko, %bb.aaf ], [ %i.dos, %bb.abo ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef %i.doy, i64 noundef %i.doz) #25
          to label %.cont10215 unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont10215:                                       ; preds = %.invoke10214
  unreachable

bb.abp:                                           ; preds = %bb.abo
  %i.dpa = getelementptr inbounds nuw [4 x i8], ptr %i.doo, i64 %i.dox
  %i.dpb = load i32, ptr %i.dpa, align 4, !tbaa !31
  %i.dpc = icmp eq i32 %i.dpb, 1
  br i1 %i.dpc, label %bb.abq, label %.thread3578

bb.abq:                                           ; preds = %bb.abp
  %i.dpd = load ptr, ptr %0, align 8, !tbaa !20
  %i.dpe = load ptr, ptr %i.dmp, align 8, !tbaa !49
  %i.dpf = getelementptr inbounds nuw i8, ptr %i.dpe, i64 4
  %.sroa.0579.0.copyload = load i32, ptr %i.dpf, align 4, !tbaa !31
  %i.dpg = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dpd, i32 %.sroa.0579.0.copyload)
          to label %bb.abr unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abr:                                           ; preds = %bb.abq
  %i.dph = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3Mat2atIfEERT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dpg, i32 noundef 0)
          to label %bb.abs unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abs:                                           ; preds = %bb.abr
  %i.dpi = load float, ptr %i.dph, align 4, !tbaa !66 ; 3 uses
  %i.dpj = load ptr, ptr %0, align 8, !tbaa !20
  %i.dpk = load ptr, ptr %i.dmp, align 8, !tbaa !49
  %i.dpl = getelementptr inbounds nuw i8, ptr %i.dpk, i64 8
  %.sroa.0575.0.copyload = load i32, ptr %i.dpl, align 4, !tbaa !31
  %i.dpm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dpj, i32 %.sroa.0575.0.copyload)
          to label %bb.abt unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.abt:                                           ; preds = %bb.abs
  %i.dpn = load i32, ptr %i.dpm, align 8, !tbaa !73
  %i.dpo = and i32 %i.dpn, 31
  %i.dpp = icmp eq i32 %i.dpo, 0
  br i1 %i.dpp, label %bb.abu, label %bb.abv

bb.abu:                                           ; preds = %bb.abt
  %i.dpq = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIhEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dpm, i32 noundef 0)
  %i.dpr = load i8, ptr %i.dpq, align 1, !tbaa !74
  %i.dps = zext i8 %i.dpr to i32
  %i.dpt = add nsw i32 %i.dps, -128
  br label %bb.abw

bb.abv:                                           ; preds = %bb.abt
  %i.dpu = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIaEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dpm, i32 noundef 0)
  %i.dpv = load i8, ptr %i.dpu, align 1, !tbaa !74
  %i.dpw = sext i8 %i.dpv to i32
  br label %bb.abw

bb.abw:                                           ; preds = %bb.abv, %bb.abu
  %i.dpx = phi i32 [ %i.dpt, %bb.abu ], [ %i.dpw, %bb.abv ] ; 2 uses
  %i.dpy = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0569.0.copyload = load i32, ptr %18, align 4, !tbaa !31
  %i.dpz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dpy, i32 %.sroa.0569.0.copyload)
          to label %bb.abx unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abx:                                           ; preds = %bb.abw
  %i.dqa = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3Mat2atIfEERT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dpz, i32 noundef 0)
          to label %bb.aby unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aby:                                           ; preds = %bb.abx
  %i.dqb = load float, ptr %i.dqa, align 4, !tbaa !66 ; 3 uses
  %i.dqc = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0565.0.copyload = load i32, ptr %19, align 4, !tbaa !31
  %i.dqd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dqc, i32 %.sroa.0565.0.copyload)
          to label %bb.abz unwind label %.loopexit.split-lp3917.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.abz:                                           ; preds = %bb.aby
  %i.dqe = load i32, ptr %i.dqd, align 8, !tbaa !73
  %i.dqf = and i32 %i.dqe, 31
  %i.dqg = icmp eq i32 %i.dqf, 0
  br i1 %i.dqg, label %bb.aca, label %bb.acb

bb.aca:                                           ; preds = %bb.abz
  %i.dqh = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIhEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dqd, i32 noundef 0)
  %i.dqi = load i8, ptr %i.dqh, align 1, !tbaa !74
  %i.dqj = zext i8 %i.dqi to i32
  %i.dqk = add nsw i32 %i.dqj, -128
  br label %bb.acc

bb.acb:                                           ; preds = %bb.abz
  %i.dql = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIaEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.dqd, i32 noundef 0)
  %i.dqm = load i8, ptr %i.dql, align 1, !tbaa !74
  %i.dqn = sext i8 %i.dqm to i32
  br label %bb.acc

bb.acc:                                           ; preds = %bb.acb, %bb.aca
  %i.dqo = phi i32 [ %i.dqk, %bb.aca ], [ %i.dqn, %bb.acb ]
  %i.dqp = fcmp ogt float %i.dpi, 0.000000e+00
  %i.dqq = fcmp ogt float %i.dqb, 0.000000e+00
  %or.cond117 = select i1 %i.dqp, i1 %i.dqq, i1 false
  br i1 %or.cond117, label %bb.acd, label %.thread3578

bb.acd:                                           ; preds = %bb.acc
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #23
  %i.dqr = load ptr, ptr %0, align 8, !tbaa !20
  %i.dqs = load ptr, ptr %i.dnw, align 8, !tbaa !49
  %.sroa.0563.0.copyload = load i32, ptr %i.dqs, align 4, !tbaa !31
  %i.dqt = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dqr, i32 %.sroa.0563.0.copyload)
          to label %bb.ace unwind label %bb.acn

bb.ace:                                           ; preds = %bb.acd
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %88, ptr noundef nonnull align 8 dereferenceable(208) %i.dqt)
          to label %bb.acf unwind label %bb.acn

bb.acf:                                           ; preds = %bb.ace
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #23
  %i.dqu = load ptr, ptr %0, align 8, !tbaa !20
  %i.dqv = load ptr, ptr %i.dnw, align 8, !tbaa !49
  %i.dqw = getelementptr inbounds nuw i8, ptr %i.dqv, i64 4
  %.sroa.0562.0.copyload = load i32, ptr %i.dqw, align 4, !tbaa !31
  %i.dqx = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dqu, i32 %.sroa.0562.0.copyload)
          to label %bb.acg unwind label %bb.aco

bb.acg:                                           ; preds = %bb.acf
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %89, ptr noundef nonnull align 8 dereferenceable(208) %i.dqx)
          to label %bb.ach unwind label %bb.aco

bb.ach:                                           ; preds = %bb.acg
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #23
end_hunk_3
begin_hunk_4_@_ZN2cv3dnn14dnn5_v2026060514ModelFusionQDQ9fuseGraphERNS_3PtrINS1_5GraphEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #23
  %i.dwb = load i32, ptr %i.dvt, align 4, !tbaa !31 ; 2 uses
  store i32 %i.dwb, ptr %107, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #23
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.dvt, i64 4
  %i.dwd = load i32, ptr %i.dwc, align 4, !tbaa !31 ; 2 uses
  store i32 %i.dwd, ptr %108, align 4, !tbaa !31
  %i.dwe = sext i32 %i.dwb to i64                 ; 3 uses
  %i.dwf = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.dwg = load ptr, ptr %11, align 8, !tbaa !21  ; 3 uses
  %i.dwh = ptrtoint ptr %i.dwf to i64
  %i.dwi = ptrtoint ptr %i.dwg to i64
  %i.dwj = sub i64 %i.dwh, %i.dwi
  %i.dwk = ashr exact i64 %i.dwj, 2               ; 4 uses
  %.not.i.i3002 = icmp ugt i64 %i.dwk, %i.dwe
  br i1 %.not.i.i3002, label %bb.afj, label %.invoke10216

bb.afj:                                           ; preds = %bb.afi
  %i.dwl = getelementptr inbounds nuw [4 x i8], ptr %i.dwg, i64 %i.dwe
  %i.dwm = load i32, ptr %i.dwl, align 4, !tbaa !31 ; 3 uses
  %i.dwn = sext i32 %i.dwd to i64                 ; 3 uses
  %.not.i.i3005 = icmp ugt i64 %i.dwk, %i.dwn
  br i1 %.not.i.i3005, label %bb.afk, label %.invoke10216

bb.afk:                                           ; preds = %bb.afj
  %i.dwo = getelementptr inbounds nuw [4 x i8], ptr %i.dwg, i64 %i.dwn
  %i.dwp = load i32, ptr %i.dwo, align 4, !tbaa !31 ; 3 uses
  %i.dwq = icmp sgt i32 %i.dwm, -1
  br i1 %i.dwq, label %bb.afl, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3011

bb.afl:                                           ; preds = %bb.afk
  %i.dwr = zext nneg i32 %i.dwm to i64            ; 3 uses
  %i.dws = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.dwt = load ptr, ptr %12, align 8, !tbaa !30  ; 2 uses
  %i.dwu = ptrtoint ptr %i.dws to i64
  %i.dwv = ptrtoint ptr %i.dwt to i64
  %i.dww = sub i64 %i.dwu, %i.dwv
  %i.dwx = ashr exact i64 %i.dww, 4               ; 2 uses
  %.not.i.i.i3008 = icmp ugt i64 %i.dwx, %i.dwr
  br i1 %.not.i.i.i3008, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3009, label %.invoke10216

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3009: ; preds = %bb.afl
  %i.dwy = getelementptr inbounds nuw [16 x i8], ptr %i.dwt, i64 %i.dwr
  %i.dwz = load ptr, ptr %i.dwy, align 8, !tbaa !45 ; 2 uses
  %i.dxa = icmp eq ptr %i.dwz, null
  br i1 %i.dxa, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3011, label %bb.afm

bb.afm:                                           ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3009
  %i.dxb = call ptr @__dynamic_cast(ptr nonnull %i.dwz, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerE, i64 0) #23
  br label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3011

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3011: ; preds = %bb.afm, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3009, %bb.afk
  %i.dxc = phi ptr [ null, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3009 ], [ %i.dxb, %bb.afm ], [ null, %bb.afk ] ; 3 uses
  %i.dxd = icmp sgt i32 %i.dwp, -1
  br i1 %i.dxd, label %bb.afn, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3015

bb.afn:                                           ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3011
  %i.dxe = zext nneg i32 %i.dwp to i64            ; 3 uses
  %i.dxf = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.dxg = load ptr, ptr %12, align 8, !tbaa !30  ; 2 uses
  %i.dxh = ptrtoint ptr %i.dxf to i64
  %i.dxi = ptrtoint ptr %i.dxg to i64
  %i.dxj = sub i64 %i.dxh, %i.dxi
  %i.dxk = ashr exact i64 %i.dxj, 4               ; 2 uses
  %.not.i.i.i3012 = icmp ugt i64 %i.dxk, %i.dxe
  br i1 %.not.i.i.i3012, label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3013, label %.invoke10216

_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3013: ; preds = %bb.afn
  %i.dxl = getelementptr inbounds nuw [16 x i8], ptr %i.dxg, i64 %i.dxe
  %i.dxm = load ptr, ptr %i.dxl, align 8, !tbaa !45 ; 2 uses
  %i.dxn = icmp eq ptr %i.dxm, null
  br i1 %i.dxn, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3015, label %bb.afo

bb.afo:                                           ; preds = %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3013
  %i.dxo = call ptr @__dynamic_cast(ptr nonnull %i.dxm, ptr nonnull @_ZTIN2cv3dnn14dnn5_v202606055LayerE, ptr nonnull @_ZTIN2cv3dnn14dnn5_v2026060521DequantizeLinearLayerE, i64 0) #23
  br label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3015

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3015: ; preds = %bb.afo, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3013, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3011
  %i.dxp = phi ptr [ null, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE2atEm.exit.i3013 ], [ %i.dxo, %bb.afo ], [ null, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3011 ] ; 4 uses
  %i.dxq = load ptr, ptr %i.ji, align 8, !tbaa !288 ; 2 uses
  %i.dxr = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  %i.dxs = load ptr, ptr %i.dxr, align 8, !tbaa !288
  %i.dxt = icmp eq ptr %i.dxq, %i.dxs
  br i1 %i.dxt, label %.thread3581, label %bb.afp

bb.afp:                                           ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3015
  %i.dxu = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0495.0.copyload = load i32, ptr %i.dxq, align 4, !tbaa !31
  %i.dxv = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dxu, i32 %.sroa.0495.0.copyload)
          to label %bb.afq unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.afq:                                           ; preds = %bb.afp
  %i.dxw = getelementptr inbounds nuw i8, ptr %i.dxv, i64 88
  %i.dxx = load i32, ptr %i.dxw, align 8, !tbaa !277 ; 3 uses
  %i.dxy = icmp slt i32 %i.dxx, 0
  br i1 %i.dxy, label %.thread3581, label %bb.afx

.thread3581:                                      ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3015, %bb.afq
  %i.dxz = phi i32 [ %i.dxx, %bb.afq ], [ -1, %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ8getLayerINS1_21DequantizeLinearLayerEEEPT_RSt6vectorINS_3PtrINS1_5LayerEEESaISA_EEi.exit3015 ]
  %i.dya = load ptr, ptr %0, align 8, !tbaa !20
  %i.dyb = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.dyc = getelementptr inbounds nuw i8, ptr %i.dyb, i64 8
  %.sroa.0494.0.copyload = load i32, ptr %i.dyc, align 4, !tbaa !31
  %i.dyd = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dya, i32 %.sroa.0494.0.copyload)
          to label %bb.afr unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.afr:                                           ; preds = %.thread3581
  br i1 %i.dyd, label %bb.afs, label %bb.afx

bb.afs:                                           ; preds = %bb.afr
  %i.dye = load ptr, ptr %0, align 8, !tbaa !20
  %i.dyf = load ptr, ptr %i.jh, align 8, !tbaa !49
  %i.dyg = getelementptr inbounds nuw i8, ptr %i.dyf, i64 8
  %.sroa.0491.0.copyload = load i32, ptr %i.dyg, align 4, !tbaa !31
  %i.dyh = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dye, i32 %.sroa.0491.0.copyload)
          to label %bb.aft unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aft:                                           ; preds = %bb.afs
  %i.dyi = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.dyh)
          to label %bb.afu unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.afu:                                           ; preds = %bb.aft
  br i1 %i.dyi, label %bb.afx, label %bb.afv

bb.afv:                                           ; preds = %bb.afu
  %i.dyj = load i32, ptr %i.dyh, align 8, !tbaa !73
  %i.dyk = and i32 %i.dyj, 4095
  br label %bb.afx

bb.afw:                                           ; preds = %.thread3574
  %i.dyl = landingpad { ptr, i32 }
          cleanup
  br label %bb.amc

bb.afx:                                           ; preds = %bb.afv, %bb.afu, %bb.afr, %bb.afq
  %.01745 = phi i32 [ %i.dxx, %bb.afq ], [ %i.dxz, %bb.afr ], [ %i.dyk, %bb.afv ], [ 1, %bb.afu ] ; 2 uses
  %.not3714 = icmp eq ptr %i.dxc, null
  br i1 %.not3714, label %.thread3602, label %bb.afy

bb.afy:                                           ; preds = %bb.afx
  %i.dym = getelementptr inbounds nuw i8, ptr %i.dxc, i64 32 ; 8 uses
  %i.dyn = load ptr, ptr %i.dym, align 8, !tbaa !288 ; 2 uses
  %i.dyo = getelementptr inbounds nuw i8, ptr %i.dxc, i64 40 ; 4 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !288
  %i.dyq = icmp eq ptr %i.dyn, %i.dyp
  br i1 %i.dyq, label %.thread8572, label %bb.afz

bb.afz:                                           ; preds = %bb.afy
  %i.dyr = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0486.0.copyload = load i32, ptr %i.dyn, align 4, !tbaa !31
  %i.dys = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl7argDataENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dyr, i32 %.sroa.0486.0.copyload)
          to label %bb.aga unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aga:                                           ; preds = %bb.afz
  %i.dyt = getelementptr inbounds nuw i8, ptr %i.dys, i64 88
  %i.dyu = load i32, ptr %i.dyt, align 8, !tbaa !277 ; 3 uses
  %i.dyv = icmp slt i32 %i.dyu, 0
  br i1 %i.dyv, label %.thread8572, label %bb.agh

.thread8572:                                      ; preds = %bb.afy, %bb.aga
  %i.dyw = phi i32 [ %i.dyu, %bb.aga ], [ -1, %bb.afy ] ; 2 uses
  %i.dyx = load ptr, ptr %i.dyo, align 8, !tbaa !48
  %i.dyy = load ptr, ptr %i.dym, align 8, !tbaa !49 ; 2 uses
  %i.dyz = ptrtoint ptr %i.dyx to i64
  %i.dza = ptrtoint ptr %i.dyy to i64
  %i.dzb = sub i64 %i.dyz, %i.dza
  %i.dzc = icmp ugt i64 %i.dzb, 8
  br i1 %i.dzc, label %bb.agb, label %bb.agh

bb.agb:                                           ; preds = %.thread8572
  %i.dzd = load ptr, ptr %0, align 8, !tbaa !20
  %i.dze = getelementptr inbounds nuw i8, ptr %i.dyy, i64 8
  %.sroa.0485.0.copyload = load i32, ptr %i.dze, align 4, !tbaa !31
  %i.dzf = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dzd, i32 %.sroa.0485.0.copyload)
          to label %bb.agc unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.agc:                                           ; preds = %bb.agb
  br i1 %i.dzf, label %bb.agd, label %bb.agh

bb.agd:                                           ; preds = %bb.agc
  %i.dzg = load ptr, ptr %0, align 8, !tbaa !20
  %i.dzh = load ptr, ptr %i.dym, align 8, !tbaa !49
  %i.dzi = getelementptr inbounds nuw i8, ptr %i.dzh, i64 8
  %.sroa.0482.0.copyload = load i32, ptr %i.dzi, align 4, !tbaa !31
  %i.dzj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dzg, i32 %.sroa.0482.0.copyload)
          to label %bb.age unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.age:                                           ; preds = %bb.agd
  %i.dzk = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.dzj)
          to label %bb.agf unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.agf:                                           ; preds = %bb.age
  br i1 %i.dzk, label %bb.agh, label %bb.agg

bb.agg:                                           ; preds = %bb.agf
  %i.dzl = load i32, ptr %i.dzj, align 8, !tbaa !73
  %i.dzm = and i32 %i.dzl, 4095
  br label %bb.agh

bb.agh:                                           ; preds = %bb.agg, %bb.agf, %bb.agc, %.thread8572, %bb.aga
  %.01744 = phi i32 [ %i.dyu, %bb.aga ], [ %i.dyw, %bb.agc ], [ %i.dyw, %.thread8572 ], [ %i.dzm, %bb.agg ], [ 0, %bb.agf ]
  %.not3715 = icmp eq ptr %i.dxp, null
  br i1 %.not3715, label %.thread3602, label %bb.agi

bb.agi:                                           ; preds = %bb.agh
  %i.dzn = load ptr, ptr %i.dyo, align 8, !tbaa !48
  %i.dzo = load ptr, ptr %i.dym, align 8, !tbaa !49 ; 2 uses
  %i.dzp = ptrtoint ptr %i.dzn to i64
  %i.dzq = ptrtoint ptr %i.dzo to i64
  %i.dzr = sub i64 %i.dzp, %i.dzq
  %i.dzs = icmp ugt i64 %i.dzr, 8
  br i1 %i.dzs, label %bb.agj, label %.thread3602

bb.agj:                                           ; preds = %bb.agi
  %i.dzt = getelementptr inbounds nuw i8, ptr %i.dxp, i64 32 ; 5 uses
  %i.dzu = getelementptr inbounds nuw i8, ptr %i.dxp, i64 40
  %i.dzv = load ptr, ptr %i.dzu, align 8, !tbaa !48
  %i.dzw = load ptr, ptr %i.dzt, align 8, !tbaa !49
  %i.dzx = ptrtoint ptr %i.dzv to i64
  %i.dzy = ptrtoint ptr %i.dzw to i64
  %i.dzz = sub i64 %i.dzx, %i.dzy
  %i.eaa = icmp ugt i64 %i.dzz, 8
  br i1 %i.eaa, label %bb.agk, label %.thread3602

bb.agk:                                           ; preds = %bb.agj
  %i.eab = load ptr, ptr %0, align 8, !tbaa !20
  %i.eac = getelementptr inbounds nuw i8, ptr %i.dzo, i64 4
  %.sroa.01.0.copyload.i3017 = load i32, ptr %i.eac, align 4, !tbaa !31
  %i.ead = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.eab, i32 %.sroa.01.0.copyload.i3017)
          to label %.noexc3020 unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3020:                                       ; preds = %bb.agk
  br i1 %i.ead, label %bb.agl, label %.thread3602

bb.agl:                                           ; preds = %.noexc3020
  %i.eae = load ptr, ptr %i.dyo, align 8, !tbaa !48
  %i.eaf = load ptr, ptr %i.dym, align 8, !tbaa !49 ; 2 uses
  %i.eag = ptrtoint ptr %i.eae to i64
  %i.eah = ptrtoint ptr %i.eaf to i64
  %i.eai = sub i64 %i.eag, %i.eah
  %i.eaj = icmp ugt i64 %i.eai, 8
  br i1 %i.eaj, label %bb.agm, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit3022

bb.agm:                                           ; preds = %bb.agl
  %i.eak = load ptr, ptr %0, align 8, !tbaa !20
  %i.eal = getelementptr inbounds nuw i8, ptr %i.eaf, i64 8
  %.sroa.0.0.copyload.i3019 = load i32, ptr %i.eal, align 4, !tbaa !31
  %i.eam = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.eak, i32 %.sroa.0.0.copyload.i3019)
          to label %.noexc3021 unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3021:                                       ; preds = %bb.agm
  br i1 %i.eam, label %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit3022, label %.thread3602

_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit3022: ; preds = %.noexc3021, %bb.agl
  %i.ean = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dxp)
          to label %bb.agn unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.agn:                                           ; preds = %_ZNK2cv3dnn14dnn5_v2026060514ModelFusionQDQ14areDqArgsConstEPKNS1_21DequantizeLinearLayerE.exit3022
  br i1 %i.ean, label %bb.ago, label %.thread3602

bb.ago:                                           ; preds = %bb.agn
  %i.eao = load ptr, ptr %0, align 8, !tbaa !20
  %i.eap = load ptr, ptr %i.dzt, align 8, !tbaa !49
  %.sroa.0480.0.copyload = load i32, ptr %i.eap, align 4, !tbaa !31
  %i.eaq = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.eao, i32 %.sroa.0480.0.copyload)
          to label %bb.agp unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.agp:                                           ; preds = %bb.ago
  %i.ear = or i32 %.01744, %.01745
  %i.eas = icmp ult i32 %i.ear, 2
  %or.cond130 = and i1 %i.eas, %i.eaq
  br i1 %or.cond130, label %bb.agq, label %.thread3602

bb.agq:                                           ; preds = %bb.agp
  %i.eat = load i32, ptr %107, align 4, !tbaa !51
  %i.eau = sext i32 %i.eat to i64                 ; 3 uses
  %i.eav = load ptr, ptr %i.bk, align 8, !tbaa !32
  %i.eaw = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 3 uses
  %i.eax = ptrtoint ptr %i.eav to i64
  %i.eay = ptrtoint ptr %i.eaw to i64
  %i.eaz = sub i64 %i.eax, %i.eay
  %i.eba = ashr exact i64 %i.eaz, 2               ; 4 uses
  %.not.i.i3023 = icmp ugt i64 %i.eba, %i.eau
  br i1 %.not.i.i3023, label %bb.agr, label %.invoke10216

bb.agr:                                           ; preds = %bb.agq
  %i.ebb = getelementptr inbounds nuw [4 x i8], ptr %i.eaw, i64 %i.eau
  %i.ebc = load i32, ptr %i.ebb, align 4, !tbaa !31
  %i.ebd = icmp eq i32 %i.ebc, 1
  br i1 %i.ebd, label %bb.ags, label %.thread3602

bb.ags:                                           ; preds = %bb.agr
  %i.ebe = load i32, ptr %108, align 4, !tbaa !51
  %i.ebf = sext i32 %i.ebe to i64                 ; 3 uses
  %.not.i.i3026 = icmp ugt i64 %i.eba, %i.ebf
  br i1 %.not.i.i3026, label %bb.agt, label %.invoke10216

.invoke10216:                                     ; preds = %bb.ags, %bb.agq, %bb.afn, %bb.afl, %bb.afj, %bb.afi
  %i.ebg = phi i64 [ %i.eau, %bb.agq ], [ %i.dxe, %bb.afn ], [ %i.dwr, %bb.afl ], [ %i.dwn, %bb.afj ], [ %i.dwe, %bb.afi ], [ %i.ebf, %bb.ags ]
  %i.ebh = phi i64 [ %i.eba, %bb.agq ], [ %i.dxk, %bb.afn ], [ %i.dwx, %bb.afl ], [ %i.dwk, %bb.afj ], [ %i.dwk, %bb.afi ], [ %i.eba, %bb.ags ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef %i.ebg, i64 noundef %i.ebh) #25
          to label %.cont10217 unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont10217:                                       ; preds = %.invoke10216
  unreachable

bb.agt:                                           ; preds = %bb.ags
  %i.ebi = getelementptr inbounds nuw [4 x i8], ptr %i.eaw, i64 %i.ebf
  %i.ebj = load i32, ptr %i.ebi, align 4, !tbaa !31
  %i.ebk = icmp eq i32 %i.ebj, 1
  br i1 %i.ebk, label %bb.agu, label %.thread3602

bb.agu:                                           ; preds = %bb.agt
  %i.ebl = load ptr, ptr %0, align 8, !tbaa !20
  %i.ebm = load ptr, ptr %i.dym, align 8, !tbaa !49
  %i.ebn = getelementptr inbounds nuw i8, ptr %i.ebm, i64 4
  %.sroa.0476.0.copyload = load i32, ptr %i.ebn, align 4, !tbaa !31
  %i.ebo = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.ebl, i32 %.sroa.0476.0.copyload)
          to label %bb.agv unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.agv:                                           ; preds = %bb.agu
  %i.ebp = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3Mat2atIfEERT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.ebo, i32 noundef 0)
          to label %bb.agw unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.agw:                                           ; preds = %bb.agv
  %i.ebq = load float, ptr %i.ebp, align 4, !tbaa !66 ; 3 uses
  %i.ebr = load ptr, ptr %0, align 8, !tbaa !20
  %i.ebs = load ptr, ptr %i.dym, align 8, !tbaa !49
  %i.ebt = getelementptr inbounds nuw i8, ptr %i.ebs, i64 8
  %.sroa.0472.0.copyload = load i32, ptr %i.ebt, align 4, !tbaa !31
  %i.ebu = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.ebr, i32 %.sroa.0472.0.copyload)
          to label %bb.agx unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.agx:                                           ; preds = %bb.agw
  %i.ebv = load i32, ptr %i.ebu, align 8, !tbaa !73
  %i.ebw = and i32 %i.ebv, 31
  %i.ebx = icmp eq i32 %i.ebw, 0
  br i1 %i.ebx, label %bb.agy, label %bb.agz

bb.agy:                                           ; preds = %bb.agx
  %i.eby = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIhEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.ebu, i32 noundef 0)
  %i.ebz = load i8, ptr %i.eby, align 1, !tbaa !74
  %i.eca = zext i8 %i.ebz to i32
  %i.ecb = add nsw i32 %i.eca, -128
  br label %bb.aha

bb.agz:                                           ; preds = %bb.agx
  %i.ecc = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIaEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.ebu, i32 noundef 0)
  %i.ecd = load i8, ptr %i.ecc, align 1, !tbaa !74
  %i.ece = sext i8 %i.ecd to i32
  br label %bb.aha

bb.aha:                                           ; preds = %bb.agz, %bb.agy
  %i.ecf = phi i32 [ %i.ecb, %bb.agy ], [ %i.ece, %bb.agz ] ; 2 uses
  %i.ecg = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0466.0.copyload = load i32, ptr %18, align 4, !tbaa !31
  %i.ech = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.ecg, i32 %.sroa.0466.0.copyload)
          to label %bb.ahb unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ahb:                                           ; preds = %bb.aha
  %i.eci = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3Mat2atIfEERT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.ech, i32 noundef 0)
          to label %bb.ahc unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ahc:                                           ; preds = %bb.ahb
  %i.ecj = load float, ptr %i.eci, align 4, !tbaa !66 ; 3 uses
  %i.eck = load ptr, ptr %0, align 8, !tbaa !20
  %.sroa.0462.0.copyload = load i32, ptr %19, align 4, !tbaa !31
  %i.ecl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.eck, i32 %.sroa.0462.0.copyload)
          to label %bb.ahd unwind label %.loopexit.split-lp3922.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ahd:                                           ; preds = %bb.ahc
  %i.ecm = load i32, ptr %i.ecl, align 8, !tbaa !73
  %i.ecn = and i32 %i.ecm, 31
  %i.eco = icmp eq i32 %i.ecn, 0
  br i1 %i.eco, label %bb.ahe, label %bb.ahf

bb.ahe:                                           ; preds = %bb.ahd
  %i.ecp = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIhEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.ecl, i32 noundef 0)
  %i.ecq = load i8, ptr %i.ecp, align 1, !tbaa !74
  %i.ecr = zext i8 %i.ecq to i32
  %i.ecs = add nsw i32 %i.ecr, -128
  br label %bb.ahg

bb.ahf:                                           ; preds = %bb.ahd
  %i.ect = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK2cv3Mat2atIaEERKT_i(ptr noundef nonnull align 8 dereferenceable(208) %i.ecl, i32 noundef 0)
  %i.ecu = load i8, ptr %i.ect, align 1, !tbaa !74
  %i.ecv = sext i8 %i.ecu to i32
  br label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf, %bb.ahe
  %i.ecw = phi i32 [ %i.ecs, %bb.ahe ], [ %i.ecv, %bb.ahf ]
  %i.ecx = fcmp ogt float %i.ebq, 0.000000e+00
  %i.ecy = fcmp ogt float %i.ecj, 0.000000e+00
  %or.cond132 = select i1 %i.ecx, i1 %i.ecy, i1 false
  br i1 %or.cond132, label %bb.ahh, label %.thread3602

bb.ahh:                                           ; preds = %bb.ahg
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #23
  %i.ecz = load ptr, ptr %0, align 8, !tbaa !20
  %i.eda = load ptr, ptr %i.dzt, align 8, !tbaa !49
  %.sroa.0460.0.copyload = load i32, ptr %i.eda, align 4, !tbaa !31
end_hunk_4
