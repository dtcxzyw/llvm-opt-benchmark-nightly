inline.NumInlined: 1739
inline.NumDeleted: 636
begin_hunk_0_@_ZN6hermes3hbc20BytecodeDisassembler34disassembleExceptionHandlersPrettyEjRKSt13unordered_mapIPKvjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEERN4llvh11raw_ostreamE:bb.a
  br i1 %.not.i.i.i39, label %.loopexit.i.i35, label %bb.q

bb.q:                                             ; preds = %.preheader87
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i38, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !190
  %i.co = icmp eq ptr %i.ck, %i.cn
  br i1 %i.co, label %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit40, label %.preheader87, !llvm.loop !191

bb.r:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit27
  %i.cp = ptrtoint ptr %i.ck to i64
  %i.cq = load i64, ptr %i.aa, align 8, !tbaa !192 ; 2 uses
  %i.cr = urem i64 %i.cp, %i.cq                   ; 2 uses
  %i.cs = load ptr, ptr %2, align 8, !tbaa !193
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !194 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i29, label %.loopexit.i.i35, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !189 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !190
  %i.cy = icmp eq ptr %i.ck, %i.cx
  br i1 %i.cy, label %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit40, label %.lr.ph.i.i.i.i.i30

bb.t:                                             ; preds = %bb.u
  %i.cz = icmp eq ptr %i.ck, %i.dc
  br i1 %i.cz, label %_ZNKSt13unordered_mapIPKvjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE2atERS7_.exit40, label %.lr.ph.i.i.i.i.i30, !llvm.loop !195

.lr.ph.i.i.i.i.i30:                               ; preds = %bb.s, %bb.t
  %.020.i.i.i.i.i31 = phi ptr [ %i.da, %bb.t ], [ %i.cv, %bb.s ]
  %i.da = load ptr, ptr %.020.i.i.i.i.i31, align 8, !tbaa !189 ; 4 uses
  %.not18.i.i.i.i.i32 = icmp eq ptr %i.da, null
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
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %2 = load i32, ptr %.shift.i, align 1
  %i.q = and i32 %2, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.p, %bb.b ], [ %i.q, %bb.c ]
  %i.r = zext i32 %.0.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %i.t = load ptr, ptr %0, align 8, !tbaa !19
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, ptr noundef %i.l) #18
  tail call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.l, ptr noundef %i.s, i1 noundef zeroext true)
  %i.v = load ptr, ptr %0, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(28) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, ptr noundef readnone captures(address) %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.hermes::inst::InstMetaData", align 8 ; 8 uses
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  br i1 %3, label %.lr.ph33.split, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us"

"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us": ; preds = %.lr.ph33, %._crit_edge.us
  %.031.us = phi ptr [ %i.s, %._crit_edge.us ], [ %1, %.lr.ph33 ] ; 6 uses
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
  br i1 %.not, label %._crit_edge.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us"
  %i.m = lshr i64 %.fca.0.extract.us, 16
  %wide.trip.count = and i64 %i.m, 255
  %i.n = getelementptr inbounds nuw i8, ptr %.031.us, i64 1
  br label %.lr.ph.us

._crit_edge.us:                                   ; preds = %.lr.ph.us, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us"
  %i.o = load ptr, ptr %0, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.e, ptr noundef nonnull %.031.us, i32 noundef %i.h) #18
  %i.r = and i64 %i.f, 255
  %i.s = getelementptr inbounds nuw i8, ptr %.031.us, i64 %i.r ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.t = icmp ult ptr %i.s, %2
  br i1 %i.t, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us", label %._crit_edge34, !llvm.loop !202

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 3 uses
  %.02829.us = phi ptr [ %i.n, %.lr.ph.us.preheader ], [ %i.ac, %.lr.ph.us ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !203   ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %.031.us, i8 noundef zeroext %i.v, ptr noundef %.02829.us, i32 noundef %i.z) #18
  %i.aa = tail call noundef zeroext i8 @_ZN6hermes4inst14getOperandSizeENS0_11OperandTypeE(i8 noundef zeroext %i.v) #18
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.02829.us, i64 %i.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !205

.lr.ph33.split:                                   ; preds = %.lr.ph33, %._crit_edge
  %.031 = phi ptr [ %i.br, %._crit_edge ], [ %1, %.lr.ph33 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ad = load i8, ptr %.031, align 1, !tbaa !7
  %i.ae = tail call { i64, i8 } @_ZN6hermes4inst15getInstMetaDataENS0_6OpCodeE(i8 noundef zeroext %i.ad) #18 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.ae, 0 ; 5 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ae, 1
  store i64 %.fca.0.extract, ptr %4, align 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.af = trunc i64 %.fca.0.extract to i8         ; 3 uses
  %i.ag = lshr i64 %.fca.0.extract, 8             ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 255                      ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.af, ptr noundef nonnull %.031, i32 noundef %i.ai) #18
  %i.am = icmp eq i8 %i.af, -123
  %i.an = lshr i64 %.fca.0.extract, 16
  br i1 %i.am, label %bb.b, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit"

bb.b:                                             ; preds = %.lr.ph33.split
  %i.ao = getelementptr inbounds nuw i8, ptr %.031, i64 10
  %i.ap = load i32, ptr %i.ao, align 1, !tbaa !7  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.031, i64 14
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !7
  %i.as = sub i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.au = load i32, ptr %i.at, align 1, !tbaa !7
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.031, i64 %i.av
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = add i64 %i.ax, 3
  %i.az = and i64 %i.ay, -4
  %i.ba = inttoptr i64 %i.az to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.015.i = phi i32 [ 0, %bb.b ], [ %i.bk, %bb.c ] ; 3 uses
  %i.bb = zext i32 %.015.i to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add i32 %.015.i, %i.ap
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.031, i64 %i.bf
  %i.bh = load ptr, ptr %0, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %i.be, i32 noundef %i.bd, ptr noundef nonnull %i.bg) #18, !inline_history !206
  %i.bk = add i32 %.015.i, 1                      ; 2 uses
  %.not.i = icmp ugt i32 %i.bk, %i.as
  br i1 %.not.i, label %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit", label %bb.c, !llvm.loop !207

