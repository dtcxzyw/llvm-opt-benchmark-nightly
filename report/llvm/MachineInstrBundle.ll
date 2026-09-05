Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineInstrBundle?download=true
inline.NumInlined: 1392
inline.NumDeleted: 708
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEES7_:bb.a
bb.ek:                                            ; preds = %bb.ej
  %i.ajg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i202, i64 4
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !99
  %i.aji = icmp eq i32 %i.ajh, %.sroa.7.0.extract.trunc
  br i1 %i.aji, label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ajj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i202, i64 8
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !99
  %i.ajl = icmp eq i32 %i.ajk, %.sroa.7.0.extract.trunc
  br i1 %i.ajl, label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit942, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ajm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i202, i64 12
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !99
  %i.ajo = icmp eq i32 %i.ajn, %.sroa.7.0.extract.trunc
  br i1 %i.ajo, label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit944, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ajp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i202, i64 16
  %i.ajq = add nsw i64 %.047.i.i.i.i201, -1
  %i.ajr = icmp sgt i64 %.047.i.i.i.i201, 1
  br i1 %i.ajr, label %bb.ej, label %._crit_edge.loopexit.i.i.i.i203, !llvm.loop !150

._crit_edge.loopexit.i.i.i.i203:                  ; preds = %bb.en
  %i.ajs = and i32 %i.aiz, 3
  br label %._crit_edge.i.i.i.i204

._crit_edge.i.i.i.i204:                           ; preds = %._crit_edge.loopexit.i.i.i.i203, %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj32EEES2_EEDaOT_RKT0_.exit
  %.pre-phi56.i.i.i.i205 = phi i32 [ %i.ajs, %._crit_edge.loopexit.i.i.i.i203 ], [ %i.aiz, %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj32EEES2_EEDaOT_RKT0_.exit ]
  %.029.lcssa.i.i.i.i206 = phi ptr [ %scevgep.i.i.i.i200, %._crit_edge.loopexit.i.i.i.i203 ], [ %i.aiy, %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj32EEES2_EEDaOT_RKT0_.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i205, label %bb.er [
    i32 3, label %bb.eo
    i32 2, label %._crit_edge._crit_edge.i.i.i.i211
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i207
  ]

bb.eo:                                            ; preds = %._crit_edge.i.i.i.i204
  %i.ajt = load i32, ptr %.029.lcssa.i.i.i.i206, align 4, !tbaa !99
  %i.aju = icmp eq i32 %i.ajt, %.sroa.7.0.extract.trunc
  br i1 %i.aju, label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ajv = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i206, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i211

._crit_edge._crit_edge.i.i.i.i211:                ; preds = %._crit_edge.i.i.i.i204, %bb.ep
  %.1.i.i.i.i213 = phi ptr [ %i.ajv, %bb.ep ], [ %.029.lcssa.i.i.i.i206, %._crit_edge.i.i.i.i204 ] ; 3 uses
  %i.ajw = load i32, ptr %.1.i.i.i.i213, align 4, !tbaa !99
  %i.ajx = icmp eq i32 %i.ajw, %.sroa.7.0.extract.trunc
  br i1 %i.ajx, label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit, label %bb.eq

bb.eq:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i211
  %i.ajy = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i213, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i207

._crit_edge._crit_edge52.i.i.i.i207:              ; preds = %._crit_edge.i.i.i.i204, %bb.eq
  %.2.i.i.i.i209 = phi ptr [ %i.ajy, %bb.eq ], [ %.029.lcssa.i.i.i.i206, %._crit_edge.i.i.i.i204 ] ; 2 uses
  %i.ajz = load i32, ptr %.2.i.i.i.i209, align 4, !tbaa !99
  %i.aka = icmp eq i32 %i.ajz, %.sroa.7.0.extract.trunc
  br i1 %i.aka, label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit, label %bb.er

bb.er:                                            ; preds = %._crit_edge._crit_edge52.i.i.i.i207, %._crit_edge.i.i.i.i204
  br label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.ek
  %i.akb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i202, i64 4
  br label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit942: ; preds = %bb.el
  %i.akc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i202, i64 8
  br label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit944: ; preds = %bb.em
  %i.akd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i202, i64 12
  br label %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit

_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit: ; preds = %bb.ej, %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit942, %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit944, %bb.eo, %._crit_edge._crit_edge.i.i.i.i211, %._crit_edge._crit_edge52.i.i.i.i207, %bb.er
  %.028.i.i.i.i210 = phi ptr [ %.1.i.i.i.i213, %._crit_edge._crit_edge.i.i.i.i211 ], [ %i.ajb, %bb.er ], [ %.2.i.i.i.i209, %._crit_edge._crit_edge52.i.i.i.i207 ], [ %.029.lcssa.i.i.i.i206, %bb.eo ], [ %i.akd, %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit944 ], [ %i.akc, %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit942 ], [ %i.akb, %_ZN4llvm4findIRNS_14SmallSetVectorINS_8RegisterELj8EEES2_EEDaOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i202, %bb.ej ]
  %i.ake = ptrtoint ptr %.028.i.i.i.i210 to i64
  %i.akf = ptrtoint ptr %i.aiy to i64
  %i.akg = sub i64 %i.ake, %i.akf
  %i.akh = lshr exact i64 %i.akg, 2
  %i.aki = trunc i64 %i.akh to i32
  %i.akj = add i32 %i.aho, %i.aki
  call void @_ZN4llvm12MachineInstr11tieOperandsEjj(ptr noundef nonnull align 8 dereferenceable(80) %i.at, i32 noundef %i.aix, i32 noundef %i.akj) #15
  %i.akk = getelementptr inbounds nuw i8, ptr %.067509, i64 8 ; 2 uses
  %.not71 = icmp eq ptr %i.akk, %i.aea
  br i1 %.not71, label %._crit_edge512, label %.lr.ph511
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZNK4llvm12MachineInstr18findTiedOperandIdxEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm14MachineOperand12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MachineInstr14mayLoadOrStoreENS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %spec.select.i.i = icmp ult i32 %i.c, 2
  br i1 %spec.select.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51
  %i.h = and i64 %i.g, 8
  %.not.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i, label %bb.c, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = icmp eq i32 %1, 0                        ; 2 uses
  br i1 %i.i, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %i.l = and i32 %i.k, 12
  %i.m = icmp eq i32 %i.l, 0
  %i.n = and i32 %i.k, 4
  %i.o = icmp ne i32 %i.n, 0
  %or.cond.i.i = or i1 %i.m, %i.o
  br i1 %or.cond.i.i, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit, label %.split

.split:                                           ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 524288, i32 noundef %1) #15
  br i1 %i.p, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.pre = load i32, ptr %i.a, align 4, !tbaa !43
  %.pre7 = add i32 %.pre, -1
  br label %bb.e

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit: ; preds = %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !413
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !415
  %i.u = and i64 %i.t, 524288
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.e, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit

bb.e:                                             ; preds = %.split._crit_edge, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit
  %.pre-phi = phi i32 [ %.pre7, %.split._crit_edge ], [ %i.c, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit ]
  %spec.select.i.i2 = icmp ult i32 %.pre-phi, 2
  br i1 %spec.select.i.i2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !51
  %i.z = and i64 %i.y, 16
  %.not.not.i5 = icmp eq i64 %i.z, 0
  br i1 %.not.not.i5, label %bb.g, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45 ; 2 uses
  %i.ac = and i32 %i.ab, 12
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = and i32 %i.ab, 4
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond.i.i3 = or i1 %i.ad, %i.af
  br i1 %or.cond.i.i3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !413
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !415
  %i.ak = and i64 %i.aj, 1048576
  %i.al = icmp ne i64 %i.ak, 0
  br label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit

bb.j:                                             ; preds = %bb.h
  %i.am = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1048576, i32 noundef %1) #15
  br label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit: ; preds = %bb.b, %bb.j, %bb.i, %bb.f, %.split, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit
  %i.an = phi i1 [ true, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit ], [ true, %.split ], [ %i.am, %bb.j ], [ true, %bb.f ], [ %i.al, %bb.i ], [ true, %bb.b ]
  ret i1 %i.an
}

declare void @_ZN4llvm12MachineInstr11tieOperandsEjj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr18cloneMergedMemRefsERNS_15MachineFunctionENS_8ArrayRefIPKS0_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1) local_unnamed_addr #0 {
_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = load ptr, ptr %i.a, align 8, !tbaa !30     ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not11 = icmp eq ptr %2, %3
  br i1 %.not11, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.05.012 = phi ptr [ %i.f, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %2, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.05.012, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !45
  %i.d = and i32 %i.c, 4
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %.critedge, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.05.012, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.f, %3
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader
  %.sroa.05.0.lcssa = phi ptr [ %2, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader ], [ %i.f, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.sroa.05.012, %.lr.ph ] ; 2 uses
  tail call void @_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEES7_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr %.sroa.05.0.lcssa)
  ret ptr %.sroa.05.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm15finalizeBundlesERNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.sroa.019.028 = load ptr, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %.not29 = icmp eq ptr %.sroa.019.028, %i.b
  br i1 %.not29, label %._crit_edge, label %.lr.ph33

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.3, %.loopexit ]
  ret i1 %.0.lcssa

