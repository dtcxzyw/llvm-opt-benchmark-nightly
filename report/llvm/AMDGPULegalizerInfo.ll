Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPULegalizerInfo?download=true
inline.NumInlined: 10257
inline.NumDeleted: 2157
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4llvm19AMDGPULegalizerInfo12legalizeLoadERNS_15LegalizerHelperERNS_12MachineInstrE:bb.a
  %i.gl = extractvalue { ptr, ptr } %i.gk, 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !427
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store i32 %i.at, ptr %15, align 8, !tbaa !262
  %i.gq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 1, ptr %i.gq, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store i32 %i.gp, ptr %16, align 8, !tbaa !262
  %i.gr = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.gr, align 8, !tbaa !445
  %i.gs = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder33buildDeleteTrailingVectorElementsERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %15, ptr noundef nonnull align 8 dereferenceable(20) %16) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y
  %i.gt = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #24 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit, %_ZNK4llvm8TypeSizecvmEv.exit121, %bb.v, %bb.ac, %bb.w, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.thread, %bb.c
  %.3 = phi i1 [ true, %bb.c ], [ false, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.thread ], [ true, %.loopexit ], [ false, %bb.w ], [ true, %bb.v ], [ true, %bb.ac ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit121 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo13legalizeStoreERNS_15LegalizerHelperERNS_12MachineInstrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !290, !nonnull !68, !align !86 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !303  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !499, !nonnull !68, !align !86 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !427
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82   ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %.lr.ph.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %i.i, 2147483647                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.m = load i32, ptr %i.l, align 8, !tbaa !72
  %i.n = icmp ugt i32 %i.m, %i.k
  br i1 %i.n, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %.lr.ph.i.preheader

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.p = zext nneg i32 %i.k to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !82   ; 2 uses
  %i.t = and i64 %i.s, -1152903912421851136
  %or.cond7.i = icmp eq i64 %i.t, 4611686018435776512
  br i1 %or.cond7.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a, %bb.b, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %.tr8.i.ph = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.s, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK4llvm3LLT14getElementTypeEv.exit.i
  %.tr8.i = phi i64 [ %.sroa.0.0.i.i, %_ZNK4llvm3LLT14getElementTypeEv.exit.i ], [ %.tr8.i.ph, %.lr.ph.i.preheader ] ; 8 uses
  %.mask.i9.i = and i64 %.tr8.i, -1152921504606846976 ; 2 uses
  %i.u = icmp eq i64 %.mask.i9.i, 4611686018427387904
  %i.v = lshr i64 %.tr8.i, 60
  %i.w = add nsw i64 %i.v, -5
  %switch.selectcmp.i.i = icmp ult i64 %i.w, 4
  br i1 %switch.selectcmp.i.i, label %bb.c, label %_ZL23hasBufferRsrcWorkaroundN4llvm3LLTE.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = icmp slt i64 %.tr8.i, -8070450532247928832
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i64 %.tr8.i, 1152921504605798400
  %i.z = or disjoint i64 %i.y, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i

bb.e:                                             ; preds = %bb.c
  switch i64 %.mask.i9.i, label %bb.j [
    i64 8070450532247928832, label %bb.f
    i64 6917529027641081856, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = trunc i64 %.tr8.i to i32
  %i.ab = lshr i32 %i.aa, 20
  %i.ac = and i32 %i.ab, 255                      ; 2 uses
  %i.ad = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !278, !range !67, !noundef !68
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.ac) #24, !inline_history !31
  %i.ag = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.af) #24, !inline_history !31
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 28               ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %storemerge.i.i.i.i.i.i = or disjoint i64 %i.ai, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aj = shl nuw nsw i32 %i.ac, 20
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = or disjoint i64 %i.ai, %i.ak
  %i.am = or disjoint i64 %i.al, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i

bb.i:                                             ; preds = %bb.e
  %i.an = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !278, !range !67, !noundef !68
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = and i64 %.tr8.i, 1152921504338411520
  %.sroa.0.0.v.i.i.i = select i1 %i.ao, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i.i = or disjoint i64 %.sroa.0.0.v.i.i.i, %i.ap
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i

bb.j:                                             ; preds = %bb.e
  %i.aq = lshr i64 %.tr8.i, 44
  %i.ar = and i64 %i.aq, 65535
  %i.as = lshr i64 %.tr8.i, 28
  %i.at = and i64 %i.as, 4294967295
  %i.au = select i1 %i.u, i64 %i.ar, i64 %i.at
  %i.av = shl nuw nsw i64 %i.au, 28
  %storemerge.i.i.i.i.i = or disjoint i64 %i.av, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i

_ZNK4llvm3LLT14getElementTypeEv.exit.i:           ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.z, %bb.d ], [ %storemerge.i.i.i.i.i, %bb.j ], [ %.sroa.0.0.i6.i.i, %bb.i ], [ %i.am, %bb.h ], [ %storemerge.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.aw = and i64 %.sroa.0.0.i.i, -1152903912421851136
  %or.cond.i = icmp eq i64 %i.aw, 4611686018435776512
  br i1 %or.cond.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit.i, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %2) #24
  %.val = load ptr, ptr %i.f, align 8, !tbaa !427
  tail call fastcc void @_ZL24castBufferRsrcArgToV4I32RN4llvm12MachineInstrERNS_16MachineIRBuilderEj(ptr %.val, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i32 noundef 0)
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %2) #24
  br label %_ZL23hasBufferRsrcWorkaroundN4llvm3LLTE.exit

