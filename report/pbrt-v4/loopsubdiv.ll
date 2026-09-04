Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/loopsubdiv?download=true
inline.NumInlined: 1399
inline.NumDeleted: 708
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4pbrt13LoopSubdivideEPKNS_9TransformEbiN4pstd4spanIKiEENS4_IKNS_6Point3IfEEEENS3_3pmr21polymorphic_allocatorISt4byteEE:.noexc
  %i.zq = shufflevector <2 x float> %i.zp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zr = fmul <2 x float> %i.zq, %.sroa.019.0.copyload.i710 ; 2 uses
  %i.zs = fmul float %i.zo, %.sroa.220.0.copyload.i712 ; 2 uses
  %.pre49.i717 = load ptr, ptr %i.mh, align 8, !tbaa !61 ; 3 uses
  %.not.i.i33.i725 = icmp eq ptr %.pre49.i717, null ; 2 uses
  %i.zt = select i1 %.not.i.i33.i725, ptr %i.mk, ptr %.pre49.i717 ; 5 uses
  %i.zu = insertelement <2 x float> poison, float %.0.i696, i64 0
  %i.zv = shufflevector <2 x float> %i.zu, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %xtraiter2444 = and i64 %i.yi, 3                ; 3 uses
  %i.zw = icmp ult i64 %indvar, 3
  br i1 %i.zw, label %.epil.preheader, label %.lr.ph.i724.new

.lr.ph.i724.new:                                  ; preds = %.lr.ph.i724
  %unroll_iter2450 = and i64 %i.yi, 4294967292
  br label %bb.cx

._crit_edge.i718.unr-lcssa:                       ; preds = %bb.cx
  %lcmp.mod2446.not = icmp eq i64 %xtraiter2444, 0
  br i1 %lcmp.mod2446.not, label %._crit_edge.i718, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i718.unr-lcssa, %.lr.ph.i724
  %indvars.iv.i727.epil.init = phi i64 [ 0, %.lr.ph.i724 ], [ %indvars.iv.next.i739.3, %._crit_edge.i718.unr-lcssa ]
  %.sroa.040.045.i728.epil.init = phi <2 x float> [ %i.zr, %.lr.ph.i724 ], [ %i.abg, %._crit_edge.i718.unr-lcssa ]
  %.sroa.6.044.i729.epil.init = phi float [ %i.zs, %.lr.ph.i724 ], [ %i.abh, %._crit_edge.i718.unr-lcssa ]
  %lcmp.mod2449 = icmp ne i64 %xtraiter2444, 0
  call void @llvm.assume(i1 %lcmp.mod2449)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %.epil.preheader
  %indvars.iv.i727.epil = phi i64 [ %indvars.iv.i727.epil.init, %.epil.preheader ], [ %indvars.iv.next.i739.epil, %bb.ct ] ; 2 uses
  %.sroa.040.045.i728.epil = phi <2 x float> [ %.sroa.040.045.i728.epil.init, %.epil.preheader ], [ %i.aaa, %bb.ct ]
  %.sroa.6.044.i729.epil = phi float [ %.sroa.6.044.i729.epil.init, %.epil.preheader ], [ %i.aab, %bb.ct ]
  %epil.iter2445 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter2445.next, %bb.ct ]
  %i.zx = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %indvars.iv.i727.epil ; 2 uses
  %.sroa.07.0.copyload.i730.epil = load <2 x float>, ptr %i.zx, align 4
  %.sroa.28.0..sroa_idx.i731.epil = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %.sroa.28.0.copyload.i732.epil = load float, ptr %.sroa.28.0..sroa_idx.i731.epil, align 4, !tbaa !164
  %i.zy = fmul float %.0.i696, %.sroa.28.0.copyload.i732.epil
  %i.zz = fmul <2 x float> %i.zv, %.sroa.07.0.copyload.i730.epil
  %i.aaa = fadd <2 x float> %.sroa.040.045.i728.epil, %i.zz ; 2 uses
  %i.aab = fadd float %.sroa.6.044.i729.epil, %i.zy ; 2 uses
  %indvars.iv.next.i739.epil = add nuw nsw i64 %indvars.iv.i727.epil, 1
  %epil.iter2445.next = add i64 %epil.iter2445, 1 ; 2 uses
  %epil.iter2445.cmp.not = icmp eq i64 %epil.iter2445.next, %xtraiter2444
  br i1 %epil.iter2445.cmp.not, label %._crit_edge.i718, label %bb.ct, !llvm.loop !116

._crit_edge.i718:                                 ; preds = %bb.ct, %._crit_edge.i718.unr-lcssa
  %.lcssa2413 = phi <2 x float> [ %i.abg, %._crit_edge.i718.unr-lcssa ], [ %i.aaa, %bb.ct ]
  %.lcssa2412 = phi float [ %i.abh, %._crit_edge.i718.unr-lcssa ], [ %i.aab, %bb.ct ]
  br i1 %.not.i.i33.i725, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge.i718
  %i.aac = load i64, ptr %i.mi, align 8, !tbaa !62
  %i.aad = mul i64 %i.aac, 12
  %i.aae = load ptr, ptr %10, align 8, !tbaa !64  ; 2 uses
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !55
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8
  invoke void %i.aah(ptr noundef nonnull align 8 dereferenceable(8) %i.aae, ptr noundef nonnull %.pre49.i717, i64 noundef %i.aad, i64 noundef 4)
          to label %bb.cy unwind label %bb.cv, !inline_history !1

bb.cv:                                            ; preds = %bb.cu
  %i.aai = landingpad { ptr, i32 }
          catch ptr null
  %i.aaj = extractvalue { ptr, i32 } %i.aai, 0
  call void @__clang_call_terminate(ptr %i.aaj) #22
  unreachable

bb.cw:                                            ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i708
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body

