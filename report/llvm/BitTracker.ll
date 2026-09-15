Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BitTracker?download=true
inline.NumInlined: 2239
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN4llvm10BitTrackerC2ERKNS0_16MachineEvaluatorERNS_15MachineFunctionE:bb.a
  store ptr null, ptr %i.h, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.g, ptr %i.i, align 8, !tbaa !104
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.g, ptr %i.j, align 8, !tbaa !131
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !132
  store ptr %i.f, ptr %i.e, align 8, !tbaa !415
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.m, align 8, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.l, ptr %i.n, align 8, !tbaa !104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.l, ptr %i.o, align 8, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.p, align 8, !tbaa !132
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !129
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.r, align 8, !tbaa !130
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.q, ptr %i.s, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.q, ptr %i.t, align 8, !tbaa !131
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = ptrtoint ptr %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.u, i8 0, i64 80, i1 false)
  store i64 %i.x, ptr %i.w, align 8, !tbaa !133
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, i8 0, i64 80, i1 false)
  store i64 8, ptr %i.z, align 8, !tbaa !134
  %i.aa = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !135
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !134
  %i.ac = add i64 %i.ab, -1
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ad ; 3 uses
  %i.af = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21 ; 6 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !136
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !138
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !139
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.ae, ptr %i.am, align 8, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.af, ptr %i.an, align 8, !tbaa !138
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !139
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !140
  store ptr %i.af, ptr %i.al, align 8, !tbaa !141
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ap, i8 0, i64 25, i1 false)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10BitTrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(313) dereferenceable(313) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101, !nonnull !102, !align !103 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.f = load i32, ptr %i.e, align 4, !tbaa !142  ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143
  %i.j = zext i32 %i.f to i64                     ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 31
  %i.l = lshr i64 %i.k, 5
  %i.m = add nuw nsw i64 %i.l, %i.j
  %i.n = shl nuw nsw i64 %i.m, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.i, i64 noundef %i.n, i64 noundef 4) #18
  br label %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !144  ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !145  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = icmp ult ptr %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.s, %bb.c ] ; 3 uses
  %i.w = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !136
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef 512) #22
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.y = icmp ult ptr %.06.i.i.i.i, %i.t
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i, !llvm.loop !416

_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !135
  br label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i

_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i, %bb.c
  %i.z = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !134
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #22
  br label %_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEED2Ev.exit

_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEED2Ev.exit, %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14priority_queueIPN4llvm12MachineInstrESt6vectorIS2_SaIS2_EENS0_10BitTracker12UseQueueType3CmpEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !147
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #22
  br label %_ZNSt14priority_queueIPN4llvm12MachineInstrESt6vectorIS2_SaIS2_EENS0_10BitTracker12UseQueueType3CmpEED2Ev.exit.i

_ZNSt14priority_queueIPN4llvm12MachineInstrESt6vectorIS2_SaIS2_EENS0_10BitTracker12UseQueueType3CmpEED2Ev.exit.i: ; preds = %bb.d, %_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.am = load i32, ptr %i.al, align 4, !tbaa !148 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN4llvm8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt14priority_queueIPN4llvm12MachineInstrESt6vectorIS2_SaIS2_EENS0_10BitTracker12UseQueueType3CmpEED2Ev.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !149
  %i.aq = zext i32 %i.am to i64                   ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ap, i64 noundef %i.av, i64 noundef 8) #18
  br label %_ZN4llvm8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i

_ZN4llvm8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i: ; preds = %bb.e, %_ZNSt14priority_queueIPN4llvm12MachineInstrESt6vectorIS2_SaIS2_EENS0_10BitTracker12UseQueueType3CmpEED2Ev.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !150 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZN4llvm10BitTracker12UseQueueTypeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i
  %i.az = load ptr, ptr %i.ad, align 8, !tbaa !151
  %i.ba = zext i32 %i.ax to i64                   ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.ba, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.az, i64 noundef %i.bf, i64 noundef 8) #18
  br label %_ZN4llvm10BitTracker12UseQueueTypeD2Ev.exit

_ZN4llvm10BitTracker12UseQueueTypeD2Ev.exit:      ; preds = %_ZN4llvm8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit.i, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !130
  tail call void @_ZNSt8_Rb_treeIPKN4llvm12MachineInstrES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !130
  tail call void @_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef %i.bl)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::BitTracker::BitRef", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  %i.c = and i32 %i.b, 65535                      ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %wide.trip.count = zext nneg i32 %i.c to i64
  %i.e = icmp eq i32 %2, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.0.i, %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit ] ; 5 uses
  %.012 = phi i1 [ false, %.lr.ph ], [ %.0.i, %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit ] ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 %2, ptr %3, align 4, !tbaa !46
  %i.j = trunc nuw i64 %indvars.iv to i16
  store i16 %i.j, ptr %i.d, align 4, !tbaa !152
  %i.k = load i32, ptr %i.i, align 4, !tbaa !36   ; 3 uses
  %i.l = icmp eq i32 %i.k, 3                      ; 2 uses
  br i1 %i.l, label %bb.c, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46
  %i.o = icmp eq i32 %i.n, %2
  br i1 %i.o, label %bb.d, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i

_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i:      ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i16, ptr %i.p, align 4, !tbaa !152
  %i.r = zext i16 %i.q to i64
  %i.s = icmp eq i64 %indvars.iv, %i.r
  br i1 %i.s, label %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i

_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i: ; preds = %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i, %bb.c, %bb.b
  %i.t = load i32, ptr %i.g, align 4, !tbaa !36   ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i
  %.not.i.i = icmp eq i32 %i.k, %i.t
  br i1 %.not.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %bb.g, label %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.x = load i32, ptr %i.v, align 4, !tbaa !46   ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !46
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq i32 %i.x, 0
  br i1 %i.aa, label %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i

_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i:    ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !152
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !152
  %i.af = icmp eq i16 %i.ac, %i.ae
  br i1 %i.af, label %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit, label %.thread.i

bb.i:                                             ; preds = %bb.e
  %i.ag = icmp eq i32 %i.k, 0
  br i1 %i.ag, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.t, ptr %i.i, align 4, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i

.thread.i:                                        ; preds = %bb.i, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i, %bb.g
  store i32 3, ptr %i.i, align 4, !tbaa !36
  br label %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i

_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i: ; preds = %.thread.i, %bb.j
  %.sink14.i = phi ptr [ %3, %.thread.i ], [ %i.ah, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.ai, ptr noundef nonnull align 4 dereferenceable(6) %.sink14.i, i64 6, i1 false)
  br label %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit

_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit: ; preds = %bb.d, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i, %bb.f, %bb.h, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i
  %.0.i = phi i1 [ %.012, %bb.h ], [ %.012, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i ], [ %.012, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i ], [ %.012, %bb.d ], [ %.012, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i ], [ %.012, %bb.f ], [ true, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(400) ptr @_ZN4llvm10BitTracker12RegisterCell6insertERKS1_RKNS0_7BitMaskE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(400) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(4) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %2, align 2, !tbaa !154    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !155  ; 5 uses
  %.not = icmp ugt i16 %i.a, %i.c
  br i1 %.not, label %.preheader39, label %.preheader40

.preheader40:                                     ; preds = %bb.a
  %narrow = sub nuw i16 %i.c, %i.a
  %i.d = zext i16 %i.a to i64                     ; 3 uses
  %i.e = zext i16 %narrow to i64                  ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = icmp eq i16 %i.c, %i.a
  br i1 %i.g, label %.epil.preheader, label %.preheader40.new

.preheader40.new:                                 ; preds = %.preheader40
  %unroll_iter = and i64 %i.f, 131070
  br label %bb.b

.preheader39:                                     ; preds = %bb.a
  %i.h = zext i16 %i.a to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49
  %i.k = and i32 %i.j, 65535
  %i.l = sub nsw i32 %i.k, %i.h                   ; 5 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader39
  %i.n = zext i16 %i.a to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 2 uses
  %xtraiter59 = and i64 %wide.trip.count, 1
  %i.o = icmp eq i32 %i.l, 1
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter62 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.preheader40.new
  %indvars.iv = phi i64 [ 0, %.preheader40.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader40.new ], [ %niter.next.1, %bb.b ]
  %i.p = load ptr, ptr %1, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %0, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.q, i64 12, i1 false), !tbaa.struct !159
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.w = load ptr, ptr %0, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false), !tbaa.struct !159
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit57.unr-lcssa, label %bb.b, !llvm.loop !3

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv46.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next47.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod61 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.z = load ptr, ptr %1, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv46.epil.init
  %i.ab = load ptr, ptr %0, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv46.epil.init
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !tbaa.struct !159
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader39
  %i.ae = zext i32 %i.l to i64                    ; 3 uses
  %i.af = add nuw i16 %i.c, 1                     ; 2 uses
  %wide.trip.count51 = zext i16 %i.af to i64      ; 2 uses
  %xtraiter65 = and i64 %wide.trip.count51, 1
  %i.ag = icmp eq i16 %i.c, 0
  br i1 %i.ag, label %.epil.preheader64, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter68 = and i64 %wide.trip.count51, 65534
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv46 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next47.1, %.lr.ph ] ; 4 uses
  %niter63 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter63.next.1, %.lr.ph ]
  %i.ah = load ptr, ptr %1, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %indvars.iv46
  %i.aj = load ptr, ptr %0, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %indvars.iv46
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.ai, i64 12, i1 false), !tbaa.struct !159
  %indvars.iv.next47 = or disjoint i64 %indvars.iv46, 1 ; 2 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv.next47
  %i.ao = load ptr, ptr %0, align 8, !tbaa !50
