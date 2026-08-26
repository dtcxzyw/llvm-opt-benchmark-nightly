Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZL23performANDORCSELCombinePN4llvm6SDNodeERNS_12SelectionDAGE:bb.a
  br i1 %.not182, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.de = call noundef zeroext i1 @_ZNK4llvm5APInt3sgtEl(ptr noundef nonnull align 8 dereferenceable(12) %i.cq, i64 noundef -32)
  br i1 %i.de, label %bb.r, label %._ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread_crit_edge

._ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread_crit_edge: ; preds = %bb.q
  %.pre185 = load ptr, ptr %i.ci, align 8, !tbaa !378
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.df = load ptr, ptr %i.co, align 8, !tbaa !380
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  call void @_ZNK4llvm5APInt3absEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !361 ; 2 uses
  %.sroa.0.0.copyload.i106 = load i16, ptr %i.di, align 8, !tbaa !189
  %.sroa.21.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.21.0.copyload.i108 = load ptr, ptr %.sroa.21.0..sroa_idx.i107, align 8, !tbaa !374
  %i.dj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i106, ptr %.sroa.21.0.copyload.i108, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.dj, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.dj, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !375
  %i.dm = icmp ugt i32 %i.dl, 64
  br i1 %i.dm, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.dn = load ptr, ptr %6, align 8, !tbaa !299   ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZN4llvm5APIntD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #38
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.dp = load ptr, ptr %i.ci, align 8, !tbaa !378
  store ptr %.fca.0.extract22, ptr %7, align 8, !tbaa !391
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !310
  store ptr %.fca.0.extract35, ptr %8, align 8, !tbaa !391
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract36, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !310
  store ptr %.sroa.0115.0, ptr %9, align 8, !tbaa !391
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !310
  store ptr %.sroa.0139.0.ph, ptr %10, align 8, !tbaa !391
  %.sroa.9144.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.9144.0.ph, ptr %.sroa.9144.0..sroa_idx145, align 8, !tbaa !310
  %.sroa.10151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.10151.0.copyload, ptr %.sroa.10151.0..sroa_idx152, align 4
  %i.dq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 567, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #35
  br label %bb.u

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread: ; preds = %._ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread_crit_edge, %bb.p, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.dr = phi ptr [ %.pre185, %._ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread_crit_edge ], [ %i.cj, %bb.p ], [ %i.cj, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store ptr %.fca.0.extract35, ptr %11, align 8, !tbaa !391
  %.sroa.541.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract36, ptr %.sroa.541.0..sroa_idx42, align 8, !tbaa !310
  store ptr %.sroa.0115.0, ptr %12, align 8, !tbaa !391
  %.sroa.7.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx117, align 8, !tbaa !310
  store ptr %.sroa.0139.0.ph, ptr %13, align 8, !tbaa !391
  %.sroa.9144.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.9144.0.ph, ptr %.sroa.9144.0..sroa_idx147, align 8, !tbaa !310
  %.sroa.10151.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %.sroa.10151.0.copyload, ptr %.sroa.10151.0..sroa_idx154, align 4
  %i.dt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 568, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dr, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ds, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #35
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread, %_ZN4llvm5APIntD2Ev.exit
  %.pn183 = phi { ptr, i32 } [ %i.dt, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread ], [ %i.dq, %_ZN4llvm5APIntD2Ev.exit ] ; 2 uses
  %.sroa.0121.0 = extractvalue { ptr, i32 } %.pn183, 0
  %.sroa.6.0 = extractvalue { ptr, i32 } %.pn183, 1
  %i.du = load ptr, ptr %i.t, align 8, !tbaa !378 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !tbaa.struct !390
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !390
  %i.dw = zext i32 %.0177.ph to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.dx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.dx, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.dx, 1
  store ptr %.fca.0.extract1, ptr %16, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  store ptr %.sroa.0121.0, ptr %17, align 8, !tbaa !391
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !310
  %i.dy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 575, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #35 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.dy, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.dy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %bb.l, %bb.j, %bb.i, %bb.d, %bb.c, %bb.u, %_ZNK4llvm6SDNode9hasOneUseEv.exit105, %_ZNK4llvm6SDNode9hasOneUseEv.exit102, %bb.e, %bb.f, %bb.g, %bb.h, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %_ZNK4llvm6SDNode9hasOneUseEv.exit97, %bb.a, %bb.b
  %.sroa.12.1 = phi i32 [ 0, %bb.e ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.j ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit97 ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ %.fca.1.extract, %bb.u ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit102 ], [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit105 ], [ 0, %bb.l ]
  %.sroa.0174.1 = phi ptr [ null, %bb.e ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.j ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit97 ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ %.fca.0.extract, %bb.u ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit102 ], [ null, %bb.i ], [ null, %bb.d ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit105 ], [ null, %bb.l ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0174.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.12.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm14TargetLowering15DAGCombinerInfo9CombineToEPNS_6SDNodeENS_7SDValueES4_b(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr, i32, ptr, i32, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm12SelectionDAG15getNodeIfExistsEjNS_8SDVTListENS_8ArrayRefINS_7SDValueEEEb(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr, i32, ptr, i64, i1 noundef zeroext) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm14TargetLowering15DAGCombinerInfo9CombineToEPNS_6SDNodeENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr, i32, i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS0_15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm3ISD20isBuildVectorAllOnesEPKNS_6SDNodeE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL22performMulRdsvlCombinePN4llvm6SDNodeERNS_12SelectionDAGE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !385
  store i64 %i.b, ptr %2, align 8, !tbaa !385
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !386
  store i32 %i.e, ptr %i.c, align 8, !tbaa !387
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !361  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !189
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !374
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !378  ; 2 uses
  %.sroa.060.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !391 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !380  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !375  ; 3 uses
  %i.q = icmp ult i32 %i.p, 65
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.n, align 8, !tbaa !299
  %i.s = icmp eq i32 %i.p, 0
  %i.t = sub nuw nsw i32 64, %i.p
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = shl i64 %i.r, %i.u
  %i.w = ashr exact i64 %i.v, %i.u
  %.0.i.i.i.i = select i1 %i.s, i64 0, i64 %i.w
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !299
  %i.y = load i64, ptr %i.x, align 8, !tbaa !504
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi i64 [ %.0.i.i.i.i, %bb.b ], [ %i.y, %bb.c ]
  %i.z = trunc i64 %.0.i.i.i to i32               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.060.0.copyload, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !377
  %.not = icmp eq i32 %i.ab, 200
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.060.0.copyload, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !378 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !379
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !377
  %.not47 = icmp eq i32 %i.ag, 740
  br i1 %.not47, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !379
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !380 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !375
  %i.ap = icmp ult i32 %i.ao, 65
  %i.aq = load ptr, ptr %i.am, align 8
  %spec.select.i.i.i = select i1 %i.ap, ptr %i.am, ptr %i.aq
  %.0.i.i.i48 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !299
  %i.ar = trunc i64 %.0.i.i.i48 to i32            ; 3 uses
  %i.as = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 false)
  %i.at = sub i32 %i.as, %i.ar                    ; 3 uses
  %i.au = icmp slt i32 %i.z, 0                    ; 2 uses
  %i.av = select i1 %i.au, i32 32, i32 31         ; 2 uses
  %i.aw = add nsw i32 %i.ah, -1
  %6 = add i32 %i.aw, %i.av
  %i.ax = udiv i32 %6, %i.av
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ay, i1 false)
  %i.ba = add i32 %i.az, %i.ar
  %i.bb = sub i32 32, %i.ba                       ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, %i.at
  br i1 %i.bc, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.bd) ; 3 uses
  %i.be = add i32 %.sroa.speculated, %i.ar
  %i.bf = lshr i32 %i.ah, %i.be                   ; 2 uses
  %i.bg = sub nsw i32 0, %i.bf
  %i.bh = select i1 %i.au, i32 %i.bg, i32 %i.bf
  %i.bi = sext i32 %i.bh to i64
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.bj, 1
  store ptr %.fca.0.extract12, ptr %3, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract13, ptr %.sroa.215.0..sroa_idx, align 8
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 740, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #35 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.bk, 0 ; 2 uses
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.bk, 1 ; 2 uses
  %i.bl = icmp eq i32 %.sroa.speculated, 0
  br i1 %i.bl, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = icmp slt i32 %i.at, 0
  %i.bn = select i1 %i.bm, i32 200, i32 198
  store ptr %.fca.0.extract8, ptr %4, align 8, !tbaa !391
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.5.0..sroa_idx18, align 8, !tbaa !310
  %i.bo = call i32 @llvm.abs.i32(i32 %.sroa.speculated, i1 true)
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.bq, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.bq, 1
  store ptr %.fca.0.extract1, ptr %5, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, i32 4) #35 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.br, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.d
  %.sroa.7.1 = phi i32 [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ 0, %bb.d ], [ %.fca.1.extract, %bb.g ], [ 0, %bb.e ], [ %.fca.1.extract9, %bb.f ]
  %.sroa.063.1 = phi ptr [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ null, %bb.d ], [ %.fca.0.extract, %bb.g ], [ null, %bb.e ], [ %.fca.0.extract8, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.063.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt3sgeEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !375  ; 5 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.d, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !299
  %i.m = and i64 %i.l, %i.g                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i

_ZNK4llvm5APInt18getSignificantBitsEv.exit.i:     ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  %i.q = add i32 %i.b, 1
  %i.r = sub i32 %i.q, %i.p
  %i.s = icmp ugt i32 %i.r, 64
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i
  %i.t = icmp ne i64 %i.m, 0
  br label %_ZNK4llvm5APInt3sltEl.exit

bb.f:                                             ; preds = %bb.a
  %i.u = load i64, ptr %0, align 8, !tbaa !299
  %i.v = icmp eq i32 %i.b, 0
  %i.w = sub nuw nsw i32 64, %i.b
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = shl i64 %i.u, %i.x
  %i.z = ashr exact i64 %i.y, %i.x
  %.0.i.i.i = select i1 %i.v, i64 0, i64 %i.z
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !504
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit.i

_ZNK4llvm5APInt12getSExtValueEv.exit.i:           ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %.0.i.i.i, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp slt i64 %.0.i.i, %1
  br label %_ZNK4llvm5APInt3sltEl.exit

_ZNK4llvm5APInt3sltEl.exit:                       ; preds = %bb.e, %_ZNK4llvm5APInt12getSExtValueEv.exit.i
  %i.ac = phi i1 [ %i.t, %bb.e ], [ %i.ab, %_ZNK4llvm5APInt12getSExtValueEv.exit.i ]
  %i.ad = xor i1 %i.ac, true
  ret i1 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt3sleEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !375  ; 5 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.d, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !299
  %i.m = and i64 %i.l, %i.g
  %.not.i.i.i = icmp eq i64 %i.m, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i

_ZNK4llvm5APInt18getSignificantBitsEv.exit.i:     ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  %i.q = add i32 %i.b, 1
  %i.r = sub i32 %i.q, %i.p
  %i.s = icmp ugt i32 %i.r, 64
  br i1 %i.s, label %_ZNK4llvm5APInt3sgtEl.exit, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.t = load i64, ptr %0, align 8, !tbaa !299
  %i.u = icmp eq i32 %i.b, 0
  %i.v = sub nuw nsw i32 64, %i.b
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = shl i64 %i.t, %i.w
  %i.y = ashr exact i64 %i.x, %i.w
  %.0.i.i.i = select i1 %i.u, i64 0, i64 %i.y
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit.i

bb.f:                                             ; preds = %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i
  %i.z = load i64, ptr %i.h, align 8, !tbaa !504
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit.i

_ZNK4llvm5APInt12getSExtValueEv.exit.i:           ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %.0.i.i.i, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = icmp sgt i64 %.0.i.i, %1
  br label %_ZNK4llvm5APInt3sgtEl.exit

_ZNK4llvm5APInt3sgtEl.exit:                       ; preds = %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i, %_ZNK4llvm5APInt12getSExtValueEv.exit.i
  %i.ab = phi i1 [ %i.aa, %_ZNK4llvm5APInt12getSExtValueEv.exit.i ], [ %.not.i.i.i, %_ZNK4llvm5APInt18getSignificantBitsEv.exit.i ]
  %i.ac = xor i1 %i.ab, true
  ret i1 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL25isOnlyUsedAsMemoryAddressPN4llvm6SDNodeE(ptr %.56.val) unnamed_addr #7 {
bb.a:
  %.not1314 = icmp eq ptr %.56.val, null
  br i1 %.not1314, label %.thread10, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.sroa.01.015 = phi ptr [ %i.ai, %bb.g ], [ %.56.val, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !918  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !377
  switch i32 %i.d, label %.thread10 [
    i32 316, label %bb.b
    i32 317, label %bb.d
    i32 733, label %bb.f
  ]

end_hunk_0
