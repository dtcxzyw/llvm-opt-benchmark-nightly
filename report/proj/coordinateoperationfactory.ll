Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/coordinateoperationfactory?download=true
inline.NumInlined: 9028
inline.NumDeleted: 2068
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZN5osgeo4proj9operation26CoordinateOperationFactory7Private34createOperationsCompoundToCompoundERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextEPKNS8_11CompoundCRSESP_RSt6vectorINS6_IS7_INS1_19CoordinateOperationEEEESaIST_EE:bb.a
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit846.2

bb.nz:                                            ; preds = %bb.nu
  store i32 0, ptr %i.atp, align 8, !tbaa !93
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ato, i64 12
  store i32 0, ptr %i.atx, align 4, !tbaa !94
  %i.aty = load ptr, ptr %i.ato, align 8, !tbaa !80
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 16
  %i.aua = load ptr, ptr %i.atz, align 8
  call void %i.aua(ptr noundef nonnull align 8 dereferenceable(16) %i.ato) #31, !inline_history !9
  %i.aub = load ptr, ptr %i.ato, align 8, !tbaa !80
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 24
  %i.aud = load ptr, ptr %i.auc, align 8
  call void %i.aud(ptr noundef nonnull align 8 dereferenceable(16) %i.ato) #31, !inline_history !9
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit846.2

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit846.2: ; preds = %bb.nz, %bb.ny, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i844.2, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit846.1
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #31
  br label %.critedge627

bb.oa:                                            ; preds = %.critedge657.preheader
  %i.aue = getelementptr inbounds nuw i8, ptr %.sroa.11.6, i64 8 ; 4 uses
  %i.auf = load atomic i64, ptr %i.aue acquire, align 8 ; 2 uses
  %i.aug = icmp eq i64 %i.auf, 4294967297
  %i.auh = trunc i64 %i.auf to i32                ; 2 uses
  br i1 %i.aug, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %bb.oa
  store i32 0, ptr %i.aue, align 8, !tbaa !93
  %i.aui = getelementptr inbounds nuw i8, ptr %.sroa.11.6, i64 12
  store i32 0, ptr %i.aui, align 4, !tbaa !94
  %i.auj = load ptr, ptr %.sroa.11.6, align 8, !tbaa !80
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 16
  %i.aul = load ptr, ptr %i.auk, align 8
  call void %i.aul(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.6) #31, !inline_history !9
  %i.aum = load ptr, ptr %.sroa.11.6, align 8, !tbaa !80
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 24
  %i.auo = load ptr, ptr %i.aun, align 8
  call void %i.auo(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.6) #31, !inline_history !9
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit851

bb.oc:                                            ; preds = %bb.oa
  %i.aup = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i848 = icmp eq i8 %i.aup, 0
  br i1 %.not.i.i.i.i848, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.auq = add nsw i32 %i.auh, -1
  store i32 %i.auq, ptr %i.aue, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849

bb.oe:                                            ; preds = %bb.oc
  %i.aur = atomicrmw volatile add ptr %i.aue, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849: ; preds = %bb.oe, %bb.od
  %.0.i.i.i.i.i850 = phi i32 [ %i.auh, %bb.od ], [ %i.aur, %bb.oe ]
  %i.aus = icmp eq i32 %.0.i.i.i.i.i850, 1
  br i1 %i.aus, label %bb.of, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit851, !prof !95

bb.of:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.6) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit851

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit851: ; preds = %.critedge657.preheader, %bb.ob, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849, %bb.of
  %.not.i.i.i847.1 = icmp eq ptr %.sroa.5.6, null
  br i1 %.not.i.i.i847.1, label %.critedge627, label %bb.og

bb.og:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit851
  %i.aut = getelementptr inbounds nuw i8, ptr %.sroa.5.6, i64 8 ; 4 uses
  %i.auu = load atomic i64, ptr %i.aut acquire, align 8 ; 2 uses
  %i.auv = icmp eq i64 %i.auu, 4294967297
  %i.auw = trunc i64 %i.auu to i32                ; 2 uses
  br i1 %i.auv, label %bb.ol, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.aux = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i848.1 = icmp eq i8 %i.aux, 0
  br i1 %.not.i.i.i.i848.1, label %bb.oj, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.auy = add nsw i32 %i.auw, -1
  store i32 %i.auy, ptr %i.aut, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849.1

bb.oj:                                            ; preds = %bb.oh
  %i.auz = atomicrmw volatile add ptr %i.aut, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849.1: ; preds = %bb.oj, %bb.oi
  %.0.i.i.i.i.i850.1 = phi i32 [ %i.auw, %bb.oi ], [ %i.auz, %bb.oj ]
  %i.ava = icmp eq i32 %.0.i.i.i.i.i850.1, 1
  br i1 %i.ava, label %bb.ok, label %.critedge627, !prof !95

bb.ok:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849.1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.6) #31
  br label %.critedge627

bb.ol:                                            ; preds = %bb.og
  store i32 0, ptr %i.aut, align 8, !tbaa !93
  %i.avb = getelementptr inbounds nuw i8, ptr %.sroa.5.6, i64 12
  store i32 0, ptr %i.avb, align 4, !tbaa !94
  %i.avc = load ptr, ptr %.sroa.5.6, align 8, !tbaa !80
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 16
  %i.ave = load ptr, ptr %i.avd, align 8
  call void %i.ave(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.6) #31, !inline_history !9
  %i.avf = load ptr, ptr %.sroa.5.6, align 8, !tbaa !80
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 24
  %i.avh = load ptr, ptr %i.avg, align 8
  call void %i.avh(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.6) #31, !inline_history !9
  br label %.critedge627

.critedge627:                                     ; preds = %bb.ol, %bb.ok, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849.1, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit851, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit846.2
  %.sroa.11.7 = phi ptr [ %.sroa.11.6, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit846.2 ], [ undef, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit851 ], [ undef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849.1 ], [ undef, %bb.ok ], [ undef, %bb.ol ] ; 4 uses
  %.sroa.5.7 = phi ptr [ %.sroa.5.6, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit846.2 ], [ undef, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit851 ], [ undef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i849.1 ], [ undef, %bb.ok ], [ undef, %bb.ol ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #31
  %i.avi = load ptr, ptr %i.aka, align 8, !tbaa !154
  %i.avj = getelementptr inbounds i8, ptr %i.avi, i64 -16
  %i.avk = invoke noundef double @_ZN5osgeo4proj9operation11getAccuracyERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.avj)
          to label %bb.om unwind label %bb.pg     ; 4 uses

bb.om:                                            ; preds = %.critedge627
  %i.avl = load ptr, ptr %i.aka, align 8, !tbaa !154
  %i.avm = getelementptr inbounds i8, ptr %i.avl, i64 -16
  %.val663 = load ptr, ptr %i.avm, align 8, !tbaa !191 ; 3 uses
  %i.avn = icmp eq ptr %.val663, null
  br i1 %i.avn, label %_ZN5osgeo4proj9operationL12getStepCountERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE.exit, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.avo = load ptr, ptr %.val663, align 8, !tbaa !80
  %i.avp = icmp eq ptr %i.avo, getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5osgeo4proj9operation21ConcatenatedOperationE, i64 16)
  br i1 %i.avp, label %bb.oo, label %_ZN5osgeo4proj9operationL12getStepCountERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE.exit

bb.oo:                                            ; preds = %bb.on
  %i.avq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation21ConcatenatedOperation10operationsEv(ptr noundef nonnull align 8 dereferenceable(80) %.val663)
          to label %.noexc852 unwind label %bb.pg ; 2 uses

.noexc852:                                        ; preds = %bb.oo
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 8
  %i.avs = load ptr, ptr %i.avr, align 8, !tbaa !158
  %i.avt = load ptr, ptr %i.avq, align 8, !tbaa !157
  %i.avu = ptrtoint ptr %i.avs to i64
  %i.avv = ptrtoint ptr %i.avt to i64
  %i.avw = sub i64 %i.avu, %i.avv
  %i.avx = ashr exact i64 %i.avw, 4
  br label %_ZN5osgeo4proj9operationL12getStepCountERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE.exit

_ZN5osgeo4proj9operationL12getStepCountERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE.exit: ; preds = %.noexc852, %bb.on, %bb.om
  %.0.i = phi i64 [ %i.avx, %.noexc852 ], [ 1, %bb.om ], [ 1, %bb.on ] ; 2 uses
  %i.avy = fcmp ult double %i.avk, 0.000000e+00
  br i1 %i.avy, label %bb.pj, label %bb.op

bb.op:                                            ; preds = %_ZN5osgeo4proj9operationL12getStepCountERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE.exit
  %i.avz = load double, ptr %i.b, align 8, !tbaa !378 ; 3 uses
  %i.awa = fcmp olt double %i.avz, 0.000000e+00
  %i.awb = fcmp olt double %i.avk, %i.avz
  %or.cond628 = or i1 %i.awa, %i.awb
  br i1 %or.cond628, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.awc = fcmp oeq double %i.avk, %i.avz
  %i.awd = load i64, ptr %i.c, align 8
  %i.awe = icmp ult i64 %.0.i, %i.awd
  %or.cond630 = select i1 %i.awc, i1 %i.awe, i1 false
  br i1 %or.cond630, label %bb.or, label %bb.pj

bb.or:                                            ; preds = %bb.oq, %bb.op
  store double %i.avk, ptr %i.b, align 8, !tbaa !378
  store i64 %.0.i, ptr %i.c, align 8, !tbaa !230
  br label %bb.pj

bb.os:                                            ; preds = %bb.mp
  %i.awf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body815

bb.ot:                                            ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i, %bb.mt
  %i.awg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %66) #31
  br label %.body815

.body815:                                         ; preds = %bb.os, %bb.ot
  %.pn558 = phi { ptr, i32 } [ %i.awg, %bb.ot ], [ %i.awf, %bb.os ] ; 2 uses
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %67) #31
  br i1 %i.ag, label %.critedge636, label %.critedge632

.critedge632:                                     ; preds = %bb.mo, %bb.mn, %.body815
  %.sroa.11.8 = phi ptr [ %.sroa.11.6, %.body815 ], [ %.sroa.11.5, %bb.mn ], [ %.sroa.11.5, %bb.mo ]
  %.sroa.5.8 = phi ptr [ %.sroa.5.6, %.body815 ], [ %.sroa.5.5, %bb.mn ], [ %.sroa.5.5, %bb.mo ]
  %.pn558.pn1341 = phi { ptr, i32 } [ %.pn558, %.body815 ], [ %i.ape, %bb.mn ], [ %i.ape, %bb.mo ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.akq) #31
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.akr) #31
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %68) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #31
  br label %.critedge638

