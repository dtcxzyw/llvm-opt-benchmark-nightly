Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pdb2gmx?download=true
inline.NumInlined: 3969
inline.NumDeleted: 1664
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3gmx12_GLOBAL__N_17pdb2gmx3runEv:bb.a
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit1431

_ZN3gmx14LogEntryWriterD2Ev.exit1431:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit1428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1429
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #33
  br label %bb.afb

bb.afa:                                           ; preds = %bb.aez, %bb.aey
  %i.efj = landingpad { ptr, i32 }
          cleanup
  %i.efk = load ptr, ptr %124, align 8, !tbaa !63 ; 2 uses
  %i.efl = icmp eq ptr %i.efk, %i.bqh
  br i1 %i.efl, label %_ZN3gmx14LogEntryWriterD2Ev.exit1434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1432: ; preds = %bb.afa
  %i.efm = load i64, ptr %i.bqh, align 8, !tbaa !60
  %i.efn = add i64 %i.efm, 1
  call void @_ZdlPvm(ptr noundef %i.efk, i64 noundef %i.efn) #34
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit1434

_ZN3gmx14LogEntryWriterD2Ev.exit1434:             ; preds = %bb.afa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1432
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #33
  br label %.body1339

bb.afb:                                           ; preds = %._crit_edge5706, %bb.aew, %bb.aex, %_ZN3gmx14LogEntryWriterD2Ev.exit1431
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #33
  %i.efo = load ptr, ptr %i.ap, align 8, !tbaa !509
  %i.efp = load ptr, ptr %121, align 8, !tbaa !177
  %i.efq = load i8, ptr %i.bqk, align 2, !tbaa !543, !range !114, !noundef !115
  %i.efr = trunc nuw i8 %i.efq to i1
  %i.efs = load i8, ptr %i.sf, align 8, !tbaa !454, !range !114, !noundef !115
  %i.eft = trunc nuw i8 %i.efs to i1
  invoke void @_Z18makeDisulfideBondsP7t_atomsP8t_symtabPA3_fbb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.195") align 8 %125, ptr noundef %i.efo, ptr noundef nonnull %79, ptr noundef %i.efp, i1 noundef zeroext %i.efr, i1 noundef zeroext %i.eft)
          to label %bb.afc unwind label %bb.agc

bb.afc:                                           ; preds = %bb.afb
  %i.efu = load ptr, ptr %75, align 16, !tbaa !201 ; 4 uses
  %i.efv = load ptr, ptr %i.bql, align 8, !tbaa !202
  %i.efw = load ptr, ptr %i.bqm, align 16, !tbaa !203
  %i.efx = load <2 x ptr>, ptr %125, align 16, !tbaa !544
  store <2 x ptr> %i.efx, ptr %75, align 16, !tbaa !544
  %i.efy = load ptr, ptr %i.bqo, align 16, !tbaa !203
  store ptr %i.efy, ptr %i.bqm, align 16, !tbaa !203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %125, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP13DisulfideBondEEvT_S4_(ptr noundef %i.efu, ptr noundef %i.efv)
          to label %_ZSt8_DestroyIP13DisulfideBondS0_EvT_S2_RSaIT0_E.exit.i.i.i unwind label %bb.afe

_ZSt8_DestroyIP13DisulfideBondS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.afc
  %.not.i.i.i.i.i1435 = icmp eq ptr %i.efu, null
  br i1 %.not.i.i.i.i.i1435, label %_ZNSt6vectorI13DisulfideBondSaIS0_EEaSEOS2_.exit, label %bb.afd

bb.afd:                                           ; preds = %_ZSt8_DestroyIP13DisulfideBondS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.efz = ptrtoint ptr %i.efw to i64
  %i.ega = ptrtoint ptr %i.efu to i64
  %i.egb = sub i64 %i.efz, %i.ega
  call void @_ZdlPvm(ptr noundef nonnull %i.efu, i64 noundef %i.egb) #34
  br label %_ZNSt6vectorI13DisulfideBondSaIS0_EEaSEOS2_.exit

bb.afe:                                           ; preds = %bb.afc
  %i.egc = landingpad { ptr, i32 }
          catch ptr null
  %i.egd = extractvalue { ptr, i32 } %i.egc, 0
  call void @__clang_call_terminate(ptr %i.egd) #32
  unreachable

_ZNSt6vectorI13DisulfideBondSaIS0_EEaSEOS2_.exit: ; preds = %_ZSt8_DestroyIP13DisulfideBondS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.afd
  %i.ege = load ptr, ptr %125, align 16, !tbaa !201
  %i.egf = load ptr, ptr %i.bqn, align 8, !tbaa !202
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP13DisulfideBondEEvT_S4_(ptr noundef %i.ege, ptr noundef %i.egf)
          to label %_ZSt8_DestroyIP13DisulfideBondS0_EvT_S2_RSaIT0_E.exit.i unwind label %bb.afg

