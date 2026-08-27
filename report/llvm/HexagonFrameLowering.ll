Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonFrameLowering?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2406
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm20HexagonFrameLowering35processFunctionBeforeFrameFinalizedERNS_15MachineFunctionEPNS_12RegScavengerE:bb.a
  %i.n = load i32, ptr %i.m, align 4, !tbaa !339
  %.not.i = icmp eq i32 %i.n, 446
  br i1 %.not.i, label %_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.034.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.017.034.i, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !326
  %i.r = and i32 %i.q, 8
  %.not34.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.t, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.017.034.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !325  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !326
  %i.w = and i32 %i.v, 8
  %.not3.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !348

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %bb.c
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.017.034.i, %bb.c ], [ %.sroa.017.034.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.t, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.017.0.i = load ptr, ptr %i.x, align 8, !tbaa !325 ; 2 uses
  %.not29.i = icmp eq ptr %.sroa.017.0.i, %i.l
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %.lr.ph39.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.020.037.i, i64 8
  %.sroa.020.0.i = load ptr, ptr %i.y, align 8, !tbaa !227 ; 2 uses
  %.not28.i = icmp eq ptr %.sroa.020.0.i, %i.j
  br i1 %.not28.i, label %_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE.exit.thread, label %.lr.ph39.i

_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE.exit: ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.034.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !340
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !341
  br label %_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE.exit.thread: ; preds = %._crit_edge.i, %bb.b, %_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE.exit
  %.sroa.016.0 = phi i32 [ %i.ac, %_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE.exit ], [ 0, %bb.b ], [ 0, %._crit_edge.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !596
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %.sroa.016.0, ptr %i.af, align 4, !tbaa !187
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK4llvm20HexagonFrameLowering14getAlignaInstrERKNS_15MachineFunctionE.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm20HexagonFrameLowering27assignCalleeSavedSpillSlotsERNS_15MachineFunctionEPKNS_18TargetRegisterInfoERSt6vectorINS_15CalleeSavedInfoESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #3 align 2 {
_ZN4llvm9BitVectorC2Ejb.exit:
  %4 = alloca %"class.llvm::BitVector", align 8   ; 20 uses
  %5 = alloca %"class.llvm::BitVector", align 8   ; 10 uses
  %6 = alloca %"class.llvm::BitVector", align 8   ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !365  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.f, align 4, !tbaa !195
  store i32 0, ptr %i.e, align 8, !tbaa !194
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.d, i64 noundef 7, i64 noundef 8) #27
  %i.g = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false), !tbaa !28
  store i32 7, ptr %i.e, align 8, !tbaa !194
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 5 uses
  store i32 398, ptr %i.h, align 8, !tbaa !295
  %i.i = load ptr, ptr %3, align 8, !tbaa !451    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !451  ; 2 uses
  %.not616659 = icmp eq ptr %i.i, %i.k
  br i1 %.not616659, label %._crit_edge661, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !303, !noalias !1121 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !321, !noalias !1121
  %.not628656 = icmp eq ptr %i.m, null
  br label %bb.a

._crit_edge661:                                   ; preds = %._crit_edge, %_ZN4llvm9BitVectorC2Ejb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.p = load ptr, ptr %2, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(316) %2, ptr noundef nonnull align 8 dereferenceable(1065) %1) #27
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !596
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 4, !tbaa !187 ; 5 uses
  %.not617 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not617, label %.loopexit632, label %bb.b

bb.a:                                             ; preds = %.lr.ph, %._crit_edge
  %.sroa.0600.0660 = phi ptr [ %i.i, %.lr.ph ], [ %i.ab, %._crit_edge ] ; 2 uses
  br i1 %.not628656, label %._crit_edge, label %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader

_ZN4llvm16MCSubRegIteratorppEv.exit.preheader:    ; preds = %bb.a
  %.sroa.0.0.copyload.i153 = load i32, ptr %.sroa.0600.0660, align 4, !tbaa !187 ; 2 uses
  %i.v = zext i32 %.sroa.0.0.copyload.i153 to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !322, !noalias !1121
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.z
  br label %_ZN4llvm16MCSubRegIteratorppEv.exit