end_hunk_0
begin_hunk_1_@_ZN4llvm10BitTracker12RegisterCell3catERKS1_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 4 uses
  %i.e = and i32 %i.b, 65535                      ; 4 uses
  %i.f = and i32 %i.d, 65535
  %i.g = add nuw nsw i32 %i.f, %i.e               ; 6 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = icmp eq i32 %i.g, %i.b
  br i1 %i.i, label %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i32 %i.g, %i.b
  br i1 %i.j, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !113
  %i.m = icmp ugt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.n, i64 noundef %i.h, i64 noundef 12) #18
  %.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !49
  br label %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.in = phi i32 [ %i.b, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.h
  %.not11.i.i = icmp eq i32 %i.g, %.pre-phi.i.i.in
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i
  %.pre-phi.i.i = zext i32 %.pre-phi.i.i.in to i64
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.q, %.lr.ph.preheader.i.i ] ; 4 uses
  store i32 0, ptr %.012.i.i, align 4, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  store i16 0, ptr %i.s, align 4, !tbaa !152
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i.i, label %.sink.split.i.i, label %.lr.ph.i.i, !llvm.loop !6

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i, %bb.b
  store i32 %i.g, ptr %i.a, align 8, !tbaa !49
  br label %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE6resizeEm.exit

_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE6resizeEm.exit: ; preds = %bb.a, %.sink.split.i.i
  %i.u = and i32 %i.d, 65535
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE6resizeEm.exit
  %.mask = and i32 %i.d, 65535                    ; 2 uses
  %wide.trip.count = zext nneg i32 %.mask to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %.mask, 1
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.w = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.x = load ptr, ptr %1, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.epil.init
  %i.z = add nuw nsw i32 %i.e, %i.w
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = load ptr, ptr %0, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !159
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE6resizeEm.exit
  ret ptr %0

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = trunc nuw i64 %indvars.iv to i32
  %i.ae = load ptr, ptr %1, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = add nuw nsw i32 %i.e, %i.ad
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = load ptr, ptr %0, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !159
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ak = trunc nuw i64 %indvars.iv.next to i32
  %i.al = load ptr, ptr %1, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.an = add nuw nsw i32 %i.e, %i.ak
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = load ptr, ptr %0, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, ptr noundef nonnull align 4 dereferenceable(12) %i.am, i64 12, i1 false), !tbaa.struct !159
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !423
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZNK4llvm10BitTracker12RegisterCell2ctEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = trunc i32 %i.b to i16                    ; 2 uses
  %i.d = select i1 %1, i32 2, i32 1
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !50
  %.mask = and i32 %i.b, 65535
  %wide.trip.count = zext nneg i32 %.mask to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  %.not.i = icmp eq i32 %i.g, %i.d
  br i1 %.not.i, label %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit, label %.critedge.loopexit.split.loop.exit

_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit:      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !8

.critedge.loopexit.split.loop.exit:               ; preds = %bb.b
  %i.h = trunc nuw i64 %indvars.iv to i16
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit, %.critedge.loopexit.split.loop.exit, %bb.a
  %.0.lcssa = phi i16 [ 0, %bb.a ], [ %i.h, %.critedge.loopexit.split.loop.exit ], [ %i.c, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit ]
  ret i16 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZNK4llvm10BitTracker12RegisterCell2clEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = trunc i32 %i.b to i16                    ; 2 uses
  %i.d = select i1 %1, i32 2, i32 1
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.mask = and i32 %i.b, 65535
  %i.e = zext nneg i32 %.mask to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !50
  %invariant.gep = getelementptr [12 x i8], ptr %i.f, i64 %i.e
  %.mask16 = and i32 %i.b, 65535
  %wide.trip.count = zext nneg i32 %.mask16 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit ] ; 3 uses
  %.neg = xor i64 %indvars.iv, -1
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %.neg
  %i.g = load i32, ptr %gep, align 4, !tbaa !36
  %.not.i = icmp eq i32 %i.g, %i.d
  br i1 %.not.i, label %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit, label %.critedge.loopexit.split.loop.exit

_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit:      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !9

.critedge.loopexit.split.loop.exit:               ; preds = %bb.b
  %i.h = trunc nuw i64 %indvars.iv to i16
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit, %.critedge.loopexit.split.loop.exit, %bb.a
  %.0.lcssa = phi i16 [ 0, %bb.a ], [ %i.h, %.critedge.loopexit.split.loop.exit ], [ %i.c, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit ]
  ret i16 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm10BitTracker12RegisterCelleqERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = and i32 %i.b, 65535
  %.not = icmp eq i32 %i.d, %i.e
  br i1 %.not, label %.preheader, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.thread

.preheader:                                       ; preds = %bb.a
  %.not1213 = icmp eq i32 %i.d, 0
  br i1 %.not1213, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = load ptr, ptr %0, align 8, !tbaa !50
  %i.g = load ptr, ptr %1, align 8, !tbaa !50
  %2 = trunc nuw i32 %i.d to i16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit
  %.014 = phi i16 [ 0, %.lr.ph ], [ %4, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit ] ; 2 uses
  %3 = zext i16 %.014 to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %3 ; 3 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %3 ; 3 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !36   ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !36
  %.not.i.i = icmp eq i32 %i.j, %i.k
  br i1 %.not.i.i, label %bb.c, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %i.j, 3
  br i1 %i.l, label %bb.d, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.o = load i32, ptr %i.m, align 4, !tbaa !46   ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !46
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i

_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i:    ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = load i16, ptr %i.s, align 4, !tbaa !152
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load i16, ptr %i.u, align 4, !tbaa !152
  %i.w = icmp eq i16 %i.t, %i.v
  br i1 %i.w, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.thread

_ZNK4llvm10BitTracker8BitValueneERKS1_.exit:      ; preds = %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i, %bb.e, %bb.c
  %4 = add nuw i16 %.014, 1                       ; 2 uses
  %.not12.not = icmp ult i16 %4, %2
  br i1 %.not12.not, label %bb.b, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.thread, !llvm.loop !10

_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.thread: ; preds = %bb.d, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i, %bb.b, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.b ], [ false, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i ], [ false, %bb.d ], [ true, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(400) ptr @_ZN4llvm10BitTracker12RegisterCell6regifyEj(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = and i32 %i.b, 65535                      ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %i.c, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv.epil.init ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.epil.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %indvars.iv.epil.init to i16
  store i32 %1, ptr %i.i, align 4, !tbaa !157
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i16 %i.l, ptr %.sroa.4.0..sroa_idx.epil, align 4, !tbaa !158
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b, %.epil.preheader, %bb.a
  ret ptr %0

bb.d:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !46
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = trunc i64 %indvars.iv to i16
  store i32 %1, ptr %i.p, align 4, !tbaa !157
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i16 %i.s, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !158
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv.next ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = icmp eq i32 %i.u, 3
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !46
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = trunc i64 %indvars.iv.next to i16
  store i32 %1, ptr %i.w, align 4, !tbaa !157
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i16 %i.z, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !158
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i16 @_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !46     ; 4 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZNK4llvm8TypeSizecvmEv.exit, label %bb.b

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160, !nonnull !102, !align !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = and i32 %i.a, 2147483647
  %i.g = zext nneg i32 %i.f to i64
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  %i.n = load ptr, ptr %0, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(62) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(62) %i.k, i32 noundef %i.m) #18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !117, !nonnull !102, !align !103 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 296
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !185
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !186
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 312
  %i.y = load i32, ptr %i.x, align 8, !tbaa !187
  %i.z = mul i32 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !189
  %i.ac = zext i16 %i.ab to i32
  %i.ad = add i32 %i.z, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191
  %i.ah = trunc i32 %i.ag to i16
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117, !nonnull !102, !align !103
  %i.an = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.am, i32 %i.a, i32 noundef %i.aj) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i32 [ %i.an, %bb.c ], [ %i.a, %bb.b ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !164
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i16 %i.aq(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %.sroa.02.0) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4llvm8TypeSizecvmEv.exit
  %.0 = phi i16 [ %i.ah, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %i.ar, %bb.d ]
  ret i16 %.0
}