_ZSt8_DestroyIP13DisulfideBondS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorI13DisulfideBondSaIS0_EEaSEOS2_.exit
  %i.egg = load ptr, ptr %125, align 16, !tbaa !201 ; 3 uses
  %.not.i.i.i1436 = icmp eq ptr %i.egg, null
  br i1 %.not.i.i.i1436, label %_ZNSt6vectorI13DisulfideBondSaIS0_EED2Ev.exit, label %bb.aff

bb.aff:                                           ; preds = %_ZSt8_DestroyIP13DisulfideBondS0_EvT_S2_RSaIT0_E.exit.i
  %i.egh = load ptr, ptr %i.bqo, align 16, !tbaa !203
  %i.egi = ptrtoint ptr %i.egh to i64
  %i.egj = ptrtoint ptr %i.egg to i64
  %i.egk = sub i64 %i.egi, %i.egj
  call void @_ZdlPvm(ptr noundef nonnull %i.egg, i64 noundef %i.egk) #34
  br label %_ZNSt6vectorI13DisulfideBondSaIS0_EED2Ev.exit

bb.afg:                                           ; preds = %_ZNSt6vectorI13DisulfideBondSaIS0_EEaSEOS2_.exit
  %i.egl = landingpad { ptr, i32 }
          catch ptr null
  %i.egm = extractvalue { ptr, i32 } %i.egl, 0
  call void @__clang_call_terminate(ptr %i.egm) #32
  unreachable

_ZNSt6vectorI13DisulfideBondSaIS0_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIP13DisulfideBondS0_EvT_S2_RSaIT0_E.exit.i, %bb.aff
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #33
  %i.egn = load ptr, ptr %85, align 8, !tbaa !442 ; 5 uses
  %i.ego = load ptr, ptr %i.ot, align 8, !tbaa !442 ; 2 uses
  %i.egp = icmp eq ptr %i.egn, %i.ego
  br i1 %i.egp, label %_ZN12_GLOBAL__N_113rename_resrtpEP7t_atomsiN3gmx8ArrayRefIKiEES5_NS3_IK9RtpRenameEEP8t_symtabbRKNS2_8MDLoggerE.exit, label %bb.afh

bb.afh:                                           ; preds = %_ZNSt6vectorI13DisulfideBondSaIS0_EED2Ev.exit
  %i.egq = load ptr, ptr %i.ap, align 8, !tbaa !509 ; 2 uses
  %i.egr = getelementptr inbounds nuw i8, ptr %i.bwt, i64 88
  %i.egs = load ptr, ptr %i.egr, align 8, !tbaa !157 ; 3 uses
  %i.egt = getelementptr inbounds nuw i8, ptr %i.bwt, i64 112
  %i.egu = load ptr, ptr %i.egt, align 8, !tbaa !157 ; 3 uses
  %i.egv = ptrtoint ptr %i.ego to i64
  %i.egw = ptrtoint ptr %i.egn to i64
  %i.egx = sub i64 %i.egv, %i.egw
  %i.egy = getelementptr inbounds nuw i8, ptr %i.egn, i64 %i.egx ; 2 uses
  %i.egz = load i8, ptr %i.sf, align 8, !tbaa !454, !range !114, !noundef !115
  %i.eha = trunc nuw i8 %i.egz to i1
  %i.ehb = call ptr @getenv(ptr noundef nonnull @.str.376) #33
  %i.ehc = icmp eq ptr %i.ehb, null
  %i.ehd = getelementptr inbounds nuw i8, ptr %i.egq, i64 40 ; 2 uses
  %i.ehe = load i32, ptr %i.ehd, align 8, !tbaa !148
  %i.ehf = icmp sgt i32 %i.ehe, 0
  br i1 %i.ehf, label %.preheader9.lr.ph.i, label %_ZN12_GLOBAL__N_113rename_resrtpEP7t_atomsiN3gmx8ArrayRefIKiEES5_NS3_IK9RtpRenameEEP8t_symtabbRKNS2_8MDLoggerE.exit

.preheader9.lr.ph.i:                              ; preds = %bb.afh
  %i.ehg = load i32, ptr %i.cxk, align 4, !tbaa !505 ; 6 uses
  %i.ehh = icmp sgt i32 %i.ehg, 0
  %i.ehi = getelementptr inbounds nuw i8, ptr %i.egq, i64 48 ; 4 uses
  %wide.trip.count.i1437 = zext i32 %i.ehg to i64 ; 12 uses
  %min.iters.check10338 = icmp ult i32 %i.ehg, 4
  %min.iters.check10340 = icmp ult i32 %i.ehg, 32
  %i.ehj = and i64 %wide.trip.count.i1437, 28
  %n.vec10342 = and i64 %wide.trip.count.i1437, 2147483616 ; 4 uses
  %cmp.n10361 = icmp eq i64 %n.vec10342, %wide.trip.count.i1437
  %min.epilog.iters.check10367 = icmp eq i64 %i.ehj, 0
  %n.vec10369 = and i64 %wide.trip.count.i1437, 2147483644 ; 3 uses
  %cmp.n10381 = icmp eq i64 %n.vec10369, %wide.trip.count.i1437
  %min.iters.check10293 = icmp ult i32 %i.ehg, 4
  %min.iters.check10295 = icmp ult i32 %i.ehg, 32
  %i.ehk = and i64 %wide.trip.count.i1437, 28
  %n.vec10297 = and i64 %wide.trip.count.i1437, 2147483616 ; 4 uses
  %cmp.n10314 = icmp eq i64 %n.vec10297, %wide.trip.count.i1437
  %min.epilog.iters.check10320 = icmp eq i64 %i.ehk, 0
  %n.vec10322 = and i64 %wide.trip.count.i1437, 2147483644 ; 3 uses
  %cmp.n10334 = icmp eq i64 %n.vec10322, %wide.trip.count.i1437
  br label %.preheader9.i