"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit": ; preds = %bb.c, %.lr.ph33.split
  %i.bl = and i64 %.fca.0.extract, 16711680
  %.not35 = icmp eq i64 %i.bl, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit"
  %wide.trip.count41 = and i64 %i.an, 255
  %i.bm = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit"
  %i.bn = load ptr, ptr %0, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %i.af, ptr noundef nonnull %.031, i32 noundef %i.ai) #18
  %i.bq = and i64 %i.ag, 255
  %i.br = getelementptr inbounds nuw i8, ptr %.031, i64 %i.bq ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bs = icmp ult ptr %i.br, %2
  br i1 %i.bs, label %.lr.ph33.split, label %._crit_edge34, !llvm.loop !202

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv38 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next39, %.lr.ph ] ; 3 uses
  %.02829 = phi ptr [ %i.bm, %.lr.ph.preheader ], [ %i.cb, %.lr.ph ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv38
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !203 ; 2 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = trunc nuw nsw i64 %indvars.iv38 to i32
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %.031, i8 noundef zeroext %i.bu, ptr noundef %.02829, i32 noundef %i.by) #18
  %i.bz = tail call noundef zeroext i8 @_ZN6hermes4inst14getOperandSizeENS0_11OperandTypeE(i8 noundef zeroext %i.bu) #18
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.02829, i64 %i.ca
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph, !llvm.loop !205

._crit_edge34:                                    ; preds = %._crit_edge.us, %._crit_edge, %bb.a
  ret void
}

declare { i64, i8 } @_ZN6hermes4inst15getInstMetaDataENS0_6OpCodeE(i8 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i8 @_ZN6hermes4inst14getOperandSizeENS0_11OperandTypeE(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc20BytecodeDisassembler17fuzzyHashBytecodeEjbb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
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
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !3
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
  store i32 %i.bc, ptr %i.aq, align 4, !tbaa !3
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
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !200
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %5 = load i32, ptr %.shift.i.i, align 1
  %i.bu = and i32 %5, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.s, %bb.t
  %.0.i.i = phi i32 [ %i.bt, %bb.s ], [ %i.bu, %bb.t ]
  %i.bv = zext i32 %.0.i.i to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bv
  %i.bx = load ptr, ptr %4, align 8, !tbaa !19
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(28) %4, i32 noundef %1, ptr noundef %i.bp) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.bp, ptr noundef %i.bw, i1 noundef zeroext true)
  %i.bz = load ptr, ptr %4, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(28) %4) #18, !inline_history !219
  %i.cc = load i32, ptr %i.am, align 4, !tbaa !213
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !208 ; 8 uses
  %.not.i.i.i5 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i5, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cf, align 8, !tbaa !209
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !211
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #18, !inline_history !220
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #18, !inline_history !220
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i6 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i6, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7

bb.y:                                             ; preds = %bb.w
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i8 = phi i32 [ %i.ci, %bb.x ], [ %i.cs, %bb.y ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i8, 1
  br i1 %i.ct, label %bb.z, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !171

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #18, !inline_history !221
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %i.cc
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18JumpTargetsVisitor10afterStartEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !222
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call { ptr, i64 } %i.m(ptr noundef nonnull align 8 dereferenceable(280) %i.h, i32 noundef %i.j) #18 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %.idx = mul nuw nsw i64 %i.p, 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not17 = icmp eq i64 %i.p, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit15, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit15
  %.018 = phi ptr [ %i.o, %.lr.ph ], [ %i.ax, %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit15 ] ; 4 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !230
  %i.v = load i32, ptr %.018, align 1, !tbaa !177
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i32 0, ptr %i.f, align 4, !tbaa !3
  %i.y = call { ptr, i8 } @_ZNSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES2_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.y, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.z = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.z, label %bb.c, label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.y, 0
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !231
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %i.t, align 8, !tbaa !231
  %i.ac = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !232
  br label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit

_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !230
  %i.ae = getelementptr inbounds nuw i8, ptr %.018, i64 4
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !179
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.ai = call { ptr, i8 } @_ZNSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES2_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 2 uses
  %.fca.1.extract.i10 = extractvalue { ptr, i8 } %i.ai, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.aj = trunc nuw i8 %.fca.1.extract.i10 to i1
  br i1 %i.aj, label %bb.d, label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit12

bb.d:                                             ; preds = %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit
  %.fca.0.extract.i11 = extractvalue { ptr, i8 } %i.ai, 0
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !231
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %i.t, align 8, !tbaa !231
  %i.am = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i11, i64 16
  store i32 %i.al, ptr %i.am, align 8, !tbaa !232
  br label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit12

_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit12: ; preds = %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !230
  %i.ao = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %i.ap = load i32, ptr %i.ao, align 1, !tbaa !180
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.as = call { ptr, i8 } @_ZNSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES2_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %.fca.1.extract.i13 = extractvalue { ptr, i8 } %i.as, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.at = trunc nuw i8 %.fca.1.extract.i13 to i1
  br i1 %i.at, label %bb.e, label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit15

bb.e:                                             ; preds = %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit12
  %.fca.0.extract.i14 = extractvalue { ptr, i8 } %i.as, 0
  %i.au = load i32, ptr %i.t, align 8, !tbaa !231
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.t, align 8, !tbaa !231
  %i.aw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i14, i64 16
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !232
  br label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit15

_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit15: ; preds = %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit12, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ax = getelementptr inbounds nuw i8, ptr %.018, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.q
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18JumpTargetsVisitor19preVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  switch i8 %1, label %_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EE9push_backEOS4_.exit [
    i8 -123, label %bb.b
    i8 92, label %bb.h
    i8 95, label %bb.h
    i8 -114, label %bb.h
    i8 -113, label %bb.h
  ]

end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamE:bb.a
  %4 = alloca %"class.hermes::hbc::PrettyDisassembleVisitor", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 17 uses
  %.not.i.i.i = icmp eq ptr %i.c, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 12 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.o = icmp eq i8 %.pre.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br i1 %i.o, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre78 = load i32, ptr %i.d, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread.i
  %i.p = phi i32 [ %.pre78, %._crit_edge ], [ %i.m, %.thread.i ]
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.d, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.u, align 8, !tbaa !197
  br label %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
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
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !359
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !359
  br label %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i2.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i2.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ai = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.j ], [ %i.ai, %bb.k ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.l, label %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit, !prof !171

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit

_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit: ; preds = %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc18JumpTargetsVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, i8 0, i64 64, i1 false)
  store ptr %i.an, ptr %i.am, align 8, !tbaa !193
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 7 uses
  store i64 1, ptr %i.ao, align 8, !tbaa !192
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 11 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !360
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.as, align 8, !tbaa !209
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !211
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !218
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !218
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i19 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i19, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.p ], [ %i.bf, %bb.q ]
  %i.bg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bg, label %bb.r, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !171

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes3hbc18JumpTargetsVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %1, ptr %i.bh, align 8, !tbaa !197
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(280) %i.bj, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(280) %i.bo, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = trunc i64 %i.bt to i1
  br i1 %i.bu, label %bb.s, label %bb.t, !prof !171

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !200
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %5 = load i32, ptr %.shift.i.i, align 1
  %i.bx = and i32 %5, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.s, %bb.t
  %.0.i.i = phi i32 [ %i.bw, %bb.s ], [ %i.bx, %bb.t ]
  %i.by = zext i32 %.0.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.by
  %i.ca = load ptr, ptr %3, align 8, !tbaa !19
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %1, ptr noundef %i.bs) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.bs, ptr noundef %i.bz, i1 noundef zeroext true)
  %i.cc = load ptr, ptr %3, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(28) %3) #18, !inline_history !219
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cf = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !208 ; 16 uses
  %.not.i.i.i20 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i20, label %_ZN6hermes3hbc24PrettyDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERSt13unordered_mapIPKvjSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_jEEERN4llvh11raw_ostreamENS0_18DisassemblyOptionsE.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 16 uses
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i21 = icmp eq i8 %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i21, label %bb.v, label %.thread113

