inline.NumInlined: 1739
inline.NumDeleted: 636
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes3hbc20BytecodeDisassembler34disassembleExceptionHandlersPrettyEjRKSt13unordered_mapIPKvjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEERN4llvh11raw_ostreamE:bb.a
  br i1 %.not18.i.i.i.i.i32, label %.loopexit.i.i35, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i30
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !190 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = urem i64 %i.dd, %i.cq
  %.not19.i.i.i.i.i33 = icmp eq i64 %i.de, %i.cr
  br i1 %.not19.i.i.i.i.i33, label %bb.t, label %..loopexit_crit_edge21.i.i.i.i.i34, !llvm.loop !195

..loopexit_crit_edge21.i.i.i.i.i34:               ; preds = %bb.u
  br label %.loopexit.i.i35, !llvm.loop !195

.loopexit.i.i35:                                  ; preds = %bb.r, %.lr.ph.i.i.i.i.i30, %.preheader87, %..loopexit_crit_edge21.i.i.i.i.i34
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.144) #21
  unreachable

_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit40: ; preds = %bb.t, %bb.q, %bb.s
  %.sroa.06.1.i.i.i36 = phi ptr [ %.sroa.06.0.i.i.i38, %bb.q ], [ %i.cv, %bb.s ], [ %i.da, %bb.t ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i36, i64 16
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  %i.di = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i26, i64 noundef %i.dh) #18 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !18 ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp ult i64 %i.dp, 12
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit40
  %i.dr = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.di, ptr noundef nonnull @.str.48, i64 noundef 12) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

bb.w:                                             ; preds = %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.dm, ptr noundef nonnull align 1 dereferenceable(12) @.str.48, i64 12, i1 false)
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store ptr %i.dt, ptr %i.dl, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

_ZN4llvh11raw_ostreamlsEPKc.exit43:               ; preds = %bb.v, %bb.w
  %.0.i.i42 = phi ptr [ %i.dr, %bb.v ], [ %i.di, %bb.w ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dv = load i32, ptr %i.du, align 1, !tbaa !180
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dw ; 4 uses
  %i.dy = load i64, ptr %i.z, align 8, !tbaa !182
  %.not.not.i.i.i44 = icmp eq i64 %i.dy, 0
  br i1 %.not.not.i.i.i44, label %.preheader, label %bb.y

.preheader:                                       ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43, %bb.x
  %.sroa.06.0.in.i.i.i53 = phi ptr [ %.sroa.06.0.i.i.i54, %bb.x ], [ %i.ab, %_ZN4llvh11raw_ostreamlsEPKc.exit43 ]
  %.sroa.06.0.i.i.i54 = load ptr, ptr %.sroa.06.0.in.i.i.i53, align 8, !tbaa !189 ; 4 uses
  %.not.i.i.i55 = icmp eq ptr %.sroa.06.0.i.i.i54, null
  br i1 %.not.i.i.i55, label %.loopexit.i.i51, label %bb.x

bb.x:                                             ; preds = %.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i54, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !190
  %i.eb = icmp eq ptr %i.dx, %i.ea
  br i1 %i.eb, label %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit56, label %.preheader, !llvm.loop !191

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %i.ec = ptrtoint ptr %i.dx to i64
  %i.ed = load i64, ptr %i.aa, align 8, !tbaa !192 ; 2 uses
  %i.ee = urem i64 %i.ec, %i.ed                   ; 2 uses
  %i.ef = load ptr, ptr %2, align 8, !tbaa !193
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !194 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i45, label %.loopexit.i.i51, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !189 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !190
  %i.el = icmp eq ptr %i.dx, %i.ek
  br i1 %i.el, label %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit56, label %.lr.ph.i.i.i.i.i46

bb.aa:                                            ; preds = %bb.ab
  %i.em = icmp eq ptr %i.dx, %i.ep
  br i1 %i.em, label %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit56, label %.lr.ph.i.i.i.i.i46, !llvm.loop !195

.lr.ph.i.i.i.i.i46:                               ; preds = %bb.z, %bb.aa
  %.020.i.i.i.i.i47 = phi ptr [ %i.en, %bb.aa ], [ %i.ei, %bb.z ]
  %i.en = load ptr, ptr %.020.i.i.i.i.i47, align 8, !tbaa !189 ; 4 uses
  %.not18.i.i.i.i.i48 = icmp eq ptr %i.en, null
  br i1 %.not18.i.i.i.i.i48, label %.loopexit.i.i51, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i46
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !190 ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = urem i64 %i.eq, %i.ed
  %.not19.i.i.i.i.i49 = icmp eq i64 %i.er, %i.ee
  br i1 %.not19.i.i.i.i.i49, label %bb.aa, label %..loopexit_crit_edge21.i.i.i.i.i50, !llvm.loop !195

..loopexit_crit_edge21.i.i.i.i.i50:               ; preds = %bb.ab
  br label %.loopexit.i.i51, !llvm.loop !195

.loopexit.i.i51:                                  ; preds = %bb.y, %.lr.ph.i.i.i.i.i46, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i50
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.144) #21
  unreachable

_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit56: ; preds = %bb.aa, %bb.x, %bb.z
  %.sroa.06.1.i.i.i52 = phi ptr [ %.sroa.06.0.i.i.i54, %bb.x ], [ %i.ei, %bb.z ], [ %i.en, %bb.aa ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i52, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = zext i32 %i.et to i64
  %i.ev = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i42, i64 noundef %i.eu) #18 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !18 ; 2 uses
  %i.fa = icmp eq ptr %i.ex, %i.ez
  br i1 %i.fa, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit56
  %i.fb = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ev, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit59

bb.ad:                                            ; preds = %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit56
  store i8 10, ptr %i.ez, align 1
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.fd, ptr %i.ey, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit59

_ZN4llvh11raw_ostreamlsEPKc.exit59:               ; preds = %bb.ac, %bb.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !196

_ZN4llvh11raw_ostreamlsEPKc.exit21:               ; preds = %bb.f, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj(ptr noundef nonnull align 8 dereferenceable(28) initializes((24, 28)) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr %i.f(ptr noundef nonnull align 8 dereferenceable(280) %i.c, i32 noundef %1) #18 ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(280) %i.h, i32 noundef %1) #18 ; 3 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c, !prof !171

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.p = load i32, ptr %i.o, align 1, !tbaa !200
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.g, align 1
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = and i32 %i.s, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.p, %bb.b ], [ %i.t, %bb.c ]
  %i.u = zext i32 %.0.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.u
  %i.w = load ptr, ptr %0, align 8, !tbaa !19
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, ptr noundef %i.l) #18
  tail call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.l, ptr noundef %i.v, i1 noundef zeroext true)
  %i.y = load ptr, ptr %0, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(28) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.hermes::inst::InstMetaData", align 8 ; 8 uses
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  br i1 %3, label %.lr.ph33.split, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us"

