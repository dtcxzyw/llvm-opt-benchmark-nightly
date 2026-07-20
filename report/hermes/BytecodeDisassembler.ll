inline.NumInlined: 1739
inline.NumDeleted: 636
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes3hbc20BytecodeDisassembler34disassembleExceptionHandlersPrettyEjRKSt13unordered_mapIPKvjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEERN4llvh11raw_ostreamE:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cj ; 4 uses
  %i.cl = load i64, ptr %i.z, align 8, !tbaa !182
  %.not.not.i.i.i28 = icmp eq i64 %i.cl, 0
  br i1 %.not.not.i.i.i28, label %.preheader87, label %bb.r

.preheader87:                                     ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit27, %bb.q
  %.sroa.06.0.in.i.i.i37 = phi ptr [ %.sroa.06.0.i.i.i38, %bb.q ], [ %i.ab, %_ZN4llvh11raw_ostreamlsEPKc.exit27 ]
  %.sroa.06.0.i.i.i38 = load ptr, ptr %.sroa.06.0.in.i.i.i37, align 8, !tbaa !189 ; 4 uses
  %.not.i.i.i39 = icmp eq ptr %.sroa.06.0.i.i.i38, null
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
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !200
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = load i64, ptr %i.bl, align 1
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.s, %bb.t
  %.0.i.i = phi i32 [ %i.bt, %bb.s ], [ %i.bx, %bb.t ]
  %i.by = zext i32 %.0.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.by
  %i.ca = load ptr, ptr %4, align 8, !tbaa !19
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(28) %4, i32 noundef %1, ptr noundef %i.bp) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.bp, ptr noundef %i.bz, i1 noundef zeroext true)
  %i.cc = load ptr, ptr %4, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(28) %4) #18, !inline_history !219
  %i.cf = load i32, ptr %i.am, align 4, !tbaa !213
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !208 ; 8 uses
  %.not.i.i.i5 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i5, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ci, align 8, !tbaa !209
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !211
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !220
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !220
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i6 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i6, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7

bb.y:                                             ; preds = %bb.w
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i8 = phi i32 [ %i.cl, %bb.x ], [ %i.cv, %bb.y ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i8, 1
  br i1 %i.cw, label %bb.z, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !171

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !221
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i7, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %i.cf
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
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc18JumpTargetsVisitor19preVisitInstructionENS_4inst6OpCodeEPKhi:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #19
  br label %_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.t, ptr %i.c, align 8, !tbaa !238
  store ptr %i.w, ptr %i.d, align 8, !tbaa !234
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.f, align 8, !tbaa !235
  br label %_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EE9push_backEOS4_.exit

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.y = sext i32 %3 to i64
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.z, ptr %i.a, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ab = call { ptr, i8 } @_ZNSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES2_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ac = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.ac, label %bb.i, label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !231
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !231
  %i.ag = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !232
  br label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit

_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c, %bb.a, %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc18JumpTargetsVisitor12visitOperandEPKhNS_4inst11OperandTypeES3_i(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i8 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, i32 %4) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  switch i8 %2, label %bb.f [
    i8 6, label %bb.d
    i8 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %3, align 1, !tbaa !7
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8, !tbaa !190
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.i = call { ptr, i8 } @_ZNSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES2_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.j = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.j, label %bb.c, label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !231
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i32 %i.m, ptr %i.n, align 8, !tbaa !232
  br label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit

_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.o = load i32, ptr %3, align 1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.q, ptr %i.a, align 8, !tbaa !190
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.s = call { ptr, i8 } @_ZNSt10_HashtableIPKvSt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_iEEES2_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %.fca.1.extract.i54 = extractvalue { ptr, i8 } %i.s, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.t = trunc nuw i8 %.fca.1.extract.i54 to i1
  br i1 %i.t, label %bb.e, label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit56

bb.e:                                             ; preds = %bb.d
  %.fca.0.extract.i55 = extractvalue { ptr, i8 } %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !231
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !231
  %i.x = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i55, i64 16
  store i32 %i.w, ptr %i.x, align 8, !tbaa !232
  br label %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit56

_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit56: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit56, %_ZN6hermes3hbc18JumpTargetsVisitor16createOrSetLabelEPKv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc24PrettyDisassembleVisitor17dumpOperandBigIntEjRN4llvh11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.0.0.copyload.i6 = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i6, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !135
  %i.i = load i32, ptr %i.f, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.j = zext i32 %i.i to i64
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.j
  call fastcc void @_ZN6hermes3hbcL36bigintMagnitudeToLengthLimitedStringB5cxx11EN4llvh8ArrayRefIhEE(ptr dead_on_unwind noalias writable align 8 %3, ptr %i.l, i64 %i.k)
  %i.m = load ptr, ptr %3, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.m, i64 noundef %i.o) #18 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull @.str.49, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 110, ptr %i.t, align 1
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.s, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.y = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !7
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc24PrettyDisassembleVisitor19dumpOperandFunctionEjRN4llvh11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::hbc::RuntimeFunctionHeader", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %1) #18
  store ptr %i.f, ptr %3, align 8
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !239
  call fastcc void @_ZN6hermes3hbcL16dumpFunctionNameERN4llvh11raw_ostreamERNS0_14BCProviderBaseEjRKNS0_21RuntimeFunctionHeaderENS0_18DisassemblyOptionsE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(280) %i.g, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes3hbcL16dumpFunctionNameERN4llvh11raw_ostreamERNS0_14BCProviderBaseEjRKNS0_21RuntimeFunctionHeaderENS0_18DisassemblyOptionsE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !245    ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i1
  %..i = select i1 %i.c, i64 29, i64 15, !prof !171
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %..i
  %.sroa.0.0.i = load i8, ptr %i.d, align 1, !tbaa !7
  %i.e = and i8 %.sroa.0.0.i, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  switch i8 %i.e, label %bb.h [
    i8 0, label %bb.b
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.120, i64 noundef 11) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.i, ptr noundef nonnull align 1 dereferenceable(11) @.str.120, i64 11, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 11
  store ptr %i.p, ptr %i.h, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.l, 10
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.121, i64 noundef 10) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, ptr noundef nonnull align 1 dereferenceable(10) @.str.121, i64 10, i1 false)
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store ptr %i.t, ptr %i.h, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.a
  %i.u = icmp ult i64 %i.l, 8
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.122, i64 noundef 8) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.j:                                             ; preds = %bb.h
  store i64 7957695015192261958, ptr %i.i, align 1
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.h, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c
  %i.y = load ptr, ptr %3, align 8, !tbaa !245    ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.l, !prof !171

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !247
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ad = load i64, ptr %i.y, align 1
  %i.ae = lshr i64 %i.ad, 47
  %i.af = trunc nuw nsw i64 %i.ae to i32
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi i32 [ %i.ac, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(280) %1, i32 noundef %.0.i) #18, !inline_history !248 ; 2 uses
  %.sroa.42.0.extract.shift.i = lshr i64 %i.aj, 32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.al = and i64 %i.aj, 4294967295
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.al ; 2 uses
  %i.an = and i64 %.sroa.42.0.extract.shift.i, 2147483647 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit
  %i.at = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.123, i64 noundef 1) #18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

bb.n:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit
  store i8 60, ptr %i.ar, align 1
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

_ZN4llvh11raw_ostreamlsEPKc.exit19:               ; preds = %bb.m, %bb.n
  %i.aw = phi ptr [ %.pre, %bb.m ], [ %i.av, %bb.n ] ; 3 uses
  %.0.i.i18 = phi ptr [ %i.at, %bb.m ], [ %0, %bb.n ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i18, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i18, i64 24 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ugt i64 %i.an, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit19
  %i.be = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i18, ptr noundef %i.am, i64 noundef %i.an) #18 ; 2 uses
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.p:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit19
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.am, i64 %i.an, i1 false)
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.an ; 2 uses
  store ptr %i.bg, ptr %i.az, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.o, %bb.p, %bb.q
  %i.bh = phi ptr [ %.pre25, %bb.o ], [ %i.bg, %bb.q ], [ %i.aw, %bb.p ] ; 2 uses
  %.0.i20 = phi ptr [ %i.be, %bb.o ], [ %.0.i.i18, %bb.q ], [ %.0.i.i18, %bb.p ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i20, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.bk = icmp eq ptr %i.bj, %i.bh
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.bl = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i20, ptr noundef nonnull @.str.124, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit23

bb.s:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i20, i64 24 ; 2 uses
  store i8 62, ptr %i.bh, align 1
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit23

_ZN4llvh11raw_ostreamlsEPKc.exit23:               ; preds = %bb.r, %bb.s
  %i.bp = and i32 %4, 8
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit23
  %i.bq = zext i32 %2 to i64
  %i.br = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.bq) #18 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4llvh11raw_ostreamlsEPKc.exit23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc24PrettyDisassembleVisitor17dumpOperandStringEjRN4llvh11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %4 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249, !nonnull !250, !align !251 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp ult ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.b, i8 noundef zeroext 34) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !18
  store i8 34, ptr %i.d, align 1, !tbaa !7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i64 %i.n(ptr noundef nonnull align 8 dereferenceable(280) %i.j, i32 noundef %1) #18 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.o, 32
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.p ; 19 uses
  %i.r = and i64 %.sroa.4.0.extract.shift, 2147483647 ; 19 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = icmp slt i64 %i.o, 0
  %.not4172.not = icmp eq i64 %i.r, 0             ; 2 uses
  br i1 %i.t, label %.preheader, label %.preheader67