.critedge636:                                     ; preds = %.body815, %bb.ls, %bb.lt
  %.sroa.11.9 = phi ptr [ %.sroa.11.6, %.body815 ], [ %i.amh, %bb.ls ], [ %i.amh, %bb.lt ] ; 8 uses
  %.sroa.5.9 = phi ptr [ %.sroa.5.6, %.body815 ], [ %i.alz, %bb.ls ], [ %i.alz, %bb.lt ] ; 8 uses
  %.pn558.pn.pn1350 = phi { ptr, i32 } [ %.pn558, %.body815 ], [ %i.anc, %bb.ls ], [ %i.anc, %bb.lt ] ; 4 uses
  %.not.i.i.i853 = icmp eq ptr %.sroa.11.9, null
  br i1 %.not.i.i.i853, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857, label %bb.ou

bb.ou:                                            ; preds = %.critedge636
  %i.awh = getelementptr inbounds nuw i8, ptr %.sroa.11.9, i64 8 ; 4 uses
  %i.awi = load atomic i64, ptr %i.awh acquire, align 8 ; 2 uses
  %i.awj = icmp eq i64 %i.awi, 4294967297
  %i.awk = trunc i64 %i.awi to i32                ; 2 uses
  br i1 %i.awj, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  store i32 0, ptr %i.awh, align 8, !tbaa !93
  %i.awl = getelementptr inbounds nuw i8, ptr %.sroa.11.9, i64 12
  store i32 0, ptr %i.awl, align 4, !tbaa !94
  %i.awm = load ptr, ptr %.sroa.11.9, align 8, !tbaa !80
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 16
  %i.awo = load ptr, ptr %i.awn, align 8
  call void %i.awo(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.9) #31, !inline_history !9
  %i.awp = load ptr, ptr %.sroa.11.9, align 8, !tbaa !80
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 24
  %i.awr = load ptr, ptr %i.awq, align 8
  call void %i.awr(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.9) #31, !inline_history !9
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857

bb.ow:                                            ; preds = %bb.ou
  %i.aws = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i854 = icmp eq i8 %i.aws, 0
  br i1 %.not.i.i.i.i854, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.awt = add nsw i32 %i.awk, -1
  store i32 %i.awt, ptr %i.awh, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855

bb.oy:                                            ; preds = %bb.ow
  %i.awu = atomicrmw volatile add ptr %i.awh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855: ; preds = %bb.oy, %bb.ox
  %.0.i.i.i.i.i856 = phi i32 [ %i.awk, %bb.ox ], [ %i.awu, %bb.oy ]
  %i.awv = icmp eq i32 %.0.i.i.i.i.i856, 1
  br i1 %i.awv, label %bb.oz, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857, !prof !95

bb.oz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.9) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857: ; preds = %.critedge636, %bb.ov, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855, %bb.oz
  %.not.i.i.i853.1 = icmp eq ptr %.sroa.5.9, null
  br i1 %.not.i.i.i853.1, label %.critedge638, label %bb.pa

bb.pa:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857
  %i.aww = getelementptr inbounds nuw i8, ptr %.sroa.5.9, i64 8 ; 4 uses
  %i.awx = load atomic i64, ptr %i.aww acquire, align 8 ; 2 uses
  %i.awy = icmp eq i64 %i.awx, 4294967297
  %i.awz = trunc i64 %i.awx to i32                ; 2 uses
  br i1 %i.awy, label %bb.pf, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.axa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i854.1 = icmp eq i8 %i.axa, 0
  br i1 %.not.i.i.i.i854.1, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.axb = add nsw i32 %i.awz, -1
  store i32 %i.axb, ptr %i.aww, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855.1

bb.pd:                                            ; preds = %bb.pb
  %i.axc = atomicrmw volatile add ptr %i.aww, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855.1: ; preds = %bb.pd, %bb.pc
  %.0.i.i.i.i.i856.1 = phi i32 [ %i.awz, %bb.pc ], [ %i.axc, %bb.pd ]
  %i.axd = icmp eq i32 %.0.i.i.i.i.i856.1, 1
  br i1 %i.axd, label %bb.pe, label %.critedge638, !prof !95

bb.pe:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855.1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.9) #31
  br label %.critedge638

bb.pf:                                            ; preds = %bb.pa
  store i32 0, ptr %i.aww, align 8, !tbaa !93
  %i.axe = getelementptr inbounds nuw i8, ptr %.sroa.5.9, i64 12
  store i32 0, ptr %i.axe, align 4, !tbaa !94
  %i.axf = load ptr, ptr %.sroa.5.9, align 8, !tbaa !80
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 16
  %i.axh = load ptr, ptr %i.axg, align 8
  call void %i.axh(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.9) #31, !inline_history !9
  %i.axi = load ptr, ptr %.sroa.5.9, align 8, !tbaa !80
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 24
  %i.axk = load ptr, ptr %i.axj, align 8
  call void %i.axk(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.9) #31, !inline_history !9
  br label %.critedge638

.critedge638:                                     ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855.1, %bb.pe, %bb.pf, %.critedge632
  %.sroa.11.10 = phi ptr [ %.sroa.11.8, %.critedge632 ], [ undef, %bb.pf ], [ undef, %bb.pe ], [ undef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855.1 ], [ undef, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857 ]
  %.sroa.5.10 = phi ptr [ %.sroa.5.8, %.critedge632 ], [ undef, %bb.pf ], [ undef, %bb.pe ], [ undef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855.1 ], [ undef, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857 ]
  %.pn558.pn.pn1349 = phi { ptr, i32 } [ %.pn558.pn1341, %.critedge632 ], [ %.pn558.pn.pn1350, %bb.pf ], [ %.pn558.pn.pn1350, %bb.pe ], [ %.pn558.pn.pn1350, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i855.1 ], [ %.pn558.pn.pn1350, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit857 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #31
  br label %bb.ph

bb.pg:                                            ; preds = %bb.oo, %.critedge627
  %i.axl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %.critedge638
  %.sroa.11.11 = phi ptr [ %.sroa.11.10, %.critedge638 ], [ %.sroa.11.7, %bb.pg ]
  %.sroa.5.11 = phi ptr [ %.sroa.5.10, %.critedge638 ], [ %.sroa.5.7, %bb.pg ]
  %.pn562.pn = phi { ptr, i32 } [ %.pn558.pn.pn1349, %.critedge638 ], [ %i.axl, %bb.pg ] ; 3 uses
  %.27410 = extractvalue { ptr, i32 } %.pn562.pn, 1
  %i.axm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.axn = icmp eq i32 %.27410, %i.axm
  br i1 %i.axn, label %bb.pi, label %.loopexit1388

bb.pi:                                            ; preds = %bb.ph
  %.27 = extractvalue { ptr, i32 } %.pn562.pn, 0
  %i.axo = call ptr @__cxa_begin_catch(ptr %.27) #31 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.pj unwind label %.loopexit.split-lp1384.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pj:                                            ; preds = %bb.or, %bb.oq, %_ZN5osgeo4proj9operationL12getStepCountERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE.exit, %bb.pi, %bb.ld, %bb.lc
  %.sroa.11.12 = phi ptr [ %.sroa.11.5, %bb.lc ], [ %.sroa.11.11, %bb.pi ], [ %.sroa.11.7, %_ZN5osgeo4proj9operationL12getStepCountERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE.exit ], [ %.sroa.11.7, %bb.or ], [ %.sroa.11.7, %bb.oq ], [ %.sroa.11.5, %bb.ld ] ; 2 uses
  %.sroa.5.12 = phi ptr [ %.sroa.5.5, %bb.lc ], [ %.sroa.5.11, %bb.pi ], [ %.sroa.5.7, %_ZN5osgeo4proj9operationL12getStepCountERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE.exit ], [ %.sroa.5.7, %bb.or ], [ %.sroa.5.7, %bb.oq ], [ %.sroa.5.5, %bb.ld ] ; 2 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %.sroa.01265.01560, i64 16 ; 2 uses
  %.not1379.a = icmp eq ptr %i.axp, %i.alp
  br i1 %.not1379.a, label %._crit_edge1563, label %bb.la

.loopexit.split-lp1384.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.lb, %bb.pi, %bb.kw
  %lpad.loopexit.split-lp1953 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1388

.loopexit1389:                                    ; preds = %._crit_edge1563, %.lr.ph1567, %bb.kz, %bb.ky, %bb.kx
  %.sroa.11.13 = phi ptr [ %.sroa.11.2, %bb.kx ], [ %.sroa.11.2, %bb.kz ], [ %.sroa.11.2, %bb.ky ], [ %.sroa.11.2, %.lr.ph1567 ], [ %.sroa.11.4, %._crit_edge1563 ] ; 2 uses
  %.sroa.5.13 = phi ptr [ %.sroa.5.2, %bb.kx ], [ %.sroa.5.2, %bb.kz ], [ %.sroa.5.2, %bb.ky ], [ %.sroa.5.2, %.lr.ph1567 ], [ %.sroa.5.4, %._crit_edge1563 ] ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %.sroa.01273.01569, i64 16 ; 2 uses
  %.not1377.a = icmp eq ptr %i.axq, %i.ala
  br i1 %.not1377.a, label %._crit_edge1572.a, label %.lr.ph1571.a

.critedge:                                        ; preds = %bb.kr, %._crit_edge1572.a, %bb.kq
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #31
  store ptr %7, ptr %69, align 8, !tbaa !250
  %i.axr = getelementptr inbounds nuw i8, ptr %69, i64 8
  store ptr %i.b, ptr %i.axr, align 8, !tbaa !759
  %i.axs = getelementptr inbounds nuw i8, ptr %69, i64 16
  store ptr %i.c, ptr %i.axs, align 8, !tbaa !760
  %i.axt = getelementptr inbounds nuw i8, ptr %69, i64 24
  store ptr %4, ptr %i.axt, align 8, !tbaa !311
  %i.axu = load ptr, ptr %7, align 8, !tbaa !154
  %i.axv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !154
  %i.axx = icmp eq ptr %i.axu, %i.axw
  br i1 %i.axx, label %bb.pm, label %bb.pk

bb.pk:                                            ; preds = %.critedge
  %i.axy = load ptr, ptr %26, align 16, !tbaa !162
  %i.axz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.axy) #36 ; 2 uses
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !199
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axz, i64 8
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !199
  %i.ayd = icmp eq ptr %i.aya, %i.ayc
  br i1 %i.ayd, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.aye = load ptr, ptr %28, align 16, !tbaa !162
  %i.ayf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aye) #36 ; 2 uses
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !199
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !199
  %i.ayj = icmp eq ptr %i.ayg, %i.ayi
  br i1 %i.ayj, label %bb.pm, label %bb.qo