.thread113:                                       ; preds = %bb.u
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ch, align 4, !tbaa !3
  %i.co = load i32, ptr %i.cj, align 8, !tbaa !361
  br label %.thread.i25

bb.v:                                             ; preds = %bb.u
  %i.cp = atomicrmw volatile add ptr %i.ch, i32 1 acq_rel, align 4 ; 0 uses
  %.pre79 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.cq = icmp eq i8 %.pre79, 0
  %i.cr = load i32, ptr %i.cj, align 8, !tbaa !361 ; 3 uses
  br i1 %i.cq, label %bb.w, label %.thread.i25

.thread.i25:                                      ; preds = %.thread113, %bb.v
  %i.cs = phi i32 [ %i.co, %.thread113 ], [ %i.cr, %bb.v ]
  %i.ct = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cu = add nsw i32 %i.ct, 1
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store ptr %i.cf, ptr %i.ck, align 8, !tbaa !8
  store ptr %i.cg, ptr %i.cl, align 8, !tbaa !208
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = atomicrmw volatile add ptr %i.ch, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i28 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.cw = icmp eq i8 %.pre.i28, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store ptr %i.cf, ptr %i.ck, align 8, !tbaa !8
  store ptr %i.cg, ptr %i.cl, align 8, !tbaa !208
  br i1 %i.cw, label %bb.y, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.w
  %.pre81 = load i32, ptr %i.ch, align 4, !tbaa !3
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge80, %.thread.i25
  %i.cx = phi i32 [ %i.cr, %._crit_edge80 ], [ %i.cs, %.thread.i25 ]
  %i.cy = phi i32 [ %.pre81, %._crit_edge80 ], [ %i.cu, %.thread.i25 ]
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.ch, align 4, !tbaa !3
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.da = atomicrmw volatile add ptr %i.ch, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.db = phi i32 [ %i.cr, %bb.y ], [ %i.cx, %bb.x ]
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.dc, align 8, !tbaa !197
  %i.dd = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ch, align 8, !tbaa !209
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !211
  %i.dh = load ptr, ptr %i.cg, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #18, !inline_history !363
  %i.dk = load ptr, ptr %i.cg, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #18, !inline_history !363
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i4.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i4.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.ch, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26