.preheader67:                                     ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  br i1 %.not4172.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader67
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 37 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 18 uses
  %i.w = load i8, ptr %i.q, align 1, !tbaa !7     ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !18   ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !14
  %.not.i59 = icmp ult ptr %i.x, %i.y
  br i1 %.not.i59, label %bb.aa, label %bb.z

.preheader:                                       ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  br i1 %.not4172.not, label %.critedge, label %.lr.ph75

.lr.ph75:                                         ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 22
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph75, %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %.03674 = phi i32 [ 0, %.lr.ph75 ], [ %i.cg, %_ZN4llvh11raw_ostreamlsEPKc.exit46 ] ; 2 uses
  %.03973 = phi ptr [ %i.q, %.lr.ph75 ], [ %i.ch, %_ZN4llvh11raw_ostreamlsEPKc.exit46 ] ; 2 uses
  %i.al = icmp samesign ugt i32 %.03674, 16
  br i1 %i.al, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 4
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.50, i64 noundef 4) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc12formatStringIJPKcjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_DpT_:bb.a
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.e, i64 noundef %i.d, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #18 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.i = add nsw i64 %i.d, -1                     ; 4 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !42
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !21
  %i.l = load i64, ptr %i.a, align 8, !tbaa !42
  store i64 %i.l, ptr %i.g, align 8, !tbaa !7
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !7
  store i8 %i.n, ptr %i.m, align 1, !tbaa !7
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.e, i64 %i.i, i1 false)
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  store i64 %i.o, ptr %i.h, align 8, !tbaa !25
  %i.p = load ptr, ptr %0, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZdaPv(ptr noundef nonnull %i.e) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc21BytecodeSectionWalkerC2EPKhSt10shared_ptrINS0_20BCProviderFromBufferEERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 104)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !288
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !190
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !190
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !288
  br label %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = phi ptr [ %1, %bb.a ], [ %1, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.k, align 8, !tbaa !301
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, i8 0, i64 72, i1 false)
  %i.m = load ptr, ptr %2, align 8, !tbaa !302
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 296
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !303  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.q = load i32, ptr %i.p, align 1, !tbaa !329
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionINS0_15SmallFuncHeaderEEEvPKcPKT_S8_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.61, ptr noundef %i.o, ptr noundef %i.s)
  %i.t = load ptr, ptr %2, align 8, !tbaa !302    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !46 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionINS_10StringKind5EntryEEEvPKcPKT_S9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.62, ptr noundef %.sroa.0.0.copyload.i, ptr noundef %i.v)
  %i.w = load ptr, ptr %2, align 8, !tbaa !302    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.0.0.copyload.i23 = load ptr, ptr %i.x, align 8, !tbaa !45 ; 2 uses
  %.sroa.2.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.2.0.copyload.i25 = load i64, ptr %.sroa.2.0..sroa_idx.i24, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i23, i64 %.sroa.2.0.copyload.i25
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIjEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.63, ptr noundef %.sroa.0.0.copyload.i23, ptr noundef %i.y)
  %i.z = load ptr, ptr %2, align 8, !tbaa !302    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 304
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !331 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionINS0_21SmallStringTableEntryEEEvPKcPKT_S8_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.64, ptr noundef %i.ab, ptr noundef %i.af)
  %i.ag = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 312
  %.sroa.0.0.copyload.i35 = load ptr, ptr %i.ah, align 8, !tbaa !332 ; 2 uses
  %.sroa.2.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.ag, i64 320
  %.sroa.2.0.copyload.i37 = load i64, ptr %.sroa.2.0..sroa_idx.i36, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i35, i64 %.sroa.2.0.copyload.i37
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionINS0_24OverflowStringTableEntryEEEvPKcPKT_S8_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.65, ptr noundef %.sroa.0.0.copyload.i35, ptr noundef %i.ai)
  %i.aj = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.0.0.copyload.i45 = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %.sroa.2.0.copyload.i47 = load i64, ptr %.sroa.2.0..sroa_idx.i46, align 8, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i45, i64 %.sroa.2.0.copyload.i47
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIhEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.66, ptr noundef %.sroa.0.0.copyload.i45, ptr noundef %i.al)
  %i.am = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %.sroa.0.0.copyload.i55 = load ptr, ptr %i.an, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %.sroa.2.0.copyload.i57 = load i64, ptr %.sroa.2.0..sroa_idx.i56, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i55, i64 %.sroa.2.0.copyload.i57
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIhEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.67, ptr noundef %.sroa.0.0.copyload.i55, ptr noundef %i.ao)
  %i.ap = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %.sroa.0.0.copyload.i65 = load ptr, ptr %i.aq, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %.sroa.2.0.copyload.i67 = load i64, ptr %.sroa.2.0..sroa_idx.i66, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i65, i64 %.sroa.2.0.copyload.i67
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIhEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.68, ptr noundef %.sroa.0.0.copyload.i65, ptr noundef %i.ar)
  %i.as = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %.sroa.0.0.copyload.i75 = load ptr, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %.sroa.2.0.copyload.i77 = load i64, ptr %.sroa.2.0..sroa_idx.i76, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i75, i64 %.sroa.2.0.copyload.i77
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIhEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.69, ptr noundef %.sroa.0.0.copyload.i75, ptr noundef %i.au)
  %i.av = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %.sroa.0.0.copyload.i85 = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %.sroa.2.0.copyload.i87 = load i64, ptr %.sroa.2.0..sroa_idx.i86, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i85, i64 %.sroa.2.0.copyload.i87
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIhEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.70, ptr noundef %.sroa.0.0.copyload.i85, ptr noundef %i.ax)
  %i.ay = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %.sroa.0.0.copyload.i95 = load ptr, ptr %i.az, align 8, !tbaa !333 ; 2 uses
  %.sroa.2.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %.sroa.2.0.copyload.i97 = load i64, ptr %.sroa.2.0..sroa_idx.i96, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i95, i64 %.sroa.2.0.copyload.i97
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionINS_16RegExpTableEntryEEEvPKcPKT_S8_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.71, ptr noundef %.sroa.0.0.copyload.i95, ptr noundef %i.ba)
  %i.bb = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  %.sroa.0.0.copyload.i105 = load ptr, ptr %i.bc, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.bb, i64 176
  %.sroa.2.0.copyload.i107 = load i64, ptr %.sroa.2.0..sroa_idx.i106, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i105, i64 %.sroa.2.0.copyload.i107
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIhEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.72, ptr noundef %.sroa.0.0.copyload.i105, ptr noundef %i.bd)
  %i.be = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  %.sroa.0.0.copyload.i115 = load ptr, ptr %i.bf, align 8, !tbaa !172 ; 2 uses
  %.sroa.2.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %.sroa.2.0.copyload.i117 = load i64, ptr %.sroa.2.0..sroa_idx.i116, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i115, i64 %.sroa.2.0.copyload.i117
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionISt4pairIjjEEEvPKcPKT_S9_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.73, ptr noundef %.sroa.0.0.copyload.i115, ptr noundef %i.bg)
  %i.bh = load ptr, ptr %2, align 8, !tbaa !302   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 288
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !334 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 296
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !303 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = and i8 %i.bn, 32
  %.not.i.i = icmp eq i8 %i.bo, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i, label %bb.e, !prof !137

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = shl i32 %i.bq, 16
  %i.bs = load i64, ptr %i.bl, align 1
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 33554431
  %i.bv = or i32 %i.bu, %i.br
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i: ; preds = %bb.e, %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit
  %.sroa.0.0.i.i = phi ptr [ %i.by, %bb.e ], [ %i.bl, %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit ] ; 3 uses
  %i.bz = ptrtoint ptr %.sroa.0.0.i.i to i64
  %i.ca = trunc i64 %i.bz to i1
  br i1 %i.ca, label %bb.f, label %bb.g, !prof !171

bb.f:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -1
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !335
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit

bb.g:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i
  %i.cd = load i64, ptr %.sroa.0.0.i.i, align 1
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 33554431
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit

_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.cc, %bb.f ], [ %i.cf, %bb.g ]
  br i1 %.not.i.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit, label %bb.h, !prof !137

bb.h:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = shl i32 %i.ch, 16
  %i.cj = load i64, ptr %i.bl, align 1
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 33554431
  %i.cm = or i32 %i.cl, %i.ci
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit: ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit, %bb.h
  %.sroa.0.0.i = phi ptr [ %i.cp, %bb.h ], [ %i.bl, %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit ] ; 3 uses
  %i.cq = ptrtoint ptr %.sroa.0.0.i to i64
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %bb.i, label %bb.j, !prof !171

bb.i:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !336
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader10infoOffsetEv.exit