"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us": ; preds = %.lr.ph33, %._crit_edge.us.a
  %.031.us = phi ptr [ %i.r, %._crit_edge.us.a ], [ %1, %.lr.ph33 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = load i8, ptr %.031.us, align 1, !tbaa !7
  %i.d = tail call { i64, i8 } @_ZN6hermes4inst15getInstMetaDataENS0_6OpCodeE(i8 noundef zeroext %i.c) #18 ; 2 uses
  %.fca.0.extract.us = extractvalue { i64, i8 } %i.d, 0 ; 5 uses
  %.fca.1.extract.us = extractvalue { i64, i8 } %i.d, 1
  store i64 %.fca.0.extract.us, ptr %4, align 8
  store i8 %.fca.1.extract.us, ptr %.sroa.2.0..sroa_idx, align 8
  %i.e = trunc i64 %.fca.0.extract.us to i8       ; 2 uses
  %i.f = lshr i64 %.fca.0.extract.us, 8           ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 255                        ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.e, ptr noundef nonnull %.031.us, i32 noundef %i.h) #18
  %i.l = and i64 %.fca.0.extract.us, 16711680
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge.us.a, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us"
  %i.m = lshr i64 %.fca.0.extract.us, 16
  %wide.trip.count = and i64 %i.m, 255
  %i.n = getelementptr inbounds nuw i8, ptr %.031.us, i64 1
  br label %.lr.ph.us

._crit_edge.us.a:                                 ; preds = %.lr.ph.us, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us"
  %i.o = load ptr, ptr %0, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.e, ptr noundef nonnull %.031.us, i32 noundef %i.h) #18
  %5 = and i64 %i.f, 255
  %i.r = getelementptr inbounds nuw i8, ptr %.031.us, i64 %5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %6 = icmp ult ptr %i.r, %2
  br i1 %6, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us", label %._crit_edge34, !llvm.loop !202

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 3 uses
  %.02829.us = phi ptr [ %i.n, %.lr.ph.us.preheader ], [ %i.v, %.lr.ph.us ] ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %8 = load i8, ptr %7, align 1, !tbaa !203       ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %.031.us, i8 noundef zeroext %8, ptr noundef %.02829.us, i32 noundef %9) #18
  %10 = tail call noundef zeroext i8 @_ZN6hermes4inst14getOperandSizeENS0_11OperandTypeE(i8 noundef zeroext %8) #18
  %11 = zext i8 %10 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.02829.us, i64 %11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.a, label %.lr.ph.us, !llvm.loop !205

.lr.ph33.split:                                   ; preds = %.lr.ph33, %._crit_edge
  %.031 = phi ptr [ %i.bk, %._crit_edge ], [ %1, %.lr.ph33 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.w = load i8, ptr %.031, align 1, !tbaa !7
  %i.x = tail call { i64, i8 } @_ZN6hermes4inst15getInstMetaDataENS0_6OpCodeE(i8 noundef zeroext %i.w) #18 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.x, 0 ; 5 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.x, 1
  store i64 %.fca.0.extract, ptr %4, align 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.y = trunc i64 %.fca.0.extract to i8          ; 3 uses
  %i.z = lshr i64 %.fca.0.extract, 8              ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 255                      ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.y, ptr noundef nonnull %.031, i32 noundef %i.ab) #18
  %i.af = icmp eq i8 %i.y, -123
  %i.ag = lshr i64 %.fca.0.extract, 16
  br i1 %i.af, label %bb.b, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit"

bb.b:                                             ; preds = %.lr.ph33.split
  %i.ah = getelementptr inbounds nuw i8, ptr %.031, i64 10
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !7  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.031, i64 14
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !7
  %i.al = sub i32 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.an = load i32, ptr %i.am, align 1, !tbaa !7
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.031, i64 %i.ao
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = add i64 %i.aq, 3
  %i.as = and i64 %i.ar, -4
  %i.at = inttoptr i64 %i.as to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.015.i = phi i32 [ 0, %bb.b ], [ %i.bd, %bb.c ] ; 3 uses
  %i.au = zext i32 %.015.i to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3  ; 2 uses
  %i.ax = add i32 %.015.i, %i.ai
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.031, i64 %i.ay
  %i.ba = load ptr, ptr %0, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %i.ax, i32 noundef %i.aw, ptr noundef nonnull %i.az) #18, !inline_history !206
  %i.bd = add i32 %.015.i, 1                      ; 2 uses
  %.not.i = icmp ugt i32 %i.bd, %i.al
  br i1 %.not.i, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit", label %bb.c, !llvm.loop !207

"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit": ; preds = %bb.c, %.lr.ph33.split
  %i.be = and i64 %.fca.0.extract, 16711680
  %.not35 = icmp eq i64 %i.be, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit"
  %wide.trip.count41 = and i64 %i.ag, 255
  %i.bf = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit"
  %i.bg = load ptr, ptr %0, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.y, ptr noundef nonnull %.031, i32 noundef %i.ab) #18
  %i.bj = and i64 %i.z, 255
  %i.bk = getelementptr inbounds nuw i8, ptr %.031, i64 %i.bj ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bl = icmp ult ptr %i.bk, %2
  br i1 %i.bl, label %.lr.ph33.split, label %._crit_edge34, !llvm.loop !202

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv38 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next39, %.lr.ph ] ; 3 uses
  %.02829 = phi ptr [ %i.bf, %.lr.ph.preheader ], [ %i.bu, %.lr.ph ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv38
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !203 ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = trunc nuw nsw i64 %indvars.iv38 to i32
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %.031, i8 noundef zeroext %i.bn, ptr noundef %.02829, i32 noundef %i.br) #18
  %i.bs = tail call noundef zeroext i8 @_ZN6hermes4inst14getOperandSizeENS0_11OperandTypeE(i8 noundef zeroext %i.bn) #18
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.02829, i64 %i.bt
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph, !llvm.loop !205

._crit_edge34:                                    ; preds = %._crit_edge.us.a, %._crit_edge, %bb.a
  ret void
}