.preheader9.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, %.preheader9.lr.ph.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader9.lr.ph.i ], [ %indvars.iv.next24.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i ] ; 11 uses
  br i1 %i.ehh, label %iter.check10364, label %._crit_edge.i1438

iter.check10364:                                  ; preds = %.preheader9.i
  br i1 %min.iters.check10338, label %.lr.ph.i1457.preheader, label %vector.main.loop.iter.check10339

vector.main.loop.iter.check10339:                 ; preds = %iter.check10364
  br i1 %min.iters.check10340, label %vec.epilog.ph10368, label %vector.ph10341

vector.ph10341:                                   ; preds = %vector.main.loop.iter.check10339
  %broadcast.splatinsert10343 = insertelement <8 x i64> poison, i64 %indvars.iv23.i, i64 0
  %broadcast.splat10344 = shufflevector <8 x i64> %broadcast.splatinsert10343, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body10345

vector.body10345:                                 ; preds = %vector.ph10341, %vector.body10345
  %index10346 = phi i64 [ 0, %vector.ph10341 ], [ %index.next10355, %vector.body10345 ] ; 2 uses
  %vec.phi10347 = phi <8 x i1> [ zeroinitializer, %vector.ph10341 ], [ %i.ehx, %vector.body10345 ]
  %vec.phi10348 = phi <8 x i1> [ zeroinitializer, %vector.ph10341 ], [ %i.ehy, %vector.body10345 ]
  %vec.phi10349 = phi <8 x i1> [ zeroinitializer, %vector.ph10341 ], [ %i.ehz, %vector.body10345 ]
  %vec.phi10350 = phi <8 x i1> [ zeroinitializer, %vector.ph10341 ], [ %i.eia, %vector.body10345 ]
  %i.ehl = getelementptr inbounds nuw [4 x i8], ptr %i.egs, i64 %index10346 ; 4 uses
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.ehl, i64 32
  %i.ehn = getelementptr inbounds nuw i8, ptr %i.ehl, i64 64
  %i.eho = getelementptr inbounds nuw i8, ptr %i.ehl, i64 96
  %wide.load10351 = load <8 x i32>, ptr %i.ehl, align 4, !tbaa !113
  %wide.load10352 = load <8 x i32>, ptr %i.ehm, align 4, !tbaa !113
  %wide.load10353 = load <8 x i32>, ptr %i.ehn, align 4, !tbaa !113
  %wide.load10354 = load <8 x i32>, ptr %i.eho, align 4, !tbaa !113
  %i.ehp = zext <8 x i32> %wide.load10351 to <8 x i64>
  %i.ehq = zext <8 x i32> %wide.load10352 to <8 x i64>
  %i.ehr = zext <8 x i32> %wide.load10353 to <8 x i64>
  %i.ehs = zext <8 x i32> %wide.load10354 to <8 x i64>
  %i.eht = icmp eq <8 x i64> %broadcast.splat10344, %i.ehp
  %i.ehu = icmp eq <8 x i64> %broadcast.splat10344, %i.ehq
  %i.ehv = icmp eq <8 x i64> %broadcast.splat10344, %i.ehr
  %i.ehw = icmp eq <8 x i64> %broadcast.splat10344, %i.ehs
  %i.ehx = or <8 x i1> %vec.phi10347, %i.eht      ; 2 uses
  %i.ehy = or <8 x i1> %vec.phi10348, %i.ehu      ; 2 uses
  %i.ehz = or <8 x i1> %vec.phi10349, %i.ehv      ; 2 uses
  %i.eia = or <8 x i1> %vec.phi10350, %i.ehw      ; 2 uses
  %index.next10355 = add nuw i64 %index10346, 32  ; 2 uses
  %i.eib = icmp eq i64 %index.next10355, %n.vec10342
  br i1 %i.eib, label %middle.block10356, label %vector.body10345, !llvm.loop !390