bb.cx:                                            ; preds = %bb.cx, %.lr.ph.i724.new
  %indvars.iv.i727 = phi i64 [ 0, %.lr.ph.i724.new ], [ %indvars.iv.next.i739.3, %bb.cx ] ; 5 uses
  %.sroa.040.045.i728 = phi <2 x float> [ %i.zr, %.lr.ph.i724.new ], [ %i.abg, %bb.cx ]
  %.sroa.6.044.i729 = phi float [ %i.zs, %.lr.ph.i724.new ], [ %i.abh, %bb.cx ]
  %niter2451 = phi i64 [ 0, %.lr.ph.i724.new ], [ %niter2451.next.3, %bb.cx ]
  %i.aal = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %indvars.iv.i727 ; 2 uses
  %.sroa.07.0.copyload.i730 = load <2 x float>, ptr %i.aal, align 4
  %.sroa.28.0..sroa_idx.i731 = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %.sroa.28.0.copyload.i732 = load float, ptr %.sroa.28.0..sroa_idx.i731, align 4, !tbaa !164
  %i.aam = fmul float %.0.i696, %.sroa.28.0.copyload.i732
  %i.aan = fmul <2 x float> %i.zv, %.sroa.07.0.copyload.i730
  %i.aao = fadd <2 x float> %.sroa.040.045.i728, %i.aan
  %i.aap = fadd float %.sroa.6.044.i729, %i.aam
  %i.aaq = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %indvars.iv.i727 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 12
  %.sroa.07.0.copyload.i730.1 = load <2 x float>, ptr %i.aar, align 4
  %.sroa.28.0..sroa_idx.i731.1 = getelementptr inbounds nuw i8, ptr %i.aaq, i64 20
  %.sroa.28.0.copyload.i732.1 = load float, ptr %.sroa.28.0..sroa_idx.i731.1, align 4, !tbaa !164
  %i.aas = fmul float %.0.i696, %.sroa.28.0.copyload.i732.1
  %i.aat = fmul <2 x float> %i.zv, %.sroa.07.0.copyload.i730.1
  %i.aau = fadd <2 x float> %i.aao, %i.aat
  %i.aav = fadd float %i.aap, %i.aas
  %i.aaw = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %indvars.iv.i727 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 24
  %.sroa.07.0.copyload.i730.2 = load <2 x float>, ptr %i.aax, align 4
  %.sroa.28.0..sroa_idx.i731.2 = getelementptr inbounds nuw i8, ptr %i.aaw, i64 32
  %.sroa.28.0.copyload.i732.2 = load float, ptr %.sroa.28.0..sroa_idx.i731.2, align 4, !tbaa !164
  %i.aay = fmul float %.0.i696, %.sroa.28.0.copyload.i732.2
  %i.aaz = fmul <2 x float> %i.zv, %.sroa.07.0.copyload.i730.2
  %i.aba = fadd <2 x float> %i.aau, %i.aaz
  %i.abb = fadd float %i.aav, %i.aay
  %i.abc = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %indvars.iv.i727 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 36
  %.sroa.07.0.copyload.i730.3 = load <2 x float>, ptr %i.abd, align 4
  %.sroa.28.0..sroa_idx.i731.3 = getelementptr inbounds nuw i8, ptr %i.abc, i64 44
  %.sroa.28.0.copyload.i732.3 = load float, ptr %.sroa.28.0..sroa_idx.i731.3, align 4, !tbaa !164
  %i.abe = fmul float %.0.i696, %.sroa.28.0.copyload.i732.3
  %i.abf = fmul <2 x float> %i.zv, %.sroa.07.0.copyload.i730.3
  %i.abg = fadd <2 x float> %i.aba, %i.abf        ; 3 uses
  %i.abh = fadd float %i.abb, %i.abe              ; 3 uses
  %indvars.iv.next.i739.3 = add nuw nsw i64 %indvars.iv.i727, 4 ; 2 uses
  %niter2451.next.3 = add i64 %niter2451, 4       ; 2 uses
  %niter2451.ncmp.3 = icmp eq i64 %niter2451.next.3, %unroll_iter2450
  br i1 %niter2451.ncmp.3, label %._crit_edge.i718.unr-lcssa, label %bb.cx, !llvm.loop !114

bb.cy:                                            ; preds = %bb.cu, %._crit_edge.i718
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.dk

.loopexit1623:                                    ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.thread.i.i.i741
  %lpad.loopexit1625 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1624:                           ; preds = %.invoke
  %lpad.loopexit.split-lp1626 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cz:                                            ; preds = %.lr.ph1782
  %i.abi = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !36 ; 2 uses
  br label %.preheader21.i1288

.preheader21.i1288:                               ; preds = %bb.cz, %bb.dc
  %indvar2470 = phi i64 [ 0, %bb.cz ], [ %indvar.next2471, %bb.dc ] ; 2 uses
  %.111.i1289 = phi ptr [ %i.abj, %bb.cz ], [ %i.abu, %bb.dc ] ; 4 uses
  %.0.i1290 = phi i32 [ 1, %bb.cz ], [ %i.abv, %bb.dc ] ; 2 uses
  %i.abk = load ptr, ptr %.111.i1289, align 8, !tbaa !20
  %i.abl = icmp eq ptr %i.abk, %i.tn
  br i1 %i.abl, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19.i1291, label %bb.da

bb.da:                                            ; preds = %.preheader21.i1288
  %i.abm = getelementptr inbounds nuw i8, ptr %.111.i1289, i64 8
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !20
  %i.abo = icmp eq ptr %i.abn, %i.tn
  br i1 %i.abo, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19.i1291, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.abp = getelementptr inbounds nuw i8, ptr %.111.i1289, i64 16
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !20
  %i.abr = icmp eq ptr %i.abq, %i.tn
  br i1 %i.abr, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19.i1291, label %.invoke2319

.invoke2319:                                      ; preds = %bb.db, %bb.de
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
          to label %.cont2320 unwind label %.loopexit.split-lp1634

.cont2320:                                        ; preds = %.invoke2319
  unreachable

_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19.i1291: ; preds = %bb.db, %bb.da, %.preheader21.i1288
  %.0711.lcssa.wide.i.i18.i1292 = phi i64 [ 0, %.preheader21.i1288 ], [ 1, %bb.da ], [ 2, %bb.db ]
  %i.abs = getelementptr inbounds nuw i8, ptr %.111.i1289, i64 24
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %.0711.lcssa.wide.i.i18.i1292
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !23 ; 2 uses
  %.not16.i1293 = icmp eq ptr %i.abu, null
  br i1 %.not16.i1293, label %.preheader.i1294, label %bb.dc