_ZL23hasBufferRsrcWorkaroundN4llvm3LLTE.exit:     ; preds = %.lr.ph.i, %.loopexit
  %.0.i16 = phi i1 [ true, %.loopexit ], [ false, %.lr.ph.i ]
  ret i1 %.0.i16
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo12legalizeFMadERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::LLT", align 8         ; 5 uses
  %5 = alloca %"class.llvm::LLT", align 8         ; 5 uses
  %6 = alloca %"class.llvm::LLT", align 8         ; 5 uses
  %7 = alloca %"class.llvm::MachineIRBuilder", align 8 ; 14 uses
  %8 = alloca %"class.llvm::GISelObserverWrapper", align 8 ; 14 uses
  %9 = alloca %"class.llvm::LegalizerHelper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !82   ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 2147483647                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.h = load i32, ptr %i.g, align 8, !tbaa !72
  %i.i = icmp ugt i32 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.k = zext nneg i32 %i.f to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load i64, ptr %i.m, align 8, !tbaa !82
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.04.0.i, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !317  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !426  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i64 3458764522412572672, ptr %5, align 8
  %i.s = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.s, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %.sroa.0.0.copyload.i = load i40, ptr %i.t, align 8
  %i.u = and i40 %.sroa.0.0.copyload.i, 16776960
  %i.v = icmp eq i40 %i.u, 65792
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.v, label %bb.r, label %bb.e

.sink.split:                                      ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i64 3458764518115508224, ptr %6, align 8
  %i.w = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %i.w, label %bb.f, label %.sink.split29

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %.sroa.0.0.copyload.i14 = load i40, ptr %i.x, align 8 ; 2 uses
  %i.y = and i40 %.sroa.0.0.copyload.i14, 4278190080
  %10 = icmp eq i40 %i.y, 16777216
  %11 = ashr i40 %.sroa.0.0.copyload.i14, 32
  %12 = trunc nsw i40 %11 to i16
  %i.z = icmp eq i16 %12, 1
  %13 = select i1 %10, i1 %i.z, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %13, label %bb.r, label %bb.g

.sink.split29:                                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.g

bb.g:                                             ; preds = %.sink.split29, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !502
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm16MachineIRBuilderE, i64 16), ptr %7, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i8 0, i64 88, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !540
  call void @_ZN4llvm16MachineIRBuilder5setMFERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(1065) %i.ae) #24
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !502
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !541
  %i.ai = ptrtoint ptr %1 to i64
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !82 ; 3 uses
  %i.al = icmp ugt i64 %i.ak, 7
  br i1 %i.al, label %bb.h, label %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.am = and i64 %i.ak, 7
  %.not.i.i = icmp eq i64 %i.am, 3
  %i.an = and i64 %i.ak, -8
  %i.ao = inttoptr i64 %i.an to ptr               ; 21 uses
  br i1 %.not.i.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !990, !range !67, !noundef !68
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.at = load i32, ptr %i.ao, align 8, !tbaa !543
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !991, !range !67, !noundef !68
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !992, !range !67, !noundef !68
  %narrow.i.i.i.i.i.i.i = add nuw nsw i8 %i.az, %i.ax
  %i.ba = zext nneg i8 %narrow.i.i.i.i.i.i.i to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !993, !range !67, !noundef !68
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !994
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i.i.ph.ph = phi ptr [ %i.bg, %bb.j ], [ null, %bb.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %.1.i.i.ph.ph, ptr %i.bh, align 8, !tbaa !995
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !996, !range !67, !noundef !68
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bm = load i32, ptr %i.ao, align 8, !tbaa !543
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !991, !range !67, !noundef !68
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !992, !range !67, !noundef !68
  %narrow.i.i.i.i.i.i8.i = add nuw nsw i8 %i.bs, %i.bq
  %i.bt = zext nneg i8 %narrow.i.i.i.i.i.i8.i to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !993, !range !67, !noundef !68
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !990, !range !67, !noundef !68
  %narrow.i.i.i = add nuw nsw i8 %i.by, %i.bw
  %i.bz = zext nneg i8 %narrow.i.i.i to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !994
  br label %bb.n

_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i: ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  br label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

bb.m:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %.1.i6.i.ph.ph = phi ptr [ %i.cb, %bb.l ], [ null, %bb.k ]
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.1.i6.i.ph.ph, ptr %i.ce, align 8, !tbaa !997
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !998, !range !67, !noundef !68
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.o, label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cj = load i32, ptr %i.ao, align 8, !tbaa !543
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !991, !range !67, !noundef !68
  %i.co = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !992, !range !67, !noundef !68
  %narrow.i.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.cp, %i.cn
  %i.cq = zext nneg i8 %narrow.i.i.i.i.i.i.i.i.i to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !993, !range !67, !noundef !68
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !990, !range !67, !noundef !68
  %narrow.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.cv, %i.ct
  %i.cw = zext nneg i8 %narrow.i.i.i.i.i.i.i.i to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !999, !range !67, !noundef !68
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.da
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = add i64 %i.dc, 7
  %i.de = and i64 %i.dd, -8
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1000
  br label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit: ; preds = %bb.m, %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i, %bb.n, %bb.o
  %.1.i9.i = phi ptr [ null, %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i ], [ null, %bb.m ], [ %i.dg, %bb.o ], [ null, %bb.n ]
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %.1.i9.i, ptr %i.dh, align 8, !tbaa !1001
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !544
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !544
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !69
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 4, ptr %i.do, align 8, !tbaa !1002
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 0, ptr %i.dp, align 4, !tbaa !1003
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i8 1, ptr %i.dq, align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm20GISelObserverWrapperE, i64 16), ptr %8, align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm20GISelObserverWrapperE, i64 112), ptr %i.dl, align 8, !tbaa !59
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !71
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i32 0, ptr %i.dt, align 8, !tbaa !72
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 84
  store i32 4, ptr %i.du, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN4llvm15LegalizerHelperC1ERNS_15MachineFunctionERNS_19GISelChangeObserverERNS_16MachineIRBuilderEPKNS_19LibcallLoweringInfoE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(1065) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.dl, ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef null) #24
  %i.dv = call noundef i32 @_ZN4llvm15LegalizerHelper9lowerFMadERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(80) %1) #24
  %i.dw = icmp eq i32 %i.dv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm20GISelObserverWrapperE, i64 16), ptr %8, align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm20GISelObserverWrapperE, i64 112), ptr %i.dl, align 8, !tbaa !59
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !71 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.ds
  br i1 %i.dy, label %_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit
  call void @free(ptr noundef %i.dx) #24, !inline_history !545
  br label %_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i: ; preds = %bb.p, %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm19GISelChangeObserverE, i64 16), ptr %i.dl, align 8, !tbaa !59
  %i.dz = load i8, ptr %i.dq, align 8, !tbaa !66, !range !67, !noundef !68
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZN4llvm20GISelObserverWrapperD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i
  %i.eb = load ptr, ptr %i.dm, align 8, !tbaa !69
  call void @free(ptr noundef %i.eb) #24, !inline_history !546
  br label %_ZN4llvm20GISelObserverWrapperD2Ev.exit