middle.block10356:                                ; preds = %vector.body10345
  %bin.rdx10357 = or <8 x i1> %i.ehy, %i.ehx
  %bin.rdx10358 = or <8 x i1> %i.ehz, %bin.rdx10357
  %bin.rdx10359 = or <8 x i1> %i.eia, %bin.rdx10358
  %bin.rdx10359.fr = freeze <8 x i1> %bin.rdx10359
  %i.eic = bitcast <8 x i1> %bin.rdx10359.fr to i8
  %.not10473 = icmp ne i8 %i.eic, 0               ; 2 uses
  %rdx.select10360 = zext i1 %.not10473 to i8     ; 2 uses
  br i1 %cmp.n10361, label %iter.check10317, label %vec.epilog.iter.check10366

vec.epilog.iter.check10366:                       ; preds = %middle.block10356
  br i1 %min.epilog.iters.check10367, label %.lr.ph.i1457.preheader, label %vec.epilog.ph10368, !prof !545

vec.epilog.ph10368:                               ; preds = %vector.main.loop.iter.check10339, %vec.epilog.iter.check10366
  %vec.epilog.resume.val10362 = phi i64 [ %n.vec10342, %vec.epilog.iter.check10366 ], [ 0, %vector.main.loop.iter.check10339 ]
  %bc.merge.rdx10363 = phi i1 [ %.not10473, %vec.epilog.iter.check10366 ], [ false, %vector.main.loop.iter.check10339 ]
  %broadcast.splatinsert10370 = insertelement <4 x i64> poison, i64 %indvars.iv23.i, i64 0
  %broadcast.splat10371 = shufflevector <4 x i64> %broadcast.splatinsert10370, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert10372 = insertelement <4 x i1> poison, i1 %bc.merge.rdx10363, i64 0
  %broadcast.splat10373 = shufflevector <4 x i1> %broadcast.splatinsert10372, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body10374

vec.epilog.vector.body10374:                      ; preds = %vec.epilog.vector.body10374, %vec.epilog.ph10368
  %index10375 = phi i64 [ %vec.epilog.resume.val10362, %vec.epilog.ph10368 ], [ %index.next10378, %vec.epilog.vector.body10374 ] ; 2 uses
  %vec.phi10376 = phi <4 x i1> [ %broadcast.splat10373, %vec.epilog.ph10368 ], [ %i.eig, %vec.epilog.vector.body10374 ]
  %i.eid = getelementptr inbounds nuw [4 x i8], ptr %i.egs, i64 %index10375
  %wide.load10377 = load <4 x i32>, ptr %i.eid, align 4, !tbaa !113
  %i.eie = zext <4 x i32> %wide.load10377 to <4 x i64>
  %i.eif = icmp eq <4 x i64> %broadcast.splat10371, %i.eie
  %.fr = freeze <4 x i1> %i.eif
  %i.eig = or <4 x i1> %vec.phi10376, %.fr        ; 2 uses
  %index.next10378 = add nuw i64 %index10375, 4   ; 2 uses
  %i.eih = icmp eq i64 %index.next10378, %n.vec10369
  br i1 %i.eih, label %vec.epilog.middle.block10379, label %vec.epilog.vector.body10374, !llvm.loop !391

vec.epilog.middle.block10379:                     ; preds = %vec.epilog.vector.body10374
  %i.eii = bitcast <4 x i1> %i.eig to i4
  %.not10475 = icmp ne i4 %i.eii, 0
  %rdx.select10380 = zext i1 %.not10475 to i8     ; 2 uses
  br i1 %cmp.n10381, label %iter.check10317, label %.lr.ph.i1457.preheader

.lr.ph.i1457.preheader:                           ; preds = %iter.check10364, %vec.epilog.iter.check10366, %vec.epilog.middle.block10379
  %indvars.iv.i1458.ph = phi i64 [ 0, %iter.check10364 ], [ %n.vec10342, %vec.epilog.iter.check10366 ], [ %n.vec10369, %vec.epilog.middle.block10379 ]
  %.04411.i.ph = phi i8 [ 0, %iter.check10364 ], [ %rdx.select10360, %vec.epilog.iter.check10366 ], [ %rdx.select10380, %vec.epilog.middle.block10379 ]
  br label %.lr.ph.i1457

.lr.ph.i1457:                                     ; preds = %.lr.ph.i1457.preheader, %.lr.ph.i1457
  %indvars.iv.i1458 = phi i64 [ %indvars.iv.next.i1460, %.lr.ph.i1457 ], [ %indvars.iv.i1458.ph, %.lr.ph.i1457.preheader ] ; 2 uses
  %.04411.i = phi i8 [ %spec.select.i1459, %.lr.ph.i1457 ], [ %.04411.i.ph, %.lr.ph.i1457.preheader ]
  %i.eij = getelementptr inbounds nuw [4 x i8], ptr %i.egs, i64 %indvars.iv.i1458
  %i.eik = load i32, ptr %i.eij, align 4, !tbaa !113
  %i.eil = zext i32 %i.eik to i64
  %i.eim = icmp eq i64 %indvars.iv23.i, %i.eil
  %spec.select.i1459 = select i1 %i.eim, i8 1, i8 %.04411.i ; 2 uses
  %indvars.iv.next.i1460 = add nuw nsw i64 %indvars.iv.i1458, 1 ; 2 uses
  %exitcond.not.i1461 = icmp eq i64 %indvars.iv.next.i1460, %wide.trip.count.i1437
  br i1 %exitcond.not.i1461, label %iter.check10317, label %.lr.ph.i1457, !llvm.loop !392