bb.pm:                                            ; preds = %bb.pl, %bb.pk, %.critedge
  %i.ayk = load ptr, ptr %22, align 8, !tbaa !297 ; 2 uses
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !80
  %i.aym = getelementptr i8, ptr %i.ayl, i64 -24
  %i.ayn = load i64, ptr %i.aym, align 8
  %i.ayo = getelementptr inbounds i8, ptr %i.ayk, i64 %i.ayn
  %i.ayp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ayo) #36 ; 2 uses
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !199
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayp, i64 8
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !199
  %i.ayt = icmp eq ptr %i.ayq, %i.ays
  br i1 %i.ayt, label %bb.qa, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.ayu = load ptr, ptr %28, align 16, !tbaa !162
  %i.ayv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ayu) #36 ; 2 uses
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !199
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !199
  %i.ayz = icmp ne ptr %i.ayw, %i.ayy
  %or.cond19 = and i1 %i.ajz, %i.ayz
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj9operation26CoordinateOperationFactory7Private34createOperationsCompoundToCompoundERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextEPKNS8_11CompoundCRSESP_RSt6vectorINS6_IS7_INS1_19CoordinateOperationEEEESaIST_EE:bb.a
  %i.bfl = load ptr, ptr %i.d, align 8, !tbaa !352
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !162 ; 3 uses
  %i.bfn = icmp eq ptr %i.bfm, null
  br i1 %i.bfn, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.bfo = load ptr, ptr %i.bfm, align 8, !tbaa !80
  %i.bfp = icmp eq ptr %i.bfo, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs8BoundCRSE, i64 16)
  br i1 %i.bfp, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sb, %bb.sa
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.sb
  %i.bfq = phi ptr [ %i.bfm, %bb.sb ], [ null, %bb.sc ] ; 5 uses
  %i.bfr = load ptr, ptr %i.e, align 8, !tbaa !352
  %i.bfs = load ptr, ptr %i.bfr, align 8, !tbaa !162 ; 3 uses
  %i.bft = icmp eq ptr %i.bfs, null
  br i1 %i.bft, label %.critedge644.thread, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.bfu = load ptr, ptr %i.bfs, align 8, !tbaa !80
  %i.bfv = icmp eq ptr %i.bfu, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs8BoundCRSE, i64 16)
  br i1 %i.bfv, label %bb.sf, label %.critedge644.thread

bb.sf:                                            ; preds = %bb.se
  %.not1371 = icmp eq ptr %i.bfq, null
  br i1 %.not1371, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bfw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs8BoundCRS6hubCRSEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bfq) #36
  %i.bfx = load ptr, ptr %i.bfw, align 8, !tbaa !162 ; 4 uses
  %i.bfy = icmp eq ptr %i.bfx, null
  br i1 %i.bfy, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.bfz = call ptr @__dynamic_cast(ptr nonnull %i.bfx, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #31
  %i.bga = icmp eq ptr %i.bfz, null
  br i1 %i.bga, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.bgb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs8BoundCRS6hubCRSEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bfs) #36
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !162 ; 2 uses
  %i.bgd = icmp eq ptr %i.bgc, null
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgc, i64 16
  %i.bgf = select i1 %i.bgd, ptr null, ptr %i.bge
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %79, i8 0, i64 16, i1 false)
  %i.bgg = load ptr, ptr %i.bfx, align 8, !tbaa !80
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 16
  %i.bgi = load ptr, ptr %i.bgh, align 8
  %i.bgj = invoke noundef zeroext i1 %i.bgi(ptr noundef nonnull align 8 dereferenceable(48) %i.bfx, ptr noundef %i.bgf, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %79)
          to label %.critedge642 unwind label %bb.tb

.critedge642:                                     ; preds = %bb.si
  %i.bgk = load ptr, ptr %i.bat, align 8, !tbaa !89 ; 8 uses
  %.not.i.i888 = icmp eq ptr %i.bgk, null
  br i1 %.not.i.i888, label %.critedge644, label %bb.sj

bb.sj:                                            ; preds = %.critedge642
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 8 ; 4 uses
  %i.bgm = load atomic i64, ptr %i.bgl acquire, align 8 ; 2 uses
  %i.bgn = icmp eq i64 %i.bgm, 4294967297
  %i.bgo = trunc i64 %i.bgm to i32                ; 2 uses
  br i1 %i.bgn, label %bb.sk, label %bb.sl

bb.sk:                                            ; preds = %bb.sj
  store i32 0, ptr %i.bgl, align 8, !tbaa !93
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgk, i64 12
  store i32 0, ptr %i.bgp, align 4, !tbaa !94
  %i.bgq = load ptr, ptr %i.bgk, align 8, !tbaa !80
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 16
  %i.bgs = load ptr, ptr %i.bgr, align 8
  call void %i.bgs(ptr noundef nonnull align 8 dereferenceable(16) %i.bgk) #31, !inline_history !15
  %i.bgt = load ptr, ptr %i.bgk, align 8, !tbaa !80
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 24
  %i.bgv = load ptr, ptr %i.bgu, align 8
  call void %i.bgv(ptr noundef nonnull align 8 dereferenceable(16) %i.bgk) #31, !inline_history !15
  br label %.critedge644

bb.sl:                                            ; preds = %bb.sj
  %i.bgw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i889 = icmp eq i8 %i.bgw, 0
  br i1 %.not.i.i.i889, label %bb.sn, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.bgx = add nsw i32 %i.bgo, -1
  store i32 %i.bgx, ptr %i.bgl, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i890

bb.sn:                                            ; preds = %bb.sl
  %i.bgy = atomicrmw volatile add ptr %i.bgl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i890

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i890: ; preds = %bb.sn, %bb.sm
  %.0.i.i.i.i891 = phi i32 [ %i.bgo, %bb.sm ], [ %i.bgy, %bb.sn ]
  %i.bgz = icmp eq i32 %.0.i.i.i.i891, 1
  br i1 %i.bgz, label %bb.so, label %.critedge644, !prof !95

bb.so:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i890
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bgk) #31
  br label %.critedge644

.critedge644:                                     ; preds = %bb.so, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i890, %bb.sk, %.critedge642
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #31
  br i1 %i.bgj, label %bb.sp, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887

bb.sp:                                            ; preds = %.critedge644
  %i.bha = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs8BoundCRS6hubCRSEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bfq) #36 ; 2 uses
  %i.bhb = load ptr, ptr %i.bha, align 8, !tbaa !162, !noalias !764 ; 2 uses
  %i.bhc = icmp eq ptr %i.bhb, null
  br i1 %i.bhc, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs9SingleCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.bhd = call ptr @__dynamic_cast(ptr nonnull %i.bhb, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs9SingleCRSE, i64 0) #31, !noalias !764 ; 4 uses
  %.not.i893 = icmp eq ptr %i.bhd, null
  br i1 %.not.i893, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs9SingleCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bha, i64 8
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !89, !noalias !764 ; 4 uses
  %.not.i.i.i.i894 = icmp eq ptr %i.bhf, null
  br i1 %.not.i.i.i.i894, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs9SingleCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 8 ; 3 uses
  %i.bhh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90, !noalias !764
  %.not.i.i.i.i.i895 = icmp eq i8 %i.bhh, 0
  br i1 %.not.i.i.i.i.i895, label %bb.su, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.bhi = load i32, ptr %i.bhg, align 4, !tbaa !91, !noalias !764
  %i.bhj = add nsw i32 %i.bhi, 1
  store i32 %i.bhj, ptr %i.bhg, align 4, !tbaa !91, !noalias !764
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs9SingleCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit

bb.su:                                            ; preds = %bb.ss
  %i.bhk = atomicrmw volatile add ptr %i.bhg, i32 1 acq_rel, align 4, !noalias !764 ; 0 uses
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs9SingleCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs9SingleCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit: ; preds = %bb.sp, %bb.sq, %bb.sr, %bb.st, %bb.su
  %.sroa.01243.0 = phi ptr [ %i.bhd, %bb.st ], [ %i.bhd, %bb.sr ], [ %i.bhd, %bb.su ], [ null, %bb.sq ], [ null, %bb.sp ]
  %.sroa.6.0 = phi ptr [ %i.bhf, %bb.st ], [ null, %bb.sr ], [ %i.bhf, %bb.su ], [ null, %bb.sq ], [ null, %bb.sp ]
  store ptr %.sroa.01243.0, ptr %77, align 16, !tbaa !763
  %i.bhl = load ptr, ptr %i.bar, align 8, !tbaa !89 ; 8 uses
  store ptr %.sroa.6.0, ptr %i.bar, align 8, !tbaa !89
  %.not.i.i.i.i.i896 = icmp eq ptr %i.bhl, null
  br i1 %.not.i.i.i.i.i896, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887, label %bb.sv

bb.sv:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs9SingleCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8 ; 4 uses
  %i.bhn = load atomic i64, ptr %i.bhm acquire, align 8 ; 2 uses
  %i.bho = icmp eq i64 %i.bhn, 4294967297
  %i.bhp = trunc i64 %i.bhn to i32                ; 2 uses
  br i1 %i.bho, label %bb.sw, label %bb.sx

bb.sw:                                            ; preds = %bb.sv
  store i32 0, ptr %i.bhm, align 8, !tbaa !93
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhl, i64 12
  store i32 0, ptr %i.bhq, align 4, !tbaa !94
  %i.bhr = load ptr, ptr %i.bhl, align 8, !tbaa !80
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 16
  %i.bht = load ptr, ptr %i.bhs, align 8
  call void %i.bht(ptr noundef nonnull align 8 dereferenceable(16) %i.bhl) #31, !inline_history !728
  %i.bhu = load ptr, ptr %i.bhl, align 8, !tbaa !80
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 24
  %i.bhw = load ptr, ptr %i.bhv, align 8
  call void %i.bhw(ptr noundef nonnull align 8 dereferenceable(16) %i.bhl) #31, !inline_history !728
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887