bb.j:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = and i32 %i.cv, 33554431
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader10infoOffsetEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader10infoOffsetEv.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ct, %bb.i ], [ %i.cw, %bb.j ]
  %i.cx = zext i32 %.0.i.i to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cx
  %i.cz = zext i32 %.0.i to i64
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.dc = load i32, ptr %i.db, align 1, !tbaa !337
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd ; 2 uses
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIhEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.74, ptr noundef %i.cy, ptr noundef %i.da)
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIhEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.75, ptr noundef %i.da, ptr noundef %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.dg = load i32, ptr %i.df, align 1, !tbaa !338
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh
  tail call void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionIhEEvPKcPKT_S7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.76, ptr noundef %i.de, ptr noundef %i.di)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc21BytecodeSectionWalker10addSectionINS0_15SmallFuncHeaderEEEvPKcPKT_S8_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !339  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !340
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !339
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !341  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #21
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !44
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #19
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !341
  store ptr %i.u, ptr %i.b, align 8, !tbaa !339
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !340
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit:    ; preds = %bb.b, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !342  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !343
  %.not.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit
  store ptr %2, ptr %i.y, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !342
  br label %_ZNSt6vectorIPKhSaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !344 ; 4 uses
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.i, label %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #21
  unreachable

_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #22 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  store ptr %2, ptr %i.ao, align 8, !tbaa !44
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #19
  br label %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPKhSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.an, ptr %i.w, align 8, !tbaa !344
  store ptr %i.aq, ptr %i.x, align 8, !tbaa !342
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !343
  br label %_ZNSt6vectorIPKhSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKhSaIS1_EE9push_backEOS1_.exit:     ; preds = %bb.g, %_ZNSt6vectorIPKhSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !342 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !343
  %.not.i.i3 = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i.i3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EE9push_backEOS1_.exit
  store ptr %3, ptr %i.au, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !342
  br label %_ZNSt6vectorIPKhSaIS1_EE9push_backEOS1_.exit10

bb.m:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EE9push_backEOS1_.exit
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !344 ; 4 uses
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.n, label %_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i4

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #21
  unreachable

_ZNKSt6vectorIPKhSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i4: ; preds = %bb.m
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i5 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i5, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i.i6 = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i6)
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc21BytecodeSectionWalker18printSectionRangesEb:bb.a
  %i.gt = ashr exact i64 %i.gs, 3
  %i.gu = icmp ugt i64 %i.gt, %i.gn
  br i1 %i.gu, label %bb.d, label %._crit_edge, !llvm.loop !358
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::hbc::JumpTargetsVisitor", align 8 ; 32 uses
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
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !3
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
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
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
  %i.bx = load i64, ptr %i.bn, align 1
  %i.by = lshr i64 %i.bx, 32
  %i.bz = trunc nuw i64 %i.by to i32
  %i.ca = and i32 %i.bz, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.s, %bb.t
  %.0.i.i = phi i32 [ %i.bw, %bb.s ], [ %i.ca, %bb.t ]
  %i.cb = zext i32 %.0.i.i to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cb
  %i.cd = load ptr, ptr %3, align 8, !tbaa !19
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %1, ptr noundef %i.bs) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.bs, ptr noundef %i.cc, i1 noundef zeroext true)
  %i.cf = load ptr, ptr %3, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(28) %3) #18, !inline_history !219
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ci = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !208 ; 16 uses
  %.not.i.i.i20 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i20, label %_ZN6hermes3hbc24PrettyDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERSt13unordered_mapIPKvjSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_jEEERN4llvh11raw_ostreamENS0_18DisassemblyOptionsE.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 16 uses
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i21 = icmp eq i8 %i.cl, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i21, label %bb.v, label %.thread113

.thread113:                                       ; preds = %bb.u
  %i.cp = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.ck, align 4, !tbaa !3
  %i.cr = load i32, ptr %i.cm, align 8, !tbaa !361
  br label %.thread.i25

bb.v:                                             ; preds = %bb.u
  %i.cs = atomicrmw volatile add ptr %i.ck, i32 1 acq_rel, align 4 ; 0 uses
  %.pre79 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.ct = icmp eq i8 %.pre79, 0
  %i.cu = load i32, ptr %i.cm, align 8, !tbaa !361 ; 3 uses
  br i1 %i.ct, label %bb.w, label %.thread.i25

.thread.i25:                                      ; preds = %.thread113, %bb.v
  %i.cv = phi i32 [ %i.cr, %.thread113 ], [ %i.cu, %bb.v ]
  %i.cw = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cx = add nsw i32 %i.cw, 1
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store ptr %i.ci, ptr %i.cn, align 8, !tbaa !8
  store ptr %i.cj, ptr %i.co, align 8, !tbaa !208
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cy = atomicrmw volatile add ptr %i.ck, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i28 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.cz = icmp eq i8 %.pre.i28, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  store ptr %i.ci, ptr %i.cn, align 8, !tbaa !8
  store ptr %i.cj, ptr %i.co, align 8, !tbaa !208
  br i1 %i.cz, label %bb.y, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.w
  %.pre81 = load i32, ptr %i.ck, align 4, !tbaa !3
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge80, %.thread.i25
  %i.da = phi i32 [ %i.cu, %._crit_edge80 ], [ %i.cv, %.thread.i25 ]
  %i.db = phi i32 [ %.pre81, %._crit_edge80 ], [ %i.cx, %.thread.i25 ]
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.ck, align 4, !tbaa !3
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dd = atomicrmw volatile add ptr %i.ck, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.de = phi i32 [ %i.cu, %bb.y ], [ %i.da, %bb.x ]
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.df, align 8, !tbaa !197
  %i.dg = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ck, align 8, !tbaa !209
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !211
  %i.dk = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #18, !inline_history !363
  %i.dn = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #18, !inline_history !363
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i4.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i4.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26

bb.ad:                                            ; preds = %bb.ab
  %i.ds = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i27 = phi i32 [ %i.di, %bb.ac ], [ %i.ds, %bb.ad ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i27, 1
  br i1 %i.dt, label %bb.ae, label %bb.af, !prof !171

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #18
  br label %bb.af

_ZN6hermes3hbc24PrettyDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERSt13unordered_mapIPKvjSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_jEEERN4llvh11raw_ostreamENS0_18DisassemblyOptionsE.exit: ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !361
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ci, ptr %i.dw, align 8, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.dx, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes3hbc24PrettyDisassembleVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.am, ptr %i.dy, align 8, !tbaa !364
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.dz, align 8, !tbaa !259
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.ea, align 8, !tbaa !260
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %2, ptr %i.eb, align 8, !tbaa !301
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 %i.dv, ptr %i.ec, align 8, !tbaa !239
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

bb.af:                                            ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26, %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes3hbc24PrettyDisassembleVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.am, ptr %i.ed, align 8, !tbaa !364
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.ee, align 8, !tbaa !259
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.ef, align 8, !tbaa !260
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %2, ptr %i.eg, align 8, !tbaa !301
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 %i.de, ptr %i.eh, align 8, !tbaa !239
  %i.ei = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 4294967297
  %i.ek = trunc i64 %i.ei to i32                  ; 2 uses
  br i1 %i.ej, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ck, align 8, !tbaa !209
  %i.el = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !211
  %i.em = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #18, !inline_history !218
  %i.ep = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #18, !inline_history !218
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

bb.ah:                                            ; preds = %bb.af
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i31 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i31, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

bb.aj:                                            ; preds = %bb.ah
  %i.eu = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i33 = phi i32 [ %i.ek, %bb.ai ], [ %i.eu, %bb.aj ]
  %i.ev = icmp eq i32 %.0.i.i.i.i33, 1
  br i1 %i.ev, label %bb.ak, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34, !prof !171

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34: ; preds = %_ZN6hermes3hbc24PrettyDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERSt13unordered_mapIPKvjSt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_jEEERN4llvh11raw_ostreamENS0_18DisassemblyOptionsE.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32, %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %1, ptr %i.ew, align 8, !tbaa !197
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !8  ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !19
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call ptr %i.fb(ptr noundef nonnull align 8 dereferenceable(280) %i.ey, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !8  ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !19
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call noundef ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(280) %i.fd, i32 noundef %1) #18, !inline_history !219 ; 3 uses
  %i.fi = ptrtoint ptr %i.fc to i64
  %i.fj = trunc i64 %i.fi to i1
  br i1 %i.fj, label %bb.al, label %bb.am, !prof !171

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 7
  %i.fl = load i32, ptr %i.fk, align 1, !tbaa !200
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit36

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit34
  %i.fm = load i64, ptr %i.fc, align 1
  %i.fn = lshr i64 %i.fm, 32
  %i.fo = trunc nuw i64 %i.fn to i32
  %i.fp = and i32 %i.fo, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit36

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit36: ; preds = %bb.al, %bb.am
  %.0.i.i35 = phi i32 [ %i.fl, %bb.al ], [ %i.fp, %bb.am ]
  %i.fq = zext i32 %.0.i.i35 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fq
  %i.fs = load ptr, ptr %4, align 8, !tbaa !19
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(28) %4, i32 noundef %1, ptr noundef %i.fh) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.fh, ptr noundef %i.fr, i1 noundef zeroext true)
  %i.fu = load ptr, ptr %4, align 8, !tbaa !19
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(28) %4) #18, !inline_history !219
  %i.fx = load ptr, ptr %i.al, align 8, !tbaa !365
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !365
  %i.ga = icmp eq ptr %i.fx, %i.fz
  br i1 %i.ga, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit36
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !14
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !18 ; 2 uses
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = icmp ult i64 %i.gh, 2
  br i1 %i.gi, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.81, i64 noundef 2) #18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %.pre82 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.ap:                                            ; preds = %bb.an
  store i16 8202, ptr %i.ge, align 1
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2 ; 2 uses
  store ptr %i.gl, ptr %i.gd, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.ao, %bb.ap
  %i.gm = phi ptr [ %.pre82, %bb.ao ], [ %i.gl, %bb.ap ] ; 2 uses
  %.0.i.i37 = phi ptr [ %i.gj, %bb.ao ], [ %2, %bb.ap ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.i37, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !14
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = icmp ult i64 %i.gr, 14
  br i1 %i.gs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.gt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i37, ptr noundef nonnull @.str.82, i64 noundef 14) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