bb.ad:                                            ; preds = %bb.ab
  %i.dp = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i27 = phi i32 [ %i.df, %bb.ac ], [ %i.dp, %bb.ad ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i27, 1
  br i1 %i.dq, label %bb.ae, label %bb.af, !prof !171

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #18
  br label %bb.af

_ZN6hermes3hbc24PrettyDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERSt13unordered_mapIPKvjSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_jEEERN4llvh11raw_ostreamENS0_18DisassemblyOptionsE.exit: ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !361
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cf, ptr %i.dt, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.du, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes3hbc24PrettyDisassembleVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.am, ptr %i.dv, align 8, !tbaa !364
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.dw, align 8, !tbaa !259
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.dx, align 8, !tbaa !260
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %2, ptr %i.dy, align 8, !tbaa !301
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 %i.ds, ptr %i.dz, align 8, !tbaa !239
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

bb.af:                                            ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26, %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes3hbc24PrettyDisassembleVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.am, ptr %i.ea, align 8, !tbaa !364
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.eb, align 8, !tbaa !259
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.ec, align 8, !tbaa !260
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %2, ptr %i.ed, align 8, !tbaa !301
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 %i.db, ptr %i.ee, align 8, !tbaa !239
  %i.ef = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 4294967297
  %i.eh = trunc i64 %i.ef to i32                  ; 2 uses
  br i1 %i.eg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ch, align 8, !tbaa !209
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.ei, align 4, !tbaa !211
  %i.ej = load ptr, ptr %i.cg, align 8, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #18, !inline_history !218
  %i.em = load ptr, ptr %i.cg, align 8, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #18, !inline_history !218
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

bb.ah:                                            ; preds = %bb.af
  %i.ep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i31 = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.i31, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eq = add nsw i32 %i.eh, -1
  store i32 %i.eq, ptr %i.ch, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

bb.aj:                                            ; preds = %bb.ah
  %i.er = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i33 = phi i32 [ %i.eh, %bb.ai ], [ %i.er, %bb.aj ]
  %i.es = icmp eq i32 %.0.i.i.i.i33, 1
  br i1 %i.es, label %bb.ak, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34, !prof !171

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34: ; preds = %_ZN6hermes3hbc24PrettyDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERSt13unordered_mapIPKvjSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_jEEERN4llvh11raw_ostreamENS0_18DisassemblyOptionsE.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32, %bb.ak
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %1, ptr %i.et, align 8, !tbaa !197
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !8  ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(280) %i.ev, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !8  ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !19
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = call noundef ptr %i.fd(ptr noundef nonnull align 8 dereferenceable(280) %i.fa, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.ff = ptrtoint ptr %i.ez to i64
  %i.fg = trunc i64 %i.ff to i1
  br i1 %i.fg, label %bb.al, label %bb.am, !prof !171

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 7
  %i.fi = load i32, ptr %i.fh, align 1, !tbaa !200
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit36

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34
  %.shift.i.i35 = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %6 = load i32, ptr %.shift.i.i35, align 1
  %i.fj = and i32 %6, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit36

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit36: ; preds = %bb.al, %bb.am
  %.0.i.i35 = phi i32 [ %i.fi, %bb.al ], [ %i.fj, %bb.am ]
  %i.fk = zext i32 %.0.i.i35 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fk
  %i.fm = load ptr, ptr %4, align 8, !tbaa !19
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(28) %4, i32 noundef %1, ptr noundef %i.fe) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.fe, ptr noundef %i.fl, i1 noundef zeroext true)
  %i.fo = load ptr, ptr %4, align 8, !tbaa !19
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(28) %4) #18, !inline_history !219
  %i.fr = load ptr, ptr %i.al, align 8, !tbaa !365
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !365
  %i.fu = icmp eq ptr %i.fr, %i.ft
  br i1 %i.fu, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit36
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !14
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !18 ; 2 uses
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = icmp ult i64 %i.gb, 2
  br i1 %i.gc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.81, i64 noundef 2) #18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %.pre82 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.ap:                                            ; preds = %bb.an
  store i16 8202, ptr %i.fy, align 1
  %i.ge = load ptr, ptr %i.fx, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 2 ; 2 uses
  store ptr %i.gf, ptr %i.fx, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.ao, %bb.ap
  %i.gg = phi ptr [ %.pre82, %bb.ao ], [ %i.gf, %bb.ap ] ; 2 uses
  %.0.i.i37 = phi ptr [ %i.gd, %bb.ao ], [ %2, %bb.ap ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i37, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !14
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = icmp ult i64 %i.gl, 14
  br i1 %i.gm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.gn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i37, ptr noundef nonnull @.str.82, i64 noundef 14) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

bb.ar:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i.i37, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.gg, ptr noundef nonnull align 1 dereferenceable(14) @.str.82, i64 14, i1 false)
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 14
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

_ZN4llvh11raw_ostreamlsEPKc.exit40:               ; preds = %bb.aq, %bb.ar
  %i.gr = load ptr, ptr %i.al, align 8, !tbaa !365 ; 2 uses
  %i.gs = load ptr, ptr %i.fs, align 8, !tbaa !365 ; 2 uses
  %.not74 = icmp eq ptr %i.gr, %i.gs
  br i1 %.not74, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit40
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamEE3$_0EEvPKNS_4inst4InstET_.exit"
  %.sroa.064.075 = phi ptr [ %i.gr, %.lr.ph ], [ %i.mr, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamEE3$_0EEvPKNS_4inst4InstET_.exit" ] ; 2 uses
  %i.gu = load ptr, ptr %.sroa.064.075, align 8, !tbaa !236 ; 5 uses
  %i.gv = load ptr, ptr %i.fv, align 8, !tbaa !14
  %i.gw = load ptr, ptr %i.fx, align 8, !tbaa !18 ; 2 uses
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = icmp ult i64 %i.gz, 2
  br i1 %i.ha, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.83, i64 noundef 2) #18 ; 2 uses
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

bb.au:                                            ; preds = %bb.as
  store i16 8224, ptr %i.gw, align 1
  %i.hc = load ptr, ptr %i.fx, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2 ; 2 uses
  store ptr %i.hd, ptr %i.fx, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

_ZN4llvh11raw_ostreamlsEPKc.exit43:               ; preds = %bb.at, %bb.au
  %i.he = phi ptr [ %.pre84, %bb.at ], [ %i.hd, %bb.au ] ; 2 uses
  %.0.i.i42 = phi ptr [ %i.hb, %bb.at ], [ %2, %bb.au ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !14
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = icmp ult i64 %i.hj, 7
  br i1 %i.hk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %i.hl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i42, ptr noundef nonnull @.str.84, i64 noundef 7) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.aw:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.he, ptr noundef nonnull align 1 dereferenceable(7) @.str.84, i64 7, i1 false)
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 7
  store ptr %i.ho, ptr %i.hm, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

_ZN4llvh11raw_ostreamlsEPKc.exit46:               ; preds = %bb.av, %bb.aw
  %.0.i.i45 = phi ptr [ %i.hl, %bb.av ], [ %.0.i.i42, %bb.aw ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gu, i64 2 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 1, !tbaa !7
  %i.hr = zext i32 %i.hq to i64
  %i.hs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i45, i64 noundef %i.hr) #18 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !14
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 3 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !18 ; 2 uses
  %i.hx = icmp eq ptr %i.hu, %i.hw
  br i1 %i.hx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %i.hy = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.hs, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