bb.dc:                                            ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19.i1291
  %i.abv = add nuw i32 %.0.i1290, 1
  %indvar.next2471 = add i64 %indvar2470, 1
  br label %.preheader21.i1288, !llvm.loop !2

.preheader.i1294:                                 ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19.i1291, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit.i1297
  %indvar2473 = phi i64 [ %indvar.next2474, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit.i1297 ], [ 0, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19.i1291 ] ; 2 uses
  %.2.i1295 = phi ptr [ %i.acg, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit.i1297 ], [ %i.abj, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19.i1291 ] ; 4 uses
  %.1.i1296 = phi i32 [ %i.ach, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit.i1297 ], [ %.0.i1290, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19.i1291 ] ; 2 uses
  %i.abw = load ptr, ptr %.2.i1295, align 8, !tbaa !20
  %i.abx = icmp eq ptr %i.abw, %i.tn              ; 2 uses
  br i1 %i.abx, label %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit.i1297, label %bb.dd

bb.dd:                                            ; preds = %.preheader.i1294
  %i.aby = getelementptr inbounds nuw i8, ptr %.2.i1295, i64 8
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !20
  %i.aca = icmp eq ptr %i.abz, %i.tn
  br i1 %i.aca, label %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit.i1297, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.acb = getelementptr inbounds nuw i8, ptr %.2.i1295, i64 16
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !20
  %i.acd = icmp eq ptr %i.acc, %i.tn
  br i1 %i.acd, label %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit.i1297, label %.invoke2319

_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit.i1297: ; preds = %bb.de, %bb.dd, %.preheader.i1294
  %.0711.lcssa.wide.i.i20.i1298 = phi i64 [ 2, %.preheader.i1294 ], [ 3, %bb.dd ], [ 4, %bb.de ] ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.2.i1295, i64 24
  %.urem.i.i1299 = add nsw i64 %.0711.lcssa.wide.i.i20.i1298, -3
  %28 = select i1 %i.abx, i64 %.0711.lcssa.wide.i.i20.i1298, i64 %.urem.i.i1299
  %i.acf = getelementptr inbounds [8 x i8], ptr %i.ace, i64 %28
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !23 ; 2 uses
  %.not17.i1300 = icmp eq ptr %i.acg, null
  %i.ach = add nuw i32 %.1.i1296, 1               ; 2 uses
  %indvar.next2474 = add i64 %indvar2473, 1
  br i1 %.not17.i1300, label %.noexc770, label %.preheader.i1294, !llvm.loop !3

.noexc770:                                        ; preds = %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit.i1297
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.aci = zext i32 %i.ach to i64                 ; 6 uses
  %i.acj = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #20 ; 3 uses
  %i.ack = ptrtoint ptr %i.acj to i64
  store i64 %i.ack, ptr %9, align 8, !tbaa !58
  store ptr null, ptr %i.mp, align 8, !tbaa !61
  %.not.i.i.i.i747 = icmp samesign ugt i32 %.1.i1296, 15
  store i64 0, ptr %i.mq, align 8
  br i1 %.not.i.i.i.i747, label %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.thread.i.i.i769, label %.lr.ph.i.i.i750.preheader

_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.thread.i.i.i769: ; preds = %.noexc770
  %i.acl = mul nuw nsw i64 %i.aci, 12
  %i.acm = load ptr, ptr %i.acj, align 8, !tbaa !55
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %i.aco = load ptr, ptr %i.acn, align 8
  %i.acp = invoke noundef ptr %i.aco(ptr noundef nonnull align 8 dereferenceable(8) %i.acj, i64 noundef %i.acl, i64 noundef 4)
          to label %.noexc771 unwind label %.loopexit1633, !inline_history !117

.noexc771:                                        ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.thread.i.i.i769
  store i64 %i.aci, ptr %i.mq, align 8, !tbaa !62
  store ptr %i.acp, ptr %i.mp, align 8, !tbaa !61
  br label %.lr.ph.i.i.i750.preheader

.lr.ph.i.i.i750.preheader:                        ; preds = %.noexc770, %.noexc771
  %i.acq = add i64 %indvar2470, 1
  %i.acr = add i64 %indvar2473, %i.acq
  %xtraiter2476 = and i64 %i.aci, 3               ; 3 uses
  %i.acs = icmp ult i64 %i.acr, 3
  br i1 %i.acs, label %.lr.ph.i.i.i750.epil.preheader, label %.lr.ph.i.i.i750.preheader.new

.lr.ph.i.i.i750.preheader.new:                    ; preds = %.lr.ph.i.i.i750.preheader
  %unroll_iter2480 = and i64 %i.aci, 4294967292
  br label %.lr.ph.i.i.i750

