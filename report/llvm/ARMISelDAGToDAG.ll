Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelDAGToDAG?download=true
inline.NumInlined: 5550
inline.NumDeleted: 1231
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm6ARM_AM10getFP16ImmERKNS_5APIntE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel20SelectT2AddrModeImm8EN4llvm7SDValueERS2_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !334
  %.off = add i32 %i.b, -59
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !332
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.d, ptr nonnull %1, i32 %2) #24
  br i1 %i.e, label %bb.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !345  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !349  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !334
  switch i32 %i.k, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.c, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !356  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !359  ; 3 uses
  %i.q = icmp ult i32 %i.p, 65
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.r = load i64, ptr %i.n, align 8, !tbaa !361
  %i.s = icmp eq i32 %i.p, 0
  %i.t = sub nuw nsw i32 64, %i.p
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = shl i64 %i.r, %i.u
  %i.w = ashr exact i64 %i.v, %i.u
  %.0.i.i.i.i = select i1 %i.s, i64 0, i64 %i.w
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !361
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.d, %bb.e
  %.0.i.i.i37 = phi i64 [ %.0.i.i.i.i, %bb.d ], [ %i.y, %bb.e ]
  %i.z = trunc i64 %.0.i.i.i37 to i32             ; 2 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !334
  %i.ab = icmp eq i32 %i.aa, 60
  %i.ac = sub nsw i32 0, %i.z
  %spec.select = select i1 %i.ab, i32 %i.ac, i32 %i.z ; 2 uses
  %or.cond = icmp ult i32 %spec.select, -255
  br i1 %or.cond, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa.struct !375
  %i.ad = load ptr, ptr %3, align 8, !tbaa !349   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !334
  %i.ag = icmp eq i32 %i.af, 16
  br i1 %i.ag, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !451
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !332 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !445 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !446
  %i.ap = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ao) #24
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i16 %i.as(ptr noundef nonnull align 8 dereferenceable(518435) %i.am, ptr noundef nonnull align 8 dereferenceable(912) %i.ap, i32 noundef 0) #24
  %i.au = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, i32 noundef %i.ai, i16 %i.at, ptr null, i1 noundef zeroext true) #24 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.au, 1
  store ptr %.fca.0.extract6, ptr %3, align 8, !tbaa !346
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !348
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !332
  %i.ax = sext i32 %spec.select to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !371
  store i64 %i.az, ptr %5, align 8, !tbaa !371
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !372
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !373
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aw, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bd, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bd, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !346
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread: ; preds = %bb.c, %.critedge, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ true, %.critedge ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115ARMDAGToDAGISel17IsAddressingMode5EN4llvm7SDValueERS2_S3_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, i1 noundef zeroext %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %1, i32 %2) #24
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %3, align 8, !tbaa !346
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %2, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !348
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !334
  switch i32 %i.e, label %bb.f [
    i32 16, label %bb.c
    i32 704, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !451
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !332  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !445  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !446
  %i.m = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.l) #24
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i16 %i.p(ptr noundef nonnull align 8 dereferenceable(518435) %i.j, ptr noundef nonnull align 8 dereferenceable(912) %i.m, i32 noundef 0) #24
  %i.r = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef %i.g, i16 %i.q, ptr null, i1 noundef zeroext true) #24 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.r, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.r, 1
  store ptr %.fca.0.extract58, ptr %3, align 8, !tbaa !346
  store i32 %.fca.1.extract59, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !348
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !345  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !349
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !334
  switch i32 %i.w, label %bb.e [
    i32 39, label %bb.f
    i32 44, label %bb.f
    i32 40, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.t, i64 12, i1 false), !tbaa.struct !375
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.b, %bb.e, %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !332
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !371
  store i64 %i.z, ptr %6, align 8, !tbaa !371
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !372
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !373
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.x, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.ad, 1
  store ptr %.fca.0.extract48, ptr %4, align 8, !tbaa !346
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract49, ptr %.sroa.456.0..sroa_idx, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !345 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.044.0.copyload = load ptr, ptr %i.ag, align 8, !tbaa !346 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.044.0.copyload, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !334
  switch i32 %i.ai, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.g, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.044.0.copyload, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !356 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !359
  %i.ao = icmp ult i32 %i.an, 65
  %i.ap = load ptr, ptr %i.al, align 8
  %spec.select.i.i.i.i = select i1 %i.ao, ptr %i.al, ptr %i.ap
  %.0.i.i.i15.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !361
  %i.aq = trunc i64 %.0.i.i.i15.i to i32          ; 4 uses
  %11 = srem i32 %i.aq, 2
  %12 = sdiv i32 %i.aq, 2
  %13 = srem i32 %i.aq, 4
  %14 = sdiv i32 %i.aq, 4
  %15 = select i1 %5, i32 %11, i32 %13
  %.not13.i = icmp eq i32 %15, 0
  br i1 %.not13.i, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %16 = select i1 %5, i32 %12, i32 %14            ; 3 uses
  %i.ar = add nsw i32 %16, 255
  %spec.select.i = icmp ult i32 %i.ar, 511
  br i1 %spec.select.i, label %bb.h, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