bb.sx:                                            ; preds = %bb.sv
  %i.bhx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i897 = icmp eq i8 %i.bhx, 0
  br i1 %.not.i.i.i.i.i.i897, label %bb.sz, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.bhy = add nsw i32 %i.bhp, -1
  store i32 %i.bhy, ptr %i.bhm, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i898

bb.sz:                                            ; preds = %bb.sx
  %i.bhz = atomicrmw volatile add ptr %i.bhm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i898

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i898: ; preds = %bb.sz, %bb.sy
  %.0.i.i.i.i.i.i.i899 = phi i32 [ %i.bhp, %bb.sy ], [ %i.bhz, %bb.sz ]
  %i.bia = icmp eq i32 %.0.i.i.i.i.i.i.i899, 1
  br i1 %i.bia, label %bb.ta, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887, !prof !95

bb.ta:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i898
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bhl) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887

bb.tb:                                            ; preds = %bb.si
  %i.bib = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %79) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #31
  br label %bb.tz

.critedge644.thread:                              ; preds = %bb.se, %bb.sd
  %i.bic = icmp eq ptr %i.bfq, null
  br i1 %i.bic, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887, label %bb.tc

bb.tc:                                            ; preds = %.critedge644.thread
  %i.bid = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs8BoundCRS6hubCRSEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bfq) #36
  %i.bie = load ptr, ptr %i.bid, align 8, !tbaa !162 ; 2 uses
  %i.bif = load ptr, ptr %23, align 8, !tbaa !297 ; 3 uses
  %i.big = icmp eq ptr %i.bif, null
  br i1 %i.big, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.bih = load ptr, ptr %i.bif, align 8, !tbaa !80
  %i.bii = getelementptr i8, ptr %i.bih, i64 -24
  %i.bij = load i64, ptr %i.bii, align 8
  %i.bik = getelementptr i8, ptr %i.bif, i64 %i.bij
  %i.bil = getelementptr i8, ptr %i.bik, i64 16
  br label %bb.te

bb.te:                                            ; preds = %bb.td, %bb.tc
  %i.bim = phi ptr [ %i.bil, %bb.td ], [ null, %bb.tc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %80, i8 0, i64 16, i1 false)
  %i.bin = load ptr, ptr %i.bie, align 8, !tbaa !80
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 16
  %i.bip = load ptr, ptr %i.bio, align 8
  %i.biq = invoke noundef zeroext i1 %i.bip(ptr noundef nonnull align 8 dereferenceable(48) %i.bie, ptr noundef %i.bim, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %80)
          to label %bb.tf unwind label %bb.ty

bb.tf:                                            ; preds = %bb.te
  %i.bir = load ptr, ptr %i.bau, align 8, !tbaa !89 ; 8 uses
  %.not.i.i911 = icmp eq ptr %i.bir, null
  br i1 %.not.i.i911, label %.critedge646, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 8 ; 4 uses
  %i.bit = load atomic i64, ptr %i.bis acquire, align 8 ; 2 uses
  %i.biu = icmp eq i64 %i.bit, 4294967297
  %i.biv = trunc i64 %i.bit to i32                ; 2 uses
  br i1 %i.biu, label %bb.th, label %bb.ti

bb.th:                                            ; preds = %bb.tg
  store i32 0, ptr %i.bis, align 8, !tbaa !93
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bir, i64 12
  store i32 0, ptr %i.biw, align 4, !tbaa !94
  %i.bix = load ptr, ptr %i.bir, align 8, !tbaa !80
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 16
  %i.biz = load ptr, ptr %i.biy, align 8
  call void %i.biz(ptr noundef nonnull align 8 dereferenceable(16) %i.bir) #31, !inline_history !15
  %i.bja = load ptr, ptr %i.bir, align 8, !tbaa !80
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 24
  %i.bjc = load ptr, ptr %i.bjb, align 8
  call void %i.bjc(ptr noundef nonnull align 8 dereferenceable(16) %i.bir) #31, !inline_history !15
  br label %.critedge646

bb.ti:                                            ; preds = %bb.tg
  %i.bjd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i912 = icmp eq i8 %i.bjd, 0
  br i1 %.not.i.i.i912, label %bb.tk, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  %i.bje = add nsw i32 %i.biv, -1
  store i32 %i.bje, ptr %i.bis, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i913

bb.tk:                                            ; preds = %bb.ti
  %i.bjf = atomicrmw volatile add ptr %i.bis, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i913

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i913: ; preds = %bb.tk, %bb.tj
  %.0.i.i.i.i914 = phi i32 [ %i.biv, %bb.tj ], [ %i.bjf, %bb.tk ]
  %i.bjg = icmp eq i32 %.0.i.i.i.i914, 1
  br i1 %i.bjg, label %bb.tl, label %.critedge646, !prof !95

bb.tl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i913
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bir) #31
  br label %.critedge646

.critedge646:                                     ; preds = %bb.tl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i913, %bb.th, %bb.tf
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #31
  br i1 %i.biq, label %bb.tm, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887

bb.tm:                                            ; preds = %.critedge646
  %i.bjh = load ptr, ptr %23, align 8, !tbaa !297, !noalias !765 ; 3 uses
  %i.bji = icmp eq ptr %i.bjh, null
  br i1 %i.bji, label %bb.to, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.bjj = load ptr, ptr %i.bjh, align 8, !tbaa !80, !noalias !765
  %i.bjk = getelementptr i8, ptr %i.bjj, i64 -24
  %i.bjl = load i64, ptr %i.bjk, align 8, !noalias !765
  %i.bjm = getelementptr inbounds i8, ptr %i.bjh, i64 %i.bjl
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tm
  %i.bjn = phi ptr [ %i.bjm, %bb.tn ], [ null, %bb.tm ]
  %i.bjo = load ptr, ptr %i.bav, align 8, !tbaa !89, !noalias !765 ; 3 uses
  %.not.i.i.i.i916 = icmp eq ptr %i.bjo, null
  br i1 %.not.i.i.i.i916, label %_ZSt19static_pointer_castIN5osgeo4proj3crs9SingleCRSENS2_13GeographicCRSEESt10shared_ptrIT_ERKS5_IT0_E.exit918, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 8 ; 3 uses
  %i.bjq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90, !noalias !765
  %.not.i.i.i.i.i917 = icmp eq i8 %i.bjq, 0
  br i1 %.not.i.i.i.i.i917, label %bb.tr, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.bjr = load i32, ptr %i.bjp, align 4, !tbaa !91, !noalias !765
  %i.bjs = add nsw i32 %i.bjr, 1
  store i32 %i.bjs, ptr %i.bjp, align 4, !tbaa !91, !noalias !765
  br label %_ZSt19static_pointer_castIN5osgeo4proj3crs9SingleCRSENS2_13GeographicCRSEESt10shared_ptrIT_ERKS5_IT0_E.exit918

bb.tr:                                            ; preds = %bb.tp
  %i.bjt = atomicrmw volatile add ptr %i.bjp, i32 1 acq_rel, align 4, !noalias !765 ; 0 uses
  br label %_ZSt19static_pointer_castIN5osgeo4proj3crs9SingleCRSENS2_13GeographicCRSEESt10shared_ptrIT_ERKS5_IT0_E.exit918

_ZSt19static_pointer_castIN5osgeo4proj3crs9SingleCRSENS2_13GeographicCRSEESt10shared_ptrIT_ERKS5_IT0_E.exit918: ; preds = %bb.to, %bb.tq, %bb.tr
  store ptr %i.bjn, ptr %77, align 16, !tbaa !763
  %i.bju = load ptr, ptr %i.bar, align 8, !tbaa !89 ; 8 uses
  store ptr %i.bjo, ptr %i.bar, align 8, !tbaa !89
  %.not.i.i.i.i.i919 = icmp eq ptr %i.bju, null
  br i1 %.not.i.i.i.i.i919, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887, label %bb.ts

bb.ts:                                            ; preds = %_ZSt19static_pointer_castIN5osgeo4proj3crs9SingleCRSENS2_13GeographicCRSEESt10shared_ptrIT_ERKS5_IT0_E.exit918
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 8 ; 4 uses
  %i.bjw = load atomic i64, ptr %i.bjv acquire, align 8 ; 2 uses
  %i.bjx = icmp eq i64 %i.bjw, 4294967297
  %i.bjy = trunc i64 %i.bjw to i32                ; 2 uses
  br i1 %i.bjx, label %bb.tt, label %bb.tu

bb.tt:                                            ; preds = %bb.ts
  store i32 0, ptr %i.bjv, align 8, !tbaa !93
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bju, i64 12
  store i32 0, ptr %i.bjz, align 4, !tbaa !94
  %i.bka = load ptr, ptr %i.bju, align 8, !tbaa !80
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bka, i64 16
  %i.bkc = load ptr, ptr %i.bkb, align 8
  call void %i.bkc(ptr noundef nonnull align 8 dereferenceable(16) %i.bju) #31, !inline_history !728
  %i.bkd = load ptr, ptr %i.bju, align 8, !tbaa !80
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 24
  %i.bkf = load ptr, ptr %i.bke, align 8
  call void %i.bkf(ptr noundef nonnull align 8 dereferenceable(16) %i.bju) #31, !inline_history !728
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887

bb.tu:                                            ; preds = %bb.ts
  %i.bkg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i.i920 = icmp eq i8 %i.bkg, 0
  br i1 %.not.i.i.i.i.i.i920, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.bkh = add nsw i32 %i.bjy, -1
  store i32 %i.bkh, ptr %i.bjv, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i921

bb.tw:                                            ; preds = %bb.tu
  %i.bki = atomicrmw volatile add ptr %i.bjv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i921

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i921: ; preds = %bb.tw, %bb.tv
  %.0.i.i.i.i.i.i.i922 = phi i32 [ %i.bjy, %bb.tv ], [ %i.bki, %bb.tw ]
  %i.bkj = icmp eq i32 %.0.i.i.i.i.i.i.i922, 1
  br i1 %i.bkj, label %bb.tx, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887, !prof !95

bb.tx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i921
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bju) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887

bb.ty:                                            ; preds = %bb.te
  %i.bkk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %80) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #31
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tb
  %.pn526 = phi { ptr, i32 } [ %i.bkk, %bb.ty ], [ %i.bib, %bb.tb ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %78) #31
  br label %bb.wo