bb.ay:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  store i8 10, ptr %i.hw, align 1
  %i.hz = load ptr, ptr %i.hv, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  store ptr %i.ia, ptr %i.hv, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

_ZN4llvh11raw_ostreamlsEPKc.exit49:               ; preds = %bb.ax, %bb.ay
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gu, i64 10
  %i.ic = load i32, ptr %i.ib, align 1, !tbaa !7  ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gu, i64 14
  %i.ie = load i32, ptr %i.id, align 1, !tbaa !7
  %i.if = sub i32 %i.ie, %i.ic
  %i.ig = load i32, ptr %i.hp, align 1, !tbaa !7
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ih
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = add i64 %i.ij, 3
  %i.il = and i64 %i.ik, -4
  %i.im = inttoptr i64 %i.il to ptr
  br label %bb.az

bb.az:                                            ; preds = %"_ZZN6hermes3hbc20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamEENK3$_0clEjiPKh.exit.i", %_ZN4llvh11raw_ostreamlsEPKc.exit49
  %.016.i = phi i32 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit49 ], [ %i.mq, %"_ZZN6hermes3hbc20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamEENK3$_0clEjiPKh.exit.i" ] ; 3 uses
  %i.in = zext i32 %.016.i to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3
  %i.iq = add i32 %.016.i, %i.ic
  %i.ir = zext i32 %i.ip to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ir ; 4 uses
  %i.it = load ptr, ptr %i.fv, align 8, !tbaa !14
  %i.iu = load ptr, ptr %i.fx, align 8, !tbaa !18 ; 2 uses
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = icmp ult i64 %i.ix, 3
  br i1 %i.iy, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.iz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.141, i64 noundef 3) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.iu, ptr noundef nonnull align 1 dereferenceable(3) @.str.141, i64 3, i1 false)
  %i.ja = load ptr, ptr %i.fx, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 3
  store ptr %i.jb, ptr %i.fx, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i50 = phi ptr [ %i.iz, %bb.ba ], [ %2, %bb.bb ]
  %i.jc = zext i32 %i.iq to i64
  %i.jd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i.i50, i64 noundef %i.jc) #18 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !14
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 24 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !18 ; 2 uses
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = ptrtoint ptr %i.jh to i64
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc18JumpTargetsVisitorD2Ev:bb.a

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #18, !inline_history !221
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::hbc::DisassembleVisitor", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 16 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc18DisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 16 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.o = icmp eq i8 %.pre.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br i1 %i.o, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre42 = load i32, ptr %i.d, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread.i
  %i.p = phi i32 [ %.pre42, %._crit_edge ], [ %i.m, %.thread.i ]
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.d, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !197
  %i.t = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.d, align 8, !tbaa !209
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !211
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !375
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !375
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i3.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.af = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.j ], [ %i.af, %bb.k ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !171

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %bb.m

_ZN6hermes3hbc18DisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit: ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.ah, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc18DisassembleVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %2, ptr %i.aj, align 8, !tbaa !301
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc18DisassembleVisitorE, i64 16), ptr %3, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %2, ptr %i.al, align 8, !tbaa !301
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.an = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.d, align 8, !tbaa !209
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !211
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !218
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !218
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i15 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i15, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.az = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.ap, %bb.p ], [ %i.az, %bb.q ]
  %i.ba = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ba, label %bb.r, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !171

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes3hbc18DisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  %i.bb = phi ptr [ %i.ak, %_ZN6hermes3hbc18DisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit ], [ %i.am, %bb.n ], [ %i.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.am, %bb.r ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %1, ptr %i.bc, align 8, !tbaa !197
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8  ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(280) %i.be, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(280) %i.be, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = trunc i64 %i.bn to i1
  br i1 %i.bo, label %bb.s, label %bb.t, !prof !171

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 7
  %i.bq = load i32, ptr %i.bp, align 1, !tbaa !200
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %4 = load i32, ptr %.shift.i.i, align 1
  %i.br = and i32 %4, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.s, %bb.t
  %.0.i.i = phi i32 [ %i.bq, %bb.s ], [ %i.br, %bb.t ]
  %i.bs = zext i32 %.0.i.i to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bs
  %i.bu = load ptr, ptr %3, align 8, !tbaa !19
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %1, ptr noundef %i.bm) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.bm, ptr noundef %i.bt, i1 noundef zeroext true)
  %i.bw = load ptr, ptr %3, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(28) %3) #18, !inline_history !219
  %i.bz = load ptr, ptr %i.bb, align 8, !tbaa !365
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !365
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp ult i64 %i.cj, 2
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.81, i64 noundef 2) #18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.pre43 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.w:                                             ; preds = %bb.u
  store i16 8202, ptr %i.cg, align 1
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2 ; 2 uses
  store ptr %i.cn, ptr %i.cf, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.v, %bb.w
  %i.co = phi ptr [ %.pre43, %bb.v ], [ %i.cn, %bb.w ] ; 2 uses
  %.0.i.i16 = phi ptr [ %i.cl, %bb.v ], [ %2, %bb.w ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !14
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ult i64 %i.ct, 14
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.cv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i16, ptr noundef nonnull @.str.82, i64 noundef 14) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.co, ptr noundef nonnull align 1 dereferenceable(14) @.str.82, i64 14, i1 false)
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 14
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