.lr.ph.i.i.i750:                                  ; preds = %.lr.ph.i.i.i750, %.lr.ph.i.i.i750.preheader.new
  %.013.i.i.i751 = phi i64 [ 0, %.lr.ph.i.i.i750.preheader.new ], [ %i.adi, %.lr.ph.i.i.i750 ] ; 5 uses
  %niter2481 = phi i64 [ 0, %.lr.ph.i.i.i750.preheader.new ], [ %niter2481.next.3, %.lr.ph.i.i.i750 ]
  %i.act = load ptr, ptr %i.mp, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752 = icmp eq ptr %i.act, null
  %i.acu = select i1 %.not.i9.i.i.i752, ptr %i.ms, ptr %i.act
  %i.acv = getelementptr inbounds nuw [12 x i8], ptr %i.acu, i64 %.013.i.i.i751 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.acv, align 4
  %.sroa.6.0..sroa_idx.i.i754 = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754, align 4
  %i.acw = load ptr, ptr %i.mp, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752.1 = icmp eq ptr %i.acw, null
  %i.acx = select i1 %.not.i9.i.i.i752.1, ptr %i.ms, ptr %i.acw
  %i.acy = getelementptr inbounds nuw [12 x i8], ptr %i.acx, i64 %.013.i.i.i751 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 12
  store <2 x float> zeroinitializer, ptr %i.acz, align 4
  %.sroa.6.0..sroa_idx.i.i754.1 = getelementptr inbounds nuw i8, ptr %i.acy, i64 20
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754.1, align 4
  %i.ada = load ptr, ptr %i.mp, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752.2 = icmp eq ptr %i.ada, null
  %i.adb = select i1 %.not.i9.i.i.i752.2, ptr %i.ms, ptr %i.ada
  %i.adc = getelementptr inbounds nuw [12 x i8], ptr %i.adb, i64 %.013.i.i.i751 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  store <2 x float> zeroinitializer, ptr %i.add, align 4
  %.sroa.6.0..sroa_idx.i.i754.2 = getelementptr inbounds nuw i8, ptr %i.adc, i64 32
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754.2, align 4
  %i.ade = load ptr, ptr %i.mp, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752.3 = icmp eq ptr %i.ade, null
  %i.adf = select i1 %.not.i9.i.i.i752.3, ptr %i.ms, ptr %i.ade
  %i.adg = getelementptr inbounds nuw [12 x i8], ptr %i.adf, i64 %.013.i.i.i751 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 36
  store <2 x float> zeroinitializer, ptr %i.adh, align 4
  %.sroa.6.0..sroa_idx.i.i754.3 = getelementptr inbounds nuw i8, ptr %i.adg, i64 44
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754.3, align 4
  %i.adi = add nuw i64 %.013.i.i.i751, 4          ; 2 uses
  %niter2481.next.3 = add i64 %niter2481, 4       ; 2 uses
  %niter2481.ncmp.3 = icmp eq i64 %niter2481.next.3, %unroll_iter2480
  br i1 %niter2481.ncmp.3, label %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa, label %.lr.ph.i.i.i750, !llvm.loop !111

_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa: ; preds = %.lr.ph.i.i.i750
  %lcmp.mod2478.not = icmp eq i64 %xtraiter2476, 0
  br i1 %lcmp.mod2478.not, label %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758, label %.lr.ph.i.i.i750.epil.preheader

.lr.ph.i.i.i750.epil.preheader:                   ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa, %.lr.ph.i.i.i750.preheader
  %.013.i.i.i751.epil.init = phi i64 [ 0, %.lr.ph.i.i.i750.preheader ], [ %i.adi, %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa ]
  %lcmp.mod2479 = icmp ne i64 %xtraiter2476, 0
  call void @llvm.assume(i1 %lcmp.mod2479)
  br label %.lr.ph.i.i.i750.epil

.lr.ph.i.i.i750.epil:                             ; preds = %.lr.ph.i.i.i750.epil, %.lr.ph.i.i.i750.epil.preheader
  %.013.i.i.i751.epil = phi i64 [ %i.adm, %.lr.ph.i.i.i750.epil ], [ %.013.i.i.i751.epil.init, %.lr.ph.i.i.i750.epil.preheader ] ; 2 uses
  %epil.iter2477 = phi i64 [ %epil.iter2477.next, %.lr.ph.i.i.i750.epil ], [ 0, %.lr.ph.i.i.i750.epil.preheader ]
  %i.adj = load ptr, ptr %i.mp, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752.epil = icmp eq ptr %i.adj, null
  %i.adk = select i1 %.not.i9.i.i.i752.epil, ptr %i.ms, ptr %i.adj
  %i.adl = getelementptr inbounds nuw [12 x i8], ptr %i.adk, i64 %.013.i.i.i751.epil ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.adl, align 4
  %.sroa.6.0..sroa_idx.i.i754.epil = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754.epil, align 4
  %i.adm = add nuw i64 %.013.i.i.i751.epil, 1
  %epil.iter2477.next = add i64 %epil.iter2477, 1 ; 2 uses
  %epil.iter2477.cmp.not = icmp eq i64 %epil.iter2477.next, %xtraiter2476
  br i1 %epil.iter2477.cmp.not, label %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758, label %.lr.ph.i.i.i750.epil, !llvm.loop !118

_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758: ; preds = %.lr.ph.i.i.i750.epil, %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa
  %.pre.i757 = load ptr, ptr %i.mp, align 8, !tbaa !61 ; 2 uses
  store i64 %i.aci, ptr %i.mr, align 8, !tbaa !63
  %.not.i.i759 = icmp eq ptr %.pre.i757, null
  %i.adn = select i1 %.not.i.i759, ptr %i.ms, ptr %.pre.i757
  invoke void @_ZN4pbrt8SDVertex7oneRingEPNS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(34) %i.tn, ptr noundef nonnull %i.adn)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758
  %.sroa.029.0.copyload.i = load <2 x float>, ptr %i.tn, align 8
  %.sroa.230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %.sroa.230.0.copyload.i = load float, ptr %.sroa.230.0..sroa_idx.i, align 8, !tbaa !164
  %i.ado = load ptr, ptr %i.mp, align 8, !tbaa !61 ; 4 uses
  %.not.i.i39.i = icmp eq ptr %i.ado, null        ; 3 uses
  %i.adp = select i1 %.not.i.i39.i, ptr %i.ms, ptr %i.ado ; 2 uses
  %.sroa.019.0.copyload.i760 = load <2 x float>, ptr %i.adp, align 4 ; 2 uses
  %.sroa.gep55.i = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %.sroa.sel.i = select i1 %.not.i.i39.i, ptr %.sroa.gep.i, ptr %.sroa.gep55.i
  %.sroa.220.0.copyload.i761 = load float, ptr %.sroa.sel.i, align 4, !tbaa !164
  %i.adq = getelementptr [12 x i8], ptr %i.adp, i64 %i.aci ; 2 uses
  %i.adr = getelementptr i8, ptr %i.adq, i64 -12
  %.sroa.07.0.copyload.i762 = load <2 x float>, ptr %i.adr, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx.i763 = getelementptr i8, ptr %i.adq, i64 -4
  %.sroa.28.0.copyload.i764 = load float, ptr %.sroa.28.0..sroa_idx.i763, align 4, !tbaa !164
  br i1 %.not.i.i39.i, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ads = load i64, ptr %i.mq, align 8, !tbaa !62
  %i.adt = mul i64 %i.ads, 12
  %i.adu = load ptr, ptr %9, align 8, !tbaa !64   ; 2 uses
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !55
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 24
  %i.adx = load ptr, ptr %i.adw, align 8
  invoke void %i.adx(ptr noundef nonnull align 8 dereferenceable(8) %i.adu, ptr noundef nonnull %i.ado, i64 noundef %i.adt, i64 noundef 4)
          to label %bb.dj unwind label %bb.dh, !inline_history !1