._crit_edge:                                      ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0600.0660, i64 12 ; 2 uses
  %.not616 = icmp eq ptr %i.ab, %i.k
  br i1 %.not616, label %._crit_edge661, label %bb.a

_ZN4llvm16MCSubRegIteratorppEv.exit:              ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader, %_ZN4llvm16MCSubRegIteratorppEv.exit
  %.sroa.5586.0658 = phi ptr [ %i.al, %_ZN4llvm16MCSubRegIteratorppEv.exit ], [ %i.aa, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader ] ; 2 uses
  %.sroa.0584.0657 = phi i32 [ %i.ao, %_ZN4llvm16MCSubRegIteratorppEv.exit ], [ %.sroa.0.0.copyload.i153, %_ZN4llvm16MCSubRegIteratorppEv.exit.preheader ] ; 3 uses
  %i.ac = lshr i32 %.sroa.0584.0657, 6
  %i.ad = and i32 %i.ac, 1023
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ae ; 2 uses
  %i.ag = and i32 %.sroa.0584.0657, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !28
  %i.ak = or i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.5586.0658, i64 2
  %i.am = load i16, ptr %.sroa.5586.0658, align 2, !tbaa !302 ; 2 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = add i32 %.sroa.0584.0657, %i.an
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge, label %_ZN4llvm16MCSubRegIteratorppEv.exit

bb.b:                                             ; preds = %._crit_edge661
  %i.ap = lshr i32 %.sroa.0.0.copyload.i, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = load ptr, ptr %5, align 8, !tbaa !21    ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = and i32 %.sroa.0.0.copyload.i, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = xor i64 %i.av, -1
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28
  %i.ay = and i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !303, !noalias !1124 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !321, !noalias !1124 ; 2 uses
  %i.bd = zext i32 %.sroa.0.0.copyload.i to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1127, !noalias !1124
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bh ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !302, !noalias !1124 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i.i.i, label %.loopexit632, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %bb.b
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.sroa.0.0.copyload.i, %i.bk
  br label %.lr.ph669

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %_ZN4llvm18MCSuperRegIteratorppEv.exit
  %.sroa.5560.0667.pn = phi ptr [ %.sroa.5560.0667, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.bi, %.lr.ph669.preheader ]
  %.sroa.0558.0666 = phi i32 [ %i.ct, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.bl, %.lr.ph669.preheader ] ; 3 uses
  %.sroa.5560.0667 = getelementptr inbounds nuw i8, ptr %.sroa.5560.0667.pn, i64 2 ; 2 uses
  %i.bm = and i32 %.sroa.0558.0666, 65535         ; 3 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !322, !noalias !1128
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.br ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !302, !noalias !1128 ; 2 uses
  %.not.i.i.i.i157 = icmp eq i16 %i.bt, 0
  br i1 %.not.i.i.i.i157, label %.critedge630.loopexit, label %.lr.ph665.preheader

.lr.ph665.preheader:                              ; preds = %.lr.ph669
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bm, %i.bu
  br label %.lr.ph665

.lr.ph665:                                        ; preds = %.lr.ph665.preheader, %_ZN4llvm16MCSubRegIteratorppEv.exit164
  %.sroa.0540.0663 = phi i32 [ %i.ch, %_ZN4llvm16MCSubRegIteratorppEv.exit164 ], [ %i.bv, %.lr.ph665.preheader ] ; 3 uses
  %.sroa.5542.0662.pn = phi ptr [ %.sroa.5542.0663, %_ZN4llvm16MCSubRegIteratorppEv.exit164 ], [ %i.bs, %.lr.ph665.preheader ]
  %i.bw = lshr i32 %.sroa.0540.0663, 6
  %i.bx = and i32 %i.bw, 1023
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.by
  %i.ca = and i32 %.sroa.0540.0663, 63
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !28
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = and i64 %i.cb, %i.cd
  %.not627 = icmp eq i64 %i.ce, 0
  br i1 %.not627, label %_ZN4llvm16MCSubRegIteratorppEv.exit164, label %_ZN4llvm18MCSuperRegIteratorppEv.exit