declare i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240), i32, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm10BitTracker16MachineEvaluator7getCellERKNS0_11RegisterRefERKSt3mapIjNS0_12RegisterCellESt4lessIjESaISt4pairIKjS6_EEE(ptr dead_on_unwind noalias writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::BitTracker::BitMask", align 4 ; 4 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !46     ; 4 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZNK4llvm8TypeSizecvmEv.exit.i, label %bb.b

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160, !nonnull !102, !align !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = and i32 %i.a, 2147483647
  %i.g = zext nneg i32 %i.f to i64
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  %i.n = load ptr, ptr %1, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(62) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(62) %i.k, i32 noundef %i.m) #18, !inline_history !192
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !117, !nonnull !102, !align !103 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_:bb.a
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.at
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !545
  br label %"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit"

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !265 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not3.i.i, label %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i
  %.05.i.i = phi i32 [ %i.bj, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i ], [ 0, %bb.h ]
  %.sroa.02.04.i.i = phi ptr [ %i.bi, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i ], [ %i.ax, %bb.h ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.04.i.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.02.04.i.i, align 8
  %i.ay = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 44
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !266
  %i.bb = and i32 %i.ba, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.bd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i ], [ %.sroa.02.04.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !265 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !266
  %i.bg = and i32 %i.bf, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !16

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i, %.lr.ph.i.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %.sroa.02.04.i.i, %.lr.ph.i.i ], [ %.sroa.02.04.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.bd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !265 ; 2 uses
  %i.bj = add i32 %.05.i.i, 1                     ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, %1
  br i1 %.not.i.i, label %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i, label %.lr.ph.i.i, !llvm.loop !524

_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i, %bb.h
  %.0.lcssa.i.i = phi i32 [ 0, %bb.h ], [ %i.bj, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %.0.lcssa.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JjEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %.val16.val, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.2.0..sroa_idx.i), !noalias !546 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.val.val.pre = load ptr, ptr %0, align 8, !tbaa !541 ; 4 uses
  %.pre = load ptr, ptr %.val.val.pre, align 8, !tbaa !149, !noalias !547
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.val.pre, i64 8
  %.pre60 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !259, !noalias !547
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %.val.val.pre, i64 20
  %.pre62 = load i32, ptr %.phi.trans.insert61, align 4, !tbaa !148, !noalias !547
  br label %"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit"

"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit": ; preds = %bb.g, %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i
  %i.bl = phi i32 [ %i.o, %bb.g ], [ %.pre62, %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i ] ; 4 uses
  %i.bm = phi ptr [ %i.m, %bb.g ], [ %.pre60, %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i ] ; 2 uses
  %i.bn = phi ptr [ %i.k, %bb.g ], [ %.pre, %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i ] ; 3 uses
  %.val.val = phi ptr [ %.val16.val, %bb.g ], [ %.val.val.pre, %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i ]
  %.0.i = phi i32 [ %i.av, %bb.g ], [ %.0.lcssa.i.i, %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i ]
  %i.bo = icmp eq i32 %i.bl, 0
  br i1 %i.bo, label %.loopexit.i.i.i17, label %bb.i

bb.i:                                             ; preds = %"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit"
  %i.bp = add i32 %i.bl, -1                       ; 2 uses
  %i.bq = ptrtoint ptr %2 to i64
  %i.br = mul i64 %i.bq, -4658895280553007687     ; 2 uses
  %i.bs = lshr i64 %i.br, 31
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bp, %i.bu                    ; 3 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = lshr i64 %i.bw, 5
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !157, !noalias !548
  %i.ca = and i32 %i.bv, 31
  %i.cb = lshr i32 %i.bz, %i.ca
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i40, label %.loopexit.i.i.i17, !prof !260

.lr.ph.i.i.i.i.i40:                               ; preds = %bb.i, %bb.j
  %i.cd = phi i64 [ %i.cj, %bb.j ], [ %i.bw, %bb.i ]
  %.017.i.i.i.i.i41 = phi i32 [ %i.ci, %bb.j ], [ %i.bv, %bb.i ]
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !262, !noalias !548
  %i.cg = icmp eq ptr %2, %i.cf
  br i1 %i.cg, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i42, label %bb.j, !prof !263

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i40
  %i.ch = add nuw i32 %.017.i.i.i.i.i41, 1
  %i.ci = and i32 %i.ch, %i.bp                    ; 3 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = lshr i64 %i.cj, 5
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !157, !noalias !548
  %i.cn = and i32 %i.ci, 31
  %i.co = lshr i32 %i.cm, %i.cn
  %i.cp = trunc i32 %i.co to i1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i40, label %.loopexit.i.i.i17, !prof !264

.loopexit.i.i.i17:                                ; preds = %bb.j, %bb.i, %"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit"
  %i.cq = zext i32 %i.bl to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.cq
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i18

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i42: ; preds = %.lr.ph.i.i.i.i.i40
  %.pre.i43 = zext i32 %i.bl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i18

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i18: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i42, %.loopexit.i.i.i17
  %.pre-phi.i19 = phi i64 [ %.pre.i43, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i42 ], [ %i.cq, %.loopexit.i.i.i17 ]
  %.lcssa.sink.i.i.i20 = phi ptr [ %i.ce, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i42 ], [ %i.cr, %.loopexit.i.i.i17 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.pre-phi.i19
  %.not.i21 = icmp eq ptr %.lcssa.sink.i.i.i20, %i.cs
  br i1 %.not.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i18
  %i.ct = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i20, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !545
  br label %"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit44"

bb.l:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i18
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !215
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !265 ; 2 uses
  %.not3.i.i23 = icmp eq ptr %i.cx, %2
  br i1 %.not3.i.i23, label %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i32, label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.l, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i29
  %.05.i.i25 = phi i32 [ %i.dj, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i29 ], [ 0, %bb.l ]
  %.sroa.02.04.i.i26 = phi ptr [ %i.di, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i29 ], [ %i.cx, %bb.l ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.04.i.i26) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i27 = load i64, ptr %.sroa.02.04.i.i26, align 8
  %i.cy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i27, 4
  %.not.i.i.i.i.i28 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i28, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i35, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i29

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i35: ; preds = %.lr.ph.i.i24
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i26, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !266
  %i.db = and i32 %i.da, 8
  %.not34.i.i.i.i.i36 = icmp eq i32 %i.db, 0
  br i1 %.not34.i.i.i.i.i36, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i29, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i37

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i37: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i35, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i37
  %.sroa.0.05.i.i.i.i.i38 = phi ptr [ %i.dd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i37 ], [ %.sroa.02.04.i.i26, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i35 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i38, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !265 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 44
  %i.df = load i32, ptr %i.de, align 4, !tbaa !266
  %i.dg = and i32 %i.df, 8
  %.not3.i.i.i.i.i39 = icmp eq i32 %i.dg, 0
  br i1 %.not3.i.i.i.i.i39, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i29, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i37, !llvm.loop !16

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i29: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i37, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i35, %.lr.ph.i.i24
  %.sroa.0.1.i.i.i.i.i30 = phi ptr [ %.sroa.02.04.i.i26, %.lr.ph.i.i24 ], [ %.sroa.02.04.i.i26, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i.i35 ], [ %i.dd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i.i37 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i30, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !265 ; 2 uses
  %i.dj = add i32 %.05.i.i25, 1                   ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.di, %2
  br i1 %.not.i.i31, label %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i32, label %.lr.ph.i.i24, !llvm.loop !524

_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i32: ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i29, %bb.l
  %.0.lcssa.i.i33 = phi i32 [ 0, %bb.l ], [ %i.dj, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i.i29 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %2, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %.0.lcssa.i.i33, ptr %.sroa.2.0..sroa_idx.i34, align 8
  %i.dk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JjEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %.val.val, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.2.0..sroa_idx.i34), !noalias !549 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit44"

"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit44": ; preds = %bb.k, %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i32
  %.0.i22 = phi i32 [ %i.cu, %bb.k ], [ %.0.lcssa.i.i33, %_ZSt10__distanceIN4llvm26MachineInstrBundleIteratorIKNS0_12MachineInstrELb0EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i32 ]
  %i.dl = icmp ugt i32 %.0.i, %.0.i22
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit44", %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.j, %bb.c ], [ %i.dl, %"_ZZNK4llvm10BitTracker12UseQueueType3CmpclEPKNS_12MachineInstrES5_ENK3$_0clES5_.exit44" ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10BitTracker8visitPHIERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::BitTracker::BitRef", align 4 ; 5 uses
  %3 = alloca %"class.llvm::Printable", align 8   ; 8 uses
  %4 = alloca %"struct.llvm::BitTracker::RegisterRef", align 4 ; 6 uses
  %5 = alloca %"struct.llvm::BitTracker::RegisterCell", align 8 ; 12 uses
  %6 = alloca %"struct.llvm::BitTracker::RegisterCell", align 8 ; 17 uses
  %7 = alloca %"class.llvm::Printable", align 8   ; 8 uses
  %8 = alloca %"class.llvm::Printable", align 8   ; 8 uses
  %9 = alloca %"struct.llvm::BitTracker::RegisterRef", align 4 ; 5 uses
  %10 = alloca %"struct.llvm::BitTracker::RegisterCell", align 8 ; 7 uses
  %11 = alloca %"class.llvm::Printable", align 8  ; 8 uses
  %12 = alloca %"class.llvm::Printable", align 8  ; 8 uses
  %13 = alloca %"struct.llvm::BitTracker::RegisterCell", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !258  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !267, !range !268, !noundef !102
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #18 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 9
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull @.str.6, i64 noundef 9) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.l, ptr noundef nonnull align 1 dereferenceable(9) @.str.6, i64 9, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  store ptr %i.s, ptr %i.k, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ %i.h, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !215
  call void @_ZN4llvm17printMBBReferenceERKNS_17MachineBasicBlockE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Printable") align 8 %3, ptr noundef nonnull align 8 dereferenceable(360) %i.t) #18
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !121
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i) #18, !inline_history !0
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.7, i64 noundef 3) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

bb.g:                                             ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ab, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

_ZN4llvm11raw_ostreamlsEPKc.exit25:               ; preds = %bb.f, %bb.g
  %.0.i.i24 = phi ptr [ %i.ag, %bb.f ], [ %.0.i.i, %bb.g ]
  call void @_ZNK4llvm12MachineInstr5printERNS_11raw_ostreamEbbbbPKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i24, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #18
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !119 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN4llvm9PrintableD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #18, !inline_history !1 ; 0 uses
  br label %_ZN4llvm9PrintableD2Ev.exit

_ZN4llvm9PrintableD2Ev.exit:                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm9PrintableD2Ev.exit, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !214 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !45 ; 11 uses
  store i32 %i.ao, ptr %4, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aq = load i32, ptr %i.am, align 8
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, 4095                     ; 5 uses
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !162
  %i.at = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103 ; 7 uses
  %i.au = icmp slt i32 %i.ao, 0
  br i1 %i.au, label %_ZNK4llvm8TypeSizecvmEv.exit.i, label %bb.j

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !160, !nonnull !102, !align !103
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = and i32 %i.ao, 2147483647
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !50
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.az
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !164
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef nonnull align 8 dereferenceable(62) ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(62) %i.bd, i32 noundef %i.as) #18, !inline_history !192
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !117, !nonnull !102, !align !103 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 296
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !185
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !186
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 312
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !187
  %i.bq = mul i32 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !189
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add i32 %i.bq, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !191
  %i.by = trunc i32 %i.bx to i16
  br label %_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq i32 %i.as, 0
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !117, !nonnull !102, !align !103
  %i.cc = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.cb, i32 %i.ao, i32 noundef %i.as) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.02.0.i = phi i32 [ %i.cc, %bb.k ], [ %i.ao, %bb.j ]
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !164
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef zeroext i16 %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i32 %.sroa.02.0.i) #18, !inline_history !192
  br label %_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit

_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i, %bb.l
  %.0.i = phi i16 [ %i.by, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ %i.cg, %bb.l ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ch = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZNK4llvm10BitTracker16MachineEvaluator7getCellERKNS0_11RegisterRefERKSt3mapIjNS0_12RegisterCellESt4lessIjESaISt4pairIKjS6_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ck = zext i16 %.0.i to i64                   ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cl, ptr %6, align 8, !tbaa !50, !alias.scope !555
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.cm, align 8, !tbaa !49, !alias.scope !555
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 32, ptr %i.cn, align 4, !tbaa !113, !alias.scope !555
  %i.co = icmp eq i16 %.0.i, 0
  br i1 %i.co, label %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit
  %i.cp = icmp ugt i16 %.0.i, 32
  br i1 %i.cp, label %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull %i.cl, i64 noundef %i.ck, i64 noundef 12) #18
  %.pre.i.i.i.i.i = load i32, ptr %i.cm, align 8, !tbaa !49, !alias.scope !555
  %.pre13.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64 ; 2 uses
  %.not11.i.i.i.i.i = icmp samesign eq i64 %i.ck, %.pre13.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i, label %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i

_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i: ; preds = %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %6, align 8, !tbaa !50, !alias.scope !555
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i, %bb.m
  %i.cq = phi ptr [ %.pre.i.i.i, %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i ], [ %i.cl, %bb.m ] ; 2 uses
  %.pre-phi.i.i3.i.i.i = phi i64 [ %.pre13.i.i.i.i.i, %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i ], [ 0, %bb.m ]
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.cq, i64 %i.ck
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cq, i64 %.pre-phi.i.i3.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %i.cs, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  store i32 0, ptr %.012.i.i.i.i.i, align 4, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4
  store i32 0, ptr %i.ct, align 4, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  store i16 0, ptr %i.cu, align 4, !tbaa !152
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cv, %i.cr
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i.i.i.i
  %i.cw = zext i16 %.0.i to i32
  store i32 %i.cw, ptr %i.cm, align 8, !tbaa !49, !alias.scope !555
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ao to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, 3 ; 5 uses
  %xtraiter = and i64 %i.ck, 3                    ; 3 uses
  %i.cx = icmp ult i16 %.0.i, 4
  br i1 %i.cx, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ck, 65532
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.n ]
  %i.cy = load ptr, ptr %6, align 8, !tbaa !50, !alias.scope !555
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %indvars.iv.i ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.cz, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.da = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.da, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !158
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.db = load ptr, ptr %6, align 8, !tbaa !50, !alias.scope !555
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.db, i64 %indvars.iv.next.i ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.dc, align 4
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dd = trunc nuw i64 %indvars.iv.next.i to i16
  store i16 %i.dd, ptr %.sroa.4.0..sroa_idx.i.1, align 4, !tbaa !158
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.de = load ptr, ptr %6, align 8, !tbaa !50, !alias.scope !555
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv.next.i.1 ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.df, align 4
  %.sroa.4.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dg = trunc nuw i64 %indvars.iv.next.i.1 to i16
  store i16 %i.dg, ptr %.sroa.4.0..sroa_idx.i.2, align 4, !tbaa !158
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.dh = load ptr, ptr %6, align 8, !tbaa !50, !alias.scope !555
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.dh, i64 %indvars.iv.next.i.2 ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.di, align 4
  %.sroa.4.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dj = trunc nuw i64 %indvars.iv.next.i.2 to i16
  store i16 %i.dj, ptr %.sroa.4.0..sroa_idx.i.3, align 4, !tbaa !158
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.unr-lcssa, label %bb.n, !llvm.loop !12

_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod131)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dk = load ptr, ptr %6, align 8, !tbaa !50, !alias.scope !555
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.dk, i64 %indvars.iv.i.epil ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.dl, align 4
  %.sroa.4.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dm = trunc nuw i64 %indvars.iv.i.epil to i16
  store i16 %i.dm, ptr %.sroa.4.0..sroa_idx.i.epil, align 4, !tbaa !158
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit, label %bb.o, !llvm.loop !552

_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit:  ; preds = %bb.o, %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.unr-lcssa
  %.pr = load i32, ptr %i.cm, align 8, !tbaa !49  ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !49
  %i.dp = and i32 %i.do, 65535
  %.not.i = icmp eq i32 %.pr, %i.dp
  br i1 %.not.i, label %.preheader.i, label %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit_crit_edge

_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit_crit_edge: ; preds = %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit
  %.pre = load ptr, ptr %6, align 8, !tbaa !50
  br label %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit

_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit.thread: ; preds = %_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !49
  %i.ds = and i32 %i.dr, 65535
  %.not.i85 = icmp eq i32 %i.ds, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %.not.i85, label %.critedge, label %bb.t

.preheader.i:                                     ; preds = %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit
  %.not1213.i = icmp eq i32 %.pr, 0
  %.pre98.a = load ptr, ptr %6, align 8, !tbaa !50 ; 6 uses
  br i1 %.not1213.i, label %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i
  %i.dt = load ptr, ptr %5, align 8, !tbaa !50
  %wide.trip.count = zext nneg i32 %.pr to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i, %.lr.ph.i26
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i ], [ 0, %.lr.ph.i26 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %indvars.iv.a ; 3 uses
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %.pre98.a, i64 %indvars.iv.a ; 3 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !36 ; 2 uses
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !36
  %.not.i.i.i27 = icmp eq i32 %i.dw, %i.dx
  br i1 %.not.i.i.i27, label %bb.q, label %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit

bb.q:                                             ; preds = %bb.p
  %i.dy = icmp eq i32 %i.dw, 3
  br i1 %i.dy, label %bb.r, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !46 ; 2 uses
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !46
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.s, label %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit

bb.s:                                             ; preds = %bb.r
  %i.ee = icmp eq i32 %i.eb, 0
  br i1 %i.ee, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i

_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i:  ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.eg = load i16, ptr %i.ef, align 4, !tbaa !152
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ei = load i16, ptr %i.eh, align 4, !tbaa !152
  %i.ej = icmp eq i16 %i.eg, %i.ei
  br i1 %i.ej, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i, label %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit

_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i:    ; preds = %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i, %bb.s, %bb.q
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit, label %bb.p, !llvm.loop !10

_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit: ; preds = %bb.p, %bb.r, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i, %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit_crit_edge, %.preheader.i
  %14 = phi ptr [ %.pre, %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit_crit_edge ], [ %.pre98.a, %.preheader.i ], [ %.pre98.a, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i ], [ %.pre98.a, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i ], [ %.pre98.a, %bb.r ], [ %.pre98.a, %bb.p ] ; 2 uses
  %.1.i = phi i1 [ false, %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit_crit_edge ], [ true, %.preheader.i ], [ false, %bb.p ], [ false, %bb.r ], [ false, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i ], [ true, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i ] ; 2 uses
  %i.ek = icmp eq ptr %14, %i.cl
  br i1 %i.ek, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit, label %.split

.split:                                           ; preds = %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit
  call void @free(ptr noundef %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %.1.i, label %.critedge, label %bb.t

_ZN4llvm10BitTracker12RegisterCellD2Ev.exit:      ; preds = %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %.1.i, label %.critedge, label %bb.t

bb.t:                                             ; preds = %.split, %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit.thread, %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit
  %15 = phi ptr [ %i.dq, %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit.thread ], [ %i.dn, %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit ], [ %i.dn, %.split ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.em = load i24, ptr %i.el, align 8            ; 2 uses
  %i.en = icmp ugt i24 %i.em, 1
  br i1 %i.en, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ey = icmp eq i32 %i.ao, 0
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fa = zext i24 %i.em to i64
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45
  br i1 %.1, label %bb.bg, label %.critedge

bb.u:                                             ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEPKc.exit45
  %indvars.iv96 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next97, %_ZN4llvm11raw_ostreamlsEPKc.exit45 ] ; 3 uses
  %.094 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN4llvm11raw_ostreamlsEPKc.exit45 ] ; 5 uses
  %i.fb = load ptr, ptr %i.al, align 8, !tbaa !214
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %indvars.iv96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !45 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !258 ; 4 uses
  %i.fh = load i8, ptr %i.e, align 8, !tbaa !267, !range !268, !noundef !102
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.fj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #18 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !44
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !43 ; 2 uses
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = icmp ult i64 %i.fq, 7
  br i1 %i.fr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef nonnull @.str.8, i64 noundef 7) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.fn, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false)
  %i.ft = load ptr, ptr %i.fm, align 8, !tbaa !43
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 7
  store ptr %i.fu, ptr %i.fm, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