.lr.ph33:                                         ; preds = %bb.a, %.loopexit
  %.sroa.019.031 = phi ptr [ %.sroa.019.0, %.loopexit ], [ %.sroa.019.028, %bb.a ] ; 4 uses
  %.030 = phi i1 [ %.3, %.loopexit ], [ false, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.019.031, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.019.031, i64 48 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph33
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %.not2325 = icmp eq ptr %i.h, %i.e
  br i1 %.not2325, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.127 = phi i1 [ %.2, %bb.d ], [ %.030, %bb.b ]
  %.sroa.013.026 = phi ptr [ %.sroa.013.1, %bb.d ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.026, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = and i32 %i.j, 4
  %.not24 = icmp eq i32 %i.k, 0
  br i1 %.not24, label %bb.c, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.013.026, align 8
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 3 uses
  %.not11.i = icmp eq ptr %i.o, %i.e
  br i1 %.not11.i, label %_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit, label %.lr.ph.i10

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.026, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  br label %bb.d

.lr.ph.i10:                                       ; preds = %.lr.ph.i.preheader, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %.sroa.05.012.i = phi ptr [ %i.v, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.o, %.lr.ph.i.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45
  %i.t = and i32 %i.s, 4
  %.not10.i = icmp eq i32 %i.t, 0
  br i1 %.not10.i, label %_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.lr.ph.i10
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 3 uses
  %.not.i11 = icmp eq ptr %i.v, %i.e
  br i1 %.not.i11, label %_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit, label %.lr.ph.i10, !llvm.loop !3

_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit: ; preds = %.lr.ph.i10, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %.lr.ph.i.preheader
  %.sroa.05.0.lcssa.i = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %.sroa.05.012.i, %.lr.ph.i10 ], [ %i.v, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ] ; 2 uses
  tail call void @_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEES7_(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.019.031, ptr %i.m, ptr %.sroa.05.0.lcssa.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit, %bb.c
  %.sroa.013.1 = phi ptr [ %.sroa.05.0.lcssa.i, %_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit ], [ %i.q, %bb.c ] ; 2 uses
  %.2 = phi i1 [ true, %_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit ], [ %.127, %bb.c ] ; 2 uses
  %.not23 = icmp eq ptr %.sroa.013.1, %i.e
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !416

.loopexit:                                        ; preds = %bb.d, %bb.b, %.lr.ph33
  %.3 = phi i1 [ %.030, %.lr.ph33 ], [ %.030, %bb.b ], [ %.2, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.031, i64 8
  %.sroa.019.0 = load ptr, ptr %i.w, align 8, !tbaa !25 ; 2 uses
  %.not = icmp eq ptr %.sroa.019.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph33
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i24 0, 66048) i24 @_ZN4llvm22AnalyzeVirtRegInBundleERNS_12MachineInstrENS_8RegisterEPNS_15SmallVectorImplISt4pairIPS0_jEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = and i32 %i.b, 4
  %.not2.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not2.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %0, %bb.a ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45
  %i.h = and i32 %i.g, 4
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph.i.i.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 40
  %i.o = load i24, ptr %i.n, align 8              ; 2 uses
  %i.p = zext i24 %i.o to i64
  %.idx.i.i = shl nuw nsw i64 %i.p, 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i ; 3 uses
  %i.r = icmp eq i24 %i.o, 0
  br i1 %i.r, label %.lr.ph.i5.i.i.preheader, label %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit

.lr.ph.i5.i.i.preheader:                          ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30   ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.k
  br i1 %i.u, label %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i5.i.i.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = and i32 %i.w, 4
  %.not.i6.i.i97 = icmp eq i32 %i.x, 0
  br i1 %.not.i6.i.i97, label %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit, label %.lr.ph98

.lr.ph.i5.i.i:                                    ; preds = %.lr.ph98
  %i.y = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 3 uses
  %i.aa = icmp eq ptr %i.z, %i.k
  br i1 %i.aa, label %.lr.ph.i5.i.i._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge, label %.lr.ph, !llvm.loop !417

.lr.ph:                                           ; preds = %.lr.ph.i5.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.ad = and i32 %i.ac, 4
  %.not.i6.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i6.i.i, label %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit, label %.lr.ph98, !llvm.loop !417

.lr.ph98:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi ptr [ %i.z, %.lr.ph ], [ %i.t, %.lr.ph.preheader ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i24, ptr %i.af, align 8            ; 4 uses
  %i.ah = icmp eq i24 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i5.i.i, label %._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge, !llvm.loop !417

._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge: ; preds = %.lr.ph98
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46 ; 2 uses
  %i.ak = zext i24 %i.ag to i64
  %.idx.i.i.i.le = shl nuw nsw i64 %i.ak, 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.le
  br label %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit, !llvm.loop !417

.lr.ph.i5.i.i._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge: ; preds = %.lr.ph.i5.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.ao = zext i24 %i.ag to i64
  %.idx.i.i.i.le150 = shl nuw nsw i64 %i.ao, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i.i.le150
  br label %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit, !llvm.loop !417

_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit: ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.as = zext i24 %i.ag to i64
  %.idx.i.i.i.le152 = shl nuw nsw i64 %i.as, 5
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i.i.i.le152
  br label %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit

_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit: ; preds = %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit, %.lr.ph.preheader, %.lr.ph.i5.i.i._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge, %.lr.ph.i5.i.i.preheader, %._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i
  %.sroa.017.1 = phi ptr [ %.sroa.0.0.lcssa.i.i.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i ], [ %i.ae, %._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.k, %.lr.ph.i5.i.i.preheader ], [ %i.k, %.lr.ph.preheader ], [ %i.k, %.lr.ph.i5.i.i._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.k, %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit ]
  %.sroa.22.2 = phi ptr [ %i.q, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i ], [ %i.al, %._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.q, %.lr.ph.i5.i.i.preheader ], [ %i.q, %.lr.ph.preheader ], [ %i.ap, %.lr.ph.i5.i.i._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.at, %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.m, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i ], [ %i.aj, %._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.m, %.lr.ph.i5.i.i.preheader ], [ %i.m, %.lr.ph.preheader ], [ %i.an, %.lr.ph.i5.i.i._ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit_crit_edge ], [ %i.ar, %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit.loopexit ] ; 2 uses
  %.not2654 = icmp eq ptr %.sroa.13.2, %.sroa.22.2
  br i1 %.not2654, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit
  %.not = icmp eq ptr %2, null
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm27MIBundleOperandIteratorBaseINS_14MachineOperandEEppEv.exit, %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit
  %.sroa.4.0.lcssa = phi i8 [ 0, %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit ], [ %.sroa.4.3, %_ZN4llvm27MIBundleOperandIteratorBaseINS_14MachineOperandEEppEv.exit ]
  %.sroa.3.0.lcssa = phi i8 [ 0, %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit ], [ %.sroa.3.2, %_ZN4llvm27MIBundleOperandIteratorBaseINS_14MachineOperandEEppEv.exit ]
  %.sroa.012.0.lcssa = phi i8 [ 0, %_ZN4llvm16MIBundleOperandsC2ERNS_12MachineInstrE.exit ], [ %.sroa.012.2, %_ZN4llvm27MIBundleOperandIteratorBaseINS_14MachineOperandEEppEv.exit ]
  %.sroa.4.0.insert.ext = zext nneg i8 %.sroa.4.0.lcssa to i24
  %.sroa.4.0.insert.shift = shl nuw nsw i24 %.sroa.4.0.insert.ext, 16
  %.sroa.3.0.insert.ext = zext nneg i8 %.sroa.3.0.lcssa to i24
end_hunk_0