_ZN4llvm16MCSubRegIteratorppEv.exit164:           ; preds = %.lr.ph665
  %.sroa.5542.0663 = getelementptr inbounds nuw i8, ptr %.sroa.5542.0662.pn, i64 2 ; 2 uses
  %i.cf = load i16, ptr %.sroa.5542.0663, align 2, !tbaa !302 ; 2 uses
  %i.cg = zext i16 %i.cf to i32
  %i.ch = add i32 %.sroa.0540.0663, %i.cg
  %.not.i.i163 = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i163, label %.critedge630.loopexit, label %.lr.ph665

.critedge630.loopexit:                            ; preds = %_ZN4llvm16MCSubRegIteratorppEv.exit164, %.lr.ph669
  %i.ci = lshr i32 %i.bm, 6
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.cj ; 2 uses
  %i.cl = and i32 %.sroa.0558.0666, 63
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = xor i64 %i.cn, -1
  %i.cp = load i64, ptr %i.ck, align 8, !tbaa !28
  %i.cq = and i64 %i.cp, %i.co
  store i64 %i.cq, ptr %i.ck, align 8, !tbaa !28
  br label %_ZN4llvm18MCSuperRegIteratorppEv.exit

_ZN4llvm18MCSuperRegIteratorppEv.exit:            ; preds = %.lr.ph665, %.critedge630.loopexit
  %i.cr = load i16, ptr %.sroa.5560.0667, align 2, !tbaa !302 ; 2 uses
  %i.cs = zext i16 %i.cr to i32
  %i.ct = add i32 %.sroa.0558.0666, %i.cs
  %.not.i.i167 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.i167, label %.loopexit632, label %.lr.ph669

.loopexit632:                                     ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit, %bb.b, %._crit_edge661
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !295 ; 4 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %._crit_edge676, label %bb.c

bb.c:                                             ; preds = %.loopexit632
  %i.cx = add i32 %i.cv, -1                       ; 2 uses
  %i.cy = lshr i32 %i.cx, 6                       ; 3 uses
  %i.cz = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.da = and i32 %i.cx, 63
  %i.db = xor i32 %i.da, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = lshr i64 -1, %i.dc                      ; 2 uses
  %i.de = zext nneg i32 %i.cy to i64
  %i.df = add nuw nsw i32 %i.cy, 1
  %wide.trip.count.i.i = zext nneg i32 %i.df to i64
  %i.dg = load i64, ptr %i.cz, align 8, !tbaa !28
  %i.dh = icmp eq i32 %i.cy, 0                    ; 2 uses
  %i.di = select i1 %i.dh, i64 %i.dd, i64 -1
  %.230.peel.i.i = and i64 %i.dg, %i.di           ; 2 uses
  %.not37.peel.i.i = icmp eq i64 %.230.peel.i.i, 0
  br i1 %.not37.peel.i.i, label %bb.d, label %_ZNK4llvm9BitVector10find_firstEv.exit

bb.d:                                             ; preds = %bb.c
  br i1 %i.dh, label %._crit_edge676, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.d, %bb.e
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !28
  %i.dl = icmp eq i64 %indvars.iv.i.i, %i.de
  %i.dm = select i1 %i.dl, i64 %i.dd, i64 -1
  %.230.i.i = and i64 %i.dm, %i.dk                ; 2 uses
  %.not37.i.i = icmp eq i64 %.230.i.i, 0
  br i1 %.not37.i.i, label %bb.e, label %.loopexit48.i.i

.loopexit48.i.i:                                  ; preds = %.peel.next.i.i
  %.pre.i.i = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dn = shl nuw i32 %.pre.i.i, 6
  br label %_ZNK4llvm9BitVector10find_firstEv.exit