_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887: ; preds = %bb.sf, %.critedge644.thread, %.critedge644, %bb.sg, %bb.sh, %bb.tx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i921, %bb.tt, %_ZSt19static_pointer_castIN5osgeo4proj3crs9SingleCRSENS2_13GeographicCRSEESt10shared_ptrIT_ERKS5_IT0_E.exit918, %bb.ta, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i898, %bb.sw, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs9SingleCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, %bb.rz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i885, %bb.rv, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs9SingleCRSEEED2Ev.exit, %.critedge646
  %i.bkl = load ptr, ptr %i.bas, align 8, !tbaa !89 ; 8 uses
  %.not.i.i934 = icmp eq ptr %i.bkl, null
  br i1 %.not.i.i934, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ua

bb.ua:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkl, i64 8 ; 4 uses
  %i.bkn = load atomic i64, ptr %i.bkm acquire, align 8 ; 2 uses
  %i.bko = icmp eq i64 %i.bkn, 4294967297
  %i.bkp = trunc i64 %i.bkn to i32                ; 2 uses
  br i1 %i.bko, label %bb.ub, label %bb.uc

bb.ub:                                            ; preds = %bb.ua
  store i32 0, ptr %i.bkm, align 8, !tbaa !93
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkl, i64 12
  store i32 0, ptr %i.bkq, align 4, !tbaa !94
  %i.bkr = load ptr, ptr %i.bkl, align 8, !tbaa !80
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 16
  %i.bkt = load ptr, ptr %i.bks, align 8
  call void %i.bkt(ptr noundef nonnull align 8 dereferenceable(16) %i.bkl) #31, !inline_history !20
  %i.bku = load ptr, ptr %i.bkl, align 8, !tbaa !80
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 24
  %i.bkw = load ptr, ptr %i.bkv, align 8
  call void %i.bkw(ptr noundef nonnull align 8 dereferenceable(16) %i.bkl) #31, !inline_history !20
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.uc:                                            ; preds = %bb.ua
  %i.bkx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i935 = icmp eq i8 %i.bkx, 0
  br i1 %.not.i.i.i935, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.bky = add nsw i32 %i.bkp, -1
  store i32 %i.bky, ptr %i.bkm, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i936

bb.ue:                                            ; preds = %bb.uc
  %i.bkz = atomicrmw volatile add ptr %i.bkm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i936

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i936: ; preds = %bb.ue, %bb.ud
  %.0.i.i.i.i937 = phi i32 [ %i.bkp, %bb.ud ], [ %i.bkz, %bb.ue ]
  %i.bla = icmp eq i32 %.0.i.i.i.i937, 1
  br i1 %i.bla, label %bb.uf, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.uf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i936
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bkl) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs9SingleCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit887, %bb.ub, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i936, %bb.uf
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31
  %i.blb = load ptr, ptr %25, align 16, !tbaa !266
  %.not1372 = icmp eq ptr %i.blb, null
  br i1 %.not1372, label %.critedge648.thread, label %bb.ug

bb.ug:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.blc = load i8, ptr %1, align 8, !tbaa !144, !range !117, !noundef !118
  %i.bld = trunc nuw i8 %i.blc to i1
  br i1 %i.bld, label %bb.uh, label %.critedge648.thread

bb.uh:                                            ; preds = %bb.ug
  %i.ble = load i8, ptr %3, align 8, !tbaa !144, !range !117, !noundef !118
  %i.blf = trunc nuw i8 %i.ble to i1
  br i1 %i.blf, label %bb.ui, label %.critedge648.thread

bb.ui:                                            ; preds = %bb.uh
  %i.blg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common9DataEpoch15coordinateEpochEv(ptr noundef nonnull align 8 dereferenceable(8) %i.baw)
          to label %bb.uj unwind label %bb.xo

bb.uj:                                            ; preds = %bb.ui
  %i.blh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common9DataEpoch15coordinateEpochEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bax)
          to label %bb.uk unwind label %bb.xo

bb.uk:                                            ; preds = %bb.uj
  %i.bli = invoke noundef zeroext i1 @_ZNK5osgeo4proj6common7Measure15_isEquivalentToERKS2_NS0_4util11IComparable9CriterionEd(ptr noundef nonnull align 8 dereferenceable(24) %i.blg, ptr noundef nonnull align 8 dereferenceable(24) %i.blh, i32 noundef 0, double noundef 1.000000e-10)
          to label %bb.ul unwind label %bb.xo

bb.ul:                                            ; preds = %bb.uk
  br i1 %i.bli, label %bb.um, label %.critedge648.thread

bb.um:                                            ; preds = %bb.ul
  %i.blj = load ptr, ptr %22, align 8, !tbaa !297 ; 2 uses
  %i.blk = load ptr, ptr %23, align 8, !tbaa !297 ; 3 uses
  %i.bll = icmp eq ptr %i.blk, null
  br i1 %i.bll, label %bb.uo, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.blm = load ptr, ptr %i.blk, align 8, !tbaa !80
  %i.bln = getelementptr i8, ptr %i.blm, i64 -24
  %i.blo = load i64, ptr %i.bln, align 8
  %i.blp = getelementptr i8, ptr %i.blk, i64 %i.blo
  %i.blq = getelementptr i8, ptr %i.blp, i64 16
  br label %bb.uo

bb.uo:                                            ; preds = %bb.un, %bb.um
  %i.blr = phi ptr [ %i.blq, %bb.un ], [ null, %bb.um ]
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, i8 0, i64 16, i1 false)
  %i.bls = load ptr, ptr %i.blj, align 8, !tbaa !80
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 40
  %i.blu = load ptr, ptr %i.blt, align 8
  %i.blv = invoke noundef zeroext i1 %i.blu(ptr noundef nonnull align 8 dereferenceable(24) %i.blj, ptr noundef %i.blr, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %81)
          to label %bb.up unwind label %bb.wp

bb.up:                                            ; preds = %bb.uo
  br i1 %i.blv, label %bb.uq, label %bb.us

bb.uq:                                            ; preds = %bb.up
  %i.blw = load ptr, ptr %22, align 8, !tbaa !297 ; 2 uses
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !80
  %i.bly = getelementptr i8, ptr %i.blx, i64 -24
  %i.blz = load i64, ptr %i.bly, align 8
  %i.bma = getelementptr inbounds i8, ptr %i.blw, i64 %i.blz
  %i.bmb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bma) #36 ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 8
  %i.bmd = load i64, ptr %i.bmc, align 8, !tbaa !206
  %i.bme = icmp eq i64 %i.bmd, 13
  br i1 %i.bme, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  %i.bmf = load ptr, ptr %i.bmb, align 8, !tbaa !132 ; 2 uses
  %i.bmg = load i64, ptr %i.bmf, align 1
  %i.bmh = xor i64 %i.bmg, 5999683329040073038
  %i.bmi = getelementptr i8, ptr %i.bmf, i64 5
  %i.bmj = load i64, ptr %i.bmi, align 1
  %i.bmk = xor i64 %i.bmj, 3996427157178106664
  %i.bml = or i64 %i.bmh, %i.bmk
  %i.bmm = icmp ne i64 %i.bml, 0
  %i.bmn = zext i1 %i.bmm to i32
  %i.bmo = icmp eq i32 %i.bmn, 0
  br label %bb.us

bb.us:                                            ; preds = %bb.up, %bb.uq, %bb.ur
  %.ph1356 = phi i1 [ false, %bb.up ], [ %i.bmo, %bb.ur ], [ false, %bb.uq ]
  %i.bmp = load ptr, ptr %i.bay, align 8, !tbaa !89 ; 8 uses
  %.not.i.i938 = icmp eq ptr %i.bmp, null
  br i1 %.not.i.i938, label %.critedge648, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 8 ; 4 uses
  %i.bmr = load atomic i64, ptr %i.bmq acquire, align 8 ; 2 uses
  %i.bms = icmp eq i64 %i.bmr, 4294967297
  %i.bmt = trunc i64 %i.bmr to i32                ; 2 uses
  br i1 %i.bms, label %bb.uu, label %bb.uv

bb.uu:                                            ; preds = %bb.ut
  store i32 0, ptr %i.bmq, align 8, !tbaa !93
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmp, i64 12
  store i32 0, ptr %i.bmu, align 4, !tbaa !94
  %i.bmv = load ptr, ptr %i.bmp, align 8, !tbaa !80
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 16
  %i.bmx = load ptr, ptr %i.bmw, align 8
  call void %i.bmx(ptr noundef nonnull align 8 dereferenceable(16) %i.bmp) #31, !inline_history !15
  %i.bmy = load ptr, ptr %i.bmp, align 8, !tbaa !80
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 24
  %i.bna = load ptr, ptr %i.bmz, align 8
  call void %i.bna(ptr noundef nonnull align 8 dereferenceable(16) %i.bmp) #31, !inline_history !15
  br label %.critedge648

bb.uv:                                            ; preds = %bb.ut
  %i.bnb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i939 = icmp eq i8 %i.bnb, 0
  br i1 %.not.i.i.i939, label %bb.ux, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  %i.bnc = add nsw i32 %i.bmt, -1
  store i32 %i.bnc, ptr %i.bmq, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i940

bb.ux:                                            ; preds = %bb.uv
  %i.bnd = atomicrmw volatile add ptr %i.bmq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i940

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i940: ; preds = %bb.ux, %bb.uw
  %.0.i.i.i.i941 = phi i32 [ %i.bmt, %bb.uw ], [ %i.bnd, %bb.ux ]
  %i.bne = icmp eq i32 %.0.i.i.i.i941, 1
  br i1 %i.bne, label %bb.uy, label %.critedge648, !prof !95

bb.uy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i940
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bmp) #31
  br label %.critedge648

.critedge648:                                     ; preds = %bb.uy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i940, %bb.uu, %bb.us
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #31
  br i1 %.ph1356, label %bb.uz, label %.critedge648.thread

bb.uz:                                            ; preds = %.critedge648
  %i.bnf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common9DataEpoch15coordinateEpochEv(ptr noundef nonnull align 8 dereferenceable(8) %i.baw)
          to label %bb.va unwind label %bb.xo

bb.va:                                            ; preds = %bb.uz
  %i.bng = call noundef double @_ZNK5osgeo4proj6common7Measure13convertToUnitERKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %i.bnf, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure4YEARE) #36
  %i.bnh = fadd double %i.bng, -1.997000e+03
  %i.bni = call noundef double @llvm.fabs.f64(double %i.bnh)
  %i.bnj = fcmp olt double %i.bni, 1.000000e-10
  %i.bnk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common9DataEpoch15coordinateEpochEv(ptr noundef nonnull align 8 dereferenceable(8) %i.baw)
          to label %bb.vb unwind label %bb.xo

