Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/csa-load-elimination?download=true
inline.NumInlined: 1756
inline.NumDeleted: 834
begin_hunk_0_@_ZN2v88internal8compiler18CsaLoadElimination17TruncateAndExtendEPNS1_4NodeENS0_21MachineRepresentationENS0_11MachineTypeE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder20TruncateInt64ToInt32Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %1, ptr %9, align 8
  %i.k = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull %9, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit: ; preds = %bb.c, %bb.b
  %.016 = phi ptr [ %i.k, %bb.c ], [ %1, %bb.b ]
  %i.l = icmp eq i8 %.sroa.0.0.extract.trunc, 3
  %spec.select = zext i1 %i.l to i32
  %.neg = shl nsw i32 -8, %spec.select
  %i.m = add nsw i32 %.neg, 32                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9Word32SarENS1_9ShiftKindE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i32 noundef 0) #14
  %i.t = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9Word32ShlEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #14
  %i.y = load ptr, ptr %i.n, align 8
  %i.z = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.y, i32 noundef %i.m) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr %.016, ptr %8, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef %i.x, i32 noundef 2, ptr noundef nonnull %8, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.ac, i32 noundef %i.m) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr %i.ab, ptr %7, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef %i.s, i32 noundef 2, ptr noundef nonnull %7, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.ag = icmp eq i16 %.sroa.8.0.extract.shift, 3
  %or.cond = and i1 %i.ag, %i.c
  %i.ah = icmp eq i8 %2, 5                        ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.ah, label %bb.f, label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit18

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder20TruncateInt64ToInt32Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %1, ptr %6, align 8
  %i.ao = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, ptr noundef %i.an, i32 noundef 1, ptr noundef nonnull %6, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit18

_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit18: ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.ao, %bb.f ], [ %1, %bb.e ]
  %i.ap = icmp eq i8 %.sroa.0.0.extract.trunc, 3
  %spec.select29 = zext i1 %i.ap to i32
  %i.aq = shl nuw nsw i32 8, %spec.select29
  %notmask = shl nsw i32 -1, %i.aq
  %i.ar = xor i32 %notmask, -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9Word32AndEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #14
  %i.ay = load ptr, ptr %i.as, align 8
  %i.az = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(800) %i.ay, i32 noundef %i.ar) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %.1, ptr %5, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef %i.ax, i32 noundef 2, ptr noundef nonnull %5, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.bc = icmp eq i8 %.sroa.0.0.extract.trunc, 4
  %or.cond30 = and i1 %i.ah, %i.bc
  br i1 %or.cond30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder20TruncateInt64ToInt32Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %1, ptr %4, align 8
  %i.bj = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bf, ptr noundef %i.bi, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit18, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit
  %.0 = phi ptr [ %i.af, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit ], [ %i.bb, %_ZN2v88internal18ElementSizeInBytesENS0_21MachineRepresentationE.exit18 ], [ %i.bj, %bb.h ], [ %1, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler18CsaLoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 16777215                   ; 3 uses
  %i.d = zext nneg i32 %i.c to i64                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %i.d
  br i1 %i.m, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not = icmp eq ptr %2, %i.o
  br i1 %.not, label %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKS6_.exit, label %bb.b

_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread: ; preds = %bb.a
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKS6_.exit, label %.thread

bb.b:                                             ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef zeroext i1 @_ZNK2v88internal8compiler18CsaLoadElimination13AbstractState6EqualsEPKS3_(ptr noundef nonnull align 8 dereferenceable(600) %2, ptr noundef nonnull %i.o)
  br i1 %i.q, label %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKS6_.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4
  %.pre10 = load ptr, ptr %i.e, align 8           ; 2 uses
  %.pre11 = load ptr, ptr %i.g, align 8           ; 2 uses
  %.pre12 = and i32 %.pre, 16777215               ; 2 uses
  %.pre13 = zext nneg i32 %.pre12 to i64
  %.pre15 = ptrtoint ptr %.pre10 to i64
  %.pre17 = ptrtoint ptr %.pre11 to i64           ; 2 uses
  %.pre19 = sub i64 %.pre15, %.pre17
  %.pre21 = ashr exact i64 %.pre19, 3
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, %bb.b
  %.pre-phi22 = phi i64 [ %.pre21, %..thread_crit_edge ], [ %i.l, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread ], [ %i.l, %bb.b ]
  %.pre-phi18 = phi i64 [ %.pre17, %..thread_crit_edge ], [ %i.j, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread ], [ %i.j, %bb.b ]
  %.pre-phi14 = phi i64 [ %.pre13, %..thread_crit_edge ], [ %i.d, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread ], [ %i.d, %bb.b ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre12, %..thread_crit_edge ], [ %i.c, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread ], [ %i.c, %bb.b ]
  %i.r = phi ptr [ %.pre11, %..thread_crit_edge ], [ %i.h, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread ], [ %i.h, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %.pre10, %..thread_crit_edge ], [ %i.f, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread ], [ %i.f, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.not.i.i = icmp ugt i64 %.pre-phi22, %.pre-phi14
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.u = add nuw nsw i32 %.pre-phi, 1
  %i.v = zext nneg i32 %i.u to i64                ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %.pre-phi18
  %i.aa = ashr exact i64 %i.z, 3
  %.not.i.i.i.i = icmp ult i64 %i.aa, %i.v
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE14EnsureCapacityEm.exit.i.i.i, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.v)
  %.pre.i.i.i = load ptr, ptr %i.g, align 8
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE14EnsureCapacityEm.exit.i.i.i

_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE14EnsureCapacityEm.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %i.s, %bb.d ], [ %.pre.i.i, %bb.e ] ; 3 uses
  %i.ac = phi ptr [ %i.r, %bb.d ], [ %.pre.i.i.i, %bb.e ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i.preheader.i.i, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE6resizeEmRKS6_.exit.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE14EnsureCapacityEm.exit.i.i.i
  %i.af = ptrtoaddr ptr %i.ab to i64              ; 2 uses
  %i.ag = ptrtoaddr ptr %i.ac to i64
  %i.ah = shl nuw nsw i64 %i.v, 3
  %3 = add nuw i64 %i.ah, %i.ag
  %i.ai = add i64 %i.af, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.ai)
  %4 = xor i64 %i.af, -1
  %i.aj = add i64 %umax.i.i, %4
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.al, i1 false)
  %.pre9.pre.i.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE6resizeEmRKS6_.exit.i.i