bb.dh:                                            ; preds = %bb.dg
  %i.ady = landingpad { ptr, i32 }
          catch ptr null
  %i.adz = extractvalue { ptr, i32 } %i.ady, 0
  call void @__clang_call_terminate(ptr %i.adz) #22
  unreachable

bb.di:                                            ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758
  %i.aea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.body

bb.dj:                                            ; preds = %bb.dg, %bb.df
  %i.aeb = fmul float %.sroa.28.0.copyload.i764, 1.250000e-01
  %i.aec = fmul float %.sroa.220.0.copyload.i761, 1.250000e-01
  %i.aed = fmul float %.sroa.230.0.copyload.i, 7.500000e-01
  %i.aee = fadd float %i.aed, %i.aec
  %i.aef = fadd float %i.aee, %i.aeb
  %i.aeg = shufflevector <2 x float> %.sroa.019.0.copyload.i760, <2 x float> %.sroa.07.0.copyload.i762, <2 x i32> <i32 1, i32 3>
  %i.aeh = fmul <2 x float> %i.aeg, splat (float 1.250000e-01) ; 2 uses
  %i.aei = shufflevector <2 x float> %.sroa.07.0.copyload.i762, <2 x float> %i.aeh, <2 x i32> <i32 0, i32 3>
  %i.aej = fmul <2 x float> %i.aei, <float 1.250000e-01, float 1.000000e+00>
  %i.aek = shufflevector <2 x float> %.sroa.019.0.copyload.i760, <2 x float> %i.aeh, <2 x i32> <i32 0, i32 2>
  %i.ael = fmul <2 x float> %i.aek, <float 1.250000e-01, float 1.000000e+00>
  %i.aem = fmul <2 x float> %.sroa.029.0.copyload.i, splat (float 7.500000e-01)
  %i.aen = fadd <2 x float> %i.aem, %i.ael
  %i.aeo = fadd <2 x float> %i.aen, %i.aej
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.dk

.loopexit1633:                                    ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.thread.i.i.i769
  %lpad.loopexit1635 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1634:                           ; preds = %.invoke2319
  %lpad.loopexit.split-lp1636 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dk:                                            ; preds = %bb.cm, %bb.cy, %bb.dj
  %.sroa.040.4.vec.insert.i.lcssa.sink = phi <2 x float> [ %.lcssa2416, %bb.cm ], [ %.lcssa2413, %bb.cy ], [ %i.aeo, %bb.dj ]
  %.lcssa2279.sink = phi float [ %.lcssa2415, %bb.cm ], [ %.lcssa2412, %bb.cy ], [ %i.aef, %bb.dj ]
  %i.aep = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !163 ; 2 uses
  store <2 x float> %.sroa.040.4.vec.insert.i.lcssa.sink, ptr %i.aeq, align 8
  %.sroa.5441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8
  store float %.lcssa2279.sink, ptr %.sroa.5441.0..sroa_idx, align 8
  %i.aer = getelementptr inbounds nuw i8, ptr %.sroa.01479.01780, i64 8 ; 2 uses
  %.not1596 = icmp eq ptr %i.aer, %i.pa
  br i1 %.not1596, label %._crit_edge1783, label %.lr.ph1782

._crit_edge1791:                                  ; preds = %bb.dl, %._crit_edge1783
  %i.aes = load ptr, ptr %16, align 8, !tbaa !161 ; 2 uses
  %i.aet = load ptr, ptr %i.lx, align 8, !tbaa !161 ; 2 uses
  %.not15981792 = icmp eq ptr %i.aes, %i.aet
  br i1 %.not15981792, label %._crit_edge1796, label %.lr.ph1795
end_hunk_0
begin_hunk_1_@_ZN4pbrt13LoopSubdivideEPKNS_9TransformEbiN4pstd4spanIKiEENS4_IKNS_6Point3IfEEEENS3_3pmr21polymorphic_allocatorISt4byteEE:.noexc
  %i.bzm = sub i64 %i.bzk, %i.bzl
  call void @_ZdlPvm(ptr noundef nonnull %i.bzi, i64 noundef %i.bzm) #19
  br label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EED2Ev.exit1197