declare { i64, i8 } @_ZN6hermes4inst15getInstMetaDataENS0_6OpCodeE(i8 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i8 @_ZN6hermes4inst14getOperandSizeENS0_11OperandTypeE(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc20BytecodeDisassembler17fuzzyHashBytecodeEjbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.hermes::hbc::BytecodeHasher", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 17 uses
  %.not.i.i.i = icmp eq ptr %i.c, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 12 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !3
  br label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.k = icmp eq i8 %.pre, 0
  br i1 %i.k, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %.thread, %bb.c
  %i.l = load i32, ptr %i.d, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, 1
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.o = icmp eq i8 %.pre.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br i1 %i.o, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre10 = load i32, ptr %i.d, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread.i
  %i.p = phi i32 [ %.pre10, %._crit_edge ], [ %i.m, %.thread.i ]
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.d, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.u, align 8, !tbaa !197
  br label %_ZN6hermes3hbc14BytecodeHasherC2ESt10shared_ptrINS0_14BCProviderBaseEEbb.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !197
  %i.w = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.d, align 8, !tbaa !209
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !211
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !212
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !212
  br label %_ZN6hermes3hbc14BytecodeHasherC2ESt10shared_ptrINS0_14BCProviderBaseEEbb.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i3.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ai = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.j ], [ %i.ai, %bb.k ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.l, label %_ZN6hermes3hbc14BytecodeHasherC2ESt10shared_ptrINS0_14BCProviderBaseEEbb.exit, !prof !171

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZN6hermes3hbc14BytecodeHasherC2ESt10shared_ptrINS0_14BCProviderBaseEEbb.exit

_ZN6hermes3hbc14BytecodeHasherC2ESt10shared_ptrINS0_14BCProviderBaseEEbb.exit: ; preds = %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  %i.ak = zext i1 %3 to i8
  %i.al = zext i1 %2 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc14BytecodeHasherE, i64 16), ptr %4, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !213
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %i.al, ptr %i.an, align 8, !tbaa !215
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 %i.ak, ptr %i.ao, align 1, !tbaa !216
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 34
  store i8 -1, ptr %i.ap, align 2, !tbaa !217
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes3hbc14BytecodeHasherC2ESt10shared_ptrINS0_14BCProviderBaseEEbb.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aq, align 8, !tbaa !209
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !211
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !218
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !218
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i4 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i4, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.p ], [ %i.bd, %bb.q ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.r, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !171

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes3hbc14BytecodeHasherC2ESt10shared_ptrINS0_14BCProviderBaseEEbb.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %1, ptr %i.bf, align 8, !tbaa !197
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(280) %i.bh, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(280) %i.bh, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = trunc i64 %i.bq to i1
  br i1 %i.br, label %bb.s, label %bb.t, !prof !171

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc20BytecodeDisassembler11disassembleERN4llvh11raw_ostreamE:bb.a
  %i.pi = load ptr, ptr %i.il, align 8, !tbaa !18 ; 3 uses
  %i.pj = load ptr, ptr %i.ik, align 8, !tbaa !14
  %.not.i129 = icmp ult ptr %i.pi, %i.pj
  br i1 %.not.i129, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit128
  %i.pk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext 10) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.cx:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit128
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 1
  store ptr %i.pl, ptr %i.il, align 8, !tbaa !18
  store i8 10, ptr %i.pi, align 1, !tbaa !7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.cx, %bb.cw, %_ZN4llvh11raw_ostreamlsEPKc.exit110
  %i.pm = load i32, ptr %i.a, align 8, !tbaa !361
  %i.pn = and i32 %i.pm, 1
  %.not.i131 = icmp eq i32 %i.pn, 0
  br i1 %.not.i131, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  call void @_ZN6hermes3hbc20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.047138, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit

bb.cz:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  call void @_ZN6hermes3hbc20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.047138, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit

_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit: ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.po = add nuw i32 %.047138, 1                 ; 2 uses
  %i.pp = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !26
  %i.ps = icmp ult i32 %i.po, %i.pr
  br i1 %i.ps, label %bb.bm, label %._crit_edge141, !llvm.loop !419

bb.da:                                            ; preds = %._crit_edge, %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit92, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !209
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !211
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !218
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !218
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !171

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc25ObjdumpDisassembleVisitor11listOpCodesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"struct.hermes::inst::InstMetaData", align 8 ; 5 uses
  %2 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !420, !nonnull !250, !align !251 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull @.str.2, i64 noundef 1) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 10, ptr %i.f, align 1
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i64 4294967295, ptr %2, align 8, !tbaa !47, !alias.scope !421
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !53, !alias.scope !421
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 16, ptr %i.l, align 8, !tbaa !54, !alias.scope !421
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 1, ptr %i.m, align 4, !tbaa !55, !alias.scope !421
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.n, align 1, !tbaa !56, !alias.scope !421
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.o, align 2, !tbaa !57, !alias.scope !421
  %i.p = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(23) %2) #18 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 3
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull @.str.138, i64 noundef 3) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit4

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @.str.138, i64 3, i1 false)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit4

_ZN4llvh11raw_ostreamlsEPKc.exit4:                ; preds = %bb.d, %bb.e
  %.0.i.i3 = phi ptr [ %i.y, %bb.d ], [ %i.p, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i3, i64 noundef 4294967295) #18 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, 3
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit4
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, ptr noundef nonnull @.str.139, i64 noundef 3) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.af, ptr noundef nonnull align 1 dereferenceable(3) @.str.139, i64 3, i1 false)
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

_ZN4llvh11raw_ostreamlsEPKc.exit7:                ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.2, ptr %i.an, align 8, !tbaa !399
  %i.ao = ptrtoint ptr %.sroa.0.2 to i64
  %i.ap = icmp ult ptr %.sroa.0.2, %.sroa.13.2
  br i1 %i.ap, label %.lr.ph33.i, label %_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit

.lr.ph33.i:                                       ; preds = %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i"