bb.vb:                                            ; preds = %bb.va
  %i.bnl = call noundef double @_ZNK5osgeo4proj6common7Measure13convertToUnitERKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %i.bnk, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure4YEARE) #36
  %i.bnm = fadd double %i.bnl, -2.002000e+03
end_hunk_1
begin_hunk_2_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESt4lessIS5_ESaISt4pairIKS5_SF_EEE6insertISI_IS5_SF_EEENSt9enable_ifIXsr16is_constructibleISK_T_EE5valueESI_ISt17_Rb_tree_iteratorISK_EbEE4typeEOSQ_:bb.a
  %.sroa.013.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !94
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !11
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !11
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, !prof !95

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !90
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESt4lessIS5_ESaISt4pairIKS5_SF_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #35
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZZN5osgeo4proj9operation26CoordinateOperationFactory7Private30createOperationsCompoundToGeogERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextEPKNS8_11CompoundCRSEPKNS8_13GeographicCRSERSt6vectorINS6_IS7_INS1_19CoordinateOperationEEEESaISW_EEEN19SetGeogCRSOfVertCRSD2Ev(ptr nofree captures(none) %.0.val, i8 %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %.8.val to i1
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  store ptr %i.d, ptr %i.b, align 8, !tbaa !193
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !94
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !892
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !892
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit, !prof !95

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5osgeo4proj9operationL23getInterpolationGeogCRSERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEERKS5_INS0_2io15DatabaseContextEE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 16)) %0, ptr %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dropbox::oxygen::nn.321", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %.0.val, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation14TransformationE, i64 -1) #31 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.thread26

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %.0.val, align 8, !tbaa !80
  %i.e = icmp eq ptr %i.d, getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5osgeo4proj9operation21ConcatenatedOperationE, i64 16)
  br i1 %i.e, label %bb.d, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation21ConcatenatedOperation10operationsEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.val)
          to label %bb.e unwind label %bb.w       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %.not35 = icmp eq ptr %i.g, %i.i
  br i1 %.not35, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.thread16
  %.02437 = phi ptr [ %.222, %.thread16 ], [ null, %bb.e ] ; 3 uses
  %.sroa.010.036 = phi ptr [ %i.m, %.thread16 ], [ %i.g, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.010.036, align 8, !tbaa !191 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread16, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.l = tail call ptr @__dynamic_cast(ptr nonnull %i.j, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation14TransformationE, i64 -1) #31 ; 2 uses
  %.not32 = icmp eq ptr %i.l, null                ; 2 uses
  %.not33 = icmp eq ptr %.02437, null             ; 2 uses
  %spec.select = select i1 %.not33, ptr %i.l, ptr null
  %.2 = select i1 %.not32, ptr %.02437, ptr %spec.select
  %cond = select i1 %.not32, i1 true, i1 %.not33
  br i1 %cond, label %.thread16, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.thread16:                                        ; preds = %.lr.ph, %bb.f
  %.222 = phi ptr [ %.2, %bb.f ], [ %.02437, %.lr.ph ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.036, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread16
  %.not34 = icmp eq ptr %.222, null
  br i1 %.not34, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.thread26

.thread26:                                        ; preds = %bb.b, %._crit_edge
  %.529 = phi ptr [ %.222, %._crit_edge ], [ %i.b, %bb.b ] ; 5 uses
  %i.n = load ptr, ptr %.529, align 8, !tbaa !80
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %.529, i64 %i.p
  %i.r = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.q)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %.thread26
  br i1 %i.r, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %.529, align 8, !tbaa !80
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %.529, i64 %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation19CoordinateOperation16interpolationCRSEv(ptr noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %bb.i unwind label %bb.w       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !89   ; 12 uses
  %.not.i.i.i = icmp eq ptr %i.z, null            ; 3 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !91
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !91
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.not30 = icmp eq ptr %i.x, null
  br i1 %.not30, label %bb.x, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit
  %i.af = tail call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #31, !noalias !897 ; 2 uses
  %.not.not.i = icmp eq ptr %i.af, null
  %brmerge = or i1 %.not.i.i.i, %.not.not.i
  br i1 %brmerge, label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90, !noalias !897
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !91, !noalias !897
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !91, !noalias !897
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.p:                                             ; preds = %bb.n
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !897 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.m, %bb.o, %bb.p
  %.sroa.63.0 = phi ptr [ %i.z, %bb.o ], [ null, %bb.m ], [ %i.z, %bb.p ]
  store ptr %i.af, ptr %0, align 8, !tbaa !339
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !89 ; 8 uses
  store ptr %.sroa.63.0, ptr %i.al, align 8, !tbaa !89
  %.not.i.i.i.i38 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i38, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.an, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !94
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31, !inline_history !50
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31, !inline_history !50
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i39 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i39, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.aq, %bb.t ], [ %i.ba, %bb.u ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.v, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.d, %.thread26, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit
  %i.bd = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation14Transformation9targetCRSEv(ptr noundef nonnull align 8 dereferenceable(24) %.529) #36 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !162, !noalias !898 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = tail call ptr @__dynamic_cast(ptr nonnull %i.be, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #31, !noalias !898 ; 4 uses
  %.not.not.i41 = icmp eq ptr %i.bg, null
  br i1 %.not.not.i41, label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !89, !noalias !898 ; 4 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i42, label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90, !noalias !898
  %.not.i.i.i.i.i43 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i43, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !91, !noalias !898
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !91, !noalias !898
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45

bb.ac:                                            ; preds = %bb.aa
  %i.bn = atomicrmw volatile add ptr %i.bj, i32 1 acq_rel, align 4, !noalias !898 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45

_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45: ; preds = %bb.x, %bb.y, %bb.z, %bb.ab, %bb.ac
  %.sroa.0.0 = phi ptr [ %i.bg, %bb.ab ], [ %i.bg, %bb.z ], [ %i.bg, %bb.ac ], [ null, %bb.y ], [ null, %bb.x ]
  %.sroa.6.0 = phi ptr [ %i.bi, %bb.ab ], [ null, %bb.z ], [ %i.bi, %bb.ac ], [ null, %bb.y ], [ null, %bb.x ]
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !339
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !89 ; 8 uses
  store ptr %.sroa.6.0, ptr %i.bo, align 8, !tbaa !89
  %.not.i.i.i.i46 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i46, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.bq, align 8, !tbaa !93
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !94
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31, !inline_history !50
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31, !inline_history !50
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i47 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i47, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48

bb.ah:                                            ; preds = %bb.af
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i49 = phi i32 [ %i.bt, %bb.ag ], [ %i.cd, %bb.ah ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i49, 1
  br i1 %i.ce, label %bb.ai, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48, %bb.ai, %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cf, align 8, !tbaa !93
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !94
  %i.ck = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31, !inline_history !20
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31, !inline_history !20
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i57 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i57, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

bb.an:                                            ; preds = %bb.al
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i59 = phi i32 [ %i.ci, %bb.am ], [ %i.cs, %bb.an ]
  %i.ct = icmp eq i32 %.0.i.i.i.i59, 1
  br i1 %i.ct, label %bb.ao, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58, %bb.ak, %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g, %._crit_edge
  %.pr = load ptr, ptr %0, align 8, !tbaa !297    ; 3 uses
  %.not31 = icmp eq ptr %.pr, null
  br i1 %.not31, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cu = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs13GeographicCRS16coordinateSystemEv(ptr noundef nonnull align 8 dereferenceable(24) %.pr) #36
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !216
  %i.cw = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cv) #36 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !219
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !220
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp eq i64 %i.dc, 48
  br i1 %i.dd, label %bb.aq, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.de, ptr %3, align 8, !tbaa !229
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.df, align 8, !tbaa !206
  store i8 0, ptr %i.de, align 8, !tbaa !90
  invoke void @_ZNK5osgeo4proj3crs13GeographicCRS10demoteTo2DERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.321") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.pr, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ar unwind label %bb.be

bb.ar:                                            ; preds = %bb.aq
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load <2 x ptr>, ptr %2, align 16, !tbaa !155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !89 ; 8 uses
  store <2 x ptr> %i.di, ptr %0, align 8, !tbaa !155
  %.not.i.i.i.i60 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i60, label %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.dk, align 8, !tbaa !93
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !94
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !80
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #31, !inline_history !50
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !80
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #31, !inline_history !50
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64

bb.au:                                            ; preds = %bb.as
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i61 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i61, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62

bb.aw:                                            ; preds = %bb.au
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i63 = phi i32 [ %i.dn, %bb.av ], [ %i.dx, %bb.aw ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i63, 1
  br i1 %i.dy, label %bb.ax, label %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64, !prof !95

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #31
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64

_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64: ; preds = %bb.ar, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62, %bb.ax
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i65 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i65, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.ea, align 8, !tbaa !93
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !94
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !80
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #31, !inline_history !38
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !80
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #31, !inline_history !38
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i66 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i66, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i = phi i32 [ %i.ed, %bb.bb ], [ %i.en, %bb.bc ]
  %i.eo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eo, label %bb.bd, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, !prof !95

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bd
  %i.ep = load ptr, ptr %3, align 8, !tbaa !132   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.de
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit
  %i.er = load i64, ptr %i.de, align 8, !tbaa !90
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.be:                                            ; preds = %bb.aq
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %3, align 8, !tbaa !132   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.de
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.be
  %i.ew = load i64, ptr %i.de, align 8, !tbaa !90
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.w
  %.pn = phi { ptr, i32 } [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.bc, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  resume { ptr, i32 } %.pn

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %bb.a, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ap
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5osgeo4proj9operation26CoordinateOperationFactory7Private30createOperationsCompoundToGeogERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextEPKNS8_11CompoundCRSEPKNS8_13GeographicCRSERSt6vectorINS6_IS7_INS1_19CoordinateOperationEEEESaISW_EEENK3$_2clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.35", align 16   ; 10 uses
  %2 = alloca %"class.osgeo::proj::util::optional", align 8 ; 6 uses
  %3 = alloca %"class.dropbox::oxygen::nn.40", align 8 ; 7 uses
  %4 = alloca %"class.dropbox::oxygen::nn.321", align 8 ; 8 uses
  %5 = alloca %"class.osgeo::proj::util::optional", align 8 ; 6 uses
  %6 = alloca %"class.dropbox::oxygen::nn.40", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.116", align 8 ; 7 uses
  %9 = alloca %"class.dropbox::oxygen::nn.321", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.116", align 8 ; 7 uses
  %12 = alloca %"class.std::vector.35", align 16  ; 9 uses
  %13 = alloca %"class.dropbox::oxygen::nn.40", align 8 ; 7 uses
  %14 = alloca %"class.dropbox::oxygen::nn.321", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.dropbox::oxygen::nn.492", align 8 ; 7 uses
  %18 = alloca %"class.std::vector.35", align 8   ; 10 uses
  %19 = alloca %"class.osgeo::proj::util::optional", align 8 ; 6 uses
  %20 = alloca %"class.osgeo::proj::util::optional", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !900, !nonnull !118, !align !197
end_hunk_2
begin_hunk_3_@_ZN5osgeo4proj9operation13FilterResults21computeAreaOfInterestEv:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i40 = phi i32 [ %i.fp, %bb.bu ], [ %i.fz, %bb.bv ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i40, 1
  br i1 %i.ga, label %bb.bw, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i41, !prof !95

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i41

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i41: ; preds = %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39, %bb.bs, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i36
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !89
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSERKS4_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i41, %bb.bm, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i30, %bb.bb, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i19, %bb.aq, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.af, %bb.b, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj9operation13FilterResults9filterOutEb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::shared_ptr.2", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.std::shared_ptr.2", align 8 ; 9 uses
  %4 = alloca %"class.dropbox::oxygen::nn.320", align 16 ; 7 uses
  %5 = alloca %"class.std::set.605", align 8      ; 7 uses
  %6 = alloca %"class.std::shared_ptr.116", align 8 ; 7 uses
  %7 = alloca %"class.dropbox::oxygen::nn.320", align 16 ; 7 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.std::shared_ptr.2", align 8 ; 11 uses
  %9 = alloca %"class.dropbox::oxygen::nn.320", align 16 ; 7 uses
  %10 = alloca %"class.dropbox::oxygen::nn.320", align 16 ; 7 uses
  %11 = alloca %"class.std::set.605", align 8     ; 7 uses
  %12 = alloca %"class.std::shared_ptr.116", align 8 ; 7 uses
  %13 = alloca %"class.dropbox::oxygen::nn.320", align 16 ; 7 uses
  %14 = alloca %"class.dropbox::oxygen::nn.320", align 16 ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !255
  %.pre370 = load ptr, ptr %.pre, align 8, !tbaa !148
  %.phi.trans.insert371 = getelementptr inbounds nuw i8, ptr %.pre370, i64 8
  %.pre372 = load ptr, ptr %.phi.trans.insert371, align 8, !tbaa !83 ; 2 uses
  br i1 %1, label %._crit_edge369, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre372, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !120
  br label %._crit_edge369

._crit_edge369:                                   ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pre372, i64 89
  %i.h = load i8, ptr %i.g, align 1, !tbaa !116, !range !117, !noundef !118
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !256, !range !117, !noundef !118
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %.loopexit309

bb.c:                                             ; preds = %._crit_edge369
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88   ; 2 uses
  %.not296 = icmp eq ptr %i.n, null
  br i1 %.not296, label %.loopexit309, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata6Extent11descriptionB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.n) #36
  %i.p = load i8, ptr %i.o, align 8, !tbaa !294, !range !117, !noundef !118
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %.loopexit309

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !1045, !nonnull !118, !align !197 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !154  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !154  ; 2 uses
  %.not297346 = icmp eq ptr %i.s, %i.u
  br i1 %.not297346, label %.loopexit309, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph
  %.0145348 = phi i1 [ false, %.lr.ph ], [ %.1146, %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.sroa.0282.0347 = phi ptr [ %i.s, %.lr.ph ], [ %i.bd, %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i8 0, ptr %i.a, align 1, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN5osgeo4proj9operation9getExtentERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEEbRb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0282.0347, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.w = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %.not298 = icmp eq ptr %i.w, null
  br i1 %.not298, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread285, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata6Extent11descriptionB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.w) #36 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !294, !range !117, !noundef !118
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread285

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.ab = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata6Extent11descriptionB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !206 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !206
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread285

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.i
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !132
  %bcmp.i = call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.af)
  %i.am = icmp eq i32 %bcmp.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread285

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread285: ; preds = %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.g, %bb.f
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread285
  %.1146 = phi i1 [ %.0145348, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread285 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %bb.i ] ; 2 uses
  %cond5.not = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread285 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %bb.i ]
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !89  ; 8 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ao, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !94
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #31, !inline_history !12
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #31, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ar, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bc, label %bb.o, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0282.0347, i64 16 ; 2 uses
  %.not297 = icmp eq ptr %i.bd, %i.u
  %or.cond416 = select i1 %cond5.not, i1 true, i1 %.not297
  br i1 %or.cond416, label %.loopexit309, label %bb.f

.loopexit309:                                     ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e, %bb.d, %bb.c, %._crit_edge369
  %.3148 = phi i1 [ false, %._crit_edge369 ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.e ], [ %.1146, %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.be = load ptr, ptr %0, align 8, !tbaa !1045, !nonnull !118, !align !197 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !154 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !154 ; 2 uses
  %.not299350 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not299350, label %._crit_edge, label %.lr.ph355

.lr.ph355:                                        ; preds = %.loopexit309
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %15 = icmp ne i32 %i.f, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bp = icmp eq i32 %i.f, 1                     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.p

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit
  %i.cg = select i1 %.2165, i1 %.6162, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit309
  %.0163.lcssa = phi i1 [ false, %.loopexit309 ], [ %i.cg, %._crit_edge.loopexit ]
  %.0149.lcssa = phi i1 [ false, %.loopexit309 ], [ %.6155, %._crit_edge.loopexit ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !154
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !154
  %i.cl = icmp ne ptr %i.ci, %i.ck
  %or.cond21 = select i1 %i.cl, i1 true, i1 %.0149.lcssa
  %or.cond21.not = xor i1 %or.cond21, true
  %or.cond201 = select i1 %or.cond21.not, i1 true, i1 %.0163.lcssa
  br i1 %or.cond201, label %bb.ez, label %.loopexit

bb.p:                                             ; preds = %.lr.ph355, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit
  %.0149354 = phi i1 [ false, %.lr.ph355 ], [ %.6155, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ] ; 11 uses
  %.0156353 = phi i1 [ false, %.lr.ph355 ], [ %.6162, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ] ; 16 uses
  %.0163352 = phi i1 [ true, %.lr.ph355 ], [ %.2165, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ] ; 6 uses
  %.sroa.0278.0351 = phi ptr [ %i.bf, %.lr.ph355 ], [ %i.oo, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ] ; 16 uses
  %i.cm = load double, ptr %i.bi, align 8, !tbaa !257
  %i.cn = fcmp une double %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.co = call noundef double @_ZN5osgeo4proj9operation11getAccuracyERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEE(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0278.0351) ; 2 uses
  %i.cp = fcmp olt double %i.co, 0.000000e+00
  br i1 %i.cp, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = load double, ptr %i.bi, align 8, !tbaa !257
  %i.cr = fcmp ogt double %i.co, %i.cq
  br i1 %i.cr, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit, label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.p
  br i1 %i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.cs = load ptr, ptr %.sroa.0278.0351, align 8, !tbaa !191
  %i.ct = call noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cs)
  br i1 %i.ct, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge
  %i.cu = load ptr, ptr %i.bj, align 8, !tbaa !88
  %.not301.a = icmp eq ptr %i.cu, null
  br i1 %.not301.a, label %bb.bt, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i8 0, ptr %i.b, align 1, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5osgeo4proj9operation9getExtentERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEEbRb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0278.0351, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.cv = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %.not307.a = icmp eq ptr %i.cv, null
  br i1 %.not307.a, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %.sroa.0278.0351, align 8, !tbaa !191
  %i.cx = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cw)
          to label %bb.w unwind label %bb.ay

bb.w:                                             ; preds = %bb.v
  %not.365 = xor i1 %i.cx, true
  %spec.select = select i1 %not.365, i1 true, i1 %.0156353
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.x:                                             ; preds = %bb.u
  br i1 %.3148, label %bb.y, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread286

bb.y:                                             ; preds = %bb.x
  %i.cy = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata6Extent11descriptionB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.cv) #36 ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !294, !range !117, !noundef !118
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.z, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.db = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.dc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata6Extent11descriptionB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.db) #36 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !206 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !206
  %i.dj = icmp eq i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.aa, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.dk = icmp eq i64 %i.dg, 0
  br i1 %i.dk, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread286, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.aa
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !132
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !132
  %bcmp.i.i = call i32 @bcmp(ptr %i.dm, ptr %i.dl, i64 %i.dg)
  %.not308.a = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not308.a, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread286, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread286: ; preds = %bb.aa, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.x
  %i.dn = load ptr, ptr %.sroa.0278.0351, align 8, !tbaa !191
  %i.do = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dn)
          to label %bb.ab unwind label %bb.ay