iter.check10317:                                  ; preds = %.lr.ph.i1457, %vec.epilog.middle.block10379, %middle.block10356
  %spec.select.i1459.lcssa = phi i8 [ %rdx.select10380, %vec.epilog.middle.block10379 ], [ %rdx.select10360, %middle.block10356 ], [ %spec.select.i1459, %.lr.ph.i1457 ] ; 3 uses
  br i1 %min.iters.check10293, label %.lr.ph15.i.preheader, label %vector.main.loop.iter.check10294

vector.main.loop.iter.check10294:                 ; preds = %iter.check10317
  br i1 %min.iters.check10295, label %vec.epilog.ph10321, label %vector.ph10296

vector.ph10296:                                   ; preds = %vector.main.loop.iter.check10294
  %broadcast.splatinsert10298 = insertelement <8 x i64> poison, i64 %indvars.iv23.i, i64 0
  %broadcast.splat10299 = shufflevector <8 x i64> %broadcast.splatinsert10298, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body10300

vector.body10300:                                 ; preds = %vector.ph10296, %vector.body10300
  %index10301 = phi i64 [ 0, %vector.ph10296 ], [ %index.next10309, %vector.body10300 ] ; 2 uses
  %vec.phi10302 = phi <8 x i1> [ zeroinitializer, %vector.ph10296 ], [ %i.eiz, %vector.body10300 ]
  %vec.phi10303 = phi <8 x i1> [ zeroinitializer, %vector.ph10296 ], [ %i.eja, %vector.body10300 ]
  %vec.phi10304 = phi <8 x i1> [ zeroinitializer, %vector.ph10296 ], [ %i.ejb, %vector.body10300 ]
  %vec.phi10305 = phi <8 x i1> [ zeroinitializer, %vector.ph10296 ], [ %i.ejc, %vector.body10300 ]
  %i.ein = getelementptr inbounds nuw [4 x i8], ptr %i.egu, i64 %index10301 ; 4 uses
  %i.eio = getelementptr inbounds nuw i8, ptr %i.ein, i64 32
  %i.eip = getelementptr inbounds nuw i8, ptr %i.ein, i64 64
  %i.eiq = getelementptr inbounds nuw i8, ptr %i.ein, i64 96
  %wide.load = load <8 x i32>, ptr %i.ein, align 4, !tbaa !113
  %wide.load10306 = load <8 x i32>, ptr %i.eio, align 4, !tbaa !113
  %wide.load10307 = load <8 x i32>, ptr %i.eip, align 4, !tbaa !113
  %wide.load10308 = load <8 x i32>, ptr %i.eiq, align 4, !tbaa !113
  %i.eir = zext <8 x i32> %wide.load to <8 x i64>
  %i.eis = zext <8 x i32> %wide.load10306 to <8 x i64>
  %i.eit = zext <8 x i32> %wide.load10307 to <8 x i64>
  %i.eiu = zext <8 x i32> %wide.load10308 to <8 x i64>
  %i.eiv = icmp eq <8 x i64> %broadcast.splat10299, %i.eir
  %i.eiw = icmp eq <8 x i64> %broadcast.splat10299, %i.eis
  %i.eix = icmp eq <8 x i64> %broadcast.splat10299, %i.eit
  %i.eiy = icmp eq <8 x i64> %broadcast.splat10299, %i.eiu
  %i.eiz = or <8 x i1> %vec.phi10302, %i.eiv      ; 2 uses
  %i.eja = or <8 x i1> %vec.phi10303, %i.eiw      ; 2 uses
  %i.ejb = or <8 x i1> %vec.phi10304, %i.eix      ; 2 uses
  %i.ejc = or <8 x i1> %vec.phi10305, %i.eiy      ; 2 uses
  %index.next10309 = add nuw i64 %index10301, 32  ; 2 uses
  %i.ejd = icmp eq i64 %index.next10309, %n.vec10297
  br i1 %i.ejd, label %middle.block10310, label %vector.body10300, !llvm.loop !393

middle.block10310:                                ; preds = %vector.body10300
  %bin.rdx10311 = or <8 x i1> %i.eja, %i.eiz
  %bin.rdx10312 = or <8 x i1> %i.ejb, %bin.rdx10311
  %bin.rdx10313 = or <8 x i1> %i.ejc, %bin.rdx10312
  %bin.rdx10313.fr = freeze <8 x i1> %bin.rdx10313
  %i.eje = bitcast <8 x i1> %bin.rdx10313.fr to i8
  %.not10477 = icmp ne i8 %i.eje, 0               ; 2 uses
  %rdx.select = zext i1 %.not10477 to i8          ; 2 uses
  br i1 %cmp.n10314, label %._crit_edge.i1438, label %vec.epilog.iter.check10319