bb.ar:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i.i37, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.gm, ptr noundef nonnull align 1 dereferenceable(14) @.str.82, i64 14, i1 false)
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 14
  store ptr %i.gw, ptr %i.gu, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

_ZN4llvh11raw_ostreamlsEPKc.exit40:               ; preds = %bb.aq, %bb.ar
  %i.gx = load ptr, ptr %i.al, align 8, !tbaa !365 ; 2 uses
  %i.gy = load ptr, ptr %i.fy, align 8, !tbaa !365 ; 2 uses
  %.not74 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not74, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit40
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamEE3$_0EEvPKNS_4inst4InstET_.exit"
  %.sroa.064.075 = phi ptr [ %i.gx, %.lr.ph ], [ %i.mx, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamEE3$_0EEvPKNS_4inst4InstET_.exit" ] ; 2 uses
  %i.ha = load ptr, ptr %.sroa.064.075, align 8, !tbaa !236 ; 5 uses
  %i.hb = load ptr, ptr %i.gb, align 8, !tbaa !14
  %i.hc = load ptr, ptr %i.gd, align 8, !tbaa !18 ; 2 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = icmp ult i64 %i.hf, 2
  br i1 %i.hg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.83, i64 noundef 2) #18 ; 2 uses
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

bb.au:                                            ; preds = %bb.as
  store i16 8224, ptr %i.hc, align 1
  %i.hi = load ptr, ptr %i.gd, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2 ; 2 uses
  store ptr %i.hj, ptr %i.gd, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit43

_ZN4llvh11raw_ostreamlsEPKc.exit43:               ; preds = %bb.at, %bb.au
  %i.hk = phi ptr [ %.pre84, %bb.at ], [ %i.hj, %bb.au ] ; 2 uses
  %.0.i.i42 = phi ptr [ %i.hh, %bb.at ], [ %2, %bb.au ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !14
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = icmp ult i64 %i.hp, 7
  br i1 %i.hq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %i.hr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i42, ptr noundef nonnull @.str.84, i64 noundef 7) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.aw:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit43
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.hk, ptr noundef nonnull align 1 dereferenceable(7) @.str.84, i64 7, i1 false)
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 7
  store ptr %i.hu, ptr %i.hs, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

_ZN4llvh11raw_ostreamlsEPKc.exit46:               ; preds = %bb.av, %bb.aw
  %.0.i.i45 = phi ptr [ %i.hr, %bb.av ], [ %.0.i.i42, %bb.aw ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ha, i64 2 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 1, !tbaa !7
  %i.hx = zext i32 %i.hw to i64
  %i.hy = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i45, i64 noundef %i.hx) #18 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !14
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 24 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !18 ; 2 uses
  %i.id = icmp eq ptr %i.ia, %i.ic
  br i1 %i.id, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  %i.ie = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.hy, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

bb.ay:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit46
  store i8 10, ptr %i.ic, align 1
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store ptr %i.ig, ptr %i.ib, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

_ZN4llvh11raw_ostreamlsEPKc.exit49:               ; preds = %bb.ax, %bb.ay
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ha, i64 10
  %i.ii = load i32, ptr %i.ih, align 1, !tbaa !7  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ha, i64 14
  %i.ik = load i32, ptr %i.ij, align 1, !tbaa !7
  %i.il = sub i32 %i.ik, %i.ii
  %i.im = load i32, ptr %i.hv, align 1, !tbaa !7
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.in
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = add i64 %i.ip, 3
  %i.ir = and i64 %i.iq, -4
  %i.is = inttoptr i64 %i.ir to ptr
  br label %bb.az

bb.az:                                            ; preds = %"_ZZN6hermes3hbc20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamEENK3$_0clEjiPKh.exit.i", %_ZN4llvh11raw_ostreamlsEPKc.exit49
  %.016.i = phi i32 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit49 ], [ %i.mw, %"_ZZN6hermes3hbc20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamEENK3$_0clEjiPKh.exit.i" ] ; 3 uses
  %i.it = zext i32 %.016.i to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !3
  %i.iw = add i32 %.016.i, %i.ii
  %i.ix = zext i32 %i.iv to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.ix ; 4 uses
  %i.iz = load ptr, ptr %i.gb, align 8, !tbaa !14
  %i.ja = load ptr, ptr %i.gd, align 8, !tbaa !18 ; 2 uses
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = icmp ult i64 %i.jd, 3
  br i1 %i.je, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.141, i64 noundef 3) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ja, ptr noundef nonnull align 1 dereferenceable(3) @.str.141, i64 3, i1 false)
  %i.jg = load ptr, ptr %i.gd, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 3
  store ptr %i.jh, ptr %i.gd, align 8, !tbaa !18
end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc18JumpTargetsVisitorD2Ev:bb.a

bb.h:                                             ; preds = %bb.f
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.g ], [ %i.aj, %bb.h ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.i, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !171

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #18, !inline_history !221
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %_ZNSt6vectorIPKN6hermes4inst4InstESaIS4_EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 align 2 {
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
  store i32 %i.ae, ptr %i.d, align 8, !tbaa !3
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
  store i32 %i.ay, ptr %i.d, align 8, !tbaa !3
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
  %i.br = load i64, ptr %i.bi, align 1
  %i.bs = lshr i64 %i.br, 32
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.s, %bb.t
  %.0.i.i = phi i32 [ %i.bq, %bb.s ], [ %i.bu, %bb.t ]
  %i.bv = zext i32 %.0.i.i to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bv
  %i.bx = load ptr, ptr %3, align 8, !tbaa !19
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef %1, ptr noundef %i.bm) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.bm, ptr noundef %i.bw, i1 noundef zeroext true)
  %i.bz = load ptr, ptr %3, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(28) %3) #18, !inline_history !219
  %i.cc = load ptr, ptr %i.bb, align 8, !tbaa !365
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !365
  %i.cf = icmp eq ptr %i.cc, %i.ce
  br i1 %i.cf, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ult i64 %i.cm, 2
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.co = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.81, i64 noundef 2) #18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.pre43 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.w:                                             ; preds = %bb.u
  store i16 8202, ptr %i.cj, align 1
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2 ; 2 uses
  store ptr %i.cq, ptr %i.ci, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.v, %bb.w
  %i.cr = phi ptr [ %.pre43, %bb.v ], [ %i.cq, %bb.w ] ; 2 uses
  %.0.i.i16 = phi ptr [ %i.co, %bb.v ], [ %2, %bb.w ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !14
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = icmp ult i64 %i.cw, 14
  br i1 %i.cx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.cy = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i16, ptr noundef nonnull @.str.82, i64 noundef 14) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.cr, ptr noundef nonnull align 1 dereferenceable(14) @.str.82, i64 14, i1 false)
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 14
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit19

_ZN4llvh11raw_ostreamlsEPKc.exit19:               ; preds = %bb.x, %bb.y
  %i.dc = load ptr, ptr %i.bb, align 8, !tbaa !365 ; 2 uses
  %i.dd = load ptr, ptr %i.cd, align 8, !tbaa !365 ; 2 uses
  %.not40 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not40, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit19, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamEE3$_0EEvPKNS_4inst4InstET_.exit"
  %.sroa.035.041 = phi ptr [ %i.gi, %"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamEE3$_0EEvPKNS_4inst4InstET_.exit" ], [ %i.dc, %_ZN4llvh11raw_ostreamlsEPKc.exit19 ] ; 2 uses
  %i.de = load ptr, ptr %.sroa.035.041, align 8, !tbaa !236 ; 4 uses
  %i.df = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.dg = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp ult i64 %i.dj, 2
  br i1 %i.dk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph
  %i.dl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.83, i64 noundef 2) #18 ; 2 uses
  %.phi.trans.insert44 = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.pre45 = load ptr, ptr %.phi.trans.insert44, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit22

bb.aa:                                            ; preds = %.lr.ph
  store i16 8224, ptr %i.dg, align 1
  %i.dm = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2 ; 2 uses
  store ptr %i.dn, ptr %i.ci, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit22

_ZN4llvh11raw_ostreamlsEPKc.exit22:               ; preds = %bb.z, %bb.aa
  %i.do = phi ptr [ %.pre45, %bb.z ], [ %i.dn, %bb.aa ] ; 2 uses
  %.0.i.i21 = phi ptr [ %i.dl, %bb.z ], [ %2, %bb.aa ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !14
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = icmp ult i64 %i.dt, 7
  br i1 %i.du, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit22
  %i.dv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i21, ptr noundef nonnull @.str.84, i64 noundef 7) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit25

bb.ac:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit22
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.do, ptr noundef nonnull align 1 dereferenceable(7) @.str.84, i64 7, i1 false)
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 7
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit25