_ZN4llvm20GISelObserverWrapperD2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %bb.d, %_ZN4llvm20GISelObserverWrapperD2Ev.exit
  %.0 = phi i1 [ %i.dw, %_ZN4llvm20GISelObserverWrapperD2Ev.exit ], [ true, %bb.d ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo12legalizeFDIVERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46384) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::LLT", align 8         ; 6 uses
  %5 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %6 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %7 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !82   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 2147483647                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.h = load i32, ptr %i.g, align 8, !tbaa !72
  %i.i = icmp ugt i32 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.k = zext nneg i32 %i.f to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load i64, ptr %i.m, align 8, !tbaa !82
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.04.0.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i64 3458764518115508224, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i64 3458764522412572672, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i64 3458764531003555840, ptr %7, align 8
  %i.o = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.p = call noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo14legalizeFDIV16ERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE(ptr noundef nonnull align 8 dereferenceable(46384) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.q = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo14legalizeFDIV32ERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE(ptr noundef nonnull align 8 dereferenceable(46384) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.s = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = call noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo14legalizeFDIV64ERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE(ptr noundef nonnull align 8 dereferenceable(46384) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo14legalizeFFREXPERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46384) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %5 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::LLT", align 8         ; 8 uses
  %9 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %10 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %11 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %12 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %13 = alloca %"class.llvm::APFloat", align 8    ; 9 uses
  %14 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %15 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %16 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %17 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %18 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %20 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %21 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %22 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %23 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %24 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %25 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %26 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %27 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %28 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %29 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !82   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !475  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.k = icmp slt i32 %i.d, 0
  br i1 %i.k, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = and i32 %i.d, 2147483647                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.n = load i32, ptr %i.m, align 8, !tbaa !72
  %i.o = icmp ugt i32 %i.n, %i.l
  br i1 %i.o, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.q = zext nneg i32 %i.l to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !82
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.04.0.i, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store i64 3458764518115508224, ptr %9, align 8
  %i.u = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.v = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !range !67
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %.sroa.0.0.i = select i1 %i.w, i64 2305843013508661248, i64 1152921508901814272
  %.sroa.0.0.i53 = select i1 %i.w, i64 2305843017803628544, i64 1152921513196781568
  %.sroa.025.0 = select i1 %i.u, i64 %.sroa.0.0.i, i64 %.sroa.0.0.i53 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %.sroa.022.0.copyload = load i64, ptr %8, align 8, !tbaa !82
  store i64 %.sroa.022.0.copyload, ptr %10, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !442
  %i.y = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildIntrinsicEjNS_8ArrayRefINS_5DstOpEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 2500, ptr nonnull %10, i64 1) #24 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !477, !alias.scope !1010
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.h, ptr %i.ac, align 4, !tbaa !82, !alias.scope !1010
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !alias.scope !1010
  store i32 0, ptr %7, align 8, !alias.scope !1010
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(1065) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ae = and i32 %i.j, 65535
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 44 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !475
  %i.ah = and i32 %i.ag, 12
  %i.ai = and i32 %i.j, 65523                     ; 2 uses
  %i.aj = or disjoint i32 %i.ah, %i.ai
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !475
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i64 %.sroa.025.0, ptr %11, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.ak, align 8, !tbaa !442
  %i.al = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildIntrinsicEjNS_8ArrayRefINS_5DstOpEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 2499, ptr nonnull %11, i64 1) #24 ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0      ; 3 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !477, !alias.scope !1011
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.h, ptr %i.ap, align 4, !tbaa !82, !alias.scope !1011
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !alias.scope !1011
  store i32 0, ptr %6, align 8, !alias.scope !1011
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(1065) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 44 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !475
  %i.at = and i32 %i.as, 12
  %i.au = or disjoint i32 %i.at, %i.ai
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !475
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 46376
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !85, !nonnull !68, !align !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 496
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !265
  %i.az = icmp eq i32 %i.ay, 5
  br i1 %i.az, label %bb.d, label %bb.i