bb.e:                                             ; preds = %.peel.next.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge676, label %.peel.next.i.i, !llvm.loop !345

_ZNK4llvm9BitVector10find_firstEv.exit:           ; preds = %bb.c, %.loopexit48.i.i
  %.pre-phi.i.i = phi i32 [ %i.dn, %.loopexit48.i.i ], [ 0, %bb.c ] ; 2 uses
  %.230.lcssa.i.i = phi i64 [ %.230.i.i, %.loopexit48.i.i ], [ %.230.peel.i.i, %bb.c ]
  %i.do = icmp sgt i32 %.pre-phi.i.i, -1
  br i1 %i.do, label %.lr.ph675, label %._crit_edge676

.lr.ph675:                                        ; preds = %_ZNK4llvm9BitVector10find_firstEv.exit
  %i.dp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = or disjoint i32 %.pre-phi.i.i, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !303, !noalias !1131 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !321, !noalias !1131
  %i.dw = load ptr, ptr %4, align 8
  %i.dx = add i32 %i.cv, -1                       ; 2 uses
  %i.dy = lshr i32 %i.dx, 6                       ; 4 uses
  %i.dz = load ptr, ptr %5, align 8               ; 2 uses
  %i.ea = and i32 %i.dx, 63
  %i.eb = xor i32 %i.ea, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = lshr i64 -1, %i.ec                      ; 2 uses
  %i.ee = zext nneg i32 %i.dy to i64
  %i.ef = add nuw nsw i32 %i.dy, 1
  %wide.trip.count.i.i189 = zext nneg i32 %i.ef to i64 ; 2 uses
  %.not625670 = icmp eq ptr %i.dt, null
  br label %bb.i

._crit_edge676:                                   ; preds = %bb.e, %bb.k, %bb.j, %._crit_edge673, %_ZNK4llvm9BitVector9find_nextEj.exit, %bb.l, %bb.d, %.loopexit632, %_ZNK4llvm9BitVector10find_firstEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.eg, ptr %6, align 8, !tbaa !21
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.ei, align 4, !tbaa !195
  store i32 0, ptr %i.eh, align 8, !tbaa !194
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %6, ptr noundef nonnull %i.eg, i64 noundef 7, i64 noundef 8) #27
  %i.ej = load ptr, ptr %6, align 8, !tbaa !21    ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, i8 0, i64 56, i1 false), !tbaa !28
  store i32 7, ptr %i.eh, align 8, !tbaa !194
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 398, ptr %i.ek, align 8, !tbaa !295
  %i.el = load i32, ptr %i.h, align 8, !tbaa !295 ; 4 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.peel.next.i.i213.preheader, label %bb.f

bb.f:                                             ; preds = %._crit_edge676
  %i.en = add i32 %i.el, -1                       ; 2 uses
  %i.eo = lshr i32 %i.en, 6                       ; 3 uses
  %i.ep = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.eq = and i32 %i.en, 63
  %i.er = xor i32 %i.eq, 63
  %i.es = zext nneg i32 %i.er to i64
  %i.et = lshr i64 -1, %i.es                      ; 2 uses
  %i.eu = zext nneg i32 %i.eo to i64
  %i.ev = add nuw nsw i32 %i.eo, 1
  %wide.trip.count.i.i172 = zext nneg i32 %i.ev to i64
  %i.ew = load i64, ptr %i.ep, align 8, !tbaa !28
  %i.ex = icmp eq i32 %i.eo, 0                    ; 2 uses
  %i.ey = select i1 %i.ex, i64 %i.et, i64 -1
  %.230.peel.i.i173 = and i64 %i.ew, %i.ey        ; 2 uses
  %.not37.peel.i.i174 = icmp eq i64 %.230.peel.i.i173, 0
  br i1 %.not37.peel.i.i174, label %bb.g, label %_ZNK4llvm9BitVector10find_firstEv.exit186

bb.g:                                             ; preds = %bb.f
  br i1 %i.ex, label %.peel.next.i.i213.preheader, label %.peel.next.i.i178