_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE6resizeEmRKS6_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE14EnsureCapacityEm.exit.i.i.i
  %.pre9.i.i = phi ptr [ %.pre9.pre.i.i, %.lr.ph.i.preheader.i.i ], [ %i.ac, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE14EnsureCapacityEm.exit.i.i.i ]
  store ptr %i.ad, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE6resizeEmRKS6_.exit.i.i, %.thread
  %i.am = phi ptr [ %.pre9.i.i, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler18CsaLoadElimination13AbstractStateEE6resizeEmRKS6_.exit.i.i ], [ %i.r, %.thread ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.pre-phi14 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %.not8.i.i.not = icmp eq ptr %i.ao, %2
  br i1 %.not8.i.i.not, label %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKS6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %i.an, align 8
  br label %_ZN2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKS6_.exit

_ZN2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3SetEPNS1_4NodeERKS6_.exit: ; preds = %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit, %bb.c, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread, %bb.g, %bb.f
  %.sroa.0.0 = phi ptr [ %1, %bb.g ], [ %1, %bb.f ], [ null, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit.thread ], [ null, %bb.c ], [ null, %_ZNK2v88internal8compiler11NodeAuxDataIPKNS1_18CsaLoadElimination13AbstractStateEXadL_ZNS1_16DefaultConstructIS6_EET_PNS0_4ZoneEEEE3GetEPNS1_4NodeE.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler18CsaLoadElimination16ComputeLoopStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(672) %0, ptr noundef %1, ptr nofree noundef readonly captures(ret: address, provenance) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::CsaLoadElimination::HalfState", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::CsaLoadElimination::HalfState", align 8 ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.std::queue", align 8        ; 17 uses
  %8 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 8, ptr %i.d, align 8
  %i.e = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  store ptr %i.e, ptr %7, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17 ; 6 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 5 uses
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 512 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 6 uses
  store ptr %i.f, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  store ptr %i.g, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  store ptr %i.k, ptr %i.p, align 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.q, ptr %8, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %8, ptr %6, align 8
  %i.v = call { ptr, i8 } @_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SK_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit ], [ 1, %bb.a ] ; 4 uses
  %i.w = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = and i32 %i.y, 251658240
  %.not.i = icmp eq i32 %i.z, 251658240
  br i1 %.not.i, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.b
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = add i64 %i.aa, 32
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv, %i.ah
  br i1 %i.ai, label %bb.c, label %.preheader

_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread: ; preds = %bb.b
  %i.aj = lshr i32 %i.y, 24
  %i.ak = and i32 %i.aj, 15
  %i.al = add nsw i32 %i.ak, -1
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv, %i.am
  br i1 %i.an, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit, %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread
  %i.ao = load ptr, ptr %i.m, align 8
  %i.ap = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %.loopexit52, label %.lr.ph59

.lr.ph59:                                         ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  br label %bb.f

.thread:                                          ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.as = load ptr, ptr %i.ac, align 8
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.thread, %bb.c
  %.sink81 = phi ptr [ %i.w, %.thread ], [ %i.as, %bb.c ]
  %.sink80 = phi i64 [ 32, %.thread ], [ 16, %bb.c ]
  %i.at = ptrtoint ptr %.sink81 to i64
  %i.au = add i64 %.sink80, %i.at
  %.sink.i.i = inttoptr i64 %i.au to ptr
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  store ptr %i.aw, ptr %i.b, align 8
  %i.ax = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ay = load ptr, ptr %i.p, align 8
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.not.i.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ba = load ptr, ptr %i.m, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.m, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE4pushEOS4_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !166

bb.f:                                             ; preds = %.lr.ph59, %.loopexit
  %i.bc = phi ptr [ %i.ap, %.lr.ph59 ], [ %i.gq, %.loopexit ] ; 3 uses
  %.02058 = phi ptr [ %2, %.lr.ph59 ], [ %.3, %.loopexit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.bd = load ptr, ptr %i.bc, align 8
  store ptr %i.bd, ptr %i.c, align 8
  %i.be = load ptr, ptr %i.l, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  %.not.i.i24 = icmp eq ptr %i.bc, %i.bf
  br i1 %.not.i.i24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.j, align 8
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef 512) #18
  %i.bi = load ptr, ptr %i.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.i, align 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  store ptr %i.bk, ptr %i.j, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  store ptr %i.bl, ptr %i.l, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %storemerge.i.i = phi ptr [ %i.bg, %bb.g ], [ %i.bk, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %8, ptr %5, align 8
  %i.bm = call { ptr, i8 } @_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SK_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %.fca.1.extract = extractvalue { ptr, i8 } %i.bm, 1
  %i.bn = trunc i8 %.fca.1.extract to i1
  br i1 %i.bn, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeESt5dequeIS4_SaIS4_EEE3popEv.exit
end_hunk_0