_ZN4llvh11raw_ostreamlsEPKc.exit19:               ; preds = %bb.x, %bb.y
  %i.cz = load ptr, ptr %i.bb, align 8, !tbaa !365 ; 2 uses
  %i.da = load ptr, ptr %i.ca, align 8, !tbaa !365 ; 2 uses
  %.not40 = icmp eq ptr %i.cz, %i.da
  br i1 %.not40, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit19, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamEE3$_0EEvPKNS_4inst4InstET_.exit"
  %.sroa.035.041 = phi ptr [ %i.gf, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamEE3$_0EEvPKNS_4inst4InstET_.exit" ], [ %i.cz, %_ZN4llvh11raw_ostreamlsEPKc.exit19 ] ; 2 uses
  %i.db = load ptr, ptr %.sroa.035.041, align 8, !tbaa !236 ; 4 uses
  %i.dc = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.dd = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = icmp ult i64 %i.dg, 2
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph
  %i.di = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.83, i64 noundef 2) #18 ; 2 uses
  %.phi.trans.insert44 = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.pre45 = load ptr, ptr %.phi.trans.insert44, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit22

bb.aa:                                            ; preds = %.lr.ph
  store i16 8224, ptr %i.dd, align 1
  %i.dj = load ptr, ptr %i.cf, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2 ; 2 uses
  store ptr %i.dk, ptr %i.cf, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit22

_ZN4llvh11raw_ostreamlsEPKc.exit22:               ; preds = %bb.z, %bb.aa
  %i.dl = phi ptr [ %.pre45, %bb.z ], [ %i.dk, %bb.aa ] ; 2 uses
  %.0.i.i21 = phi ptr [ %i.di, %bb.z ], [ %2, %bb.aa ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !14
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = icmp ult i64 %i.dq, 7
  br i1 %i.dr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit22
  %i.ds = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i21, ptr noundef nonnull @.str.84, i64 noundef 7) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit25

bb.ac:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit22
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dl, ptr noundef nonnull align 1 dereferenceable(7) @.str.84, i64 7, i1 false)
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 7
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit25

_ZN4llvh11raw_ostreamlsEPKc.exit25:               ; preds = %bb.ab, %bb.ac
  %.0.i.i24 = phi ptr [ %i.ds, %bb.ab ], [ %.0.i.i21, %bb.ac ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 2 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 1, !tbaa !7
  %i.dy = zext i32 %i.dx to i64
  %i.dz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i24, i64 noundef %i.dy) #18 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !18 ; 2 uses
  %i.ee = icmp eq ptr %i.eb, %i.ed
  br i1 %i.ee, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  %i.ef = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.dz, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

bb.ae:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  store i8 10, ptr %i.ed, align 1
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

_ZN4llvh11raw_ostreamlsEPKc.exit28:               ; preds = %bb.ad, %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %i.db, i64 10
  %i.ej = load i32, ptr %i.ei, align 1, !tbaa !7  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.db, i64 14
  %i.el = load i32, ptr %i.ek, align 1, !tbaa !7
  %i.em = sub i32 %i.el, %i.ej
  %i.en = load i32, ptr %i.dw, align 1, !tbaa !7
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.eo
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = add i64 %i.eq, 3
  %i.es = and i64 %i.er, -4
  %i.et = inttoptr i64 %i.es to ptr
  br label %bb.af

bb.af:                                            ; preds = %"_ZZN6hermes3hbc20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamEENK3$_0clEjiPKh.exit.i", %_ZN4llvh11raw_ostreamlsEPKc.exit28
  %.015.i = phi i32 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit28 ], [ %i.ge, %"_ZZN6hermes3hbc20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamEENK3$_0clEjiPKh.exit.i" ] ; 3 uses
  %i.eu = zext i32 %.015.i to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = add i32 %.015.i, %i.ej
  %i.ey = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.ez = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = icmp ult i64 %i.fc, 3
  br i1 %i.fd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fe = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.141, i64 noundef 3) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ez, ptr noundef nonnull align 1 dereferenceable(3) @.str.141, i64 3, i1 false)
  %i.ff = load ptr, ptr %i.cf, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  store ptr %i.fg, ptr %i.cf, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i29 = phi ptr [ %i.fe, %bb.ag ], [ %2, %bb.ah ]
  %i.fh = zext i32 %i.ex to i64
  %i.fi = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i.i29, i64 noundef %i.fh) #18 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !14
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !18 ; 2 uses
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp ult i64 %i.fp, 3
  br i1 %i.fq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i
  %i.fr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fi, ptr noundef nonnull @.str.145, i64 noundef 3) #18
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc20BytecodeDisassembler24generateRegexStringIDMapEv:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !171

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN6hermes3hbc14BCProviderBaseEEC2ERKS3_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.z = load ptr, ptr %1, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.t

._crit_edge:                                      ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit, %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !380 ; 3 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !382 ; 7 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 4 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i.i4, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i.thread, label %bb.k

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i.thread: ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr null, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.al, ptr %i.am, align 8, !tbaa !383
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit

bb.k:                                             ; preds = %._crit_edge
  %i.an = icmp ugt i64 %i.ak, 9223372036854775800
  br i1 %i.an, label %bb.l, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i, !prof !171

bb.l:                                             ; preds = %bb.k
  call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i: ; preds = %bb.k
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #22 ; 6 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !382
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !383
  %i.ar = add i64 %i.ai, -8
  %i.as = sub i64 %i.ar, %i.aj                    ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 56
  %i.av = ptrtoaddr ptr %i.ao to i64
  %i.aw = sub i64 %i.av, %i.aj
  %diff.check = icmp ult i64 %i.aw, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ah, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ba ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.ah, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 4
  %wide.load15 = load <2 x i64>, ptr %i.bb, align 4
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load15, ptr %i.bc, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.ao, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ], [ %i.ay, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.ah, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.be = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.be, ptr %.09.i.i.i.i.i, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.ag
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !387

_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit:    ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i.thread
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.ay, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !380
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc23RegexStringTableVisitorE, i64 16), ptr %2, align 8, !tbaa !19
  %.not.i.i.i.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i5, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !383
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.bl) #19, !inline_history !388
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i:      ; preds = %bb.m, %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %2, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !208 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i1.i, label %_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bo, align 8, !tbaa !209
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !211
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #18, !inline_history !389
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #18, !inline_history !389
  br label %_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i6 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i6, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.br, %bb.q ], [ %i.cb, %bb.r ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.s, label %_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit, !prof !171

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #18, !inline_history !390
  br label %_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit

_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.t:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.cz, %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit ] ; 5 uses
  store i32 %.07, ptr %i.ac, align 8, !tbaa !197
  %i.cd = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(280) %i.cd, i32 noundef %.07) #18, !inline_history !219 ; 3 uses
  %i.ci = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(280) %i.ci, i32 noundef %.07) #18, !inline_history !219 ; 3 uses
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = trunc i64 %i.cn to i1
  br i1 %i.co, label %bb.u, label %bb.v, !prof !171

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 7
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !200
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