.peel.next.i.i178:                                ; preds = %bb.g, %bb.h
  %indvars.iv.i.i179 = phi i64 [ %indvars.iv.next.i.i184, %bb.h ], [ 1, %bb.g ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i.i179
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !28
  %i.fb = icmp eq i64 %indvars.iv.i.i179, %i.eu
  %i.fc = select i1 %i.fb, i64 %i.et, i64 -1
  %.230.i.i180 = and i64 %i.fc, %i.fa             ; 2 uses
  %.not37.i.i181 = icmp eq i64 %.230.i.i180, 0
  br i1 %.not37.i.i181, label %bb.h, label %.loopexit48.i.i182

.loopexit48.i.i182:                               ; preds = %.peel.next.i.i178
  %.pre.i.i183 = trunc nuw nsw i64 %indvars.iv.i.i179 to i32
  %i.fd = shl nuw i32 %.pre.i.i183, 6
  br label %_ZNK4llvm9BitVector10find_firstEv.exit186

bb.h:                                             ; preds = %.peel.next.i.i178
  %indvars.iv.next.i.i184 = add nuw nsw i64 %indvars.iv.i.i179, 1 ; 2 uses
  %exitcond.not.i.i185 = icmp eq i64 %indvars.iv.next.i.i184, %wide.trip.count.i.i172
  br i1 %exitcond.not.i.i185, label %.peel.next.i.i213.preheader, label %.peel.next.i.i178, !llvm.loop !345

_ZNK4llvm9BitVector10find_firstEv.exit186:        ; preds = %bb.f, %.loopexit48.i.i182
  %.pre-phi.i.i175 = phi i32 [ %i.fd, %.loopexit48.i.i182 ], [ 0, %bb.f ] ; 2 uses
  %.230.lcssa.i.i176 = phi i64 [ %.230.i.i180, %.loopexit48.i.i182 ], [ %.230.peel.i.i173, %bb.f ]
  %i.fe = icmp sgt i32 %.pre-phi.i.i175, -1
  br i1 %i.fe, label %.lr.ph680, label %.peel.next.i.i213.preheader

.lr.ph680:                                        ; preds = %_ZNK4llvm9BitVector10find_firstEv.exit186
  %i.ff = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i176, i1 true)
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = or disjoint i32 %.pre-phi.i.i175, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !303, !noalias !1134
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !321, !noalias !1134
  %i.fm = add i32 %i.el, -1                       ; 2 uses
  %i.fn = lshr i32 %i.fm, 6                       ; 4 uses
  %i.fo = load ptr, ptr %4, align 8               ; 2 uses
  %i.fp = and i32 %i.fm, 63
  %i.fq = xor i32 %i.fp, 63
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = lshr i64 -1, %i.fr                      ; 2 uses
  %i.ft = zext nneg i32 %i.fn to i64
  %i.fu = add nuw nsw i32 %i.fn, 1
  %wide.trip.count.i.i229 = zext nneg i32 %i.fu to i64 ; 2 uses
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph675, %_ZNK4llvm9BitVector9find_nextEj.exit
  %.0146674 = phi i32 [ %i.dr, %.lr.ph675 ], [ %i.gw, %_ZNK4llvm9BitVector9find_nextEj.exit ] ; 3 uses
  br i1 %.not625670, label %._crit_edge673, label %_ZN4llvm18MCSuperRegIteratorppEv.exit206.preheader

_ZN4llvm18MCSuperRegIteratorppEv.exit206.preheader: ; preds = %bb.i
  %i.fv = zext nneg i32 %.0146674 to i64
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !1127, !noalias !1131
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.fz
  br label %_ZN4llvm18MCSuperRegIteratorppEv.exit206

._crit_edge673:                                   ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit206, %bb.i
  %i.gb = add nuw i32 %.0146674, 1                ; 3 uses
  %i.gc = icmp eq i32 %i.gb, %i.cv
  br i1 %i.gc, label %._crit_edge676, label %bb.j
end_hunk_0