"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i": ; preds = %._crit_edge.us.i.a, %.lr.ph33.i
  %.031.us.i = phi ptr [ %i.bg, %._crit_edge.us.i.a ], [ %.sroa.0.2, %.lr.ph33.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.ar = load i8, ptr %.031.us.i, align 1, !tbaa !7
  %i.as = call { i64, i8 } @_ZN6hermes4inst15getInstMetaDataENS0_6OpCodeE(i8 noundef zeroext %i.ar) #18 ; 2 uses
  %.fca.0.extract.us.i = extractvalue { i64, i8 } %i.as, 0 ; 5 uses
  %.fca.1.extract.us.i = extractvalue { i64, i8 } %i.as, 1
  store i64 %.fca.0.extract.us.i, ptr %1, align 8
  store i8 %.fca.1.extract.us.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.at = trunc i64 %.fca.0.extract.us.i to i8    ; 2 uses
  %i.au = lshr i64 %.fca.0.extract.us.i, 8        ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 255                      ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.at, ptr noundef nonnull %.031.us.i, i32 noundef %i.aw) #18, !inline_history !424
  %i.ba = and i64 %.fca.0.extract.us.i, 16711680
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %._crit_edge.us.i.a, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i"
  %i.bb = lshr i64 %.fca.0.extract.us.i, 16
  %wide.trip.count.i = and i64 %i.bb, 255
  %i.bc = getelementptr inbounds nuw i8, ptr %.031.us.i, i64 1
  br label %.lr.ph.us.i

._crit_edge.us.i.a:                               ; preds = %.lr.ph.us.i, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i"
  %i.bd = load ptr, ptr %0, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.at, ptr noundef nonnull %.031.us.i, i32 noundef %i.aw) #18, !inline_history !424
  %3 = and i64 %i.au, 255
  %i.bg = getelementptr inbounds nuw i8, ptr %.031.us.i, i64 %3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %4 = icmp ult ptr %i.bg, %.sroa.13.2
  br i1 %4, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i", label %_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit, !llvm.loop !202

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i, %.lr.ph.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.us.i ] ; 3 uses
  %.02829.us.i = phi ptr [ %i.bc, %.lr.ph.us.preheader.i ], [ %i.bk, %.lr.ph.us.i ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i
  %6 = load i8, ptr %5, align 1, !tbaa !203       ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  %7 = trunc nuw nsw i64 %indvars.iv.i to i32
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %.031.us.i, i8 noundef zeroext %6, ptr noundef %.02829.us.i, i32 noundef %7) #18, !inline_history !424
  %8 = call noundef zeroext i8 @_ZN6hermes4inst14getOperandSizeENS0_11OperandTypeE(i8 noundef zeroext %6) #18
  %9 = zext i8 %8 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.02829.us.i, i64 %9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i.a, label %.lr.ph.us.i, !llvm.loop !205