bb.v:                                             ; preds = %bb.t
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %4 = load i32, ptr %.shift.i.i, align 1
  %i.cr = and i32 %4, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.u, %bb.v
  %.0.i.i = phi i32 [ %i.cq, %bb.u ], [ %i.cr, %bb.v ]
  %i.cs = zext i32 %.0.i.i to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cs
  %i.cu = load ptr, ptr %2, align 8, !tbaa !19
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %.07, ptr noundef %i.cm) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %i.cm, ptr noundef %i.ct, i1 noundef zeroext true)
  %i.cw = load ptr, ptr %2, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(28) %2) #18, !inline_history !219
  %i.cz = add nuw i32 %.07, 1                     ; 2 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !26
  %i.dd = icmp ult i32 %i.cz, %i.dc
  br i1 %i.dd, label %bb.t, label %._crit_edge, !llvm.loop !391
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc23RegexStringTableVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 10 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !3
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.k = icmp eq i8 %.pre, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  store ptr %i.a, ptr %i.f, align 8, !tbaa !8
  store ptr %i.c, ptr %i.g, align 8, !tbaa !208
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.l = load i32, ptr %i.d, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.d, align 4, !tbaa !3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !208
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8, !tbaa !197
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !197
  %i.s = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.d, align 8, !tbaa !209
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !211
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !218
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !218
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i2 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !171

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ag = phi ptr [ %i.o, %_ZN6hermes3hbc15BytecodeVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit ], [ %i.f, %bb.g ], [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.f, %bb.k ]
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc23RegexStringTableVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !42
  tail call void @_ZNSt6vectorISt4pairIjjESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %.sroa.2.0.copyload.i)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc23RegexStringTableVisitorD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc23RegexStringTableVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !382  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !383
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !208  ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !211
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !220
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !220
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !171

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !221
end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc20BytecodeDisassembler11disassembleERN4llvh11raw_ostreamE:bb.a

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit63
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, %_ZN4llvh11raw_ostreamlsEPKc.exit63
  %.lcssa = phi ptr [ %i.bn, %_ZN4llvh11raw_ostreamlsEPKc.exit63 ], [ %i.fe, %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit ] ; 3 uses
  %i.by = load i32, ptr %i.a, align 8, !tbaa !361
  %i.bz = and i32 %i.by, 32
  %.not136 = icmp eq i32 %i.bz, 0
  br i1 %.not136, label %bb.da, label %bb.am

bb.m:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit
  %i.ca = phi ptr [ %i.bn, %.lr.ph ], [ %i.fe, %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit ] ; 3 uses
  %.0137 = phi i32 [ 0, %.lr.ph ], [ %i.fd, %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !208 ; 16 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc25ObjdumpDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 16 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !3
  br label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.ch = icmp eq i8 %.pre, 0
  br i1 %i.ch, label %bb.p, label %.thread.i

.thread.i:                                        ; preds = %.thread, %bb.o
  %i.ci = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.cj = add nsw i32 %i.ci, 1
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store ptr %i.ca, ptr %i.br, align 8, !tbaa !8
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !208
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ck = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.cl = icmp eq i8 %.pre.i, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store ptr %i.ca, ptr %i.br, align 8, !tbaa !8
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !208
  br i1 %i.cl, label %bb.r, label %._crit_edge145

._crit_edge145:                                   ; preds = %bb.p
  %.pre146 = load i32, ptr %i.cc, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge145, %.thread.i
  %i.cm = phi i32 [ %.pre146, %._crit_edge145 ], [ %i.cj, %.thread.i ]
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cc, align 4, !tbaa !3
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.co = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 0, ptr %i.bt, align 8, !tbaa !197
  %i.cp = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967297
  %i.cr = trunc i64 %i.cp to i32                  ; 2 uses
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.cc, align 8, !tbaa !209
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !211
  %i.ct = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #18, !inline_history !395
  %i.cw = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #18, !inline_history !395
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i3.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i3.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.cc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.db = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi i32 [ %i.cr, %bb.v ], [ %i.db, %bb.w ]
  %i.dc = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dc, label %bb.x, label %bb.y, !prof !171

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #18
  br label %bb.y

_ZN6hermes3hbc25ObjdumpDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit: ; preds = %bb.m
  store ptr %i.ca, ptr %i.br, align 8, !tbaa !8
  store ptr null, ptr %i.bs, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc25ObjdumpDisassembleVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store i32 0, ptr %i.bu, align 4, !tbaa !396
  store i32 0, ptr %i.bv, align 8, !tbaa !398
  store ptr null, ptr %i.bw, align 8, !tbaa !399
  store ptr %1, ptr %i.bx, align 8, !tbaa !301
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.x
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc25ObjdumpDisassembleVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store i32 0, ptr %i.bu, align 4, !tbaa !396
  store i32 0, ptr %i.bv, align 8, !tbaa !398
  store ptr null, ptr %i.bw, align 8, !tbaa !399
  store ptr %1, ptr %i.bx, align 8, !tbaa !301
  %i.dd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cc, align 8, !tbaa !209
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !211
  %i.dh = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #18, !inline_history !218
  %i.dk = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #18, !inline_history !218
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i65 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i65, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.cc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.df, %bb.ab ], [ %i.dp, %bb.ac ]
  %i.dq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dq, label %bb.ad, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !171

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes3hbc25ObjdumpDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ad
  store i32 %.0137, ptr %i.bt, align 8, !tbaa !197
  %i.dr = load ptr, ptr %i.br, align 8, !tbaa !8  ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call ptr %i.du(ptr noundef nonnull align 8 dereferenceable(280) %i.dr, i32 noundef %.0137) #18, !inline_history !219 ; 3 uses
  %i.dw = load ptr, ptr %i.br, align 8, !tbaa !8  ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(280) %i.dw, i32 noundef %.0137) #18, !inline_history !219 ; 3 uses
  %i.eb = ptrtoint ptr %i.dv to i64
  %i.ec = trunc i64 %i.eb to i1
  br i1 %i.ec, label %bb.ae, label %bb.af, !prof !171

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 7
  %i.ee = load i32, ptr %i.ed, align 1, !tbaa !200
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %10 = load i32, ptr %.shift.i.i, align 1
  %i.ef = and i32 %10, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.ae, %bb.af
  %.0.i.i66 = phi i32 [ %i.ee, %bb.ae ], [ %i.ef, %bb.af ]
  %i.eg = zext i32 %.0.i.i66 to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eg
  %i.ei = load ptr, ptr %4, align 8, !tbaa !19
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(28) %4, i32 noundef %.0137, ptr noundef %i.ea) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.ea, ptr noundef %i.eh, i1 noundef zeroext true)
  %i.ek = load ptr, ptr %4, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(28) %4) #18, !inline_history !219
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  %i.en = load ptr, ptr %i.bs, align 8, !tbaa !208 ; 8 uses
  %.not.i.i.i67 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i67, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.eo, align 8, !tbaa !209
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !211
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #18, !inline_history !220
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #18, !inline_history !220
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i68 = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i68, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69