_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EED2Ev.exit1197: ; preds = %bb.km, %_ZN4pstd3pmr25monotonic_buffer_resourceD2Ev.exit1195, %bb.az
  %.pn620.pn.pn.pn = phi { ptr, i32 } [ %i.nj, %bb.az ], [ %.pn620.pn, %_ZN4pstd3pmr25monotonic_buffer_resourceD2Ev.exit1195 ], [ %.pn620.pn, %bb.km ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.bzn = load ptr, ptr %15, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i1198 = icmp eq ptr %i.bzn, null
  br i1 %.not.i.i.i1198, label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1199, label %bb.kn

bb.kn:                                            ; preds = %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EED2Ev.exit1197
  %i.bzo = load ptr, ptr %i.le, align 8, !tbaa !43
  %i.bzp = ptrtoint ptr %i.bzo to i64
  %i.bzq = ptrtoint ptr %i.bzn to i64
  %i.bzr = sub i64 %i.bzp, %i.bzq
  call void @_ZdlPvm(ptr noundef nonnull %i.bzn, i64 noundef %i.bzr) #19
  br label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1199

_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1199: ; preds = %bb.kn, %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EED2Ev.exit1197, %bb.ay
  %.pn620.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ni, %bb.ay ], [ %.pn620.pn.pn.pn, %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EED2Ev.exit1197 ], [ %.pn620.pn.pn.pn, %bb.kn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.ko

bb.ko:                                            ; preds = %.loopexit1644, %.loopexit.split-lp1645, %bb.s, %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1199
  %i.bzs = phi ptr [ %i.fj, %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1199 ], [ %i.dj, %bb.s ], [ %i.fj, %.loopexit1644 ], [ %i.fj, %.loopexit.split-lp1645 ]
  %.sroa.17.0.lcssa2215 = phi ptr [ %.sroa.17.0.lcssa22142233, %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1199 ], [ %.sroa.17.4, %bb.s ], [ %.sroa.17.0.lcssa22142233, %.loopexit1644 ], [ %.sroa.17.0.lcssa22142233, %.loopexit.split-lp1645 ]
  %.sroa.01535.0.lcssa2198 = phi ptr [ %.sroa.01535.0.lcssa21972235, %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1199 ], [ %.sroa.01535.4, %bb.s ], [ %.sroa.01535.0.lcssa21972235, %.loopexit1644 ], [ %.sroa.01535.0.lcssa21972235, %.loopexit.split-lp1645 ]
  %.pn628.pn = phi { ptr, i32 } [ %.pn620.pn.pn.pn.pn, %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1199 ], [ %i.ho, %bb.s ], [ %lpad.loopexit1646, %.loopexit1644 ], [ %lpad.loopexit.split-lp1647, %.loopexit.split-lp1645 ]
  %i.bzt = load ptr, ptr %i.bzs, align 8, !tbaa !28
  invoke void @_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.bzt)
          to label %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EED2Ev.exit1200 unwind label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bzu = landingpad { ptr, i32 }
          catch ptr null
  %i.bzv = extractvalue { ptr, i32 } %i.bzu, 0
  call void @__clang_call_terminate(ptr %i.bzv) #22
  unreachable

_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EED2Ev.exit1200: ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.kq

.thread1583:                                      ; preds = %.loopexit1656, %.loopexit.split-lp1657, %bb.h
  %.sroa.171558.01738 = phi ptr [ %.sroa.171558.0.lcssa, %bb.h ], [ %.sroa.121555.01741, %.loopexit1656 ], [ %.sroa.121555.01741, %.loopexit.split-lp1657 ]
  %.sroa.01548.01731 = phi ptr [ %.sroa.01548.0.lcssa, %bb.h ], [ %.sroa.01548.01742, %.loopexit1656 ], [ %.sroa.01548.01742, %.loopexit.split-lp1657 ]
  %.pn634.ph = phi { ptr, i32 } [ %i.br, %bb.h ], [ %lpad.loopexit1658, %.loopexit1656 ], [ %lpad.loopexit.split-lp1659, %.loopexit.split-lp1657 ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #19
  br label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1208

bb.kq:                                            ; preds = %.loopexit1651, %.loopexit.split-lp1652, %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EED2Ev.exit1200
  %.sroa.01535.01726 = phi ptr [ %.sroa.01535.0.lcssa2198, %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EED2Ev.exit1200 ], [ %.sroa.01535.01746, %.loopexit1651 ], [ %.sroa.01535.01746, %.loopexit.split-lp1652 ] ; 3 uses
  %.sroa.17.01720 = phi ptr [ %.sroa.17.0.lcssa2215, %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EED2Ev.exit1200 ], [ %.sroa.17.01748, %.loopexit1651 ], [ %.sroa.17.01748, %.loopexit.split-lp1652 ]
  %.pn631 = phi { ptr, i32 } [ %.pn628.pn, %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EED2Ev.exit1200 ], [ %lpad.loopexit1653, %.loopexit1651 ], [ %lpad.loopexit.split-lp1654, %.loopexit.split-lp1652 ] ; 2 uses
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #19
  call void @_ZdaPv(ptr noundef nonnull %i.i) #19
  %.not.i.i.i1207 = icmp eq ptr %.sroa.01535.01726, null
  br i1 %.not.i.i.i1207, label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1208, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bzw = ptrtoint ptr %.sroa.17.01720 to i64
  %i.bzx = ptrtoint ptr %.sroa.01535.01726 to i64
  %i.bzy = sub i64 %i.bzw, %i.bzx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01535.01726, i64 noundef %i.bzy) #19
  br label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1208

_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1208: ; preds = %.thread1583, %bb.kq, %bb.kr
  %.sroa.171558.01737 = phi ptr [ %.sroa.171558.01738, %.thread1583 ], [ %.sroa.171558.0.lcssa, %bb.kq ], [ %.sroa.171558.0.lcssa, %bb.kr ]
  %.sroa.01548.01730 = phi ptr [ %.sroa.01548.01731, %.thread1583 ], [ %.sroa.01548.0.lcssa, %bb.kq ], [ %.sroa.01548.0.lcssa, %bb.kr ] ; 3 uses
  %.pn634.pn1582 = phi { ptr, i32 } [ %.pn634.ph, %.thread1583 ], [ %.pn631, %bb.kq ], [ %.pn631, %bb.kr ]
  %.not.i.i.i1209 = icmp eq ptr %.sroa.01548.01730, null
  br i1 %.not.i.i.i1209, label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EED2Ev.exit1210, label %bb.ks

bb.ks:                                            ; preds = %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1208
  %i.bzz = ptrtoint ptr %.sroa.171558.01737 to i64
  %i.caa = ptrtoint ptr %.sroa.01548.01730 to i64
  %i.cab = sub i64 %i.bzz, %i.caa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01548.01730, i64 noundef %i.cab) #19
  br label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EED2Ev.exit1210

_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EED2Ev.exit1210: ; preds = %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EED2Ev.exit1208, %bb.ks
  resume { ptr, i32 } %.pn634.pn1582
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4pbrt8SDVertex7valenceEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.d = load i8, ptr %i.c, align 1, !tbaa !47, !range !48, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.preheader21, label %.preheader22

.preheader22:                                     ; preds = %bb.a, %bb.e
  %.010 = phi ptr [ %i.p, %bb.e ], [ %i.b, %bb.a ] ; 4 uses
  %.09 = phi i32 [ %i.q, %bb.e ], [ 1, %bb.a ]    ; 2 uses
  %i.f = load ptr, ptr %.010, align 8, !tbaa !20
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit, label %bb.b