_ZN4llvh11raw_ostreamlsEPKc.exit25:               ; preds = %bb.ab, %bb.ac
  %.0.i.i24 = phi ptr [ %i.dv, %bb.ab ], [ %.0.i.i21, %bb.ac ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 1, !tbaa !7
  %i.eb = zext i32 %i.ea to i64
  %i.ec = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i24, i64 noundef %i.eb) #18 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !18 ; 2 uses
  %i.eh = icmp eq ptr %i.ee, %i.eg
  br i1 %i.eh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  %i.ei = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ec, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

bb.ae:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  store i8 10, ptr %i.eg, align 1
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store ptr %i.ek, ptr %i.ef, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

_ZN4llvh11raw_ostreamlsEPKc.exit28:               ; preds = %bb.ad, %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %i.de, i64 10
  %i.em = load i32, ptr %i.el, align 1, !tbaa !7  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.de, i64 14
  %i.eo = load i32, ptr %i.en, align 1, !tbaa !7
  %i.ep = sub i32 %i.eo, %i.em
  %i.eq = load i32, ptr %i.dz, align 1, !tbaa !7
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.er
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = add i64 %i.et, 3
  %i.ev = and i64 %i.eu, -4
  %i.ew = inttoptr i64 %i.ev to ptr
  br label %bb.af

bb.af:                                            ; preds = %"_ZZN6hermes3hbc20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamEENK3$_0clEjiPKh.exit.i", %_ZN4llvh11raw_ostreamlsEPKc.exit28
  %.015.i = phi i32 [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit28 ], [ %i.gh, %"_ZZN6hermes3hbc20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamEENK3$_0clEjiPKh.exit.i" ] ; 3 uses
  %i.ex = zext i32 %.015.i to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = add i32 %.015.i, %i.em
  %i.fb = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.fc = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp ult i64 %i.ff, 3
  br i1 %i.fg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.141, i64 noundef 3) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fc, ptr noundef nonnull align 1 dereferenceable(3) @.str.141, i64 3, i1 false)
  %i.fi = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 3
  store ptr %i.fj, ptr %i.ci, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i29 = phi ptr [ %i.fh, %bb.ag ], [ %2, %bb.ah ]
  %i.fk = zext i32 %i.fa to i64
  %i.fl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i.i29, i64 noundef %i.fk) #18 ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN6hermes3hbc20BytecodeDisassembler24generateRegexStringIDMapEv:bb.a
bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

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
  %i.ar = sub i64 %i.ai, %i.aj
  %i.as = add i64 %i.ar, -8                       ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 72
  %i.av = ptrtoaddr ptr %i.ao to i64
  %i.aw = sub i64 %i.aj, %i.av
  %diff.check = icmp ugt i64 %i.aw, -32
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
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
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
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.dc, %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit ] ; 5 uses
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
  %i.cr = load i64, ptr %i.ch, align 1
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = trunc nuw i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.u, %bb.v
  %.0.i.i = phi i32 [ %i.cq, %bb.u ], [ %i.cu, %bb.v ]
  %i.cv = zext i32 %.0.i.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cv
  %i.cx = load ptr, ptr %2, align 8, !tbaa !19
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %.07, ptr noundef %i.cm) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %i.cm, ptr noundef %i.cw, i1 noundef zeroext true)
  %i.cz = load ptr, ptr %2, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(28) %2) #18, !inline_history !219
  %i.dc = add nuw i32 %.07, 1                     ; 2 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !26
  %i.dg = icmp ult i32 %i.dc, %i.df
  br i1 %i.dg, label %bb.t, label %._crit_edge, !llvm.loop !391
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
  store i32 %i.ad, ptr %i.d, align 8, !tbaa !3
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
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN6hermes3hbc20BytecodeDisassembler11disassembleERN4llvh11raw_ostreamE:bb.a
  store ptr %i.bm, ptr %i.f, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit63

_ZN4llvh11raw_ostreamlsEPKc.exit63:               ; preds = %bb.k, %bb.l
  %i.bn = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !26
  %.not142.a = icmp eq i32 %i.bp, 0
  br i1 %.not142.a, label %._crit_edge, label %.lr.ph

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
  %.lcssa = phi ptr [ %i.bn, %_ZN4llvh11raw_ostreamlsEPKc.exit63 ], [ %i.fh, %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit ] ; 3 uses
  %i.by = load i32, ptr %i.a, align 8, !tbaa !361
  %i.bz = and i32 %i.by, 32
  %.not136 = icmp eq i32 %i.bz, 0
  br i1 %.not136, label %bb.da, label %bb.am

bb.m:                                             ; preds = %.lr.ph, %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit
  %i.ca = phi ptr [ %i.bn, %.lr.ph ], [ %i.fh, %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit ] ; 3 uses
  %.0137 = phi i32 [ 0, %.lr.ph ], [ %i.fg, %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit ] ; 5 uses
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
  %.pre146.a = load i32, ptr %i.cc, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge145, %.thread.i
  %i.cm = phi i32 [ %.pre146.a, %._crit_edge145 ], [ %i.cj, %.thread.i ]
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
  store i32 %i.da, ptr %i.cc, align 8, !tbaa !3
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
  store i32 %i.do, ptr %i.cc, align 8, !tbaa !3
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
  %i.ef = load i64, ptr %i.dv, align 1
  %i.eg = lshr i64 %i.ef, 32
  %i.eh = trunc nuw i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 32767
  br label %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit

_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit: ; preds = %bb.ae, %bb.af
  %.0.i.i66 = phi i32 [ %i.ee, %bb.ae ], [ %i.ei, %bb.af ]
  %i.ej = zext i32 %.0.i.i66 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ej
  %i.el = load ptr, ptr %4, align 8, !tbaa !19
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(28) %4, i32 noundef %.0137, ptr noundef %i.ea) #18, !inline_history !219
  call void @_ZN6hermes3hbc15BytecodeVisitor23visitInstructionsInBodyEPKhS3_b(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.ea, ptr noundef %i.ek, i1 noundef zeroext true)
  %i.en = load ptr, ptr %4, align 8, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(28) %4) #18, !inline_history !219
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %4, align 8, !tbaa !19
  %i.eq = load ptr, ptr %i.bs, align 8, !tbaa !208 ; 8 uses
  %.not.i.i.i67 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i67, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 4 uses
  %i.es = load atomic i64, ptr %i.er acquire, align 8 ; 2 uses
  %i.et = icmp eq i64 %i.es, 4294967297
  %i.eu = trunc i64 %i.es to i32                  ; 2 uses
  br i1 %i.et, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.er, align 8, !tbaa !209
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store i32 0, ptr %i.ev, align 4, !tbaa !211
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #18, !inline_history !220
  %i.ez = load ptr, ptr %i.eq, align 8, !tbaa !19
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #18, !inline_history !220
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i68 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i.i68, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = add nsw i32 %i.eu, -1
  store i32 %i.fd, ptr %i.er, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69

bb.ak:                                            ; preds = %bb.ai
  %i.fe = atomicrmw volatile add ptr %i.er, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i70 = phi i32 [ %i.eu, %bb.aj ], [ %i.fe, %bb.ak ]
  %i.ff = icmp eq i32 %.0.i.i.i.i.i70, 1
  br i1 %i.ff, label %bb.al, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !171

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #18, !inline_history !221
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %_ZN6hermes3hbc15BytecodeVisitor27visitInstructionsInFunctionEj.exit, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.fg = add nuw i32 %.0137, 1                   ; 2 uses
  %i.fh = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !26
  %i.fk = icmp ult i32 %i.fg, %i.fj
  br i1 %i.fk, label %bb.m, label %._crit_edge, !llvm.loop !400

bb.am:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !208 ; 16 uses
  %.not.i.i.i71 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i71, label %_ZN6hermes3hbc25ObjdumpDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit82, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 16 uses
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i72 = icmp eq i8 %i.fo, 0
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i72, label %bb.ao, label %.thread168

.thread168:                                       ; preds = %bb.an
  %i.fr = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fs = add nsw i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !3
  br label %.thread.i76

bb.ao:                                            ; preds = %bb.an
  %i.ft = atomicrmw volatile add ptr %i.fn, i32 1 acq_rel, align 4 ; 0 uses
  %.pre147 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.fu = icmp eq i8 %.pre147, 0
  br i1 %i.fu, label %bb.ap, label %.thread.i76

.thread.i76:                                      ; preds = %.thread168, %bb.ao
  %i.fv = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fw = add nsw i32 %i.fv, 1
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %5, align 8, !tbaa !19
  store ptr %.lcssa, ptr %i.fp, align 8, !tbaa !8
  store ptr %i.fm, ptr %i.fq, align 8, !tbaa !208
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fx = atomicrmw volatile add ptr %i.fn, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i80 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %i.fy = icmp eq i8 %.pre.i80, 0
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %5, align 8, !tbaa !19
  store ptr %.lcssa, ptr %i.fp, align 8, !tbaa !8
  store ptr %i.fm, ptr %i.fq, align 8, !tbaa !208
  br i1 %i.fy, label %bb.ar, label %._crit_edge148