vec.epilog.iter.check10319:                       ; preds = %middle.block10310
  br i1 %min.epilog.iters.check10320, label %.lr.ph15.i.preheader, label %vec.epilog.ph10321, !prof !545

vec.epilog.ph10321:                               ; preds = %vector.main.loop.iter.check10294, %vec.epilog.iter.check10319
  %vec.epilog.resume.val10315 = phi i64 [ %n.vec10297, %vec.epilog.iter.check10319 ], [ 0, %vector.main.loop.iter.check10294 ]
  %bc.merge.rdx10316 = phi i1 [ %.not10477, %vec.epilog.iter.check10319 ], [ false, %vector.main.loop.iter.check10294 ]
  %broadcast.splatinsert10323 = insertelement <4 x i64> poison, i64 %indvars.iv23.i, i64 0
  %broadcast.splat10324 = shufflevector <4 x i64> %broadcast.splatinsert10323, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert10325 = insertelement <4 x i1> poison, i1 %bc.merge.rdx10316, i64 0
  %broadcast.splat10326 = shufflevector <4 x i1> %broadcast.splatinsert10325, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body10327

vec.epilog.vector.body10327:                      ; preds = %vec.epilog.vector.body10327, %vec.epilog.ph10321
  %index10328 = phi i64 [ %vec.epilog.resume.val10315, %vec.epilog.ph10321 ], [ %index.next10331, %vec.epilog.vector.body10327 ] ; 2 uses
  %vec.phi10329 = phi <4 x i1> [ %broadcast.splat10326, %vec.epilog.ph10321 ], [ %i.eji, %vec.epilog.vector.body10327 ]
  %i.ejf = getelementptr inbounds nuw [4 x i8], ptr %i.egu, i64 %index10328
  %wide.load10330 = load <4 x i32>, ptr %i.ejf, align 4, !tbaa !113
  %i.ejg = zext <4 x i32> %wide.load10330 to <4 x i64>
  %i.ejh = icmp eq <4 x i64> %broadcast.splat10324, %i.ejg
  %.fr10480 = freeze <4 x i1> %i.ejh
  %i.eji = or <4 x i1> %vec.phi10329, %.fr10480   ; 2 uses
  %index.next10331 = add nuw i64 %index10328, 4   ; 2 uses
  %i.ejj = icmp eq i64 %index.next10331, %n.vec10322
  br i1 %i.ejj, label %vec.epilog.middle.block10332, label %vec.epilog.vector.body10327, !llvm.loop !394

vec.epilog.middle.block10332:                     ; preds = %vec.epilog.vector.body10327
  %i.ejk = bitcast <4 x i1> %i.eji to i4
  %.not10481 = icmp ne i4 %i.ejk, 0
  %rdx.select10333 = zext i1 %.not10481 to i8     ; 2 uses
  br i1 %cmp.n10334, label %._crit_edge.i1438, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %iter.check10317, %vec.epilog.iter.check10319, %vec.epilog.middle.block10332
  %indvars.iv19.i.ph = phi i64 [ 0, %iter.check10317 ], [ %n.vec10297, %vec.epilog.iter.check10319 ], [ %n.vec10322, %vec.epilog.middle.block10332 ]
  %.04213.i.ph = phi i8 [ 0, %iter.check10317 ], [ %rdx.select, %vec.epilog.iter.check10319 ], [ %rdx.select10333, %vec.epilog.middle.block10332 ]
  br label %.lr.ph15.i