bb.b:                                             ; preds = %.preheader22
  %i.h = getelementptr inbounds nuw i8, ptr %.010, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
  unreachable

_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit:     ; preds = %.preheader22, %bb.b, %bb.c
  %.0711.lcssa.wide.i.i = phi i64 [ 0, %.preheader22 ], [ 1, %bb.b ], [ 2, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.010, i64 24
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0711.lcssa.wide.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.p, %i.b
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit
  %i.q = add nuw nsw i32 %.09, 1
  br label %.preheader22, !llvm.loop !0

.preheader21:                                     ; preds = %bb.a, %bb.i
  %.111 = phi ptr [ %i.ab, %bb.i ], [ %i.b, %bb.a ] ; 4 uses
  %.0 = phi i32 [ %i.ac, %bb.i ], [ 1, %bb.a ]    ; 2 uses
  %i.r = load ptr, ptr %.111, align 8, !tbaa !20
  %i.s = icmp eq ptr %i.r, %0
  br i1 %i.s, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19, label %bb.f

bb.f:                                             ; preds = %.preheader21
  %i.t = getelementptr inbounds nuw i8, ptr %.111, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.111, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = icmp eq ptr %i.x, %0
  br i1 %i.y, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
  unreachable

_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19:   ; preds = %.preheader21, %bb.f, %bb.g
  %.0711.lcssa.wide.i.i18 = phi i64 [ 0, %.preheader21 ], [ 1, %bb.f ], [ 2, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %.111, i64 24
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0711.lcssa.wide.i.i18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %.not16 = icmp eq ptr %i.ab, null
  br i1 %.not16, label %.preheader, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19
  %i.ac = add nuw nsw i32 %.0, 1
  br label %.preheader21, !llvm.loop !2

.preheader:                                       ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit
  %.2 = phi ptr [ %i.an, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit ], [ %i.b, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19 ] ; 4 uses
  %.1 = phi i32 [ %i.ao, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit ], [ %.0, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit19 ]
  %i.ad = load ptr, ptr %.2, align 8, !tbaa !20
  %i.ae = icmp eq ptr %i.ad, %0                   ; 2 uses
  br i1 %i.ae, label %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ah = icmp eq ptr %i.ag, %0
  br i1 %i.ah, label %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = icmp eq ptr %i.aj, %0
  br i1 %i.ak, label %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
  unreachable

_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit:     ; preds = %.preheader, %bb.j, %bb.k
  %.0711.lcssa.wide.i.i20 = phi i64 [ 2, %.preheader ], [ 3, %bb.j ], [ 4, %bb.k ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %.urem.i = add nsw i64 %.0711.lcssa.wide.i.i20, -3
  %1 = select i1 %i.ae, i64 %.0711.lcssa.wide.i.i20, i64 %.urem.i
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %1
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23 ; 2 uses
  %.not17 = icmp eq ptr %i.an, null
  %i.ao = add nuw nsw i32 %.1, 1                  ; 2 uses
  br i1 %.not17, label %.loopexit, label %.preheader, !llvm.loop !3

.loopexit:                                        ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit
  %.012 = phi i32 [ %i.ao, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit ], [ %.09, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit ]
  ret i32 %.012
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %1, align 8, !tbaa !45     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = load ptr, ptr %0, align 8, !tbaa !45     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIPN4pbrt6SDFaceESaIS2_EE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseIPN4pbrt6SDFaceESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !90

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4pbrt6SDFaceESaIS2_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN4pbrt6SDFaceESaIS2_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !23
  store ptr %i.r, ptr %i.o, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN4pbrt6SDFaceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #19
  br label %_ZNSt12_Vector_baseIPN4pbrt6SDFaceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIPN4pbrt6SDFaceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !43
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt6SDFaceESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !90

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt6SDFaceESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt6SDFaceESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !23
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !23
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt6SDFaceESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !90

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !45
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !46 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !45
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !46
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPPN4pbrt6SDFaceES3_ET0_T_S5_S4_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPPN4pbrt6SDFaceES3_ET0_T_S5_S4_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !23
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !23
  br label %_ZSt4copyIPPN4pbrt6SDFaceES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPN4pbrt6SDFaceES3_ET0_T_S5_S4_.exit:   ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !90

bb.r:                                             ; preds = %_ZSt4copyIPPN4pbrt6SDFaceES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt6SDFaceESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.s:                                             ; preds = %_ZSt4copyIPPN4pbrt6SDFaceES3_ET0_T_S5_S4_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt6SDFaceESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !23
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !23
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt6SDFaceESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt6SDFaceESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN4pbrt6SDFaceESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !46
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt6SDFaceESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = load ptr, ptr %1, align 8, !tbaa !52     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = load ptr, ptr %0, align 8, !tbaa !52     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIPN4pbrt8SDVertexESaIS2_EE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt12_Vector_baseIPN4pbrt8SDVertexESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !90

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4pbrt8SDVertexESaIS2_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EEaSERKS4_:bb.a
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPPN4pbrt8SDVertexES3_ET0_T_S5_S4_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !20
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !20
  br label %_ZSt4copyIPPN4pbrt8SDVertexES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPN4pbrt8SDVertexES3_ET0_T_S5_S4_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !90

bb.r:                                             ; preds = %_ZSt4copyIPPN4pbrt8SDVertexES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt8SDVertexESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.s:                                             ; preds = %_ZSt4copyIPPN4pbrt8SDVertexES3_ET0_T_S5_S4_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt8SDVertexESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !20
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt8SDVertexESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt8SDVertexESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN4pbrt8SDVertexESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !53
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4pbrt8SDVertexESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt8SDVertex7oneRingEPNS_6Point3IfEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(34) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.b = load i8, ptr %i.a, align 1, !tbaa !47, !range !48, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.a, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit
  %.014 = phi ptr [ %i.q, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit ], [ %1, %bb.a ] ; 2 uses
  %.013 = phi ptr [ %i.ab, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit ], [ %i.e, %bb.a ] ; 8 uses
  %i.f = load ptr, ptr %.013, align 8, !tbaa !20
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit, label %bb.b

bb.b:                                             ; preds = %.preheader47
  %i.h = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
  unreachable

_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit:     ; preds = %.preheader47, %bb.b, %bb.c
  %i.n = phi i64 [ 1, %.preheader47 ], [ 2, %bb.b ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.013, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %.014, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.014, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  %i.r = load ptr, ptr %.013, align 8, !tbaa !20
  %i.s = icmp eq ptr %i.r, %0
  br i1 %i.s, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = icmp eq ptr %i.x, %0
  br i1 %i.y, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
  unreachable

_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit:     ; preds = %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit, %bb.e, %bb.f
  %.0711.lcssa.wide.i.i = phi i64 [ 0, %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit ], [ 1, %bb.e ], [ 2, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0711.lcssa.wide.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !36
  %.not = icmp eq ptr %i.ab, %i.ac
  br i1 %.not, label %.loopexit, label %.preheader47, !llvm.loop !179

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.0 = phi ptr [ %.0.be, %.preheader.backedge ], [ %i.e, %bb.a ] ; 9 uses
  %i.ad = load ptr, ptr %.0, align 8, !tbaa !20
  %i.ae = icmp eq ptr %i.ad, %0
  br i1 %i.ae, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ah = icmp eq ptr %i.ag, %0
  br i1 %i.ah, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = icmp eq ptr %i.aj, %0
  br i1 %i.ak, label %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread40, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
  unreachable

_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20:   ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %.not17 = icmp eq ptr %i.am, null
  br i1 %.not17, label %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit21, label %.preheader.backedge

_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread40: ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %.not1742 = icmp eq ptr %i.ao, null
  br i1 %.not1742, label %bb.k, label %.preheader.backedge

.preheader.backedge:                              ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread40, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread
  %.0.be = phi ptr [ %i.ao, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread40 ], [ %i.am, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20 ], [ %i.aq, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread ]
  br label %.preheader, !llvm.loop !180

_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread: ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23 ; 2 uses
  %.not1726 = icmp eq ptr %i.aq, null
  br i1 %.not1726, label %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit21, label %.preheader.backedge

bb.k:                                             ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread40
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.at = icmp eq ptr %i.as, %0
  br i1 %i.at, label %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
  unreachable

_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit21:   ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20, %bb.k
  %i.au = phi i64 [ 0, %bb.k ], [ 1, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20.thread ], [ 2, %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit20 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit, %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit21
  %.pn = phi ptr [ %1, %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit21 ], [ %.115, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit ]
  %.1 = phi ptr [ %.0, %_ZN4pbrt6SDFace8nextVertEPNS_8SDVertexE.exit21 ], [ %i.br, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit ] ; 8 uses
  %.115 = getelementptr inbounds nuw i8, ptr %.pn, i64 12 ; 2 uses
  %i.ax = load ptr, ptr %.1, align 8, !tbaa !20
  %i.ay = icmp eq ptr %i.ax, %0                   ; 2 uses
  br i1 %i.ay, label %_ZN4pbrt6SDFace8prevVertEPNS_8SDVertexE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.bb = icmp eq ptr %i.ba, %0
  br i1 %i.bb, label %_ZN4pbrt6SDFace8prevVertEPNS_8SDVertexE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20
  %i.be = icmp eq ptr %i.bd, %0
  br i1 %i.be, label %_ZN4pbrt6SDFace8prevVertEPNS_8SDVertexE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
  unreachable

_ZN4pbrt6SDFace8prevVertEPNS_8SDVertexE.exit:     ; preds = %bb.m, %bb.n, %bb.o
  %.0711.lcssa.wide.i.i22 = phi i64 [ 2, %bb.m ], [ 3, %bb.n ], [ 4, %bb.o ] ; 2 uses
  %.urem.i = add nsw i64 %.0711.lcssa.wide.i.i22, -3
  %2 = select i1 %i.ay, i64 %.0711.lcssa.wide.i.i22, i64 %.urem.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %.1, i64 %2
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.115, ptr noundef nonnull align 8 dereferenceable(12) %i.bg, i64 12, i1 false)
  %i.bh = load ptr, ptr %.1, align 8, !tbaa !20
  %i.bi = icmp eq ptr %i.bh, %0                   ; 2 uses
  br i1 %i.bi, label %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4pbrt6SDFace8prevVertEPNS_8SDVertexE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.bl = icmp eq ptr %i.bk, %0
  br i1 %i.bl, label %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.bo = icmp eq ptr %i.bn, %0
  br i1 %i.bo, label %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
  unreachable

_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit:     ; preds = %_ZN4pbrt6SDFace8prevVertEPNS_8SDVertexE.exit, %bb.q, %bb.r
  %.0711.lcssa.wide.i.i23 = phi i64 [ 2, %_ZN4pbrt6SDFace8prevVertEPNS_8SDVertexE.exit ], [ 3, %bb.q ], [ 4, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %.urem.i24 = add nsw i64 %.0711.lcssa.wide.i.i23, -3
  %3 = select i1 %i.bi, i64 %.0711.lcssa.wide.i.i23, i64 %.urem.i24
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %3
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23 ; 2 uses
  %.not18 = icmp eq ptr %i.br, null
  br i1 %.not18, label %.loopexit, label %bb.m, !llvm.loop !181

.loopexit:                                        ; preds = %_ZN4pbrt6SDFace8nextFaceEPNS_8SDVertexE.exit, %_ZN4pbrt6SDFace8prevFaceEPNS_8SDVertexE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit, label %bb.b, !llvm.loop !4

_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !20
  store ptr %i.n, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 0, ptr %i.o, align 8, !tbaa !81
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.w = icmp ult ptr %i.t, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !30
  br label %_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  br label %_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIPN4pbrt8SDVertexEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  invoke void @_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef ptr @_ZN4pstd3pmr20get_default_resourceEv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4pbrt6SDEdgeESt4pairIKS1_PNS0_8SDVertexEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @_ZNSt8_Rb_treeIN4pbrt6SDEdgeESt4pairIKS1_PNS0_8SDVertexEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !182

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @_ZNSt8_Rb_treeIPN4pbrt8SDVertexESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !183

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4pstd3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
end_hunk_2