_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit: ; preds = %._crit_edge.us.i.a, %bb.h
  %.not.i.i.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit
  %i.bl = ptrtoint ptr %.sroa.23.2 to i64
  %i.bm = sub i64 %i.bl, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bm) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b.exit, %bb.i
  ret void

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit7, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %storemerge37 = phi i8 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit7 ], [ %i.de, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 4 uses
  %.sroa.0.036 = phi ptr [ null, %_ZN4llvh11raw_ostreamlsEPKc.exit7 ], [ %.sroa.0.2, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 5 uses
  %.sroa.23.035 = phi ptr [ null, %_ZN4llvh11raw_ostreamlsEPKc.exit7 ], [ %.sroa.23.2, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 3 uses
  %.sroa.13.034 = phi ptr [ null, %_ZN4llvh11raw_ostreamlsEPKc.exit7 ], [ %.sroa.13.2, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %.sroa.13.034, %.sroa.23.035
  br i1 %.not.i8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %storemerge37, ptr %.sroa.13.034, align 1, !tbaa !7
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.l:                                             ; preds = %bb.j
  %i.bn = ptrtoint ptr %.sroa.23.035 to i64
  %i.bo = ptrtoint ptr %.sroa.0.036 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 8 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775807
  br i1 %i.bq, label %bb.m, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #21
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.br = add i64 %.sroa.speculated.i.i.i, %i.bp  ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bp
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 9223372036854775807)
  %i.bu = select i1 %i.bs, i64 9223372036854775807, i64 %i.bt ; 3 uses
  %.not.i.i.i9 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i9)
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #22 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bp ; 2 uses
  store i8 %storemerge37, ptr %i.bw, align 1, !tbaa !7
  %i.bx = icmp sgt i64 %i.bp, 0
  br i1 %i.bx, label %bb.n, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %.sroa.0.036, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0.036, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.036, i64 noundef %i.bp) #19
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  %.pn = phi ptr [ %i.bw, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.13.034, %bb.k ] ; 2 uses
  %.sroa.23.1 = phi ptr [ %i.by, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.23.035, %bb.k ] ; 5 uses
  %.sroa.0.1 = phi ptr [ %i.bv, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.0.036, %bb.k ] ; 10 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 7 uses
  %i.bz = call { i64, i8 } @_ZN6hermes4inst15getInstMetaDataENS0_6OpCodeE(i8 noundef zeroext %storemerge37) #18
  %.fca.0.extract = extractvalue { i64, i8 } %i.bz, 0
  %.sroa.01.1.extract.shift = lshr i64 %.fca.0.extract, 8
  %i.ca = ptrtoint ptr %.sroa.13.1 to i64         ; 2 uses
  %i.cb = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 10 uses
  %i.cd = and i64 %.sroa.01.1.extract.shift, 255
  %i.ce = add i64 %i.cc, -1
  %i.cf = add i64 %i.ce, %i.cd                    ; 5 uses
  %i.cg = icmp ugt i64 %i.cf, %i.cc
  br i1 %i.cg, label %bb.p, label %bb.x

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.ch = sub nuw i64 %i.cf, %i.cc                ; 6 uses
  %i.ci = ptrtoint ptr %.sroa.23.1 to i64         ; 2 uses
  %i.cj = sub i64 %i.ci, %i.ca                    ; 2 uses
  %i.ck = icmp sgt i64 %i.cc, -1
  call void @llvm.assume(i1 %i.ck)
  %i.cl = xor i64 %i.cc, 9223372036854775807      ; 2 uses
  %i.cm = icmp ule i64 %i.cj, %i.cl
  call void @llvm.assume(i1 %i.cm)
  %.not23.i.i = icmp ult i64 %i.cj, %i.ch
  br i1 %.not23.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %.sroa.13.1, align 1, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.co = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr i8, ptr %.sroa.13.1, i64 %i.ch
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cn, i8 0, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.s:                                             ; preds = %bb.p
  %i.cr = icmp ult i64 %i.cl, %i.ch
  br i1 %i.cr, label %bb.t, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #21
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10: ; preds = %bb.s
  %.sroa.speculated.i.i.i11 = call i64 @llvm.umax.i64(i64 %i.cc, i64 %i.ch)
  %i.cs = add nuw i64 %.sroa.speculated.i.i.i11, %i.cc
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cs, i64 9223372036854775807) ; 2 uses
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #22 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cc ; 2 uses
  store i8 0, ptr %i.cv, align 1, !tbaa !7
  %i.cw = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cy, i8 0, i64 %i.cw, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i: ; preds = %bb.u, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10
  %.not28.i.i = icmp eq ptr %.sroa.13.1, %.sroa.0.1
  br i1 %.not28.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %.sroa.0.1, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.v, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  %.not.i27.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i27.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.cz = sub i64 %i.ci, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.cz) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cf
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.dc = icmp ult i64 %i.cf, %i.cc
  br i1 %i.dc, label %bb.y, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %i.cf ; 2 uses
  %.not.i4.i = icmp eq ptr %.sroa.13.1, %i.dd
  %spec.select = select i1 %.not.i4.i, ptr %.sroa.13.1, ptr %i.dd
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.y, %bb.q, %bb.r, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, %bb.x
  %.sroa.13.2 = phi ptr [ %i.da, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.sroa.13.1, %bb.x ], [ %spec.select, %bb.y ], [ %i.cn, %bb.q ], [ %i.cq, %bb.r ] ; 3 uses
  %.sroa.23.2 = phi ptr [ %i.db, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.sroa.23.1, %bb.x ], [ %.sroa.23.1, %bb.y ], [ %.sroa.23.1, %bb.q ], [ %.sroa.23.1, %bb.r ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.cu, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.sroa.0.1, %bb.x ], [ %.sroa.0.1, %bb.y ], [ %.sroa.0.1, %bb.q ], [ %.sroa.0.1, %bb.r ] ; 7 uses
  %i.de = add nuw i8 %storemerge37, 1             ; 2 uses
  %exitcond.not = icmp eq i8 %i.de, -64
  br i1 %exitcond.not, label %bb.h, label %bb.j, !llvm.loop !425
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc18JumpTargetsVisitor11beforeStartEjPKh(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.a, align 4, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.b, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor20postVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc18JumpTargetsVisitor21visitSwitchImmTargetsEjiPKh(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8, !tbaa !190
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.d = call { ptr, i8 } @_ZNSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES2_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.d, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 _ZTSN6hermes3hbc14BCProviderBaseE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!13 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!14 = !{!15, !16, i64 16}
!15 = !{!"_ZTSN4llvh11raw_ostreamE", !16, i64 8, !16, i64 16, !16, i64 24, !17, i64 32}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!18 = !{!15, !16, i64 24}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !6, i64 0}
!21 = !{!22, !16, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !5, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = !{!22, !24, i64 8}
!26 = !{!27, !4, i64 12}
!27 = !{!"_ZTSN6hermes3hbc14BCProviderBaseE", !5, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !28, i64 24, !30, i64 40, !32, i64 56, !32, i64 72, !32, i64 88, !32, i64 104, !33, i64 120, !32, i64 136, !35, i64 152, !32, i64 168, !4, i64 184, !37, i64 192, !37, i64 208, !37, i64 224, !39, i64 240, !22, i64 248}
!28 = !{!"_ZTSN4llvh8ArrayRefIN6hermes10StringKind5EntryEEE", !29, i64 0, !24, i64 8}
!29 = !{!"p1 _ZTSN6hermes10StringKind5EntryE", !11, i64 0}
!30 = !{!"_ZTSN4llvh8ArrayRefIjEE", !31, i64 0, !24, i64 8}
!31 = !{!"p1 int", !11, i64 0}
!32 = !{!"_ZTSN4llvh8ArrayRefIhEE", !16, i64 0, !24, i64 8}
!33 = !{!"_ZTSN4llvh8ArrayRefIN6hermes6bigint16BigIntTableEntryEEE", !34, i64 0, !24, i64 8}
!34 = !{!"p1 _ZTSN6hermes6bigint16BigIntTableEntryE", !11, i64 0}
!35 = !{!"_ZTSN4llvh8ArrayRefIN6hermes16RegExpTableEntryEEE", !36, i64 0, !24, i64 8}
!36 = !{!"p1 _ZTSN6hermes16RegExpTableEntryE", !11, i64 0}
!37 = !{!"_ZTSN4llvh8ArrayRefISt4pairIjjEEE", !38, i64 0, !24, i64 8}
!38 = !{!"p1 _ZTSSt4pairIjjE", !11, i64 0}
!39 = !{!"p1 _ZTSN6hermes3hbc9DebugInfoE", !11, i64 0}
!40 = !{!27, !4, i64 20}
!41 = !{!33, !24, i64 8}
!42 = !{!24, !24, i64 0}
!43 = !{!27, !4, i64 184}
!44 = !{!16, !16, i64 0}
!45 = !{!31, !31, i64 0}
!46 = !{!29, !29, i64 0}
!47 = !{!48, !24, i64 0}
!48 = !{!"_ZTSN4llvh15FormattedNumberE", !24, i64 0, !24, i64 8, !4, i64 16, !49, i64 20, !49, i64 21, !49, i64 22}
!49 = !{!"bool", !5, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4llvh20format_hex_no_prefixEmjb: argument 0"}
!52 = distinct !{!52, !"_ZN4llvh20format_hex_no_prefixEmjb"}
!53 = !{!48, !24, i64 8}
!54 = !{!48, !4, i64 16}
!55 = !{!48, !49, i64 20}
!56 = !{!48, !49, i64 21}
!57 = !{!48, !49, i64 22}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN4llvh20format_hex_no_prefixEmjb: argument 0"}
!60 = distinct !{!60, !"_ZN4llvh20format_hex_no_prefixEmjb"}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = distinct !{!63, !62}
!64 = !{!65, !66, i64 0}
!65 = !{!"_ZTSSt6locale", !66, i64 0}
!66 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!67 = !{!68, !69, i64 8}
!68 = !{!"_ZTSNSt6locale5_ImplE", !4, i64 0, !69, i64 8, !24, i64 16, !69, i64 24, !71, i64 32}
!69 = !{!"p2 _ZTSNSt6locale5facetE", !70, i64 0}
!70 = !{!"any p2 pointer", !11, i64 0}
!71 = !{!"p2 omnipotent char", !70, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 _ZTSNSt6locale5facetE", !11, i64 0}
!74 = !{!75, !78, i64 48}
!75 = !{!"_ZTSSt5ctypeIcE", !76, i64 0, !77, i64 16, !49, i64 24, !31, i64 32, !31, i64 40, !78, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!76 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!77 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!78 = !{!"p1 short", !11, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"short", !5, i64 0}
!81 = distinct !{!81, !62}
!82 = distinct !{!82, !62}
!83 = !{!23, !16, i64 0}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!86 = distinct !{!86, !"_ZNSt7__cxx119to_stringEi"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!89 = distinct !{!89, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!92 = distinct !{!92, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!95 = distinct !{!95, !"_ZNSt7__cxx119to_stringEi"}
!96 = distinct !{!96, !62}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!99 = distinct !{!99, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!102 = distinct !{!102, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!105 = distinct !{!105, !"_ZNSt7__cxx119to_stringEj"}
!106 = distinct !{!106, !62}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!109 = distinct !{!109, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!112 = distinct !{!112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!115 = distinct !{!115, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!118 = distinct !{!118, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!121 = distinct !{!121, !"_ZNSt7__cxx119to_stringEj"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!124 = distinct !{!124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!127 = distinct !{!127, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!128 = distinct !{!128, !62}
!129 = distinct !{!129, !62}
!130 = distinct !{!130, !62}
!131 = distinct !{!131, !62}
!132 = !{!34, !34, i64 0}
!133 = !{!134, !4, i64 0}
!134 = !{!"_ZTSN6hermes6bigint16BigIntTableEntryE", !4, i64 0, !4, i64 4}
!135 = !{!134, !4, i64 4}
!136 = distinct !{!136, !62}
!137 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!138 = !{!139, !146, i64 216}
!139 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !140, i64 0, !146, i64 216, !5, i64 224, !49, i64 225, !147, i64 232, !148, i64 240, !149, i64 248, !150, i64 256}
!140 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !141, i64 24, !142, i64 28, !142, i64 32, !143, i64 40, !144, i64 48, !5, i64 64, !4, i64 192, !145, i64 200, !65, i64 208}
!141 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!142 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!143 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!144 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !24, i64 8}
!145 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!146 = !{!"p1 _ZTSSo", !11, i64 0}
!147 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!148 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!149 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!150 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!151 = !{!139, !5, i64 224}
!152 = !{!139, !49, i64 225}
!153 = !{!154, !24, i64 8}
!154 = !{!"_ZTSSi", !24, i64 8}
!155 = !{!156, !158, i64 64}
!156 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !157, i64 0, !158, i64 64, !22, i64 72}
!157 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !65, i64 56}
!158 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!161 = distinct !{!161, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!164 = distinct !{!164, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!167 = distinct !{!167, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!168 = !{!166, !163}
!169 = !{!157, !16, i64 40}
!170 = !{!157, !16, i64 32}
!171 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!172 = !{!38, !38, i64 0}
!173 = !{!174, !4, i64 0}
!174 = !{!"_ZTSSt4pairIjjE", !4, i64 0, !4, i64 4}
!175 = !{!174, !4, i64 4}
!176 = distinct !{!176, !62}
!177 = !{!178, !4, i64 0}
!178 = !{!"_ZTSN6hermes3hbc23HBCExceptionHandlerInfoE", !4, i64 0, !4, i64 4, !4, i64 8}
!179 = !{!178, !4, i64 4}
!180 = !{!178, !4, i64 8}
!181 = distinct !{!181, !62}
!182 = !{!183, !24, i64 24}
!183 = !{!"_ZTSSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !184, i64 0, !24, i64 8, !185, i64 16, !24, i64 24, !187, i64 32, !186, i64 48}
!184 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !70, i64 0}
!185 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !186, i64 0}
!186 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!187 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !188, i64 0, !24, i64 8}
!188 = !{!"float", !5, i64 0}
!189 = !{!185, !186, i64 0}
!190 = !{!11, !11, i64 0}
!191 = distinct !{!191, !62}
!192 = !{!183, !24, i64 8}
!193 = !{!183, !184, i64 0}
!194 = !{!186, !186, i64 0}
!195 = distinct !{!195, !62}
!196 = distinct !{!196, !62}
!197 = !{!198, !4, i64 24}
!198 = !{!"_ZTSN6hermes3hbc15BytecodeVisitorE", !199, i64 8, !4, i64 24}
!199 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc14BCProviderBaseEE", !9, i64 0}
!200 = !{!201, !4, i64 8}
!201 = !{!"_ZTSN6hermes3hbc14FunctionHeaderE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28, !5, i64 29, !5, i64 30}
!202 = distinct !{!202, !62}
!203 = !{!204, !204, i64 0}
!204 = !{!"_ZTSN6hermes4inst11OperandTypeE", !5, i64 0}
!205 = distinct !{!205, !62}
!206 = distinct !{null, null}
!207 = distinct !{!207, !62}
!208 = !{!12, !13, i64 0}
!209 = !{!210, !4, i64 8}
!210 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!211 = !{!210, !4, i64 12}
!212 = distinct !{null, null, null, null}
!213 = !{!214, !4, i64 28}
!214 = !{!"_ZTSN6hermes3hbc14BytecodeHasherE", !198, i64 0, !4, i64 28, !49, i64 32, !49, i64 33, !5, i64 34}
!215 = !{!214, !49, i64 32}
!216 = !{!214, !49, i64 33}
!217 = !{!214, !5, i64 34}
!218 = distinct !{null, null, null}
!219 = !{ptr @_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj}
!220 = distinct !{ptr @_ZN6hermes3hbc15BytecodeVisitorD2Ev, null, null, null}
!221 = !{ptr @_ZN6hermes3hbc15BytecodeVisitorD2Ev}
!222 = !{!223, !4, i64 28}
!223 = !{!"_ZTSN6hermes3hbc18JumpTargetsVisitorE", !198, i64 0, !4, i64 28, !16, i64 32, !4, i64 40, !224, i64 48, !229, i64 72}
!224 = !{!"_ZTSSt6vectorIPKN6hermes4inst4InstESaIS4_EE", !225, i64 0}
!225 = !{!"_ZTSSt12_Vector_baseIPKN6hermes4inst4InstESaIS4_EE", !226, i64 0}
!226 = !{!"_ZTSNSt12_Vector_baseIPKN6hermes4inst4InstESaIS4_EE12_Vector_implE", !227, i64 0}
!227 = !{!"_ZTSNSt12_Vector_baseIPKN6hermes4inst4InstESaIS4_EE17_Vector_impl_dataE", !228, i64 0, !228, i64 8, !228, i64 16}
!228 = !{!"p2 _ZTSN6hermes4inst4InstE", !70, i64 0}
!229 = !{!"_ZTSSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE", !183, i64 0}
!230 = !{!223, !16, i64 32}
!231 = !{!223, !4, i64 40}
!232 = !{!233, !4, i64 8}
!233 = !{!"_ZTSSt4pairIKPKvjE", !11, i64 0, !4, i64 8}
!234 = !{!227, !228, i64 8}
!235 = !{!227, !228, i64 16}
!236 = !{!237, !237, i64 0}
!237 = !{!"p1 _ZTSN6hermes4inst4InstE", !11, i64 0}
!238 = !{!227, !228, i64 0}
!239 = !{!240, !244, i64 64}
!240 = !{!"_ZTSN6hermes3hbc24PrettyDisassembleVisitorE", !198, i64 0, !241, i64 28, !242, i64 32, !16, i64 40, !4, i64 48, !243, i64 56, !244, i64 64}
!241 = !{!"_ZTSN6hermes4inst6OpCodeE", !5, i64 0}
!242 = !{!"p1 _ZTSSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE", !11, i64 0}
!243 = !{!"p1 _ZTSN4llvh11raw_ostreamE", !11, i64 0}
!244 = !{!"_ZTSN6hermes3hbc18DisassemblyOptionsE", !5, i64 0}
!245 = !{!246, !16, i64 0}
!246 = !{!"_ZTSN6hermes3hbc21RuntimeFunctionHeaderE", !16, i64 0}
!247 = !{!201, !4, i64 12}
!248 = distinct !{null}
!249 = !{!240, !243, i64 56}
!250 = !{}
!251 = !{i64 8}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZN4llvh20format_hex_no_prefixEmjb: argument 0"}
!254 = distinct !{!254, !"_ZN4llvh20format_hex_no_prefixEmjb"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZN4llvh20format_hex_no_prefixEmjb: argument 0"}
!257 = distinct !{!257, !"_ZN4llvh20format_hex_no_prefixEmjb"}
!258 = distinct !{!258, !62}
!259 = !{!240, !16, i64 40}
!260 = !{!240, !4, i64 48}
!261 = !{!240, !241, i64 28}
!262 = !{!240, !242, i64 32}
!263 = distinct !{!263, !62}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN4llvh12left_justifyENS_9StringRefEj: argument 0"}
!266 = distinct !{!266, !"_ZN4llvh12left_justifyENS_9StringRefEj"}
!267 = !{!268, !4, i64 16}
!268 = !{!"_ZTSN4llvh15FormattedStringE", !269, i64 0, !4, i64 16, !270, i64 20}
!269 = !{!"_ZTSN4llvh9StringRefE", !16, i64 0, !24, i64 8}
!270 = !{!"_ZTSN4llvh15FormattedString13JustificationE", !5, i64 0}
!271 = !{!268, !270, i64 20}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZN4llvh13right_justifyENS_9StringRefEj: argument 0"}
!274 = distinct !{!274, !"_ZN4llvh13right_justifyENS_9StringRefEj"}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN4llvh12left_justifyENS_9StringRefEj: argument 0"}
!277 = distinct !{!277, !"_ZN4llvh12left_justifyENS_9StringRefEj"}
!278 = !{!279, !49, i64 40}
!279 = !{!"_ZTSN4llvh8OptionalIN6hermes21SourceMapTextLocationEEE", !280, i64 0}
!280 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIN6hermes21SourceMapTextLocationELb0EEE", !281, i64 0, !49, i64 40}
!281 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIN6hermes21SourceMapTextLocationEcccccccccEE", !282, i64 0}
!282 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm40EEE", !5, i64 0}
!283 = !{i8 0, i8 2}
!284 = !{!285, !4, i64 32}
!285 = !{!"_ZTSN6hermes21SourceMapTextLocationE", !22, i64 0, !4, i64 32, !4, i64 36}
!286 = !{!285, !4, i64 36}
!287 = !{!280, !49, i64 40}
!288 = !{!289, !16, i64 0}
!289 = !{!"_ZTSN6hermes3hbc21BytecodeSectionWalkerE", !16, i64 0, !290, i64 8, !243, i64 24, !293, i64 32, !297, i64 56, !297, i64 80}
!290 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEE", !291, i64 0}
!291 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc20BCProviderFromBufferELN9__gnu_cxx12_Lock_policyE2EE", !292, i64 0, !12, i64 8}
!292 = !{!"p1 _ZTSN6hermes3hbc20BCProviderFromBufferE", !11, i64 0}
!293 = !{!"_ZTSSt6vectorIPKcSaIS1_EE", !294, i64 0}
!294 = !{!"_ZTSSt12_Vector_baseIPKcSaIS1_EE", !295, i64 0}
!295 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implE", !296, i64 0}
!296 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!297 = !{!"_ZTSSt6vectorIPKhSaIS1_EE", !298, i64 0}
!298 = !{!"_ZTSSt12_Vector_baseIPKhSaIS1_EE", !299, i64 0}
!299 = !{!"_ZTSNSt12_Vector_baseIPKhSaIS1_EE12_Vector_implE", !300, i64 0}
!300 = !{!"_ZTSNSt12_Vector_baseIPKhSaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!301 = !{!243, !243, i64 0}
!302 = !{!291, !292, i64 0}
!303 = !{!304, !312, i64 296}
!304 = !{!"_ZTSN6hermes3hbc20BCProviderFromBufferE", !27, i64 0, !305, i64 280, !16, i64 288, !312, i64 296, !313, i64 304, !314, i64 312, !4, i64 328, !316, i64 336, !320, i64 352, !322, i64 360, !16, i64 368}
!305 = !{!"_ZTSSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EE", !306, i64 0}
!306 = !{!"_ZTSSt15__uniq_ptr_dataIKN6hermes6BufferESt14default_deleteIS2_ELb1ELb1EE", !307, i64 0}
!307 = !{!"_ZTSSt15__uniq_ptr_implIKN6hermes6BufferESt14default_deleteIS2_EE", !308, i64 0}
!308 = !{!"_ZTSSt5tupleIJPKN6hermes6BufferESt14default_deleteIS2_EEE", !309, i64 0}
!309 = !{!"_ZTSSt11_Tuple_implILm0EJPKN6hermes6BufferESt14default_deleteIS2_EEE", !310, i64 0}
!310 = !{!"_ZTSSt10_Head_baseILm0EPKN6hermes6BufferELb0EE", !311, i64 0}
!311 = !{!"p1 _ZTSN6hermes6BufferE", !11, i64 0}
!312 = !{!"p1 _ZTSN6hermes3hbc15SmallFuncHeaderE", !11, i64 0}
!313 = !{!"p1 _ZTSN6hermes3hbc21SmallStringTableEntryE", !11, i64 0}
!314 = !{!"_ZTSN4llvh8ArrayRefIN6hermes3hbc24OverflowStringTableEntryEEE", !315, i64 0, !24, i64 8}
!315 = !{!"p1 _ZTSN6hermes3hbc24OverflowStringTableEntryE", !11, i64 0}
!316 = !{!"_ZTSN4llvh8OptionalISt6threadEE", !317, i64 0}
!317 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageISt6threadLb0EEE", !318, i64 0, !49, i64 8}
!318 = !{!"_ZTSN4llvh21AlignedCharArrayUnionISt6threadcccccccccEE", !319, i64 0}
!319 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm8EEE", !5, i64 0}
!320 = !{!"_ZTSSt6atomicIbE", !321, i64 0}
!321 = !{!"_ZTSSt13__atomic_baseIbE", !49, i64 0}
!322 = !{!"_ZTSSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !323, i64 0}
!323 = !{!"_ZTSSt15__uniq_ptr_dataIVN6hermes17PageAccessTrackerESt14default_deleteIS2_ELb1ELb1EE", !324, i64 0}
!324 = !{!"_ZTSSt15__uniq_ptr_implIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !325, i64 0}
!325 = !{!"_ZTSSt5tupleIJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !326, i64 0}
!326 = !{!"_ZTSSt11_Tuple_implILm0EJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !327, i64 0}
!327 = !{!"_ZTSSt10_Head_baseILm0EPVN6hermes17PageAccessTrackerELb0EE", !328, i64 0}
!328 = !{!"p1 _ZTSN6hermes17PageAccessTrackerE", !11, i64 0}
!329 = !{!330, !4, i64 40}
!330 = !{!"_ZTSN6hermes3hbc18BytecodeFileHeaderE", !24, i64 0, !4, i64 8, !5, i64 12, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !5, i64 108, !5, i64 109}
!331 = !{!304, !313, i64 304}
!332 = !{!315, !315, i64 0}
!333 = !{!36, !36, i64 0}
!334 = !{!304, !16, i64 288}
!335 = !{!201, !4, i64 0}
!336 = !{!201, !4, i64 16}
!337 = !{!330, !4, i64 104}
!338 = !{!330, !4, i64 32}
!339 = !{!296, !71, i64 8}
!340 = !{!296, !71, i64 16}
!341 = !{!296, !71, i64 0}
!342 = !{!300, !71, i64 8}
!343 = !{!300, !71, i64 16}
!344 = !{!300, !71, i64 0}
!345 = !{!289, !243, i64 24}
!346 = !{!140, !141, i64 24}
!347 = !{!141, !141, i64 0}
!348 = !{!139, !148, i64 240}
!349 = !{!75, !5, i64 56}
!350 = distinct !{null, null, null, null, null}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!353 = distinct !{!353, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!356 = distinct !{!356, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!357 = !{!355, !352}
!358 = distinct !{!358, !62}
!359 = distinct !{null, null, null, null}
!360 = !{!187, !188, i64 0}
!361 = !{!362, !244, i64 16}
!362 = !{!"_ZTSN6hermes3hbc20BytecodeDisassemblerE", !199, i64 0, !244, i64 16}
!363 = distinct !{null, null, null, null}
!364 = !{!242, !242, i64 0}
!365 = !{!228, !228, i64 0}
!366 = !{!233, !11, i64 0}
!367 = !{!183, !186, i64 48}
!368 = !{!183, !186, i64 16}
!369 = distinct !{!369, !62}
!370 = distinct !{!370, !62}
!371 = !{ptr @_ZN6hermes3hbc18JumpTargetsVisitorD2Ev}
!372 = distinct !{!372, !62}
!373 = distinct !{ptr @_ZN6hermes3hbc18JumpTargetsVisitorD2Ev, ptr @_ZN6hermes3hbc15BytecodeVisitorD2Ev, null, null, null}
!374 = !{ptr @_ZN6hermes3hbc18JumpTargetsVisitorD2Ev, ptr @_ZN6hermes3hbc15BytecodeVisitorD2Ev}
!375 = distinct !{null, null, null, null}
!376 = distinct !{!376, !62}
!377 = !{ptr @_ZN6hermes3hbc18DisassembleVisitorD2Ev}
!378 = distinct !{ptr @_ZN6hermes3hbc18DisassembleVisitorD2Ev, ptr @_ZN6hermes3hbc15BytecodeVisitorD2Ev, null, null, null}
!379 = !{ptr @_ZN6hermes3hbc18DisassembleVisitorD2Ev, ptr @_ZN6hermes3hbc15BytecodeVisitorD2Ev}
!380 = !{!381, !38, i64 8}
!381 = !{!"_ZTSNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!382 = !{!381, !38, i64 0}
!383 = !{!381, !38, i64 16}
!384 = distinct !{!384, !62, !385, !386}
!385 = !{!"llvm.loop.isvectorized", i32 1}
!386 = !{!"llvm.loop.unroll.runtime.disable"}
!387 = distinct !{!387, !62, !385}
!388 = !{ptr @_ZN6hermes3hbc23RegexStringTableVisitorD2Ev}
!389 = distinct !{ptr @_ZN6hermes3hbc23RegexStringTableVisitorD2Ev, ptr @_ZN6hermes3hbc15BytecodeVisitorD2Ev, null, null, null}
!390 = !{ptr @_ZN6hermes3hbc23RegexStringTableVisitorD2Ev, ptr @_ZN6hermes3hbc15BytecodeVisitorD2Ev}
!391 = distinct !{!391, !62}
!392 = !{!393, !4, i64 0}
!393 = !{!"_ZTSN6hermes16RegExpTableEntryE", !4, i64 0, !4, i64 4}
!394 = !{!393, !4, i64 4}
!395 = distinct !{null, null, null, null}
!396 = !{!397, !4, i64 28}
!397 = !{!"_ZTSN6hermes3hbc25ObjdumpDisassembleVisitorE", !198, i64 0, !4, i64 28, !4, i64 32, !16, i64 40, !243, i64 48}
!398 = !{!397, !4, i64 32}
!399 = !{!397, !16, i64 40}
!400 = distinct !{!400, !62}
!401 = !{!27, !39, i64 240}
!402 = distinct !{null}
!403 = !{!201, !4, i64 4}
!404 = !{!201, !4, i64 20}
end_hunk_2