._crit_edge148:                                   ; preds = %bb.ap
  %.pre149 = load i32, ptr %i.fn, align 4, !tbaa !3
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge148, %.thread.i76
  %i.fz = phi i32 [ %.pre149, %._crit_edge148 ], [ %i.fw, %.thread.i76 ]
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fn, align 4, !tbaa !3
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gb = atomicrmw volatile add ptr %i.fn, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.gc, align 8, !tbaa !197
  %i.gd = load atomic i64, ptr %i.fn acquire, align 8 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 4294967297
  %i.gf = trunc i64 %i.gd to i32                  ; 2 uses
  br i1 %i.ge, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.fn, align 8, !tbaa !209
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.gg, align 4, !tbaa !211
  %i.gh = load ptr, ptr %i.fm, align 8, !tbaa !19
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #18, !inline_history !395
  %i.gk = load ptr, ptr %i.fm, align 8, !tbaa !19
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #18, !inline_history !395
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  %i.gn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i3.i77 = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i3.i77, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = add nsw i32 %i.gf, -1
  store i32 %i.go, ptr %i.fn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

bb.aw:                                            ; preds = %bb.au
  %i.gp = atomicrmw volatile add ptr %i.fn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i79 = phi i32 [ %i.gf, %bb.av ], [ %i.gp, %bb.aw ]
  %i.gq = icmp eq i32 %.0.i.i.i.i.i79, 1
  br i1 %i.gq, label %bb.ax, label %bb.ay, !prof !171

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #18
  br label %bb.ay

_ZN6hermes3hbc25ObjdumpDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit82: ; preds = %bb.am
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.lcssa, ptr %i.gr, align 8, !tbaa !8
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.gs, align 8, !tbaa !208
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.gt, align 8, !tbaa !197
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc25ObjdumpDisassembleVisitorE, i64 16), ptr %5, align 8, !tbaa !19
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.gu, align 4, !tbaa !396
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.gv, align 8, !tbaa !398
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 40
end_hunk_6
begin_hunk_7_@_ZN6hermes3hbc20BytecodeDisassembler11disassembleERN4llvh11raw_ostreamE:bb.a
  store ptr %1, ptr %i.gx, align 8, !tbaa !301
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.ay:                                            ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78, %bb.ax
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc25ObjdumpDisassembleVisitorE, i64 16), ptr %5, align 8, !tbaa !19
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.gy, align 4, !tbaa !396
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.gz, align 8, !tbaa !398
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ha, align 8, !tbaa !399
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %1, ptr %i.hb, align 8, !tbaa !301
  %i.hc = load atomic i64, ptr %i.fn acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.fn, align 8, !tbaa !209
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !211
  %i.hg = load ptr, ptr %i.fm, align 8, !tbaa !19
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #18, !inline_history !218
  %i.hj = load ptr, ptr %i.fm, align 8, !tbaa !19
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #18, !inline_history !218
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.ba:                                            ; preds = %bb.ay
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i84 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i84, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.fn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bc:                                            ; preds = %bb.ba
  %i.ho = atomicrmw volatile add ptr %i.fn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i86 = phi i32 [ %i.he, %bb.bb ], [ %i.ho, %bb.bc ]
  %i.hp = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.hp, label %bb.bd, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !171

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #18
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZN6hermes3hbc25ObjdumpDisassembleVisitorC2ESt10shared_ptrINS0_14BCProviderBaseEERN4llvh11raw_ostreamE.exit82, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bd
  call void @_ZN6hermes3hbc25ObjdumpDisassembleVisitor11listOpCodesEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %5, align 8, !tbaa !19
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !208 ; 8 uses
  %.not.i.i.i88 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i88, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit92, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 4 uses
  %i.ht = load atomic i64, ptr %i.hs acquire, align 8 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 4294967297
  %i.hv = trunc i64 %i.ht to i32                  ; 2 uses
  br i1 %i.hu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hs, align 8, !tbaa !209
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i32 0, ptr %i.hw, align 4, !tbaa !211
  %i.hx = load ptr, ptr %i.hr, align 8, !tbaa !19
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #18, !inline_history !220
  %i.ia = load ptr, ptr %i.hr, align 8, !tbaa !19
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #18, !inline_history !220
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit92

bb.bg:                                            ; preds = %bb.be
  %i.id = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i89 = icmp eq i8 %i.id, 0
  br i1 %.not.i.i.i.i89, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ie = add nsw i32 %i.hv, -1
  store i32 %i.ie, ptr %i.hs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90

bb.bi:                                            ; preds = %bb.bg
  %i.if = atomicrmw volatile add ptr %i.hs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i91 = phi i32 [ %i.hv, %bb.bh ], [ %i.if, %bb.bi ]
  %i.ig = icmp eq i32 %.0.i.i.i.i.i91, 1
  br i1 %i.ig, label %bb.bj, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit92, !prof !171

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #18, !inline_history !221
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit92

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit92:       ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i90, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.da

bb.bk:                                            ; preds = %bb.a
  tail call void @_ZN6hermes3hbc20BytecodeDisassembler29disassembleBytecodeFileHeaderERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  tail call void @_ZN6hermes3hbc20BytecodeDisassembler24disassembleStringStorageERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  tail call void @_ZN6hermes3hbc20BytecodeDisassembler22disassembleArrayBufferERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  tail call void @_ZN6hermes3hbc20BytecodeDisassembler23disassembleObjectBufferERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  tail call void @_ZN6hermes3hbc20BytecodeDisassembler24disassembleBigIntStorageERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  tail call void @_ZN6hermes3hbc20BytecodeDisassembler25disassembleCJSModuleTableERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  tail call void @_ZN6hermes3hbc20BytecodeDisassembler30disassembleFunctionSourceTableERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %i.ih = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !26
  %.not143 = icmp eq i32 %i.ij, 0
  br i1 %.not143, label %._crit_edge141, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.bk
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 26 uses
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 21
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 22
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 21
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 22
  %i.iw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 21
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 22
  br label %bb.bm

._crit_edge141:                                   ; preds = %_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit, %bb.bk
  call void @_ZN6hermes3hbc20BytecodeDisassembler17disassembleRegexsERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %i.jb = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 240 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !401 ; 2 uses
  %.not.i = icmp eq ptr %i.jd, null
  br i1 %.not.i, label %bb.bl, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

bb.bl:                                            ; preds = %._crit_edge141
  %i.je = load ptr, ptr %i.jb, align 8, !tbaa !19
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(280) %i.jb) #18, !inline_history !402
  %.pre.i93 = load ptr, ptr %i.jc, align 8, !tbaa !401
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit: ; preds = %._crit_edge141, %bb.bl
  %i.jg = phi ptr [ %.pre.i93, %bb.bl ], [ %i.jd, %._crit_edge141 ] ; 5 uses
  call void @_ZNK6hermes3hbc9DebugInfo20disassembleFilenamesERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(136) %i.jg, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  call void @_ZNK6hermes3hbc9DebugInfo26disassembleFilesAndOffsetsERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(136) %i.jg, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  call void @_ZNK6hermes3hbc9DebugInfo24disassembleScopeDescDataERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(136) %i.jg, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  call void @_ZNK6hermes3hbc9DebugInfo26disassembleTextifiedCalleeERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(136) %i.jg, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  call void @_ZNK6hermes3hbc9DebugInfo22disassembleStringTableERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(136) %i.jg, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  br label %bb.da

bb.bm:                                            ; preds = %.lr.ph140, %_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit
  %i.jh = phi ptr [ %i.ih, %.lr.ph140 ], [ %i.po, %_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit ] ; 2 uses
  %.047138 = phi i32 [ 0, %.lr.ph140 ], [ %i.pn, %_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !19
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = call ptr %i.jk(ptr noundef nonnull align 8 dereferenceable(280) %i.jh, i32 noundef %.047138) #18 ; 9 uses
  store ptr %i.jl, ptr %6, align 8
  %i.jm = load ptr, ptr %0, align 8, !tbaa !8
  %i.jn = load i32, ptr %i.a, align 8, !tbaa !361
  call fastcc void @_ZN6hermes3hbcL16dumpFunctionNameERN4llvh11raw_ostreamERNS0_14BCProviderBaseEjRKNS0_21RuntimeFunctionHeaderENS0_18DisassemblyOptionsE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(280) %i.jm, i32 noundef %.047138, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.jn)
  %i.jo = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.jp = load ptr, ptr %i.il, align 8, !tbaa !18 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.92, i64 noundef 1) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit96

bb.bo:                                            ; preds = %bb.bm
  store i8 40, ptr %i.jp, align 1
  %i.js = load ptr, ptr %i.il, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  store ptr %i.jt, ptr %i.il, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit96

_ZN4llvh11raw_ostreamlsEPKc.exit96:               ; preds = %bb.bn, %bb.bo
  %.0.i.i95 = phi ptr [ %i.jr, %bb.bn ], [ %1, %bb.bo ]
  %i.ju = ptrtoint ptr %i.jl to i64
  %i.jv = trunc i64 %i.ju to i1                   ; 4 uses
  br i1 %i.jv, label %bb.bp, label %bb.bq, !prof !171

bb.bp:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit96
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jl, i64 3
  %i.jx = load i32, ptr %i.jw, align 1, !tbaa !403
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader10paramCountEv.exit