bb.h:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !375
  %i.as = load ptr, ptr %3, align 8, !tbaa !349   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !334
  %i.av = icmp eq i32 %i.au, 16
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !451
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !332 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !445 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !446
  %i.bd = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.bc) #24
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i16 %i.bg(ptr noundef nonnull align 8 dereferenceable(518435) %i.ba, ptr noundef nonnull align 8 dereferenceable(912) %i.bd, i32 noundef 0) #24
  %i.bi = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.ay, i32 noundef %i.ax, i16 %i.bh, ptr null, i1 noundef zeroext true) #24 ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i32 } %i.bi, 0
  %.fca.1.extract36 = extractvalue { ptr, i32 } %i.bi, 1
  store ptr %.fca.0.extract35, ptr %3, align 8, !tbaa !346
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract36, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !348
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %spec.select = tail call i32 @llvm.abs.i32(i32 %16, i1 true)
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !332 ; 2 uses
  %i.bk = lshr i32 %16, 23
  %i.bl = and i32 %i.bk, 256
  %i.bm = or disjoint i32 %i.bl, %spec.select
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !371
  store i64 %i.bq, ptr %7, align 8, !tbaa !371
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !372
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !373
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bj, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.bt, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.bt, 1
  store ptr %.fca.0.extract24, ptr %4, align 8, !tbaa !346
  store i32 %.fca.1.extract25, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !371
  store i64 %i.bu, ptr %8, align 8, !tbaa !371
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bw = load i32, ptr %i.bp, align 4, !tbaa !372
  store i32 %i.bw, ptr %i.bv, align 8, !tbaa !373
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bj, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.bx, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.bx, 1
  store ptr %.fca.0.extract14, ptr %4, align 8, !tbaa !346
  store i32 %.fca.1.extract15, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.o

_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread: ; preds = %bb.g, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit
  store ptr %1, ptr %3, align 8, !tbaa !346
  %.sroa.17.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.17.0..sroa_idx113, align 8, !tbaa !348
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !332 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !371
  store i64 %i.cb, ptr %9, align 8, !tbaa !371
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !372
  store i32 %i.cd, ptr %i.cc, align 8, !tbaa !373
  %i.ce = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.by, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.ce, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.ce, 1
  store ptr %.fca.0.extract4, ptr %4, align 8, !tbaa !346
  store i32 %.fca.1.extract5, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.o

bb.n:                                             ; preds = %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cf = load i64, ptr %i.bz, align 8, !tbaa !371
  store i64 %i.cf, ptr %10, align 8, !tbaa !371
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ch = load i32, ptr %i.ca, align 4, !tbaa !372
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !373
  %i.ci = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.by, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ci, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !346
  store i32 %.fca.1.extract, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.n, %bb.m, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel24SelectThumbAddrModeImm5SEN4llvm7SDValueEjRS2_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, i32 noundef range(i32 1, 5) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !334
  %.not.i = icmp eq i32 %i.b, 59
  br i1 %.not.i, label %bb.b, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !345
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !349  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !334
  switch i32 %i.h, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread [
    i32 37, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !356  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !359  ; 3 uses
  %i.n = icmp ult i32 %i.m, 65
  br i1 %i.n, label %bb.d, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.k, align 8, !tbaa !361
  %i.p = icmp ne i32 %i.m, 0
  %i.q = sub nuw nsw i32 64, %i.m
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = shl i64 %i.o, %i.r                       ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  %or.cond.i = select i1 %i.p, i1 %i.t, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i: ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !361
  %i.v = load i64, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = ashr exact i64 %i.s, %i.r
  br label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit

_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i, %bb.e
  %.0.i.i.i8.i = phi i64 [ %i.x, %bb.e ], [ %i.v, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i ]
  %i.y = icmp samesign ugt i64 %.0.i.i.i8.i, -256
  br i1 %i.y, label %bb.f, label %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread

bb.f:                                             ; preds = %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit
  store ptr %1, ptr %4, align 8, !tbaa !346
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !348
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !332
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !371
  store i64 %i.ac, ptr %6, align 8, !tbaa !371
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !372
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !373
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aa, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.ag, 1
  store ptr %.fca.0.extract20, ptr %5, align 8, !tbaa !346
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract21, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread

_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread: ; preds = %bb.b, %bb.d, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread18.i, %bb.a, %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !332
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ai, ptr nonnull %1, i32 %2) #24
  br i1 %i.aj, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZL23shouldUseZeroOffsetLdStN4llvm7SDValueE.exit.thread
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !334
  switch i32 %i.ak, label %bb.j [
    i32 59, label %_ZL23isScaledConstantInRangeN4llvm7SDValueEiiiRi.exit.thread
    i32 704, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !345 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !349
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !334
  switch i32 %i.ap, label %bb.i [
    i32 39, label %bb.j
    i32 44, label %bb.j
    i32 43, label %bb.j
    i32 40, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false), !tbaa.struct !375
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.g
  store ptr %1, ptr %4, align 8, !tbaa !346
  %.sroa.16.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.16.0..sroa_idx58, align 8, !tbaa !348
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !332
end_hunk_0