_ZN4llvm11raw_ostreamlsEPKc.exit30:               ; preds = %bb.w, %bb.x
  %.0.i.i29 = phi ptr [ %i.fs, %bb.w ], [ %i.fj, %bb.x ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN4llvm17printMBBReferenceERKNS_17MachineBasicBlockE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Printable") align 8 %7, ptr noundef nonnull align 8 dereferenceable(360) %i.fe) #18
  %i.fv = load ptr, ptr %i.eo, align 8, !tbaa !119
  %.not.i.i.i31 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i31, label %bb.y, label %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit32

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit32: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30
  %i.fw = load ptr, ptr %i.ep, align 8, !tbaa !121
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i29) #18, !inline_history !0
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !44
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 32 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !43 ; 2 uses
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = icmp ult i64 %i.gd, 2
  br i1 %i.ge, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit32
  %i.gf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i29, ptr noundef nonnull @.str.9, i64 noundef 2) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

bb.aa:                                            ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit32
  store i16 15917, ptr %i.ga, align 1
  %i.gg = load ptr, ptr %i.fz, align 8, !tbaa !43
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  store ptr %i.gh, ptr %i.fz, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

_ZN4llvm11raw_ostreamlsEPKc.exit35:               ; preds = %bb.z, %bb.aa
  %.0.i.i34 = phi ptr [ %i.gf, %bb.z ], [ %.0.i.i29, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !215
  call void @_ZN4llvm17printMBBReferenceERKNS_17MachineBasicBlockE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Printable") align 8 %8, ptr noundef nonnull align 8 dereferenceable(360) %i.gi) #18
  %i.gj = load ptr, ptr %i.eq, align 8, !tbaa !119
  %.not.i.i.i36 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i36, label %bb.ab, label %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit37

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit35
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit37: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit35
  %i.gk = load ptr, ptr %i.er, align 8, !tbaa !121
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i34) #18, !inline_history !0
  %i.gl = load ptr, ptr %i.eq, align 8, !tbaa !119 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i38, label %_ZN4llvm9PrintableD2Ev.exit39, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit37
  %i.gm = call noundef zeroext i1 %i.gl(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #18, !inline_history !1 ; 0 uses
  br label %_ZN4llvm9PrintableD2Ev.exit39

_ZN4llvm9PrintableD2Ev.exit39:                    ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit37, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.gn = load ptr, ptr %i.eo, align 8, !tbaa !119 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i40, label %_ZN4llvm9PrintableD2Ev.exit41, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm9PrintableD2Ev.exit39
  %i.go = call noundef zeroext i1 %i.gn(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #18, !inline_history !1 ; 0 uses
  br label %_ZN4llvm9PrintableD2Ev.exit41

_ZN4llvm9PrintableD2Ev.exit41:                    ; preds = %_ZN4llvm9PrintableD2Ev.exit39, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm9PrintableD2Ev.exit41, %bb.u
  %i.gp = load ptr, ptr %i.es, align 8, !tbaa !130 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not11.i.i.i, label %bb.ai, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i
  %.013.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i ], [ %i.gp, %bb.ae ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i ], [ %i.et, %bb.ae ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !270 ; 2 uses
  %i.gs = icmp slt i32 %i.gr, %i.fg
  br i1 %i.gs, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.gt = icmp slt i32 %i.fg, %i.gr
  br i1 %i.gt, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i:   ; preds = %bb.af
  %i.gu = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !271
  %i.gw = icmp slt i32 %i.gv, %i.d
  br i1 %i.gw, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i, %bb.af
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i ], [ 16, %bb.af ], [ 16, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.af ], [ %.013.i.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !193 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i42, label %_ZNKSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !553

_ZNKSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.thread10.i.i.i
  %i.gy = icmp eq ptr %.19.i.i.i, %i.et
  br i1 %i.gy, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !270 ; 2 uses
  %i.hb = icmp slt i32 %i.fg, %i.ha
  br i1 %i.hb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hc = icmp slt i32 %i.ha, %i.fg
  br i1 %i.hc, label %_ZNKSt3setISt4pairIiiESt4lessIS1_ESaIS1_EE5countERKS1_.exit, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i:     ; preds = %bb.ah
  %i.hd = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !271
  %i.hf = icmp slt i32 %i.d, %i.he
  br i1 %i.hf, label %bb.ai, label %_ZNKSt3setISt4pairIiiESt4lessIS1_ESaIS1_EE5countERKS1_.exit

bb.ai:                                            ; preds = %bb.ae, %_ZNKSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i, %bb.ag
  %i.hg = load i8, ptr %i.e, align 8, !tbaa !267, !range !268, !noundef !102
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.aj, label %_ZN4llvm11raw_ostreamlsEPKc.exit45

bb.aj:                                            ; preds = %bb.ai
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #18 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !44
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 32 ; 3 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !43 ; 2 uses
  %i.hn = ptrtoint ptr %i.hk to i64
end_hunk_2
begin_hunk_3_@_ZN4llvm10BitTracker8visitPHIERKNS_12MachineInstrE:bb.a

_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i.i: ; preds = %.thread.i.i, %bb.be
  %.sink14.i.i = phi ptr [ %2, %.thread.i.i ], [ %i.kw, %bb.be ]
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.kx, ptr noundef nonnull align 4 dereferenceable(6) %.sink14.i.i, i64 6, i1 false)
  %.pre99 = load ptr, ptr %10, align 8, !tbaa !50
  %.pre101 = load ptr, ptr %5, align 8, !tbaa !50
  br label %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit.i

_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit.i: ; preds = %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i.i, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i66, %bb.bc, %bb.ba, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i.i, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i, %bb.ay
  %i.ky = phi ptr [ %i.ju, %bb.bc ], [ %i.ju, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i ], [ %i.ju, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i.i ], [ %i.ju, %bb.ay ], [ %i.ju, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i66 ], [ %i.ju, %bb.ba ], [ %.pre101, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i.i ]
  %i.kz = phi ptr [ %i.jv, %bb.bc ], [ %i.jv, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i ], [ %i.jv, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i.i ], [ %i.jv, %bb.ay ], [ %i.jv, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i66 ], [ %i.jv, %bb.ba ], [ %.pre99, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i.i ] ; 2 uses
  %.0.i.i63 = phi i1 [ %.012.i, %bb.bc ], [ %.012.i, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i ], [ %.012.i, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.thread8.i.i ], [ %.012.i, %bb.ay ], [ %.012.i, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i66 ], [ %.012.i, %bb.ba ], [ true, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit.sink.split.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %indvars.iv.next.i64, %wide.trip.count.i
  br i1 %exitcond.not.i65, label %_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE.exit.loopexit, label %bb.aw, !llvm.loop !2

_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE.exit.loopexit: ; preds = %_ZN4llvm10BitTracker8BitValue4meetERKS1_RKNS0_6BitRefE.exit.i
  %i.la = or i1 %.094, %.0.i.i63
  br label %_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE.exit

_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE.exit: ; preds = %_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE.exit.loopexit, %bb.av
  %i.lb = phi ptr [ %.pre103.a, %bb.av ], [ %i.kz, %_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE.exit.loopexit ] ; 2 uses
  %.0.lcssa.i = phi i1 [ %.094, %bb.av ], [ %i.la, %_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE.exit.loopexit ]
  %i.lc = icmp eq ptr %i.lb, %i.ez
  br i1 %i.lc, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit67, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE.exit
  call void @free(ptr noundef %i.lb) #18
  br label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit67

_ZN4llvm10BitTracker12RegisterCellD2Ev.exit67:    ; preds = %_ZN4llvm10BitTracker12RegisterCell4meetERKS1_NS_8RegisterE.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45

_ZN4llvm11raw_ostreamlsEPKc.exit45:               ; preds = %bb.al, %bb.ak, %bb.ai, %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit67
  %.1 = phi i1 [ %.0.lcssa.i, %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit67 ], [ %.094, %bb.ai ], [ %.094, %bb.ak ], [ %.094, %bb.al ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %i.ld = icmp samesign ult i64 %indvars.iv.next97, %i.fa
  br i1 %i.ld, label %bb.u, label %._crit_edge, !llvm.loop !554

bb.bg:                                            ; preds = %._crit_edge
  %i.le = load i8, ptr %i.e, align 8, !tbaa !267, !range !268, !noundef !102
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  %i.lg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #18 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !44
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 3 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !43 ; 2 uses
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = icmp ult i64 %i.ln, 8
  br i1 %i.lo, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lg, ptr noundef nonnull @.str.13, i64 noundef 8) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit70

bb.bj:                                            ; preds = %bb.bh
  store i64 2322296605609588047, ptr %i.lk, align 1
  %i.lq = load ptr, ptr %i.lj, align 8, !tbaa !43
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store ptr %i.lr, ptr %i.lj, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit70

_ZN4llvm11raw_ostreamlsEPKc.exit70:               ; preds = %bb.bi, %bb.bj
  %.0.i.i69 = phi ptr [ %i.lp, %bb.bi ], [ %i.lg, %bb.bj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ls = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !117, !nonnull !102, !align !103
  call void @_ZN4llvm8printRegENS_8RegisterEPKNS_18TargetRegisterInfoEjPKNS_19MachineRegisterInfoE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Printable") align 8 %12, i32 %i.ao, ptr noundef nonnull %i.lu, i32 noundef %i.as, ptr noundef null) #18
  %i.lv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !119
  %.not.i.i.i71 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i71, label %bb.bk, label %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit72

bb.bk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit70
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit72: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit70
  %i.lx = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !121
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i69) #18, !inline_history !0
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i.i69, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !44
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.i.i69, i64 32 ; 3 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !43 ; 2 uses
  %i.md = ptrtoint ptr %i.ma to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = icmp ult i64 %i.mf, 7
  br i1 %i.mg, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit72
  %i.mh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i69, ptr noundef nonnull @.str.12, i64 noundef 7) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit75

bb.bm:                                            ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.mc, ptr noundef nonnull align 1 dereferenceable(7) @.str.12, i64 7, i1 false)
  %i.mi = load ptr, ptr %i.mb, align 8, !tbaa !43
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 7
  store ptr %i.mj, ptr %i.mb, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit75