bb.bq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit96
  %i.jy = load i64, ptr %i.jl, align 1
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = lshr i32 %i.jz, 25
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader10paramCountEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader10paramCountEv.exit: ; preds = %bb.bp, %bb.bq
  %.0.i = phi i32 [ %i.jx, %bb.bp ], [ %i.ka, %bb.bq ]
  %i.kb = zext i32 %.0.i to i64
  %i.kc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i95, i64 noundef %i.kb) #18 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !14
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 24 ; 3 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !18 ; 2 uses
  %i.kh = ptrtoint ptr %i.ke to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = icmp ult i64 %i.kj, 9
  br i1 %i.kk, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader10paramCountEv.exit
  %i.kl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.kc, ptr noundef nonnull @.str.93, i64 noundef 9) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit99

bb.bs:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader10paramCountEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.kg, ptr noundef nonnull align 1 dereferenceable(9) @.str.93, i64 9, i1 false)
  %i.km = load ptr, ptr %i.kf, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 9
  store ptr %i.kn, ptr %i.kf, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit99

_ZN4llvh11raw_ostreamlsEPKc.exit99:               ; preds = %bb.br, %bb.bs
  %.0.i.i98 = phi ptr [ %i.kl, %bb.br ], [ %i.kc, %bb.bs ]
  br i1 %i.jv, label %bb.bt, label %bb.bu, !prof !171

bb.bt:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit99
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jl, i64 19
  %i.kp = load i32, ptr %i.ko, align 1, !tbaa !404
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader9frameSizeEv.exit

bb.bu:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit99
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.kr = load i32, ptr %i.kq, align 1
  %i.ks = lshr i32 %i.kr, 25
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader9frameSizeEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader9frameSizeEv.exit: ; preds = %bb.bt, %bb.bu
  %.0.i100 = phi i32 [ %i.kp, %bb.bt ], [ %i.ks, %bb.bu ]
  %i.kt = zext i32 %.0.i100 to i64
  %i.ku = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i98, i64 noundef %i.kt) #18 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !14
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 24 ; 3 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !18 ; 2 uses
  %i.kz = ptrtoint ptr %i.kw to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = icmp ult i64 %i.lb, 12
  br i1 %i.lc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader9frameSizeEv.exit
  %i.ld = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ku, ptr noundef nonnull @.str.94, i64 noundef 12) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit103

bb.bw:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader9frameSizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ky, ptr noundef nonnull align 1 dereferenceable(12) @.str.94, i64 12, i1 false)
  %i.le = load ptr, ptr %i.kx, align 8, !tbaa !18
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  store ptr %i.lf, ptr %i.kx, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit103

_ZN4llvh11raw_ostreamlsEPKc.exit103:              ; preds = %bb.bv, %bb.bw
  %.0.i.i102 = phi ptr [ %i.ld, %bb.bv ], [ %i.ku, %bb.bw ]
  br i1 %i.jv, label %bb.bx, label %bb.by, !prof !171

bb.bx:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit103
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jl, i64 23
  %i.lh = load i32, ptr %i.lg, align 1, !tbaa !405
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader15environmentSizeEv.exit

bb.by:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit103
  %i.li = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  %i.lj = load i16, ptr %i.li, align 1
  %i.lk = and i16 %i.lj, 255
  %i.ll = zext nneg i16 %i.lk to i32
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader15environmentSizeEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader15environmentSizeEv.exit: ; preds = %bb.bx, %bb.by
  %.0.i104 = phi i32 [ %i.lh, %bb.bx ], [ %i.ll, %bb.by ]
  %i.lm = zext i32 %.0.i104 to i64
  %i.ln = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i102, i64 noundef %i.lm) #18 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !14
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 24 ; 3 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !18 ; 2 uses
  %i.ls = ptrtoint ptr %i.lp to i64
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = icmp ult i64 %i.lu, 9
  br i1 %i.lv, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader15environmentSizeEv.exit
  %i.lw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ln, ptr noundef nonnull @.str.95, i64 noundef 9) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit107

bb.ca:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader15environmentSizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.lr, ptr noundef nonnull align 1 dereferenceable(9) @.str.95, i64 9, i1 false)
  %i.lx = load ptr, ptr %i.lq, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 9
  store ptr %i.ly, ptr %i.lq, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit107

_ZN4llvh11raw_ostreamlsEPKc.exit107:              ; preds = %bb.bz, %bb.ca
  %i.lz = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.ma = load ptr, ptr %i.il, align 8, !tbaa !18 ; 2 uses
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = icmp ult i64 %i.md, 2
  br i1 %i.me, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit107
  %i.mf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.54, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit110

bb.cc:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit107
  store i16 2618, ptr %i.ma, align 1
  %i.mg = load ptr, ptr %i.il, align 8, !tbaa !18
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  store ptr %i.mh, ptr %i.il, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit110

_ZN4llvh11raw_ostreamlsEPKc.exit110:              ; preds = %bb.cb, %bb.cc
  %i.mi = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !19
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = call noundef ptr %i.ml(ptr noundef nonnull align 8 dereferenceable(280) %i.mi, i32 noundef %.047138) #18 ; 4 uses
  %..i = select i1 %i.jv, i64 29, i64 15, !prof !171
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %..i
  %.sroa.0.0.i = load i8, ptr %i.mn, align 1, !tbaa !7
  %i.mo = and i8 %.sroa.0.0.i, 16
  %i.mp = icmp ne i8 %i.mo, 0
  %i.mq = icmp ne ptr %i.mm, null
  %i.mr = and i1 %i.mq, %i.mp
  br i1 %i.mr, label %bb.cd, label %_ZN4llvh11raw_ostreamlsEc.exit

bb.cd:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit110
  %i.ms = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.mt = load ptr, ptr %i.il, align 8, !tbaa !18 ; 2 uses
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = icmp ult i64 %i.mw, 30
  br i1 %i.mx, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.my = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.96, i64 noundef 30) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit113

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.mt, ptr noundef nonnull align 1 dereferenceable(30) @.str.96, i64 30, i1 false)
  %i.mz = load ptr, ptr %i.il, align 8, !tbaa !18
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 30
  store ptr %i.na, ptr %i.il, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit113

_ZN4llvh11raw_ostreamlsEPKc.exit113:              ; preds = %bb.ce, %bb.cf
  %i.nb = load i32, ptr %i.mm, align 4, !tbaa !406 ; 2 uses
  %i.nc = icmp eq i32 %i.nb, -1
  br i1 %i.nc, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit113
  %i.nd = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.ne = load ptr, ptr %i.il, align 8, !tbaa !18 ; 2 uses
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = icmp ult i64 %i.nh, 4
  br i1 %i.ni, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.nj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.97, i64 noundef 4) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit116

bb.ci:                                            ; preds = %bb.cg
  store i32 1701736302, ptr %i.ne, align 1
  %i.nk = load ptr, ptr %i.il, align 8, !tbaa !18
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  store ptr %i.nl, ptr %i.il, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit116

bb.cj:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.nm = zext i32 %i.nb to i64
  store i64 %i.nm, ptr %7, align 8, !tbaa !47, !alias.scope !408
  store i64 0, ptr %i.im, align 8, !tbaa !53, !alias.scope !408
  store i32 6, ptr %i.in, align 8, !tbaa !54, !alias.scope !408
  store i8 1, ptr %i.io, align 4, !tbaa !55, !alias.scope !408
  store i8 0, ptr %i.ip, align 1, !tbaa !56, !alias.scope !408
  store i8 1, ptr %i.iq, align 2, !tbaa !57, !alias.scope !408
  %i.nn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(23) %7) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit116

_ZN4llvh11raw_ostreamlsEPKc.exit116:              ; preds = %bb.ci, %bb.ch, %bb.cj
  %i.no = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.np = load ptr, ptr %i.il, align 8, !tbaa !18 ; 2 uses
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = sub i64 %i.nq, %i.nr
  %i.nt = icmp ult i64 %i.ns, 8
  br i1 %i.nt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit116
  %i.nu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.98, i64 noundef 8) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit119

bb.cl:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit116
  store i64 2334395605573640236, ptr %i.np, align 1
  %i.nv = load ptr, ptr %i.il, align 8, !tbaa !18
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store ptr %i.nw, ptr %i.il, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit119

_ZN4llvh11raw_ostreamlsEPKc.exit119:              ; preds = %bb.ck, %bb.cl
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !411 ; 2 uses
  %i.nz = icmp eq i32 %i.ny, -1
  br i1 %i.nz, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit119
  %i.oa = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.ob = load ptr, ptr %i.il, align 8, !tbaa !18 ; 2 uses
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = icmp ult i64 %i.oe, 4
  br i1 %i.of, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.og = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.97, i64 noundef 4) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit122

bb.co:                                            ; preds = %bb.cm
  store i32 1701736302, ptr %i.ob, align 1
  %i.oh = load ptr, ptr %i.il, align 8, !tbaa !18
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store ptr %i.oi, ptr %i.il, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit122

bb.cp:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.oj = zext i32 %i.ny to i64
  store i64 %i.oj, ptr %8, align 8, !tbaa !47, !alias.scope !412
  store i64 0, ptr %i.ir, align 8, !tbaa !53, !alias.scope !412
  store i32 6, ptr %i.is, align 8, !tbaa !54, !alias.scope !412
  store i8 1, ptr %i.it, align 4, !tbaa !55, !alias.scope !412
  store i8 0, ptr %i.iu, align 1, !tbaa !56, !alias.scope !412
  store i8 1, ptr %i.iv, align 2, !tbaa !57, !alias.scope !412
  %i.ok = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(23) %8) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit122