._crit_edge.i1438:                                ; preds = %.lr.ph15.i, %middle.block10310, %vec.epilog.middle.block10332, %.preheader9.i
  %.044.lcssa47.i = phi i8 [ 0, %.preheader9.i ], [ %spec.select.i1459.lcssa, %middle.block10310 ], [ %spec.select.i1459.lcssa, %vec.epilog.middle.block10332 ], [ %spec.select.i1459.lcssa, %.lr.ph15.i ] ; 2 uses
  %.042.lcssa.i = phi i8 [ 0, %.preheader9.i ], [ %rdx.select, %middle.block10310 ], [ %rdx.select10333, %vec.epilog.middle.block10332 ], [ %spec.select52.i, %.lr.ph15.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ejl = load ptr, ptr %i.ehi, align 8, !tbaa !149
  %i.ejm = getelementptr inbounds nuw [32 x i8], ptr %i.ejl, i64 %indvars.iv23.i
  %i.ejn = getelementptr inbounds nuw i8, ptr %i.ejm, i64 24
  %i.ejo = load ptr, ptr %i.ejn, align 8, !tbaa !185
  %i.ejp = load ptr, ptr %i.ejo, align 8, !tbaa !112
  %i.ejq = trunc nuw i8 %.044.lcssa47.i to i1     ; 2 uses
  %i.ejr = trunc nuw i8 %.042.lcssa.i to i1       ; 2 uses
  invoke fastcc void @_ZN12_GLOBAL__N_116search_resrenameB5cxx11EN3gmx8ArrayRefIK9RtpRenameEEPKcbbb(ptr dead_on_unwind noalias writable align 8 %12, ptr %i.egn, ptr nonnull %i.egy, ptr noundef %i.ejp, i1 noundef zeroext %i.ejq, i1 noundef zeroext %i.ejr, i1 noundef zeroext false)
          to label %.noexc1462 unwind label %bb.agd

.noexc1462:                                       ; preds = %._crit_edge.i1438
  %.pre26.i = load i64, ptr %i.bqp, align 8, !tbaa !59 ; 3 uses
  br i1 %i.ehc, label %bb.afi, label %bb.afr

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.preheader, %.lr.ph15.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %.lr.ph15.i ], [ %indvars.iv19.i.ph, %.lr.ph15.i.preheader ] ; 2 uses
  %.04213.i = phi i8 [ %spec.select52.i, %.lr.ph15.i ], [ %.04213.i.ph, %.lr.ph15.i.preheader ]
  %i.ejs = getelementptr inbounds nuw [4 x i8], ptr %i.egu, i64 %indvars.iv19.i
  %i.ejt = load i32, ptr %i.ejs, align 4, !tbaa !113
  %i.eju = zext i32 %i.ejt to i64
  %i.ejv = icmp eq i64 %indvars.iv23.i, %i.eju
  %spec.select52.i = select i1 %i.ejv, i8 1, i8 %.04213.i ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count.i1437
  br i1 %exitcond22.not.i, label %._crit_edge.i1438, label %.lr.ph15.i, !llvm.loop !395

bb.afi:                                           ; preds = %.noexc1462
  %i.ejw = icmp ne i64 %.pre26.i, 0
  %i.ejx = or i8 %.042.lcssa.i, %.044.lcssa47.i
  %or.cond.not.i = icmp eq i8 %i.ejx, 0
  %or.cond.i1444 = or i1 %or.cond.not.i, %i.ejw
  br i1 %or.cond.i1444, label %bb.afr, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.ejy = load ptr, ptr %i.ehi, align 8, !tbaa !149
  %i.ejz = getelementptr inbounds nuw [32 x i8], ptr %i.ejy, i64 %indvars.iv23.i
  %i.eka = getelementptr inbounds nuw i8, ptr %i.ejz, i64 24
  %i.ekb = load ptr, ptr %i.eka, align 8, !tbaa !185
  %i.ekc = load ptr, ptr %i.ekb, align 8, !tbaa !112
  invoke fastcc void @_ZN12_GLOBAL__N_116search_resrenameB5cxx11EN3gmx8ArrayRefIK9RtpRenameEEPKcbbb(ptr dead_on_unwind noalias writable align 8 %13, ptr %i.egn, ptr nonnull %i.egy, ptr noundef %i.ekc, i1 noundef zeroext %i.ejq, i1 noundef zeroext %i.ejr, i1 noundef zeroext true)
          to label %bb.afk unwind label %bb.afq

bb.afk:                                           ; preds = %bb.afj
  %i.ekd = load ptr, ptr %12, align 8, !tbaa !63  ; 6 uses
  %i.eke = icmp eq ptr %i.ekd, %i.bqq
  %i.ekf = load ptr, ptr %13, align 8, !tbaa !63  ; 5 uses
  %i.ekg = icmp eq ptr %i.ekf, %i.bqr             ; 2 uses
  br i1 %i.eke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1455: ; preds = %bb.afk
  br i1 %i.ekg, label %bb.afl, label %.thread.i.i1456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1445: ; preds = %bb.afk
  br i1 %i.ekg, label %bb.afl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i1446

bb.afl:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1445, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1455
  %i.ekh = load i64, ptr %i.bqs, align 8, !tbaa !59 ; 3 uses
  %i.eki = icmp ult i64 %i.ekh, 16
  call void @llvm.assume(i1 %i.eki)
  switch i64 %i.ekh, label %bb.afn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i1453
    i64 1, label %bb.afm
  ]

bb.afm:                                           ; preds = %bb.afl
  %i.ekj = load i8, ptr %i.ekf, align 1, !tbaa !60
  store i8 %i.ekj, ptr %i.ekd, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i1453

bb.afn:                                           ; preds = %bb.afl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ekd, ptr align 1 %i.ekf, i64 %i.ekh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i1453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i1453: ; preds = %bb.afn, %bb.afm, %bb.afl
  %i.ekk = load i64, ptr %i.bqs, align 8, !tbaa !59 ; 2 uses
  store i64 %i.ekk, ptr %i.bqp, align 8, !tbaa !59
  %i.ekl = load ptr, ptr %12, align 8, !tbaa !63
  %i.ekm = getelementptr inbounds nuw i8, ptr %i.ekl, i64 %i.ekk
  store i8 0, ptr %i.ekm, align 1, !tbaa !60
  %.pre.i.i1454 = load ptr, ptr %13, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i1448