bb.ab:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread286
  %not. = xor i1 %i.do, true
  %spec.select177 = select i1 %not., i1 true, i1 %.0149354 ; 3 uses
  %i.dp = load ptr, ptr %3, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.dq = load ptr, ptr %i.bl, align 8, !tbaa !89 ; 2 uses
  %i.dr = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !155
  store <2 x ptr> %i.dr, ptr %4, align 16, !tbaa !155
  %.not.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !91
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dw = atomicrmw volatile add ptr %i.ds, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.ab, %bb.ad, %bb.ae
  %i.dx = invoke noundef zeroext i1 @_ZNK5osgeo4proj8metadata6Extent8containsERKN7dropbox6oxygen2nnISt10shared_ptrIS2_EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.af unwind label %bb.ax     ; 2 uses

bb.af:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.dy = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i204 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i204, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
  %i.ea = load atomic i64, ptr %i.dz acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.dz, align 8, !tbaa !93
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !94
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !80
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #31, !inline_history !6
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !80
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #31, !inline_history !6
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i205 = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i.i205, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dz, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.em = atomicrmw volatile add ptr %i.dz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i = phi i32 [ %i.ec, %bb.aj ], [ %i.em, %bb.ak ]
  %i.en = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.en, label %bb.al, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit, !prof !95

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit: ; preds = %bb.af, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.eo = load i8, ptr %i.bm, align 4, !tbaa !259, !range !117, !noundef !118
  %i.ep = trunc nuw i8 %i.eo to i1
  %.not = xor i1 %i.ep, true
  %or.cond = and i1 %i.dx, %.not
  br i1 %or.cond, label %bb.am, label %.critedge181.thread