_ZN4llvh11raw_ostreamlsEPKc.exit122:              ; preds = %bb.co, %bb.cn, %bb.cp
  %i.ol = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.om = load ptr, ptr %i.il, align 8, !tbaa !18 ; 2 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = icmp ult i64 %i.op, 20
  br i1 %i.oq, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit122
  %i.or = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.99, i64 noundef 20) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit125

bb.cr:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.om, ptr noundef nonnull align 1 dereferenceable(20) @.str.99, i64 20, i1 false)
  %i.os = load ptr, ptr %i.il, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 20
  store ptr %i.ot, ptr %i.il, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit125

_ZN4llvh11raw_ostreamlsEPKc.exit125:              ; preds = %bb.cq, %bb.cr
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !415 ; 2 uses
  %i.ow = icmp eq i32 %i.ov, -1
  br i1 %i.ow, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit125
  %i.ox = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.oy = load ptr, ptr %i.il, align 8, !tbaa !18 ; 2 uses
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = icmp ult i64 %i.pb, 4
  br i1 %i.pc, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.pd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.97, i64 noundef 4) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit128

bb.cu:                                            ; preds = %bb.cs
  store i32 1701736302, ptr %i.oy, align 1
  %i.pe = load ptr, ptr %i.il, align 8, !tbaa !18
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  store ptr %i.pf, ptr %i.il, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit128

bb.cv:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.pg = zext i32 %i.ov to i64
  store i64 %i.pg, ptr %9, align 8, !tbaa !47, !alias.scope !416
  store i64 0, ptr %i.iw, align 8, !tbaa !53, !alias.scope !416
  store i32 6, ptr %i.ix, align 8, !tbaa !54, !alias.scope !416
  store i8 1, ptr %i.iy, align 4, !tbaa !55, !alias.scope !416
  store i8 0, ptr %i.iz, align 1, !tbaa !56, !alias.scope !416
  store i8 1, ptr %i.ja, align 2, !tbaa !57, !alias.scope !416
  %i.ph = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(23) %9) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit128

_ZN4llvh11raw_ostreamlsEPKc.exit128:              ; preds = %bb.cu, %bb.ct, %bb.cv
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
  %10 = and i32 %i.pm, 1
  %.not.i131 = icmp eq i32 %10, 0
  br i1 %.not.i131, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  call void @_ZN6hermes3hbc20BytecodeDisassembler25disassembleFunctionPrettyEjRN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.047138, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit

bb.cz:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  call void @_ZN6hermes3hbc20BytecodeDisassembler22disassembleFunctionRawEjRN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.047138, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit

_ZN6hermes3hbc20BytecodeDisassembler19disassembleFunctionEjRN4llvh11raw_ostreamE.exit: ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.pn = add nuw i32 %.047138, 1                 ; 2 uses
  %i.po = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !26
  %i.pr = icmp ult i32 %i.pn, %i.pq
  br i1 %i.pr, label %bb.bm, label %._crit_edge141, !llvm.loop !419

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

"_ZN6hermes3hbc12_GLOBAL__N_122switchJumpTableForEachIZNS0_15BytecodeVisitor23visitInstructionsInBodyEPKhS5_bE3$_0EEvPKNS_4inst4InstET_.exit.us.i": ; preds = %._crit_edge.us.i, %.lr.ph33.i
  %.031.us.i = phi ptr [ %i.bh, %._crit_edge.us.i ], [ %.sroa.0.2, %.lr.ph33.i ] ; 6 uses
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
  br i1 %.not.i, label %._crit_edge.us.i, label %.lr.ph.us.preheader.i
end_hunk_7
begin_hunk_8_@_ZNSt6vectorISt4pairIjjESaIS1_EE6resizeEm:bb.a
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.aj = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4, !alias.scope !439, !noalias !436
  %wide.load13 = load <2 x i64>, ptr %i.aj, align 4, !alias.scope !439, !noalias !436
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !436, !noalias !439
  store <2 x i64> %wide.load13, ptr %i.ak, align 4, !alias.scope !436, !noalias !439
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !441

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !439, !noalias !436
  store i64 %i.am, ptr %.012.i.i.i.i, align 4, !alias.scope !436, !noalias !439
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !442

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i30.i = icmp eq ptr %i.c, null
  br i1 %.not.i30.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ap = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #19
  br label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !382
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !380
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !383
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_default_appendEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.at, ptr %i.a, align 8, !tbaa !380
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_default_appendEm.exit: ; preds = %bb.h, %bb.g, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZSt27__uninitialized_default_n_aIPSt4pairIjjEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc23RegexStringTableVisitor19preVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i8 %1, -124
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !382
  %.idx = shl nuw nsw i64 %i.n, 27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %.idx8 = shl nuw nsw i64 %i.k, 19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx8
  %.idx9 = shl nuw nsw i64 %i.h, 11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx9
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.e
  %i.u = load <2 x i32>, ptr %i.b, align 1
  store <2 x i32> %i.u, ptr %i.t, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc23RegexStringTableVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc23RegexStringTableVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !382  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !383
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19, !inline_history !388
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i:      ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !208  ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i
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
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !389
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !389
  br label %_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit, !prof !171

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !390
  br label %_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit

_ZN6hermes3hbc23RegexStringTableVisitorD2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc25ObjdumpDisassembleVisitor11beforeStartEjPKh(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.a, align 4, !tbaa !396
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr %i.f(ptr noundef nonnull align 8 dereferenceable(280) %i.c, i32 noundef %1) #18 ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !171

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.k = load i32, ptr %i.j, align 1, !tbaa !335
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.g, align 1
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 33554431
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.k, %bb.b ], [ %i.n, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %.0.i, ptr %i.o, align 8, !tbaa !398
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.p, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !420, !nonnull !250, !align !251 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit
  %i.x = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull @.str.2, i64 noundef 1) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit
  store i8 10, ptr %i.v, align 1
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %i.u, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.x, %bb.d ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !398
  %i.ab = zext i32 %i.aa to i64
  store i64 %i.ab, ptr %3, align 8, !tbaa !47, !alias.scope !443
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !53, !alias.scope !443
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 16, ptr %i.ad, align 8, !tbaa !54, !alias.scope !443
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 1, ptr %i.ae, align 4, !tbaa !55, !alias.scope !443
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.af, align 1, !tbaa !56, !alias.scope !443
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.ag, align 2, !tbaa !57, !alias.scope !443
  %i.ah = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(23) %3) #18 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, 3
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.aq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ah, ptr noundef nonnull @.str.138, i64 noundef 3) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.al, ptr noundef nonnull align 1 dereferenceable(3) @.str.138, i64 3, i1 false)
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

_ZN4llvh11raw_ostreamlsEPKc.exit6:                ; preds = %bb.f, %bb.g
  %.0.i.i5 = phi ptr [ %i.aq, %bb.f ], [ %i.ah, %bb.g ]
  %i.at = zext i32 %1 to i64
  %i.au = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i5, i64 noundef %i.at) #18 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.bb, 3
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6
  %i.bd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.au, ptr noundef nonnull @.str.139, i64 noundef 3) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) @.str.139, i64 3, i1 false)
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

_ZN4llvh11raw_ostreamlsEPKc.exit9:                ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc25ObjdumpDisassembleVisitor19preVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %5 = alloca %"class.llvh::FormattedNumber", align 8 ; 9 uses
  %6 = alloca %"class.llvh::FormattedString", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !420, !nonnull !250, !align !251
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !399
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !398
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %i.g, %i.j
  store i64 %i.k, ptr %4, align 8, !tbaa !47, !alias.scope !446
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !53, !alias.scope !446
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 8, ptr %i.m, align 8, !tbaa !54, !alias.scope !446
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 1, ptr %i.n, align 4, !tbaa !55, !alias.scope !446
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.o, align 1, !tbaa !56, !alias.scope !446
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.p, align 2, !tbaa !57, !alias.scope !446
  %i.q = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(23) %4) #18 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.q, ptr noundef nonnull @.str.140, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i16 2362, ptr %i.u, align 1
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ac = icmp sgt i32 %3, 0
  br i1 %i.ac, label %.lr.ph, label %.lr.ph20.preheader

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 21
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 22
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.d

.preheader:                                       ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit14
  %i.ai = icmp slt i32 %3, 20
  br i1 %i.ai, label %.lr.ph20.preheader, label %._crit_edge

.lr.ph20.preheader:                               ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit, %.preheader
  br label %.lr.ph20

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsEPKc.exit14
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvh11raw_ostreamlsEPKc.exit14 ] ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !420, !nonnull !250, !align !251
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7
  %i.am = zext i8 %i.al to i64
  store i64 %i.am, ptr %5, align 8, !tbaa !47, !alias.scope !449
  store i64 0, ptr %i.ad, align 8, !tbaa !53, !alias.scope !449
  store i32 2, ptr %i.ae, align 8, !tbaa !54, !alias.scope !449
  store i8 1, ptr %i.af, align 4, !tbaa !55, !alias.scope !449
  store i8 0, ptr %i.ag, align 1, !tbaa !56, !alias.scope !449
  store i8 0, ptr %i.ah, align 2, !tbaa !57, !alias.scope !449
  %i.an = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %i.aj, ptr noundef nonnull align 8 dereferenceable(23) %5) #18 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.e, label %bb.f

end_hunk_8