.thread.i.i1456:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1455
  store ptr %i.ekf, ptr %12, align 8, !tbaa !63
  %i.ekn = load <2 x i64>, ptr %i.bqs, align 8, !tbaa !60
  store <2 x i64> %i.ekn, ptr %i.bqp, align 8, !tbaa !60
  br label %bb.afp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i1446: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1445
  %i.eko = load i64, ptr %i.bqq, align 8, !tbaa !60
  store ptr %i.ekf, ptr %12, align 8, !tbaa !63
  %i.ekp = load <2 x i64>, ptr %i.bqs, align 8, !tbaa !60
  store <2 x i64> %i.ekp, ptr %i.bqp, align 8, !tbaa !60
  %.not.i.i1447 = icmp eq ptr %i.ekd, null
  br i1 %.not.i.i1447, label %bb.afp, label %bb.afo

bb.afo:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i1446
  store ptr %i.ekd, ptr %13, align 8, !tbaa !63
  store i64 %i.eko, ptr %i.bqr, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i1448

bb.afp:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i1446, %.thread.i.i1456
  store ptr %i.bqr, ptr %13, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i1448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i1448: ; preds = %bb.afp, %bb.afo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i1453
  %i.ekq = phi ptr [ %.pre.i.i1454, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i1453 ], [ %i.ekd, %bb.afo ], [ %i.bqr, %bb.afp ]
  store i64 0, ptr %i.bqs, align 8, !tbaa !59
  store i8 0, ptr %i.ekq, align 1, !tbaa !60
  %i.ekr = load ptr, ptr %13, align 8, !tbaa !63  ; 2 uses
  %i.eks = icmp eq ptr %i.ekr, %i.bqr
  br i1 %i.eks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1449: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i1448
  %i.ekt = load i64, ptr %i.bqr, align 8, !tbaa !60
  %i.eku = add i64 %i.ekt, 1
  call void @_ZdlPvm(ptr noundef %i.ekr, i64 noundef %i.eku) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i1448, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1449
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %.pre.i1451 = load i64, ptr %i.bqp, align 8, !tbaa !59
  br label %bb.afr

bb.afq:                                           ; preds = %bb.afj
  %i.ekv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.agb

bb.afr:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1450, %bb.afi, %.noexc1462
  %i.ekw = phi i64 [ %.pre.i1451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1450 ], [ %.pre26.i, %bb.afi ], [ %.pre26.i, %.noexc1462 ] ; 3 uses
  %i.ekx = icmp eq i64 %i.ekw, 0
  br i1 %i.ekx, label %bb.aga, label %bb.afs

bb.afs:                                           ; preds = %bb.afr
  %i.eky = load ptr, ptr %i.ehi, align 8, !tbaa !149
  %i.ekz = getelementptr inbounds nuw [32 x i8], ptr %i.eky, i64 %indvars.iv23.i ; 3 uses
  %i.ela = getelementptr inbounds nuw i8, ptr %i.ekz, i64 24
  %i.elb = load ptr, ptr %i.ela, align 8, !tbaa !185
  %i.elc = load ptr, ptr %i.elb, align 8, !tbaa !112 ; 2 uses
  %i.eld = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.elc) #33
  %i.ele = icmp eq i64 %i.ekw, %i.eld
  br i1 %i.ele, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.afs
  %i.elf = load ptr, ptr %12, align 8, !tbaa !63
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.elf, ptr nonnull %i.elc, i64 %i.ekw)
  %.not.i1443 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i1443, label %bb.aga, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.afs
  br i1 %i.eha, label %bb.aft, label %bb.afy

bb.aft:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.elg = load ptr, ptr %i.bb, align 8, !tbaa !131 ; 3 uses
  %i.elh = icmp eq ptr %i.elg, null
  br i1 %i.elh, label %bb.afy, label %bb.afv

bb.afu:                                           ; preds = %bb.afy
  %i.eli = landingpad { ptr, i32 }
          cleanup
  br label %bb.agb

bb.afv:                                           ; preds = %bb.aft
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bqt, i8 0, i64 24, i1 false)
  store ptr %i.bqt, ptr %14, align 8, !tbaa !58
  store i64 0, ptr %i.bqu, align 8, !tbaa !59
  store i8 1, ptr %i.bqv, align 8, !tbaa !134
  %i.elj = getelementptr inbounds nuw i8, ptr %i.ekz, i64 8
  %i.elk = load i32, ptr %i.elj, align 8, !tbaa !476
  %i.ell = load ptr, ptr %i.ekz, align 8, !tbaa !151
  %i.elm = load ptr, ptr %i.ell, align 8, !tbaa !112
  %i.eln = load ptr, ptr %12, align 8, !tbaa !63
  %i.elo = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull @.str.377, i32 noundef %i.elk, ptr noundef %i.elm, ptr noundef %i.eln)
          to label %bb.afw unwind label %bb.afx

end_hunk_0