end_hunk_0
begin_hunk_1_@_ZNK4llvm19AMDGPULegalizerInfo14legalizeFDIV16ERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i32 0, ptr %i.dn, align 8, !tbaa !442
  %i.do = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(20) %40, i64 noundef 4286578688) #24 ; 2 uses
  %i.dp = extractvalue { ptr, ptr } %i.do, 0
  %i.dq = extractvalue { ptr, ptr } %i.do, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i64 %.sroa.0.0.i, ptr %11, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %.sroa.4129.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr %i.dl, ptr %12, align 8
  %.sroa.0124.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.dm, ptr %.sroa.0124.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 1, ptr %.sroa.4125.0..sroa_idx, align 8, !tbaa !474
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.dp, ptr %i.dr, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.dq, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !82
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 1, ptr %.sroa.5122.0..sroa_idx, align 8, !tbaa !474
  %i.ds = load ptr, ptr %3, align 8, !tbaa !59
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call { ptr, ptr } %i.du(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 64, ptr nonnull %11, i64 1, ptr nonnull %12, i64 2, i64 0) #24, !inline_history !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0
  %i.dx = extractvalue { ptr, ptr } %i.dv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store i64 3458764522412572672, ptr %9, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %.sroa.4114.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.dw, ptr %10, align 8
  %.sroa.0109.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.dx, ptr %.sroa.0109.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 1, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !474
  %i.dy = load ptr, ptr %3, align 8, !tbaa !59
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call { ptr, ptr } %i.ea(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 88, ptr nonnull %9, i64 1, ptr nonnull %10, i64 1, i64 0) #24, !inline_history !18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ec = extractvalue { ptr, ptr } %i.eb, 0
  %i.ed = extractvalue { ptr, ptr } %i.eb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i64 3458764522412572672, ptr %7, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %.sroa.4107.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.ec, ptr %8, align 8
  %.sroa.0102.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ed, ptr %.sroa.0102.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !474
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.sroa.0271.0, ptr %i.ee, align 8
  %.sroa.0101.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %.sroa.14.0, ptr %.sroa.0101.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !474
  %i.ef = load ptr, ptr %3, align 8, !tbaa !59
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call { ptr, ptr } %i.eh(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 193, ptr nonnull %7, i64 1, ptr nonnull %8, i64 2, i64 %.sroa.0328.0.insert.insert) #24, !inline_history !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ej = extractvalue { ptr, ptr } %i.ei, 0
  %i.ek = extractvalue { ptr, ptr } %i.ei, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  store i64 3458764518115508224, ptr %41, align 8, !tbaa !82
  %i.el = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i32 0, ptr %i.el, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  store ptr %i.ej, ptr %42, align 8, !tbaa !446
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %i.ek, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !448
  %i.em = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i32 1, ptr %i.em, align 8, !tbaa !445
  %i.en = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder12buildFPTruncERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(20) %41, ptr noundef nonnull align 8 dereferenceable(20) %42, i64 %.sroa.0328.0.insert.insert) #24
  %i.eo = extractvalue { ptr, ptr } %i.en, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  %i.ep = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildIntrinsicEjNS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 2437, ptr nonnull %38, i64 1) #24 ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %i.ep, 0      ; 3 uses
  %i.er = extractvalue { ptr, ptr } %i.ep, 1      ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !427
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ew, align 8, !tbaa !477, !alias.scope !1259
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.ev, ptr %i.ex, align 4, !tbaa !82, !alias.scope !1259
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false), !alias.scope !1259
  store i32 0, ptr %6, align 8, !alias.scope !1259
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.er, ptr noundef nonnull align 8 dereferenceable(1065) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ez, align 8, !tbaa !477, !alias.scope !1260
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.i, ptr %i.fa, align 4, !tbaa !82, !alias.scope !1260
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false), !alias.scope !1260
  store i32 0, ptr %5, align 8, !alias.scope !1260
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.er, ptr noundef nonnull align 8 dereferenceable(1065) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.fc, align 8, !tbaa !477, !alias.scope !1261
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.g, ptr %i.fd, align 4, !tbaa !82, !alias.scope !1261
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false), !alias.scope !1261
  store i32 0, ptr %4, align 8, !alias.scope !1261
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.er, ptr noundef nonnull align 8 dereferenceable(1065) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 44 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !475
  %i.fh = and i32 %i.fg, 12
  %i.fi = or disjoint i32 %i.fh, %i.au
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !475
  %i.fj = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo14legalizeFDIV32ERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46384) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %14 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 12 uses
  %15 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %16 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 12 uses
  %17 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %18 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 12 uses
  %19 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %20 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %21 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %22 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 12 uses
  %23 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %24 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 12 uses
  %25 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %26 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %27 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %28 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 6 uses
  %29 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %30 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %31 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %32 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %33 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %34 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %35 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %36 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %37 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %38 = alloca [2 x %"class.llvm::DstOp"], align 8 ; 7 uses
  %39 = alloca [2 x %"class.llvm::DstOp"], align 8 ; 7 uses
  %40 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %41 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo22legalizeFastUnsafeFDIVERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !427  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !82
  store i32 %i.e, ptr %36, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !82   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !317
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !426
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %.sroa.0.0.copyload.i = load i40, ptr %i.n, align 8 ; 4 uses
  %.sroa.5300.0.extract.shift = lshr i40 %.sroa.0.0.copyload.i, 8
  %.sroa.5300.0.extract.trunc = trunc i40 %.sroa.5300.0.extract.shift to i8 ; 2 uses
  %.sroa.7306.0.extract.shift = lshr i40 %.sroa.0.0.copyload.i, 16
  %.sroa.7306.0.extract.trunc = trunc i40 %.sroa.7306.0.extract.shift to i8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !475  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  store i64 3458764522412572672, ptr %37, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i32 0, ptr %i.q, align 8, !tbaa !442
  %i.r = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildFConstantERKNS_5DstOpEd(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(20) %37, double noundef 1.000000e+00) #24 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  store i64 3458764522412572672, ptr %38, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw i8, ptr %38, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !442
  %i.v = getelementptr inbounds nuw i8, ptr %38, i64 24
  store i64 1152921504875282432, ptr %i.v, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %38, i64 40
  store i32 0, ptr %i.w, align 8, !tbaa !442
  %i.x = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildIntrinsicEjNS_8ArrayRefINS_5DstOpEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 2439, ptr nonnull %38, i64 2) #24 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.x, 0        ; 4 uses
  %i.z = extractvalue { ptr, ptr } %i.x, 1        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !477, !alias.scope !1298
  %i.ab = getelementptr inbounds nuw i8, ptr %35, i64 4
  store i32 %i.g, ptr %i.ab, align 4, !tbaa !82, !alias.scope !1298
  %i.ac = getelementptr inbounds nuw i8, ptr %35, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false), !alias.scope !1298
  store i32 0, ptr %35, align 8, !alias.scope !1298
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(1065) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %35) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !477, !alias.scope !1299
  %i.ae = getelementptr inbounds nuw i8, ptr %34, i64 4
  store i32 %i.i, ptr %i.ae, align 4, !tbaa !82, !alias.scope !1299
  %i.af = getelementptr inbounds nuw i8, ptr %34, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !alias.scope !1299
  store i32 0, ptr %34, align 8, !alias.scope !1299
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(1065) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store i32 1, ptr %33, align 8, !alias.scope !1300
  %i.ag = getelementptr inbounds nuw i8, ptr %33, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(1065) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.ah = and i32 %i.p, 65535
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 44 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !475
  %i.ak = and i32 %i.aj, 12
  %i.al = and i32 %i.p, 65523                     ; 5 uses
  %i.am = or disjoint i32 %i.ak, %i.al
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !475
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  store i64 3458764522412572672, ptr %39, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !442
  %i.ao = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 1152921504875282432, ptr %i.ao, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %39, i64 40
  store i32 0, ptr %i.ap, align 8, !tbaa !442
  %i.aq = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildIntrinsicEjNS_8ArrayRefINS_5DstOpEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 2439, ptr nonnull %39, i64 2) #24 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 6 uses
  %i.as = extractvalue { ptr, ptr } %i.aq, 1      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  %i.at = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !477, !alias.scope !1301
  %i.au = getelementptr inbounds nuw i8, ptr %32, i64 4
  store i32 %i.g, ptr %i.au, align 4, !tbaa !82, !alias.scope !1301
  %i.av = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !alias.scope !1301
  store i32 0, ptr %32, align 8, !alias.scope !1301
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !477, !alias.scope !1302
  %i.ax = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 %i.i, ptr %i.ax, align 4, !tbaa !82, !alias.scope !1302
  %i.ay = getelementptr inbounds nuw i8, ptr %31, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false), !alias.scope !1302
  store i32 0, ptr %31, align 8, !alias.scope !1302
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  store i32 1, ptr %30, align 8, !alias.scope !1303
  %i.az = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !477, !alias.scope !1303
  %i.ba = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 1, ptr %i.ba, align 8, !tbaa !82, !alias.scope !1303
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !475
  %i.bd = and i32 %i.bc, 12
  %i.be = or disjoint i32 %i.bd, %i.al
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !475
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  store i64 3458764522412572672, ptr %40, align 8, !tbaa !82
  %i.bf = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i32 0, ptr %i.bf, align 8, !tbaa !442
  %i.bg = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildIntrinsicEjNS_8ArrayRefINS_5DstOpEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 3457, ptr nonnull %40, i64 1) #24 ; 2 uses
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0      ; 4 uses
  %i.bi = extractvalue { ptr, ptr } %i.bg, 1      ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !427
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !477, !alias.scope !1304
  %i.bo = getelementptr inbounds nuw i8, ptr %29, i64 4
  store i32 %i.bm, ptr %i.bo, align 4, !tbaa !82, !alias.scope !1304
  %i.bp = getelementptr inbounds nuw i8, ptr %29, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !alias.scope !1304
  store i32 0, ptr %29, align 8, !alias.scope !1304
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(1065) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 44 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !475
  %i.bs = and i32 %i.br, 12
  %i.bt = or disjoint i32 %i.bs, %i.al
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !475
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  %.sroa.0231.0.insert.ext = zext nneg i32 %i.ah to i64
  %.sroa.0231.0.insert.insert = or disjoint i64 %.sroa.0231.0.insert.ext, 4294967296 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  store i64 3458764522412572672, ptr %27, align 8
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 0, ptr %.sroa.4239.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  store ptr %i.y, ptr %28, align 8
  %.sroa.0234.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.z, ptr %.sroa.0234.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 1, ptr %.sroa.4235.0..sroa_idx, align 8, !tbaa !474
  %i.bu = load ptr, ptr %3, align 8, !tbaa !59
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call { ptr, ptr } %i.bw(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 211, ptr nonnull %27, i64 1, ptr nonnull %28, i64 1, i64 %.sroa.0231.0.insert.insert) #24, !inline_history !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.by = extractvalue { ptr, ptr } %i.bx, 0      ; 3 uses
  %i.bz = extractvalue { ptr, ptr } %i.bx, 1      ; 3 uses
  %42 = icmp eq i8 %.sroa.5300.0.extract.trunc, 0
  %43 = icmp eq i8 %.sroa.7306.0.extract.trunc, 0
  %44 = select i1 %42, i1 %43, i1 false           ; 2 uses
  %45 = icmp eq i8 %.sroa.7306.0.extract.trunc, 3
  %i.ca = icmp eq i8 %.sroa.5300.0.extract.trunc, 3
  %46 = select i1 %45, i1 true, i1 %i.ca          ; 2 uses
  br i1 %44, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %46, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cb = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1408), ptr nonnull @.str.36, i64 0) #24 ; 2 uses
  %i.cc = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 5151) #24 ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1
  %i.cf = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr %i.cd, ptr %i.ce) #24 ; 2 uses
  %i.cg = extractvalue { ptr, ptr } %i.cf, 0      ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cf, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr null, ptr %i.ci, align 8, !tbaa !477, !alias.scope !1305
  %i.cj = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 %i.cb, ptr %i.cj, align 4, !tbaa !82, !alias.scope !1305
  %i.ck = getelementptr inbounds nuw i8, ptr %26, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !alias.scope !1305
  store i32 16777216, ptr %26, align 8, !alias.scope !1305
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(1065) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  store i32 1, ptr %25, align 8, !alias.scope !1306
  %i.cl = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr null, ptr %i.cl, align 8, !tbaa !477, !alias.scope !1306
  %i.cm = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 2305, ptr %i.cm, align 8, !tbaa !82, !alias.scope !1306
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(1065) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0229.0 = phi i32 [ %i.cb, %bb.d ], [ 0, %bb.c ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 46376
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !85, !nonnull !68, !align !86
  %i.cp = getelementptr i8, ptr %i.co, i64 496
  %.val94 = load i32, ptr %i.cp, align 8
  call fastcc void @_ZL18toggleSPDenormModebRN4llvm16MachineIRBuilderERKNS_12GCNSubtargetENS_22SIModeRegisterDefaultsE(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(96) %3, i32 %.val94, i40 %.sroa.0.0.copyload.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.0229.1 = phi i32 [ 0, %bb.b ], [ %.sroa.0229.0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  store i64 3458764522412572672, ptr %23, align 8
  %.sroa.4219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %.sroa.4219.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  store ptr %i.by, ptr %24, align 8
  %.sroa.0214.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.bz, ptr %.sroa.0214.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 1, ptr %.sroa.4215.0..sroa_idx, align 8, !tbaa !474
  %i.cq = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %i.bh, ptr %i.cq, align 8
  %.sroa.0211.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %i.bi, ptr %.sroa.0211.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i32 1, ptr %.sroa.4212.0..sroa_idx, align 8, !tbaa !474
  %i.cr = getelementptr inbounds nuw i8, ptr %24, i64 48
  store ptr %i.s, ptr %i.cr, align 8
  %.sroa.0208.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 56
  store ptr %i.t, ptr %.sroa.0208.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 64
  store i32 1, ptr %.sroa.4209.0..sroa_idx, align 8, !tbaa !474
  %i.cs = load ptr, ptr %3, align 8, !tbaa !59
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call { ptr, ptr } %i.cu(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 196, ptr nonnull %23, i64 1, ptr nonnull %24, i64 3, i64 %.sroa.0231.0.insert.insert) #24, !inline_history !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.cw = extractvalue { ptr, ptr } %i.cv, 0
  %i.cx = extractvalue { ptr, ptr } %i.cv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  store i64 3458764522412572672, ptr %21, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %.sroa.4199.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  store ptr %i.cw, ptr %22, align 8
  %.sroa.0194.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.cx, ptr %.sroa.0194.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 1, ptr %.sroa.4195.0..sroa_idx, align 8, !tbaa !474
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %i.bh, ptr %i.cy, align 8
  %.sroa.0191.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.bi, ptr %.sroa.0191.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i32 1, ptr %.sroa.4192.0..sroa_idx, align 8, !tbaa !474
  %i.cz = getelementptr inbounds nuw i8, ptr %22, i64 48
  store ptr %i.bh, ptr %i.cz, align 8
  %.sroa.0188.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 56
  store ptr %i.bi, ptr %.sroa.0188.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 64
  store i32 1, ptr %.sroa.4189.0..sroa_idx, align 8, !tbaa !474
  %i.da = load ptr, ptr %3, align 8, !tbaa !59
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call { ptr, ptr } %i.dc(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 196, ptr nonnull %21, i64 1, ptr nonnull %22, i64 3, i64 %.sroa.0231.0.insert.insert) #24, !inline_history !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.de = extractvalue { ptr, ptr } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { ptr, ptr } %i.dd, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  store i64 3458764522412572672, ptr %19, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %.sroa.4179.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  store ptr %i.ar, ptr %20, align 8
  %.sroa.0174.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.as, ptr %.sroa.0174.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 1, ptr %.sroa.4175.0..sroa_idx, align 8, !tbaa !474
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.de, ptr %i.dg, align 8
  %.sroa.0171.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.df, ptr %.sroa.0171.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i32 1, ptr %.sroa.4172.0..sroa_idx, align 8, !tbaa !474
  %i.dh = load ptr, ptr %3, align 8, !tbaa !59
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call { ptr, ptr } %i.dj(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 195, ptr nonnull %19, i64 1, ptr nonnull %20, i64 2, i64 %.sroa.0231.0.insert.insert) #24, !inline_history !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.dl = extractvalue { ptr, ptr } %i.dk, 0      ; 2 uses
  %i.dm = extractvalue { ptr, ptr } %i.dk, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  store i64 3458764522412572672, ptr %17, align 8
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %.sroa.4164.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store ptr %i.by, ptr %18, align 8
  %.sroa.0159.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.bz, ptr %.sroa.0159.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 1, ptr %.sroa.4160.0..sroa_idx, align 8, !tbaa !474
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %i.dl, ptr %i.dn, align 8
  %.sroa.0156.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %i.dm, ptr %.sroa.0156.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i32 1, ptr %.sroa.4157.0..sroa_idx, align 8, !tbaa !474
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr %i.ar, ptr %i.do, align 8
  %.sroa.0153.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 56
  store ptr %i.as, ptr %.sroa.0153.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i32 1, ptr %.sroa.4154.0..sroa_idx, align 8, !tbaa !474
  %i.dp = load ptr, ptr %3, align 8, !tbaa !59
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call { ptr, ptr } %i.dr(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 196, ptr nonnull %17, i64 1, ptr nonnull %18, i64 3, i64 %.sroa.0231.0.insert.insert) #24, !inline_history !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.dt = extractvalue { ptr, ptr } %i.ds, 0
  %i.du = extractvalue { ptr, ptr } %i.ds, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store i64 3458764522412572672, ptr %15, align 8
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %.sroa.4146.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store ptr %i.dt, ptr %16, align 8
  %.sroa.0141.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.du, ptr %.sroa.0141.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 1, ptr %.sroa.4142.0..sroa_idx, align 8, !tbaa !474
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.de, ptr %i.dv, align 8
  %.sroa.0138.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.df, ptr %.sroa.0138.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 1, ptr %.sroa.4139.0..sroa_idx, align 8, !tbaa !474
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %i.dl, ptr %i.dw, align 8
  %.sroa.0135.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %i.dm, ptr %.sroa.0135.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 1, ptr %.sroa.4136.0..sroa_idx, align 8, !tbaa !474
  %i.dx = load ptr, ptr %3, align 8, !tbaa !59
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call { ptr, ptr } %i.dz(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 196, ptr nonnull %15, i64 1, ptr nonnull %16, i64 3, i64 %.sroa.0231.0.insert.insert) #24, !inline_history !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.eb = extractvalue { ptr, ptr } %i.ea, 0
  %i.ec = extractvalue { ptr, ptr } %i.ea, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store i64 3458764522412572672, ptr %13, align 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %.sroa.4128.0..sroa_idx, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store ptr %i.by, ptr %14, align 8
  %.sroa.0123.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bz, ptr %.sroa.0123.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 1, ptr %.sroa.4124.0..sroa_idx, align 8, !tbaa !474
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.eb, ptr %i.ed, align 8
  %.sroa.0120.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.ec, ptr %.sroa.0120.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 1, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !474
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.ar, ptr %i.ee, align 8
  %.sroa.0118.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %i.as, ptr %.sroa.0118.sroa.4.0..sroa_idx, align 8, !tbaa !82
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !474
  %i.ef = load ptr, ptr %3, align 8, !tbaa !59
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call { ptr, ptr } %i.eh(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 196, ptr nonnull %13, i64 1, ptr nonnull %14, i64 3, i64 %.sroa.0231.0.insert.insert) #24, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ej = extractvalue { ptr, ptr } %i.ei, 1
  br i1 %44, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %46, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ek = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 5343) #24 ; 2 uses
  %i.el = extractvalue { ptr, ptr } %i.ek, 0
  %i.em = extractvalue { ptr, ptr } %i.ek, 1
  %i.en = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr %i.el, ptr %i.em) #24 ; 2 uses
  %i.eo = extractvalue { ptr, ptr } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.en, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.eq, align 8, !tbaa !477, !alias.scope !1307
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %.sroa.0229.1, ptr %i.er, align 4, !tbaa !82, !alias.scope !1307
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, i8 0, i64 16, i1 false), !alias.scope !1307
  store i32 0, ptr %12, align 8, !alias.scope !1307
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ep, ptr noundef nonnull align 8 dereferenceable(1065) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i32 1, ptr %11, align 8, !alias.scope !1308
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.et, align 8, !tbaa !477, !alias.scope !1308
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 2305, ptr %i.eu, align 8, !tbaa !82, !alias.scope !1308
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ep, ptr noundef nonnull align 8 dereferenceable(1065) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 46376
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !85, !nonnull !68, !align !86
  %i.ex = getelementptr i8, ptr %i.ew, i64 496
  %.val = load i32, ptr %i.ex, align 8
  call fastcc void @_ZL18toggleSPDenormModebRN4llvm16MachineIRBuilderERKNS_12GCNSubtargetENS_22SIModeRegisterDefaultsE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(96) %3, i32 %.val, i40 %.sroa.0.0.copyload.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  store i64 3458764522412572672, ptr %41, align 8, !tbaa !82
  %i.ey = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i32 0, ptr %i.ey, align 8, !tbaa !442
  %i.ez = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildIntrinsicEjNS_8ArrayRefINS_5DstOpEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 2438, ptr nonnull %41, i64 1) #24 ; 2 uses
  %i.fa = extractvalue { ptr, ptr } %i.ez, 0      ; 4 uses
  %i.fb = extractvalue { ptr, ptr } %i.ez, 1      ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !427
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.fg, align 8, !tbaa !477, !alias.scope !1309
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.ff, ptr %i.fh, align 4, !tbaa !82, !alias.scope !1309
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false), !alias.scope !1309
  store i32 0, ptr %10, align 8, !alias.scope !1309
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef nonnull align 8 dereferenceable(1065) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !427
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.fn, align 8, !tbaa !477, !alias.scope !1310
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !82, !alias.scope !1310
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false), !alias.scope !1310
  store i32 0, ptr %9, align 8, !alias.scope !1310
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef nonnull align 8 dereferenceable(1065) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !427
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.fu, align 8, !tbaa !477, !alias.scope !1311
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.ft, ptr %i.fv, align 4, !tbaa !82, !alias.scope !1311
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false), !alias.scope !1311
  store i32 0, ptr %8, align 8, !alias.scope !1311
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef nonnull align 8 dereferenceable(1065) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !427
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 36
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.gb, align 8, !tbaa !477, !alias.scope !1312
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !82, !alias.scope !1312
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false), !alias.scope !1312
  store i32 0, ptr %7, align 8, !alias.scope !1312
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef nonnull align 8 dereferenceable(1065) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fb, i64 44 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !475
  %i.gg = and i32 %i.gf, 12
  %i.gh = or disjoint i32 %i.gg, %i.al
  store i32 %i.gh, ptr %i.ge, align 4, !tbaa !475
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  %i.gi = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildIntrinsicEjNS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 2437, ptr nonnull %36, i64 1) #24 ; 2 uses
  %i.gj = extractvalue { ptr, ptr } %i.gi, 0      ; 3 uses
  %i.gk = extractvalue { ptr, ptr } %i.gi, 1      ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !427
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.gp, align 8, !tbaa !477, !alias.scope !1313
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.go, ptr %i.gq, align 4, !tbaa !82, !alias.scope !1313
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 0, i64 16, i1 false), !alias.scope !1313
  store i32 0, ptr %6, align 8, !alias.scope !1313
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gk, ptr noundef nonnull align 8 dereferenceable(1065) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.gs, align 8, !tbaa !477, !alias.scope !1314
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.i, ptr %i.gt, align 4, !tbaa !82, !alias.scope !1314
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false), !alias.scope !1314
  store i32 0, ptr %5, align 8, !alias.scope !1314
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gk, ptr noundef nonnull align 8 dereferenceable(1065) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.gv, align 8, !tbaa !477, !alias.scope !1315
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.g, ptr %i.gw, align 4, !tbaa !82, !alias.scope !1315
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i8 0, i64 16, i1 false), !alias.scope !1315
  store i32 0, ptr %4, align 8, !alias.scope !1315
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gk, ptr noundef nonnull align 8 dereferenceable(1065) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 44 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !475
  %i.ha = and i32 %i.gz, 12
  %i.hb = or disjoint i32 %i.ha, %i.al
  store i32 %i.hb, ptr %i.gy, align 4, !tbaa !475
  %i.hc = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19AMDGPULegalizerInfo14legalizeFDIV64ERNS_12MachineInstrERNS_19MachineRegisterInfoERNS_16MachineIRBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46384) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(520) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %12 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %13 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %14 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 6 uses
  %15 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %16 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 6 uses
  %17 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %18 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %19 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %20 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %21 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %22 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 11 uses
  %23 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %24 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %25 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %26 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 12 uses
  %27 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %28 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %29 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %30 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %31 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 12 uses
  %32 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %33 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 12 uses
  %34 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %35 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 12 uses
  %36 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %37 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %38 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %39 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %40 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %41 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %42 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %43 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %44 = alloca [2 x %"class.llvm::DstOp"], align 8 ; 7 uses
end_hunk_1