bb.ak:                                            ; preds = %bb.ai
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i70 = phi i32 [ %i.er, %bb.aj ], [ %i.fb, %bb.ak ]
  %i.fc = icmp eq i32 %.0.i.i.i.i.i70, 1
  br i1 %i.fc, label %bb.al, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !171

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #18, !inline_history !221
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.fd = add nuw i32 %.0137, 1                   ; 2 uses
  %i.fe = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !26
  %i.fh = icmp ult i32 %i.fd, %i.fg
  br i1 %i.fh, label %bb.m, label %._crit_edge, !llvm.loop !400

bb.am:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !208 ; 16 uses
  %.not.i.i.i71 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i71, label %_ZN6hermes3hbc25ObjdumpDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit82, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 16 uses
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i72 = icmp eq i8 %i.fl, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i72, label %bb.ao, label %.thread168

.thread168:                                       ; preds = %bb.an
  %i.fo = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fk, align 4, !tbaa !3
  br label %.thread.i76

bb.ao:                                            ; preds = %bb.an
  %i.fq = atomicrmw volatile add ptr %i.fk, i32 1 acq_rel, align 4 ; 0 uses
  %.pre147 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.fr = icmp eq i8 %.pre147, 0
  br i1 %i.fr, label %bb.ap, label %.thread.i76

.thread.i76:                                      ; preds = %.thread168, %bb.ao
  %i.fs = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.ft = add nsw i32 %i.fs, 1
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %5, align 8, !tbaa !19
  store ptr %.lcssa, ptr %i.fm, align 8, !tbaa !8
  store ptr %i.fj, ptr %i.fn, align 8, !tbaa !208
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fu = atomicrmw volatile add ptr %i.fk, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i80 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.fv = icmp eq i8 %.pre.i80, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %5, align 8, !tbaa !19
  store ptr %.lcssa, ptr %i.fm, align 8, !tbaa !8
  store ptr %i.fj, ptr %i.fn, align 8, !tbaa !208
  br i1 %i.fv, label %bb.ar, label %._crit_edge148

._crit_edge148:                                   ; preds = %bb.ap
  %.pre149 = load i32, ptr %i.fk, align 4, !tbaa !3
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge148, %.thread.i76
  %i.fw = phi i32 [ %.pre149, %._crit_edge148 ], [ %i.ft, %.thread.i76 ]
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fk, align 4, !tbaa !3
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fy = atomicrmw volatile add ptr %i.fk, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.fz, align 8, !tbaa !197
  %i.ga = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fk, align 8, !tbaa !209
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !211
  %i.ge = load ptr, ptr %i.fj, align 8, !tbaa !19
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #18, !inline_history !395
  %i.gh = load ptr, ptr %i.fj, align 8, !tbaa !19
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #18, !inline_history !395
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i3.i77 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i3.i77, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

bb.aw:                                            ; preds = %bb.au
  %i.gm = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i79 = phi i32 [ %i.gc, %bb.av ], [ %i.gm, %bb.aw ]
  %i.gn = icmp eq i32 %.0.i.i.i.i.i79, 1
  br i1 %i.gn, label %bb.ax, label %bb.ay, !prof !171

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #18
  br label %bb.ay

_ZN6hermes3hbc25ObjdumpDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit82: ; preds = %bb.am
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.lcssa, ptr %i.go, align 8, !tbaa !8
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.gp, align 8, !tbaa !208
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.gq, align 8, !tbaa !197
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc25ObjdumpDisassembleVisitorE, i64 16), ptr %5, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.gr, align 4, !tbaa !396
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.gs, align 8, !tbaa !398
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.gt, align 8, !tbaa !399
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %1, ptr %i.gu, align 8, !tbaa !301
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.ay:                                            ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78, %bb.ax
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc25ObjdumpDisassembleVisitorE, i64 16), ptr %5, align 8, !tbaa !19
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.gv, align 4, !tbaa !396
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.gw, align 8, !tbaa !398
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 40
end_hunk_4
