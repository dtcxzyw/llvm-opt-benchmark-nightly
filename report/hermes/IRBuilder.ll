inline.NumInlined: 1020
inline.NumDeleted: 582
begin_hunk_0_@_ZN6hermes9IRBuilder22createHBCConstructInstEPNS_5ValueES2_S2_N4llvh8ArrayRefIS2_EE:bb.a

bb.c:                                             ; preds = %_ZN6hermes16HBCConstructInstC2EPNS_5ValueES2_S2_N4llvh8ArrayRefIS2_EE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !62  ; 4 uses
  %.not7.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not7.i, label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !63
  br label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit

_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ %.sroa.01.0.copyload.i.i.pre, %bb.b ], [ %i.aa, %bb.d ], [ %i.aa, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %.sroa.05.0.extract.trunc.i, %bb.b ], [ %i.ac, %bb.d ], [ 0, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 %.0.i, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !64
  %i.ag = shufflevector <2 x ptr> %i.af, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ag, ptr %i.n, align 8, !tbaa !64
  store ptr %i.t, ptr %i.i, align 8, !tbaa !38
  %i.ah = load ptr, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.a, ptr %i.aj, align 8, !tbaa !66
  store ptr %i.a, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes9IRBuilder33createHBCGetConstructedObjectInstEPNS_17HBCCreateThisInstEPNS_16HBCConstructInstE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #13 ; 22 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 1023, ptr %i.c, align 2, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 7, ptr %i.d, align 2, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.f, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 2, ptr %i.h, align 4, !tbaa !29
  store i8 105, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.k, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 2, ptr %i.m, align 4, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  %i.o = icmp eq ptr %1, null
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %spec.select.i = select i1 %i.o, ptr null, ptr %i.p
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(132) %i.a, ptr noundef %spec.select.i) #14
  %i.q = icmp eq ptr %2, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = select i1 %i.q, ptr null, ptr %i.r
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(132) %i.a, ptr noundef %i.s) #14
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 236
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 4 ; 2 uses
  %i.y = and i64 %.sroa.0.0.copyload.i.i, 4294967296
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !62  ; 4 uses
  %.not7.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not7.i, label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !63
  br label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit

_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ %.sroa.01.0.copyload.i.i.pre, %bb.b ], [ %i.ab, %bb.d ], [ %i.ab, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %.sroa.05.0.extract.trunc.i, %bb.b ], [ %i.ad, %bb.d ], [ 0, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 %.0.i, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !64
  %i.ah = shufflevector <2 x ptr> %i.ag, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ah, ptr %i.n, align 8, !tbaa !64
  store ptr %i.u, ptr %i.i, align 8, !tbaa !38
  %i.ai = load ptr, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.aj, align 8, !tbaa !66
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.a, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes9IRBuilder25createHBCProfilePointInstEt(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #13 ; 21 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(134) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 1023, ptr %i.c, align 2, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 7, ptr %i.d, align 2, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.f, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 2, ptr %i.h, align 4, !tbaa !29
  store i8 107, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.k, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 2, ptr %i.m, align 4, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i16 %1, ptr %i.o, align 4, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 236
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 4 ; 2 uses
  %i.u = and i64 %.sroa.0.0.copyload.i.i, 4294967296
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !62   ; 4 uses
  %.not7.i = icmp eq ptr %i.x, %i.w
  br i1 %.not7.i, label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = load i32, ptr %i.y, align 8, !tbaa !63
  br label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit

_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ %.sroa.01.0.copyload.i.i.pre, %bb.b ], [ %i.x, %bb.d ], [ %i.x, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %.sroa.05.0.extract.trunc.i, %bb.b ], [ %i.z, %bb.d ], [ 0, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 %.0.i, ptr %i.aa, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !64
  %i.ad = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ad, ptr %i.n, align 8, !tbaa !64
  store ptr %i.q, ptr %i.i, align 8, !tbaa !38
  %i.ae = load ptr, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.af, align 8, !tbaa !66
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !66
  store ptr %i.a, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes9IRBuilder21createCallBuiltinInstENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i8 noundef zeroext %1, ptr readonly captures(address) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #13 ; 25 uses
  %i.d = uitofp i8 %1 to double
  %4 = load ptr, ptr %0, align 8, !tbaa !7
  %i.e = tail call noundef ptr @_ZN6hermes6Module16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(1033) %4, double noundef %i.d) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i16 1023, ptr %i.g, align 2, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 7, ptr %i.h, align 2, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.j, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 2, ptr %i.l, align 4, !tbaa !29
  store i8 93, ptr %i.f, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.o, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 0, ptr %i.p, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 2, ptr %i.q, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr null, ptr %i.s, align 8, !tbaa !69
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef %i.e) #14
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull %i.b) #14
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull %i.b) #14
  %.idx.i.i = shl nuw nsw i64 %3, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %.not12.i.i = icmp eq i64 %3, 0
  br i1 %.not12.i.i, label %_ZN6hermes15CallBuiltinInstC2EPNS_13LiteralNumberEPNS_16LiteralUndefinedES4_N4llvh8ArrayRefIPNS_5ValueEEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %2, %bb.a ] ; 2 uses
  %i.u = load ptr, ptr %.013.i.i, align 8, !tbaa !72
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef %i.u) #14
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i, label %_ZN6hermes15CallBuiltinInstC2EPNS_13LiteralNumberEPNS_16LiteralUndefinedES4_N4llvh8ArrayRefIPNS_5ValueEEE.exit, label %.lr.ph.i.i