bb.am:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit
  %i.eq = load ptr, ptr %.sroa.0278.0351, align 8, !tbaa !191
  %i.er = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.eq)
          to label %bb.an unwind label %bb.ay

bb.an:                                            ; preds = %bb.am
  br i1 %i.er, label %.thread287, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.es = load ptr, ptr %.sroa.0278.0351, align 8, !tbaa !191 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !80
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr dead_on_unwind nonnull writable sret(%"class.std::set.605") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true)
          to label %.critedge179 unwind label %bb.az

.critedge179:                                     ; preds = %bb.ao
  %i.ew = load i64, ptr %i.bn, align 8, !tbaa !335
  %i.ex = icmp eq i64 %i.ew, 0
  %i.ey = load ptr, ptr %i.bo, align 8, !tbaa !195
  invoke void @_ZNSt8_Rb_treeIN5osgeo4proj9operation15GridDescriptionES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ey)
          to label %_ZNSt3setIN5osgeo4proj9operation15GridDescriptionESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %.critedge179
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #35
  unreachable

_ZNSt3setIN5osgeo4proj9operation15GridDescriptionESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %.critedge179
  %i.fb = load ptr, ptr %16, align 8, !tbaa !89   ; 8 uses
  %.not.i.i206 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i206, label %.critedge181, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt3setIN5osgeo4proj9operation15GridDescriptionESt4lessIS3_ESaIS3_EED2Ev.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.fc, align 8, !tbaa !93
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !94
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !80
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #31, !inline_history !15
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !80
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #31, !inline_history !15
  br label %.critedge181

bb.as:                                            ; preds = %bb.aq
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i207 = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i207, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208

bb.au:                                            ; preds = %bb.as
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i209 = phi i32 [ %i.ff, %bb.at ], [ %i.fp, %bb.au ]
  %i.fq = icmp eq i32 %.0.i.i.i.i209, 1
  br i1 %i.fq, label %bb.av, label %.critedge181, !prof !95

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #31
  br label %.critedge181

.critedge181:                                     ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208, %bb.ar, %_ZNSt3setIN5osgeo4proj9operation15GridDescriptionESt4lessIS3_ESaIS3_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %i.ex, label %bb.aw, label %.thread287

bb.aw:                                            ; preds = %.critedge181
  store i8 1, ptr %i.bm, align 4, !tbaa !259
  br label %.thread287

bb.ax:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.bs

bb.ay:                                            ; preds = %bb.v, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread286, %bb.am
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.az:                                            ; preds = %bb.ao
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bs

.critedge181.thread:                              ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit
  %or.cond9 = or i1 %15, %i.dx
  br i1 %i.bp, label %bb.ba, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

.thread287:                                       ; preds = %bb.an, %bb.aw, %.critedge181
  br i1 %i.bp, label %bb.ba, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.ba:                                            ; preds = %.critedge181.thread, %.thread287
  %i.fu = load ptr, ptr %3, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.fv = load ptr, ptr %i.bl, align 8, !tbaa !89 ; 2 uses
  %i.fw = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !155
  store <2 x ptr> %i.fw, ptr %7, align 16, !tbaa !155
  %.not.i.i.i.i210 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i210, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit212, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i211 = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i.i.i211, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !91
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fx, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit212

bb.bd:                                            ; preds = %bb.bb
  %i.gb = atomicrmw volatile add ptr %i.fx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit212

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit212: ; preds = %bb.ba, %bb.bc, %bb.bd
  %i.gc = invoke noundef zeroext i1 @_ZNK5osgeo4proj8metadata6Extent10intersectsERKN7dropbox6oxygen2nnISt10shared_ptrIS2_EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.be unwind label %bb.bl

bb.be:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit212
  %i.gd = load ptr, ptr %i.bq, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i213 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i213, label %.critedge183, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.ge, align 8, !tbaa !93
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !94
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !80
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #31, !inline_history !6
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !80
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #31, !inline_history !6
  br label %.critedge183

bb.bh:                                            ; preds = %bb.bf
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i214 = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i214, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i215

bb.bj:                                            ; preds = %bb.bh
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i215

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i215: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i216 = phi i32 [ %i.gh, %bb.bi ], [ %i.gr, %bb.bj ]
  %i.gs = icmp eq i32 %.0.i.i.i.i.i216, 1
  br i1 %i.gs, label %bb.bk, label %.critedge183, !prof !95

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i215
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #31
  br label %.critedge183

.critedge183:                                     ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i215, %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.bl:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit212
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.bs

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %.critedge181.thread, %.critedge183, %.thread287, %bb.z, %bb.y, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.w
  %.2158 = phi i1 [ %spec.select, %bb.w ], [ %.0156353, %bb.y ], [ %.0156353, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.0156353, %.thread287 ], [ %.0156353, %.critedge181.thread ], [ %.0156353, %bb.z ], [ %.0156353, %.critedge183 ] ; 2 uses
  %.2151 = phi i1 [ %.0149354, %bb.w ], [ %.0149354, %bb.y ], [ %.0149354, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %spec.select177, %.thread287 ], [ %spec.select177, %.critedge181.thread ], [ %.0149354, %bb.z ], [ %spec.select177, %.critedge183 ] ; 2 uses
  %.3141 = phi i1 [ false, %bb.w ], [ false, %bb.y ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %.thread287 ], [ %or.cond9, %.critedge181.thread ], [ false, %bb.z ], [ %i.gc, %.critedge183 ]
  %i.gu = load ptr, ptr %i.br, align 8, !tbaa !89 ; 8 uses
  %.not.i.i218 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i218, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit222, label %bb.bm

bb.bm:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.gv, align 8, !tbaa !93
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !94
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !80
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #31, !inline_history !12
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !80
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #31, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit222

bb.bo:                                            ; preds = %bb.bm
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i219 = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i219, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i220

bb.bq:                                            ; preds = %bb.bo
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i220

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i220: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i221 = phi i32 [ %i.gy, %bb.bp ], [ %i.hi, %bb.bq ]
  %i.hj = icmp eq i32 %.0.i.i.i.i221, 1
  br i1 %i.hj, label %bb.br, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit222, !prof !95

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i220
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit222

_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit222: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i220, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br i1 %.3141, label %bb.es, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

bb.bs:                                            ; preds = %bb.ax, %bb.ay, %bb.az, %bb.bl
  %.pn173.pn = phi { ptr, i32 } [ %i.fr, %bb.ax ], [ %i.gt, %bb.bl ], [ %i.fs, %bb.ay ], [ %i.ft, %bb.az ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.ey

bb.bt:                                            ; preds = %bb.t
  %i.hk = load i32, ptr %i.bs, align 8, !tbaa !258
  %i.hl = icmp eq i32 %i.hk, 1
  br i1 %i.hl, label %bb.bu, label %bb.es

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i8 0, ptr %i.c, align 1, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN5osgeo4proj9operation9getExtentERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEEbRb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0278.0351, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.hm = load ptr, ptr %8, align 8, !tbaa !88
  %.not302.a = icmp eq ptr %i.hm, null
  %i.hn = load ptr, ptr %.sroa.0278.0351, align 8, !tbaa !191 ; 2 uses
  br i1 %.not302.a, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ho = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hn)
          to label %bb.bw unwind label %bb.di

bb.bw:                                            ; preds = %bb.bv
  %not.367 = xor i1 %i.ho, true
  %spec.select184 = select i1 %not.367, i1 true, i1 %.0156353
  br label %.critedge197.thread

bb.bx:                                            ; preds = %bb.bu
  %i.hp = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hn)
          to label %bb.by unwind label %bb.di

bb.by:                                            ; preds = %bb.bx
  %not.366 = xor i1 %i.hp, true
  %spec.select185 = select i1 %not.366, i1 true, i1 %.0149354 ; 4 uses
  %i.hq = load ptr, ptr %i.bt, align 8, !tbaa !400, !nonnull !118, !align !197 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !88
  %.not303 = icmp eq ptr %i.hr, null
  br i1 %.not303, label %.critedge187, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hs = load ptr, ptr %8, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !89 ; 2 uses
  %i.hv = load <2 x ptr>, ptr %i.hq, align 8, !tbaa !155
  store <2 x ptr> %i.hv, ptr %9, align 16, !tbaa !155
  %.not.i.i.i.i223 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i223, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit225, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 3 uses
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i224 = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i.i224, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !91
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.hw, align 4, !tbaa !91
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit225

bb.cc:                                            ; preds = %bb.ca
  %i.ia = atomicrmw volatile add ptr %i.hw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit225

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit225: ; preds = %bb.bz, %bb.cb, %bb.cc
  %i.ib = invoke noundef zeroext i1 @_ZNK5osgeo4proj8metadata6Extent8containsERKN7dropbox6oxygen2nnISt10shared_ptrIS2_EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.cd unwind label %bb.dg

bb.cd:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit225
  %i.ic = load ptr, ptr %i.bu, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i226 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i226, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit230, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.id, align 8, !tbaa !93
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !94
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !80
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #31, !inline_history !6
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !80
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #31, !inline_history !6
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit230

bb.cg:                                            ; preds = %bb.ce
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i227 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i.i227, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i228

bb.ci:                                            ; preds = %bb.cg
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i228

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i228: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i.i229 = phi i32 [ %i.ig, %bb.ch ], [ %i.iq, %bb.ci ]
  %i.ir = icmp eq i32 %.0.i.i.i.i.i229, 1
  br i1 %i.ir, label %bb.cj, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit230, !prof !95

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i228
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit230

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit230: ; preds = %bb.cd, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i228, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.critedge187

.critedge187:                                     ; preds = %bb.by, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit230
  %i.is = phi i1 [ %i.ib, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit230 ], [ true, %bb.by ] ; 2 uses
  %i.it = load ptr, ptr %i.bv, align 8, !tbaa !401, !nonnull !118, !align !197 ; 3 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !88
  %.not304 = icmp eq ptr %i.iu, null
  br i1 %.not304, label %.critedge189, label %bb.ck

bb.ck:                                            ; preds = %.critedge187
  %i.iv = load ptr, ptr %8, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !89 ; 2 uses
  %i.iy = load <2 x ptr>, ptr %i.it, align 8, !tbaa !155
  store <2 x ptr> %i.iy, ptr %10, align 16, !tbaa !155
  %.not.i.i.i.i231 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i231, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit233, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 3 uses
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i232 = icmp eq i8 %i.ja, 0
end_hunk_3