_ZN4llvm11raw_ostreamlsEPKc.exit75:               ; preds = %bb.bl, %bb.bm
  %.0.i.i74 = phi ptr [ %i.mh, %bb.bl ], [ %.0.i.i69, %bb.bm ] ; 4 uses
  %i.mk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_10BitTracker12RegisterCellE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i74, ptr noundef nonnull align 8 dereferenceable(400) %5) ; 0 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i.i74, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !44
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.i.i74, i64 32 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !43 ; 2 uses
  %i.mp = icmp eq ptr %i.mm, %i.mo
  br i1 %i.mp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit75
  %i.mq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i74, ptr noundef nonnull @.str.5, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78

bb.bo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit75
  store i8 10, ptr %i.mo, align 1
  %i.mr = load ptr, ptr %i.mn, align 8, !tbaa !43
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  store ptr %i.ms, ptr %i.mn, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78

_ZN4llvm11raw_ostreamlsEPKc.exit78:               ; preds = %bb.bn, %bb.bo
  %i.mt = load ptr, ptr %i.lv, align 8, !tbaa !119 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i79, label %_ZN4llvm9PrintableD2Ev.exit80, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78
  %i.mu = call noundef zeroext i1 %i.mt(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3) #18, !inline_history !1 ; 0 uses
  br label %_ZN4llvm9PrintableD2Ev.exit80

_ZN4llvm9PrintableD2Ev.exit80:                    ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm9PrintableD2Ev.exit80, %bb.bg
  %i.mv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.mv, ptr %13, align 8, !tbaa !50
  %i.mw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 0, ptr %i.mw, align 8, !tbaa !49
  %i.mx = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 32, ptr %i.mx, align 4, !tbaa !113
  %i.my = load i32, ptr %15, align 8, !tbaa !49   ; 5 uses
  %.not.i.i.i81 = icmp eq i32 %i.my, 0
  br i1 %.not.i.i.i81, label %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mz = icmp ugt i32 %i.my, 32
  br i1 %i.mz, label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i, label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i: ; preds = %bb.br
  %i.na = zext i32 %i.my to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(400) %13, ptr noundef nonnull %i.mv, i64 noundef %i.na, i64 noundef 12) #18
  %.pre.i.i = load i32, ptr %15, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !50
  br label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i, %bb.br
  %i.nb = phi ptr [ %.pre.i, %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.mv, %bb.br ]
  %i.nc = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.my, %bb.br ]
  %i.nd = zext i32 %i.nc to i64
  %i.ne = load ptr, ptr %5, align 8, !tbaa !50
  %gepdiff.i.i.i = mul nuw nsw i64 %i.nd, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nb, ptr align 4 %i.ne, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i, %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i
  store i32 %i.my, ptr %i.mw, align 8, !tbaa !49
  br label %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit

_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit:  ; preds = %bb.bq, %.sink.split.i.i.i
  %i.nf = load ptr, ptr %i.ci, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZNK4llvm10BitTracker16MachineEvaluator7putCellERKNS0_11RegisterRefENS0_12RegisterCellERSt3mapIjS5_St4lessIjESaISt4pairIKjS5_EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dereferenceable(400) %13, ptr noundef nonnull align 8 dereferenceable(48) %i.nf)
  %i.ng = load ptr, ptr %13, align 8, !tbaa !50   ; 2 uses
  %i.nh = icmp eq ptr %i.ng, %i.mv
  br i1 %i.nh, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit82, label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit
  call void @free(ptr noundef %i.ng) #18
  br label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit82

_ZN4llvm10BitTracker12RegisterCellD2Ev.exit82:    ; preds = %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit, %bb.bs
  call void @_ZN4llvm10BitTracker11visitUsesOfENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(313) %0, i32 %i.ao)
  br label %.critedge

.critedge:                                        ; preds = %.split, %_ZNK4llvm10BitTracker12RegisterCelleqERKS1_.exit.thread, %bb.t, %._crit_edge, %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit82, %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit
  %i.ni = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit83, label %bb.bt

bb.bt:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.ni) #18
  br label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit83

_ZN4llvm10BitTracker12RegisterCellD2Ev.exit83:    ; preds = %.critedge, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

declare void @_ZN4llvm17printMBBReferenceERKNS_17MachineBasicBlockE(ptr dead_on_unwind writable sret(%"class.llvm::Printable") align 8, ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10BitTracker11visitUsesOfENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(313) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.llvm::Printable", align 8   ; 8 uses
  %3 = alloca %"struct.llvm::BitTracker::RegisterCell", align 8 ; 6 uses
  %4 = alloca %"struct.llvm::BitTracker::RegisterRef", align 4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.c = load i8, ptr %i.b, align 8, !tbaa !267, !range !268, !noundef !102
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #18 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 29
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.24, i64 noundef 29) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.i, ptr noundef nonnull align 1 dereferenceable(29) @.str.24, i64 29, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 29
  store ptr %i.p, ptr %i.h, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.e, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.q = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !117, !nonnull !102, !align !103
  call void @_ZN4llvm8printRegENS_8RegisterEPKNS_18TargetRegisterInfoEjPKNS_19MachineRegisterInfoE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Printable") align 8 %2, i32 %1, ptr noundef nonnull %i.s, i32 noundef 0, ptr noundef null) #18
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !121
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i) #18, !inline_history !0
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, 7
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit
  %i.af = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.12, i64 noundef 7) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.g:                                             ; preds = %_ZN4llvmlsERNS_11raw_ostreamERKNS_9PrintableE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aa, ptr noundef nonnull align 1 dereferenceable(7) @.str.12, i64 7, i1 false)
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 7
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.f, %bb.g
  %.0.i.i10 = phi ptr [ %i.af, %bb.f ], [ %.0.i.i, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ai = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 %1, ptr %4, align 4, !tbaa !157
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !162
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZNK4llvm10BitTracker16MachineEvaluator7getCellERKNS0_11RegisterRefERKSt3mapIjNS0_12RegisterCellESt4lessIjESaISt4pairIKjS6_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.al)
  %i.am = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_10BitTracker12RegisterCellE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i10, ptr noundef nonnull align 8 dereferenceable(400) %3) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %.not.i = icmp ult ptr %i.ao, %i.aq
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.ar = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i10, i8 noundef zeroext 10) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.as, ptr %i.an, align 8, !tbaa !43
  store i8 10, ptr %i.ao, align 1, !tbaa !45
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.h, %bb.i
  %i.at = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  call void @free(ptr noundef %i.at) #18
  br label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit

_ZN4llvm10BitTracker12RegisterCellD2Ev.exit:      ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !119 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN4llvm9PrintableD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit
  %i.ax = call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #18, !inline_history !1 ; 0 uses
  br label %_ZN4llvm9PrintableD2Ev.exit