_ZN6hermes15CallBuiltinInstC2EPNS_13LiteralNumberEPNS_16LiteralUndefinedES4_N4llvh8ArrayRefIPNS_5ValueEEE.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 236
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aa, align 4 ; 2 uses
  %i.ab = and i64 %.sroa.0.0.copyload.i.i, 4294967296
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !61

bb.b:                                             ; preds = %_ZN6hermes15CallBuiltinInstC2EPNS_13LiteralNumberEPNS_16LiteralUndefinedES4_N4llvh8ArrayRefIPNS_5ValueEEE.exit
  %.sroa.05.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit

bb.c:                                             ; preds = %_ZN6hermes15CallBuiltinInstC2EPNS_13LiteralNumberEPNS_16LiteralUndefinedES4_N4llvh8ArrayRefIPNS_5ValueEEE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 4 uses
  %.not7.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not7.i, label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !63
  br label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit

_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ %.sroa.01.0.copyload.i.i.pre, %bb.b ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %.sroa.05.0.extract.trunc.i, %bb.b ], [ %i.ag, %bb.d ], [ 0, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i32 %.0.i, ptr %i.ah, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !64
  %i.ak = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ak, ptr %i.r, align 8, !tbaa !64
  store ptr %i.x, ptr %i.m, align 8, !tbaa !38
  %i.al = load ptr, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.am, align 8, !tbaa !66
  store ptr %i.al, ptr %i.c, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.c, ptr %i.an, align 8, !tbaa !66
  store ptr %i.c, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes9IRBuilder27createGetBuiltinClosureInstENS_13BuiltinMethod4EnumE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #13 ; 21 uses
  %i.b = uitofp i8 %1 to double
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  %i.d = tail call noundef ptr @_ZN6hermes6Module16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(1033) %i.c, double noundef %i.b) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %i.a, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 2 uses
  store i16 1023, ptr %i.f, align 2, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 7, ptr %i.g, align 2, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.i, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 2, ptr %i.k, align 4, !tbaa !29
  store i8 98, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.n, ptr %i.m, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 2, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  tail call void @_ZN6hermes11Instruction11pushOperandEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(132) %i.a, ptr noundef %i.d) #14
  store i32 459008, ptr %i.f, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 236
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.v, align 4 ; 2 uses
  %i.w = and i64 %.sroa.0.0.copyload.i.i, 4294967296
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !62   ; 4 uses
  %.not7.i = icmp eq ptr %i.z, %i.y
  br i1 %.not7.i, label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !63
  br label %_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit

_ZN6hermes9IRBuilder6insertEPNS_11InstructionE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ %.sroa.01.0.copyload.i.i.pre, %bb.b ], [ %i.z, %bb.d ], [ %i.z, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %.sroa.05.0.extract.trunc.i, %bb.b ], [ %i.ab, %bb.d ], [ 0, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 %.0.i, ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !64
  %i.af = shufflevector <2 x ptr> %i.ae, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.af, ptr %i.q, align 8, !tbaa !64
  store ptr %i.s, ptr %i.l, align 8, !tbaa !38
  %i.ag = load ptr, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.01.0.copyload.i.i, ptr %i.ah, align 8, !tbaa !66
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.a, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.a, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !65
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN6hermes9IRBuilder23createHBCCallDirectInstEPNS_13LiteralStringEPNS_8FunctionEPNS_5ValueEN4llvh8ArrayRefIS6_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr readonly captures(address) %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.c = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #13 ; 25 uses
  %i.d = icmp eq ptr %2, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i = select i1 %i.d, ptr null, ptr %i.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i16 1023, ptr %i.g, align 2, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 7, ptr %i.h, align 2, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.j, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 2, ptr %i.l, align 4, !tbaa !29
  store i8 95, ptr %i.f, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
end_hunk_0