_ZN4llvm9PrintableD2Ev.exit:                      ; preds = %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm9PrintableD2Ev.exit, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !564, !nonnull !102, !align !103 ; 2 uses
  %i.ba = icmp slt i32 %1, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bc = and i32 %1, 2147483647
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = load ptr, ptr %i.bb, align 8
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 312
  %i.bi = zext nneg i32 %1 to i64
  %i.bj = load ptr, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi
  %.0.in.i.i.i = select i1 %i.ba, ptr %i.bg, ptr %i.bk
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !565 ; 4 uses
  %.not.i.i.i12 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i12, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load i32, ptr %.0.i.i.i, align 8
  %i.bm = and i32 %i.bl, -2130706432
  %or.cond.not.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %or.cond.not.i.i.i, label %.lr.ph, label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %bb.m, %bb.n
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.n ], [ %.0.i.i.i, %bb.m ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !45 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %.critedge2.i.i.i.i
  %i.bn = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.bo = and i32 %i.bn, -2130706432
  %or.cond.not.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %or.cond.not.i.i.i.i, label %.lr.ph, label %.critedge2.i.i.i.i, !llvm.loop !556

.lr.ph:                                           ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.m ], [ %storemerge.i.i.i.i, %bb.n ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit

._crit_edge:                                      ; preds = %.critedge2.i.i.i.i, %.critedge2.i.i, %bb.l
  ret void

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i, %.lr.ph
  %.sroa.015.023 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph ], [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !262
end_hunk_3
begin_hunk_4_@_ZN4llvm10BitTracker14visitNonBranchERKNS_12MachineInstrE:bb.a
  %or.cond125 = icmp eq i32 %i.go, 16777216
  br i1 %or.cond125, label %bb.ak, label %bb.bm

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.gp = getelementptr inbounds nuw i8, ptr %.047143, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !45 ; 8 uses
  store i32 %i.gq, ptr %10, align 4
  %i.gr = lshr exact i32 %i.gn, 8
  %i.gs = and i32 %i.gr, 4095                     ; 2 uses
  store i32 %i.gs, ptr %i.fx, align 4, !tbaa !162
  %i.gt = icmp slt i32 %i.gq, 0
  br i1 %i.gt, label %bb.al, label %bb.bl

bb.al:                                            ; preds = %bb.ak
  %i.gu = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not10.i.i.i = icmp ne ptr %i.gu, null
  %or.cond127.not = select i1 %i.av, i1 %.not10.i.i.i, i1 false
  br i1 %or.cond127.not, label %.lr.ph.i.i.i, label %_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit

.lr.ph.i.i.i:                                     ; preds = %bb.al, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.gu, %bb.al ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.ak, %bb.al ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !157
  %i.gx = icmp ult i32 %i.gw, %i.gq               ; 3 uses
  %.19.i.i.i = select i1 %i.gx, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.gx, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !193 ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i86, label %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.gy = icmp eq ptr %.19.i.i.i, %i.ak
  br i1 %i.gy, label %_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit, label %_ZNKSt3mapIjN4llvm10BitTracker12RegisterCellESt4lessIjESaISt4pairIKjS2_EEE5countERS6_.exit

_ZNKSt3mapIjN4llvm10BitTracker12RegisterCellESt4lessIjESaISt4pairIKjS2_EEE5countERS6_.exit: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gx, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.gz = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !157
  %.not129 = icmp ult i32 %i.gq, %i.gz
  br i1 %.not129, label %_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit, label %bb.ay

_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.al, %_ZNKSt3mapIjN4llvm10BitTracker12RegisterCellESt4lessIjESaISt4pairIKjS2_EEE5countERS6_.exit
  %i.ha = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !160, !nonnull !102, !align !103
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = and i32 %i.gq, 2147483647
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = load ptr, ptr %i.hd, align 8, !tbaa !50
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.hf
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.hh, align 8
  %i.hi = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = load ptr, ptr %i.ha, align 8, !tbaa !164
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call noundef nonnull align 8 dereferenceable(62) ptr %i.hm(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(62) %i.hj, i32 noundef %i.gs) #18, !inline_history !192
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !117, !nonnull !102, !align !103 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 296
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !185
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !186
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 312
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !187
  %i.hw = mul i32 %i.hv, %i.ht
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !189
  %i.hz = zext i16 %i.hy to i32
  %i.ia = add i32 %i.hw, %i.hz
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !191 ; 2 uses
  %i.ie = trunc i32 %i.id to i16                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %.mask = and i32 %i.id, 65535                   ; 4 uses
  %i.if = zext nneg i32 %.mask to i64             ; 4 uses
  store ptr %i.ge, ptr %11, align 8, !tbaa !50, !alias.scope !573
  store i32 0, ptr %i.gf, align 8, !tbaa !49, !alias.scope !573
  store i32 32, ptr %i.gg, align 4, !tbaa !113, !alias.scope !573
  %i.ig = icmp eq i16 %i.ie, 0
  br i1 %i.ig, label %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit
  %i.ih = icmp ugt i16 %i.ie, 32
  br i1 %i.ih, label %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.am
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(400) %11, ptr noundef nonnull %i.ge, i64 noundef %i.if, i64 noundef 12) #18
  %.pre.i.i.i.i.i = load i32, ptr %i.gf, align 8, !tbaa !49, !alias.scope !573 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %.mask, %.pre.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i, label %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i

_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i: ; preds = %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i.i.i.i
  %.pre13.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %.pre.i.i.i = load ptr, ptr %11, align 8, !tbaa !50, !alias.scope !573
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i, %bb.am
  %i.ii = phi ptr [ %.pre.i.i.i, %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i ], [ %i.ge, %bb.am ] ; 2 uses
  %.pre-phi.i.i3.i.i.i = phi i64 [ %.pre13.i.i.i.i.i, %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i.i ], [ 0, %bb.am ]
  %i.ij = getelementptr inbounds nuw [12 x i8], ptr %i.ii, i64 %i.if
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.ii, i64 %.pre-phi.i.i3.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i ], [ %i.ik, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  store i32 0, ptr %.012.i.i.i.i.i, align 4, !tbaa !36
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4
  store i32 0, ptr %i.il, align 4, !tbaa !46
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  store i16 0, ptr %i.im, align 4, !tbaa !152
  %i.in = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.in, %i.ij
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm15SmallVectorImplINS_10BitTracker8BitValueEE7reserveEm.exit.i.i.i.i.i
  store i32 %.mask, ptr %i.gf, align 8, !tbaa !49, !alias.scope !573
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.gq to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, 3 ; 5 uses
  %xtraiter = and i64 %i.if, 3                    ; 3 uses
  %i.io = add nsw i32 %.mask, -1
  %i.ip = icmp ult i32 %i.io, 3
  br i1 %i.ip, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.if, 65532
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.an ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.an ]
  %i.iq = load ptr, ptr %11, align 8, !tbaa !50, !alias.scope !573
  %i.ir = getelementptr inbounds nuw [12 x i8], ptr %i.iq, i64 %indvars.iv.i ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ir, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.is = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.is, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !158
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.it = load ptr, ptr %11, align 8, !tbaa !50, !alias.scope !573
  %i.iu = getelementptr inbounds nuw [12 x i8], ptr %i.it, i64 %indvars.iv.next.i ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.iu, align 4
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iv = trunc nuw i64 %indvars.iv.next.i to i16
  store i16 %i.iv, ptr %.sroa.4.0..sroa_idx.i.1, align 4, !tbaa !158
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.iw = load ptr, ptr %11, align 8, !tbaa !50, !alias.scope !573
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %i.iw, i64 %indvars.iv.next.i.1 ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ix, align 4
  %.sroa.4.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iy = trunc nuw i64 %indvars.iv.next.i.1 to i16
  store i16 %i.iy, ptr %.sroa.4.0..sroa_idx.i.2, align 4, !tbaa !158
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.iz = load ptr, ptr %11, align 8, !tbaa !50, !alias.scope !573
  %i.ja = getelementptr inbounds nuw [12 x i8], ptr %i.iz, i64 %indvars.iv.next.i.2 ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ja, align 4
  %.sroa.4.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jb = trunc nuw i64 %indvars.iv.next.i.2 to i16
  store i16 %i.jb, ptr %.sroa.4.0..sroa_idx.i.3, align 4, !tbaa !158
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.loopexit.unr-lcssa, label %bb.an, !llvm.loop !12

_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.loopexit.unr-lcssa: ; preds = %bb.an
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.loopexit.unr-lcssa ]
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ao ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ao ]
  %i.jc = load ptr, ptr %11, align 8, !tbaa !50, !alias.scope !573
  %i.jd = getelementptr inbounds nuw [12 x i8], ptr %i.jc, i64 %indvars.iv.i.epil ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.jd, align 4
  %.sroa.4.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.je = trunc nuw i64 %indvars.iv.i.epil to i16
  store i16 %i.je, ptr %.sroa.4.0..sroa_idx.i.epil, align 4, !tbaa !158
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit, label %bb.ao, !llvm.loop !571

_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit:  ; preds = %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit.loopexit.unr-lcssa, %bb.ao, %_ZNK4llvm10BitTracker16MachineEvaluator14getRegBitWidthERKNS0_11RegisterRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.jf = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103
  %i.jg = load ptr, ptr %i.aq, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZNK4llvm10BitTracker16MachineEvaluator7getCellERKNS0_11RegisterRefERKSt3mapIjNS0_12RegisterCellESt4lessIjESaISt4pairIKjS6_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %i.jf, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(48) %i.jg)
  %i.jh = load i32, ptr %i.gf, align 8, !tbaa !49
  %i.ji = load i32, ptr %i.gh, align 8, !tbaa !49 ; 3 uses
  %i.jj = and i32 %i.jh, 65535
  %.not.i.i87 = icmp eq i32 %i.ji, %i.jj
  br i1 %.not.i.i87, label %.preheader.i.i, label %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit_crit_edge

_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit_crit_edge: ; preds = %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit
  %.pre151 = load ptr, ptr %12, align 8, !tbaa !50
  br label %_ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit

.preheader.i.i:                                   ; preds = %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit
  %.not1213.i.i = icmp eq i32 %i.ji, 0
  %.pre152 = load ptr, ptr %12, align 8, !tbaa !50 ; 6 uses
  br i1 %.not1213.i.i, label %_ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.jk = load ptr, ptr %11, align 8, !tbaa !50
  %wide.trip.count.i = zext nneg i32 %i.ji to i64
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [12 x i8], ptr %i.jk, i64 %indvars.iv.i88 ; 3 uses
  %i.jm = getelementptr inbounds nuw [12 x i8], ptr %.pre152, i64 %indvars.iv.i88 ; 3 uses
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !36 ; 2 uses
  %i.jo = load i32, ptr %i.jm, align 4, !tbaa !36
  %.not.i.i.i.i = icmp eq i32 %i.jn, %i.jo
  br i1 %.not.i.i.i.i, label %bb.aq, label %_ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.jp = icmp eq i32 %i.jn, 3
  br i1 %i.jp, label %bb.ar, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.js = load i32, ptr %i.jq, align 4, !tbaa !46 ; 2 uses
  %i.jt = load i32, ptr %i.jr, align 4, !tbaa !46
  %i.ju = icmp eq i32 %i.js, %i.jt
  br i1 %i.ju, label %bb.as, label %_ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit

bb.as:                                            ; preds = %bb.ar
  %i.jv = icmp eq i32 %i.js, 0
  br i1 %i.jv, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i.i, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i.i

_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i.i: ; preds = %bb.as
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jx = load i16, ptr %i.jw, align 4, !tbaa !152
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jz = load i16, ptr %i.jy, align 4, !tbaa !152
  %i.ka = icmp eq i16 %i.jx, %i.jz
  br i1 %i.ka, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i.i, label %_ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit

_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i.i:  ; preds = %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i.i, %bb.as, %bb.aq
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i90 = icmp eq i64 %indvars.iv.next.i89, %wide.trip.count.i
  br i1 %exitcond.not.i90, label %_ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit, label %bb.ap, !llvm.loop !10

_ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit: ; preds = %bb.ap, %bb.ar, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i.i, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i.i, %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit_crit_edge, %.preheader.i.i
  %i.kb = phi ptr [ %.pre151, %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit_crit_edge ], [ %.pre152, %.preheader.i.i ], [ %.pre152, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i.i ], [ %.pre152, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i.i ], [ %.pre152, %bb.ar ], [ %.pre152, %bb.ap ] ; 2 uses
  %i.kc = phi i1 [ true, %_ZN4llvm10BitTracker12RegisterCell4selfEjt.exit._ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit_crit_edge ], [ false, %.preheader.i.i ], [ true, %bb.ap ], [ true, %bb.ar ], [ true, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i.i ], [ false, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i.i ] ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.gi
  br i1 %i.kd, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit91.a, label %bb.at

bb.at:                                            ; preds = %_ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit
  call void @free(ptr noundef %i.kb) #18
  br label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit91.a

_ZN4llvm10BitTracker12RegisterCellD2Ev.exit91.a:  ; preds = %_ZNK4llvm10BitTracker12RegisterCellneERKS1_.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br i1 %i.kc, label %bb.au, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit94

bb.au:                                            ; preds = %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit91.a
  store ptr %i.gj, ptr %13, align 8, !tbaa !50
  store i32 0, ptr %i.gk, align 8, !tbaa !49
  store i32 32, ptr %i.gl, align 4, !tbaa !113
  %i.ke = load i32, ptr %i.gf, align 8, !tbaa !49 ; 5 uses
  %.not.i.i.i92 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i.i92, label %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kf = icmp ugt i32 %i.ke, 32
  br i1 %i.kf, label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i, label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i: ; preds = %bb.av
  %i.kg = zext i32 %i.ke to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(400) %13, ptr noundef nonnull %i.gj, i64 noundef %i.kg, i64 noundef 12) #18
  %.pre.i.i = load i32, ptr %i.gf, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i93 = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i93, label %.sink.split.i.i.i, label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !50
  br label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i, %bb.av
  %i.kh = phi ptr [ %.pre.i, %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.gj, %bb.av ]
  %i.ki = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.ke, %bb.av ]
  %i.kj = zext i32 %i.ki to i64
  %i.kk = load ptr, ptr %11, align 8, !tbaa !50
  %gepdiff.i.i.i = mul nuw nsw i64 %i.kj, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kh, ptr align 4 %i.kk, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i, %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i
  store i32 %i.ke, ptr %i.gk, align 8, !tbaa !49
  br label %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit

_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit:  ; preds = %bb.au, %.sink.split.i.i.i
  %i.kl = load ptr, ptr %i.aq, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZNK4llvm10BitTracker16MachineEvaluator7putCellERKNS0_11RegisterRefENS0_12RegisterCellERSt3mapIjS5_St4lessIjESaISt4pairIKjS5_EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr nofree noundef nonnull align 8 dereferenceable(400) %13, ptr noundef nonnull align 8 dereferenceable(48) %i.kl)
  %i.km = load ptr, ptr %13, align 8, !tbaa !50   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.gj
  br i1 %i.kn, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit94, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit
  call void @free(ptr noundef %i.km) #18
  br label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit94

_ZN4llvm10BitTracker12RegisterCellD2Ev.exit94:    ; preds = %bb.aw, %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit, %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit91.a
  %i.ko = load ptr, ptr %11, align 8, !tbaa !50   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.ge
  br i1 %i.kp, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit95, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit94
  call void @free(ptr noundef %i.ko) #18
  br label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit95

_ZN4llvm10BitTracker12RegisterCellD2Ev.exit95:    ; preds = %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit94, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bj

bb.ay:                                            ; preds = %_ZNKSt3mapIjN4llvm10BitTracker12RegisterCellESt4lessIjESaISt4pairIKjS2_EEE5countERS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.kq = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103
  %i.kr = load ptr, ptr %i.aq, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZNK4llvm10BitTracker16MachineEvaluator7getCellERKNS0_11RegisterRefERKSt3mapIjNS0_12RegisterCellESt4lessIjESaISt4pairIKjS6_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(48) %i.kr)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.ks = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103
  call void @_ZNK4llvm10BitTracker16MachineEvaluator7getCellERKNS0_11RegisterRefERKSt3mapIjNS0_12RegisterCellESt4lessIjESaISt4pairIKjS6_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %i.ks, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.kt = load i32, ptr %i.fy, align 8, !tbaa !49 ; 2 uses
  %i.ku = and i32 %i.kt, 65535
  %.not148 = icmp eq i32 %i.ku, 0
  br i1 %.not148, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit108, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %bb.ay
  %.mask181 = and i32 %i.kt, 65535
  %wide.trip.count = zext nneg i32 %.mask181 to i64
  %.pre150 = load ptr, ptr %14, align 8, !tbaa !50
  br label %.lr.ph140

._crit_edge141:                                   ; preds = %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit
  %i.kv = trunc nuw i8 %.2 to i1
  br i1 %i.kv, label %bb.be, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit108

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit
  %i.kw = phi ptr [ %.pre150, %.lr.ph140.preheader ], [ %i.ls, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph140.preheader ], [ %indvars.iv.next, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit ] ; 4 uses
  %.1137 = phi i8 [ 0, %.lr.ph140.preheader ], [ %.2, %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit ] ; 4 uses
  %i.kx = getelementptr inbounds nuw [12 x i8], ptr %i.kw, i64 %indvars.iv ; 4 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !36 ; 2 uses
  %i.kz = icmp eq i32 %i.ky, 3
  br i1 %i.kz, label %bb.az, label %.thread

bb.az:                                            ; preds = %.lr.ph140
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !46 ; 3 uses
  %i.lc = icmp eq i32 %i.lb, %i.gq
  br i1 %i.lc, label %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ld = load ptr, ptr %15, align 8, !tbaa !50
  %i.le = getelementptr inbounds nuw [12 x i8], ptr %i.ld, i64 %indvars.iv ; 6 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !36
  %.not.i96 = icmp eq i32 %i.lf, 3
  br i1 %.not.i96, label %bb.bb, label %bb.bd

.thread:                                          ; preds = %.lr.ph140
  %i.lg = load ptr, ptr %15, align 8, !tbaa !50
  %i.lh = getelementptr inbounds nuw [12 x i8], ptr %i.lg, i64 %indvars.iv ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !36
  %.not.i96120 = icmp eq i32 %i.ky, %i.li
  br i1 %.not.i96120, label %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !46
  %i.ll = icmp eq i32 %i.lb, %i.lk
  br i1 %i.ll, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lm = icmp eq i32 %i.lb, 0
  br i1 %i.lm, label %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i

_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i:      ; preds = %bb.bc
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lo = load i16, ptr %i.ln, align 4, !tbaa !152
  %i.lp = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lq = load i16, ptr %i.lp, align 4, !tbaa !152
  %i.lr = icmp eq i16 %i.lo, %i.lq
  br i1 %i.lr, label %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %.thread, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i, %bb.bb
  %.ph = phi ptr [ %i.le, %bb.bb ], [ %i.le, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i ], [ %i.lh, %.thread ], [ %i.le, %bb.ba ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kx, ptr noundef nonnull align 4 dereferenceable(12) %.ph, i64 12, i1 false), !tbaa.struct !159
  %.pre = load ptr, ptr %14, align 8, !tbaa !50
  br label %_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit

_ZNK4llvm10BitTracker8BitValueeqERKS1_.exit:      ; preds = %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i, %.thread, %bb.bc, %bb.az, %bb.bd
  %i.ls = phi ptr [ %.pre, %bb.bd ], [ %i.kw, %bb.az ], [ %i.kw, %bb.bc ], [ %i.kw, %.thread ], [ %i.kw, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i ]
  %.2 = phi i8 [ 1, %bb.bd ], [ %.1137, %bb.az ], [ %.1137, %bb.bc ], [ %.1137, %.thread ], [ %.1137, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge141, label %.lr.ph140, !llvm.loop !572

bb.be:                                            ; preds = %._crit_edge141
  store ptr %i.fz, ptr %16, align 8, !tbaa !50
  store i32 0, ptr %i.ga, align 8, !tbaa !49
  store i32 32, ptr %i.gb, align 4, !tbaa !113
  %i.lt = load i32, ptr %i.fy, align 8, !tbaa !49 ; 5 uses
  %.not.i.i.i98 = icmp eq i32 %i.lt, 0
  br i1 %.not.i.i.i98, label %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit107, label %bb.bf
end_hunk_4
