inline.NumInlined: 1411
inline.NumDeleted: 553
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm7JSProxy17preventExtensionsENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_11PropOpFlagsE:bb.a

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !7
  %i.ay = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.az, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask = and i32 %i.ba, 255
  %i.bb = icmp eq i32 %.mask, 0
  br i1 %i.bb, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = and i32 %i.ba, 256
  %.not54 = icmp eq i32 %i.bc, 0
  br i1 %.not54, label %.critedge, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bd, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 58, ptr %i.be, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bf, align 8, !tbaa !13
  store ptr @.str.8, ptr %4, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bg, align 8, !tbaa !15
  %i.bh = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  %i.bi = and i32 %i.bh, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge

.critedge23:                                      ; preds = %bb.f
  %i.bj = trunc i32 %2 to i1
  br i1 %i.bj, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit31, label %.critedge

_ZN6hermes2vm11TwineChar16C2EPKc.exit31:          ; preds = %.critedge23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 37, ptr %i.bl, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bm, align 8, !tbaa !13
  store ptr @.str.9, ptr %5, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.bn, align 8, !tbaa !15
  %i.bo = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  %i.bp = and i32 %i.bo, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge

.critedge:                                        ; preds = %.critedge23, %bb.h, %bb.d, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.g, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit31, %bb.b
  %.sroa.046.3 = phi i32 [ %i.s, %bb.b ], [ %i.as, %bb.d ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28 ], [ %i.bp, %_ZN6hermes2vm11TwineChar16C2EPKc.exit31 ], [ 0, %bb.e ], [ 0, %bb.g ], [ %i.bi, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 257, %bb.h ], [ 1, %.critedge23 ]
  %i.bq = load i64, ptr %i.l, align 8, !tbaa !67
  %i.br = add i64 %i.bq, -1
  store i64 %i.br, ptr %i.l, align 8, !tbaa !67
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.sroa.046.3
}

declare i32 @_ZN6hermes2vm8JSObject17preventExtensionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy14getOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_26ComputedPropertyDescriptorEPNS0_13MutableHandleIS7_EE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %6 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 6 uses
  %7 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 8 uses
  %8 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 5 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"union.hermes::vm::DefinePropertyFlags", align 4 ; 8 uses
  %11 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 6 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 6 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %15 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  store ptr %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !32
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !35
  store ptr %5, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !299
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %i.s = and i32 %i.r, 255
  br label %bb.am

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !7
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.v, -16777216 ; 2 uses
  %i.w = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1107296256
  %spec.select.i.i.i = select i1 %i.w, ptr %i.u, ptr null ; 2 uses
  %.not.i = icmp eq ptr %spec.select.i.i.i, null
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 20
  %i.y = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1191182336
  %spec.select.i.i8.i = select i1 %i.y, ptr %i.u, ptr null
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select.i.i8.i, i64 40
  %.0.i = select i1 %.not.i, ptr %i.z, ptr %i.x
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !36
  %i.ad = load <2 x i32>, ptr %.0.i, align 4, !tbaa !3 ; 2 uses
  %i.ae = icmp eq <2 x i32> %i.ad, zeroinitializer
  %i.af = zext <2 x i32> %i.ad to <2 x i64>
  %i.ag = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ai = add <2 x i64> %i.ah, %i.af
  %i.aj = or <2 x i64> %i.ai, splat (i64 -281474976710656)
  %i.ak = select <2 x i1> %i.ae, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.aj
  store <2 x i64> %i.ak, ptr %i.e, align 8, !tbaa !7
  %i.al = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 69) ; 3 uses
  %.not135 = icmp eq ptr %i.al, inttoptr (i64 -1 to ptr)
  br i1 %.not135, label %bb.am, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.d, label %bb.e, !prof !37

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.as, ptr %i.an, align 8, !tbaa !36
  store i64 -1266636858327041, ptr %i.ao, align 8, !tbaa !7
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.e:                                             ; preds = %bb.c
  %i.at = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.am, i64 -1266636858327041) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i68 = phi ptr [ %i.ao, %bb.d ], [ %i.at, %bb.e ]
  store ptr %.0.i.i.i.i.i.i68, ptr %6, align 8, !tbaa !301
  %i.au = load i64, ptr %i.al, align 8, !tbaa !300 ; 2 uses
  %i.av = icmp ugt i64 %i.au, -844424930131969
  %i.aw = and i64 %i.au, 281474976710655
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = and i1 %i.av, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %bb.al

bb.h:                                             ; preds = %bb.f
  %i.ba = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %3) #13
  br label %bb.al

bb.i:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !7
  %.sroa.0.0.copyload.i69 = load i64, ptr %2, align 8, !tbaa !7
  %i.bb = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr nonnull %i.al, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ab, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i69, i1 noundef zeroext false) #13 ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.bb, 0
  %i.bd = extractvalue { i32, i64 } %i.bb, 1      ; 2 uses
  %i.be = icmp eq i32 %i.bc, 0
  br i1 %i.be, label %bb.al, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !19  ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 192 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34 ; 2 uses
  %i.bk = icmp ult ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l, !prof !37

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !36
  store i64 %i.bd, ptr %i.bh, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bf, i64 %i.bd) #13
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre143 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre145 = load ptr, ptr %.phi.trans.insert144, align 8, !tbaa !34
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.k, %bb.l
  %16 = phi ptr [ %i.bj, %bb.k ], [ %.pre145, %bb.l ]
  %17 = phi ptr [ %i.bl, %bb.k ], [ %.pre143, %bb.l ] ; 4 uses
  %i.bn = phi ptr [ %i.bf, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %.0.i.i.i.i.i.i70 = phi ptr [ %i.bh, %bb.k ], [ %i.bm, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 -1, ptr %i.bo, align 4, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.bp = icmp ult ptr %17, %16
  br i1 %i.bp, label %bb.m, label %bb.n, !prof !37

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %18 = getelementptr inbounds nuw i8, ptr %i.bn, i64 192
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bq, ptr %18, align 8, !tbaa !36
  store i64 -1688849860263936, ptr %17, align 8, !tbaa !7
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.n:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.br = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bn, i64 -1688849860263936) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i71 = phi ptr [ %17, %bb.m ], [ %i.br, %bb.n ]
  store ptr %.0.i.i.i.i.i.i71, ptr %8, align 8, !tbaa !301
  %i.bs = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #13 ; 2 uses
  %i.bt = trunc i32 %i.bs to i16                  ; 2 uses
  %.mask = and i32 %i.bs, 255
  %i.bu = icmp eq i32 %.mask, 0
  br i1 %i.bu, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bv = load i64, ptr %.0.i.i.i.i.i.i70, align 8, !tbaa !300 ; 2 uses
  %.mask.i = and i64 %i.bv, -140737488355328
  %i.bw = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.bw, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bx = and i16 %i.bt, 256
  %.not140 = icmp eq i16 %i.bx, 0
  br i1 %.not140, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = load i16, ptr %7, align 4
  %i.bz = and i16 %i.by, 8
  %.not61 = icmp eq i16 %i.bz, 0
  br i1 %.not61, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.r

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.ca, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 56, ptr %i.cb, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.cc, align 8, !tbaa !13
  store ptr @.str.10, ptr %9, align 8, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.cd, align 8, !tbaa !15
  %i.ce = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %9) #13
  %i.cf = and i32 %i.ce, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ak

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !7
  %i.cg = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask141 = and i32 %i.ci, 255
  %i.cj = icmp eq i32 %.mask141, 0
  br i1 %i.cj, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = and i32 %i.ci, 256
  %.not142 = icmp eq i32 %i.ck, 0
  br i1 %.not142, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %bb.s
  %i.cl = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.e, ptr nonnull @.str.11, i64 52)
  %i.cm = and i32 %i.cl, 255
  br label %bb.ak

bb.u:                                             ; preds = %bb.o
  %i.cn = icmp ugt i64 %i.bv, -281474976710657
  br i1 %i.cn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i70, ptr nonnull @.str.12, i64 60)
  %i.cp = and i32 %i.co, 255
  br label %bb.ak

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i.i72 = load i64, ptr %i.e, align 8, !tbaa !7
  %i.cq = and i64 %.sroa.0.0.copyload.i.i.i.i72, 281474976710655
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.cr, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask136 = and i32 %i.cs, 255
  %i.ct = icmp eq i32 %.mask136, 0
  br i1 %i.ct, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !19  ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 192 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !36 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 200
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34 ; 2 uses
  %i.cz = icmp ult ptr %i.cw, %i.cy
  br i1 %i.cz, label %bb.y, label %bb.z, !prof !37

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  store ptr %i.da, ptr %i.cv, align 8, !tbaa !36
  store i64 -1688849860263936, ptr %i.cw, align 8, !tbaa !7
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74

bb.z:                                             ; preds = %bb.x
  %i.db = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cu, i64 -1688849860263936) #13
  %.pre146.a = load ptr, ptr %i.b, align 8, !tbaa !19 ; 3 uses
  %.phi.trans.insert147 = getelementptr inbounds nuw i8, ptr %.pre146.a, i64 192
  %.pre148 = load ptr, ptr %.phi.trans.insert147, align 8, !tbaa !36
  %.phi.trans.insert149 = getelementptr inbounds nuw i8, ptr %.pre146.a, i64 200
  %.pre150 = load ptr, ptr %.phi.trans.insert149, align 8, !tbaa !34
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74: ; preds = %bb.y, %bb.z
  %i.dc = phi ptr [ %i.cy, %bb.y ], [ %.pre150, %bb.z ]
  %i.dd = phi ptr [ %i.da, %bb.y ], [ %.pre148, %bb.z ] ; 4 uses
  %i.de = phi ptr [ %i.cu, %bb.y ], [ %.pre146.a, %bb.z ] ; 2 uses
  %.0.i.i.i.i.i.i73 = phi ptr [ %i.cw, %bb.y ], [ %i.db, %bb.z ]
  store ptr %.0.i.i.i.i.i.i73, ptr %11, align 8, !tbaa !301
  %.sroa.0.0.copyload.i.i.i75 = load i64, ptr %.0.i.i.i.i.i.i70, align 8, !tbaa !7
  %i.df = or i64 %.sroa.0.0.copyload.i.i.i75, -281474976710656 ; 2 uses
  %i.dg = icmp ult ptr %i.dd, %i.dc
  br i1 %i.dg, label %bb.aa, label %bb.ab, !prof !37

bb.aa:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 192
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !36
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.ab:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74
  %i.dj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.de, i64 %i.df) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i.i.i.i76 = phi ptr [ %i.dd, %bb.aa ], [ %i.dj, %bb.ab ]
  %i.dk = call noundef i32 @_ZN6hermes2vm20toPropertyDescriptorENS0_6HandleINS0_11HermesValueEEERNS0_7RuntimeERNS0_19DefinePropertyFlagsERNS0_13MutableHandleIS2_EE(ptr %.0.i.i.i.i.i.i76, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aj, label %bb.ac, !prof !65

bb.ac:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  call fastcc void @_ZN6hermes2vm12_GLOBAL__N_126completePropertyDescriptorERNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 4 dereferenceable(4) %10)
  %i.dm = and i16 %i.bt, 256
  %.not137 = icmp eq i16 %i.dm, 0
  br i1 %.not137, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = and i32 %i.cs, 256
  %.not138 = icmp eq i32 %i.dn, 0
  br i1 %.not138, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit78, label %.thread

_ZN6hermes2vm11TwineChar16C2EPKc.exit78:          ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.do, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 70, ptr %i.dp, align 8, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.dq, align 8, !tbaa !13
  store ptr @.str.13, ptr %12, align 8, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.dr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.ds, align 8, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.du, align 8, !tbaa !15
  %i.dv = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  %i.dw = and i32 %i.dv, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %.sroa.02.0.copyload = load ptr, ptr %11, align 8
  %.sroa.01.0.copyload = load ptr, ptr %8, align 8
  %.val = load i16, ptr %10, align 4
  %.val62 = load i16, ptr %7, align 4
  %i.dx = call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 %.val, ptr %.sroa.02.0.copyload, i16 %.val62, ptr %.sroa.01.0.copyload)
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.aj, label %bb.af, !prof !65

bb.af:                                            ; preds = %bb.ae
  %i.dz = load i16, ptr %10, align 4              ; 3 uses
  %i.ea = and i16 %i.dz, 4
  %.not56 = icmp eq i16 %i.ea, 0
  br i1 %.not56, label %bb.ag, label %bb.ah

.thread:                                          ; preds = %bb.ad
  %i.eb = load i16, ptr %10, align 4              ; 2 uses
  %i.ec = and i16 %i.eb, 4
  %.not56133 = icmp eq i16 %i.ec, 0
  br i1 %.not56133, label %.thread134, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ed = load i16, ptr %7, align 4
  %i.ee = and i16 %i.ed, 8
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE
declare i32 @_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7JSProxy8getNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  store ptr %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !32
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !35
  store ptr %4, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !299
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit30, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  br label %bb.l

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit30: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !7
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.u, -16777216 ; 2 uses
  %i.v = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1107296256
  %spec.select.i.i.i = select i1 %i.v, ptr %i.t, ptr null ; 2 uses
  %.not.i = icmp eq ptr %spec.select.i.i.i, null
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 20
  %i.x = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1191182336
  %spec.select.i.i8.i = select i1 %i.x, ptr %i.t, ptr null
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i8.i, i64 40
  %.0.i = select i1 %.not.i, ptr %i.y, ptr %i.w
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !36
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !3 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !7
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 65) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit30
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !300 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, i32 0, ptr noundef null) #13 ; 2 uses
  %i.ar = extractvalue { i32, i64 } %i.aq, 0
  %i.as = extractvalue { i32, i64 } %i.aq, 1
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.at = and i32 %2, 268435456
  %.not.i31 = icmp eq i32 %i.at, 0
  br i1 %.not.i31, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.av = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.au, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #13
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = or i64 %i.aw, -844424930131968          ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 192 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 200
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !34
  %i.bd = icmp ult ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.h, !prof !37

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.az, align 8, !tbaa !36
  store i64 %i.ax, ptr %i.ba, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.h:                                             ; preds = %bb.f
  %i.bf = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ay, i64 %i.ax) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.i:                                             ; preds = %bb.e
  %i.bg = zext i32 %2 to i64
  %i.bh = or disjoint i64 %i.bg, -1266637395197952 ; 2 uses
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !34
  %i.bn = icmp ult ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !36
  store i64 %i.bh, ptr %i.bk, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.k:                                             ; preds = %bb.i
  %i.bp = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bi, i64 %i.bh) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.sroa.034.0 = phi ptr [ %i.bf, %bb.h ], [ %i.ba, %bb.g ], [ %i.bk, %bb.j ], [ %i.bp, %bb.k ]
  %i.bq = call fastcc { i32, i64 } @_ZN6hermes2vm12_GLOBAL__N_111getWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.034.0, ptr nonnull %i.ak, ptr nonnull %i.aa, ptr nonnull %i.e, ptr %3) ; 2 uses
  %i.br = extractvalue { i32, i64 } %i.bq, 0
  %i.bs = extractvalue { i32, i64 } %i.bq, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit30, %bb.b
  %.sroa.044.1 = phi i32 [ %i.r, %bb.b ], [ %i.ar, %bb.d ], [ %i.br, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit30 ]
  %.sroa.5.1 = phi i64 [ -1688849860263936, %bb.b ], [ %i.as, %bb.d ], [ %i.bs, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ -1688849860263936, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit30 ]
  %i.bt = load i64, ptr %i.l, align 8, !tbaa !67
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr %i.l, align 8, !tbaa !67
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN6hermes2vm12_GLOBAL__N_111getWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr nofree readonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 7 uses
  %7 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 6 uses
  %8 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !7
  %.sroa.0.0.copyload.i22 = load i64, ptr %1, align 8, !tbaa !7
  %.sroa.0.0.copyload.i23 = load i64, ptr %5, align 8, !tbaa !7
  %i.a = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr %2, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %3, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i22, i64 %.sroa.0.0.copyload.i23, i1 noundef zeroext false) #13 ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = extractvalue { i32, i64 } %i.a, 1        ; 2 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !36
  store i64 %i.c, ptr %i.h, align 8, !tbaa !7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 %i.c) #13
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre44 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre46 = load ptr, ptr %.phi.trans.insert45, align 8, !tbaa !34
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.j, %bb.c ], [ %.pre46, %bb.d ] ; 2 uses
  %i.o = phi ptr [ %i.l, %bb.c ], [ %.pre44, %bb.d ] ; 4 uses
  %i.p = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.m, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 -1, ptr %i.q, align 4, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.r = icmp ult ptr %i.o, %i.n
  br i1 %i.r, label %bb.e, label %bb.f, !prof !37

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !36
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !7
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.u = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.p, i64 -1688849860263936) #13
  %.pre47 = load ptr, ptr %i.e, align 8, !tbaa !19 ; 3 uses
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %.pre47, i64 192
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8, !tbaa !36
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %.pre47, i64 200
  %.pre51 = load ptr, ptr %.phi.trans.insert50, align 8, !tbaa !34
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.n, %bb.e ], [ %.pre51, %bb.f ]
  %i.w = phi ptr [ %i.t, %bb.e ], [ %.pre49, %bb.f ] ; 4 uses
  %11 = phi ptr [ %i.p, %bb.e ], [ %.pre47, %bb.f ] ; 2 uses
  %.0.i.i.i.i.i.i24 = phi ptr [ %i.o, %bb.e ], [ %i.u, %bb.f ]
  store ptr %.0.i.i.i.i.i.i24, ptr %7, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.x = icmp ult ptr %i.w, %i.v
  br i1 %i.x, label %bb.g, label %bb.h, !prof !37

bb.g:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.y, ptr %12, align 8, !tbaa !36
  store i64 -1266636858327041, ptr %i.w, align 8, !tbaa !7
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.h:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.z = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %11, i64 -1266636858327041) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i25 = phi ptr [ %i.w, %bb.g ], [ %i.z, %bb.h ]
  store ptr %.0.i.i.i.i.i.i25, ptr %8, align 8, !tbaa !301
  %i.aa = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #13 ; 2 uses
  %.mask = and i32 %i.aa, 255
  %i.ab = icmp eq i32 %.mask, 0
  br i1 %i.ab, label %bb.q, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ac = and i32 %i.aa, 256
  %.not42 = icmp eq i32 %i.ac, 0
  br i1 %.not42, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i16, ptr %6, align 4               ; 3 uses
  %i.ae = and i16 %i.ad, 8
  %.not = icmp eq i16 %i.ae, 0
  br i1 %.not, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.af = and i16 %i.ad, 20
  %or.cond = icmp eq i16 %i.af, 0
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7
  %i.ag = load ptr, ptr %7, align 8, !tbaa !301
  %.sroa.0.0.copyload.i26 = load i64, ptr %i.ag, align 8, !tbaa !7
  %i.ah = call noundef zeroext i1 @_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_(i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i26) #13
  br i1 %i.ah, label %._crit_edge, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

._crit_edge:                                      ; preds = %bb.l
  %.pre52 = load i16, ptr %6, align 4
  br label %bb.m

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.ai, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 108, ptr %i.aj, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.ak, align 8, !tbaa !13
  store ptr @.str.41, ptr %9, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.al, align 8, !tbaa !15
  %i.am = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.q

bb.m:                                             ; preds = %._crit_edge, %bb.k
  %i.an = phi i16 [ %.pre52, %._crit_edge ], [ %i.ad, %bb.k ]
  %i.ao = and i16 %i.an, 16
  %.not21 = icmp eq i16 %i.ao, 0
  br i1 %.not21, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %7, align 8, !tbaa !301
  %.sroa.0.0.copyload.i.i.i27 = load i64, ptr %i.ap, align 8, !tbaa !7
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i27, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !353
  %.not43 = icmp eq i32 %i.at, 0
  br i1 %.not43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !300
  %.mask.i = and i64 %i.au, -140737488355328
  %i.av = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.av, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit29

_ZN6hermes2vm11TwineChar16C2EPKc.exit29:          ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.aw, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 96, ptr %i.ax, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !13
  store ptr @.str.42, ptr %10, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.az, align 8, !tbaa !15
  %i.ba = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.j, %bb.i
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit29, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.041.0 = phi i32 [ %i.am, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.p ], [ %i.ba, %_ZN6hermes2vm11TwineChar16C2EPKc.exit29 ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  %.sroa.6.0 = phi i64 [ -1688849860263936, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.p ], [ -1688849860263936, %_ZN6hermes2vm11TwineChar16C2EPKc.exit29 ], [ -1688849860263936, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.sroa.041.1 = phi i32 [ %.sroa.041.0, %bb.q ], [ 0, %bb.a ]
  %.sroa.6.1 = phi i64 [ %.sroa.6.0, %bb.q ], [ -1688849860263936, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.041.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7JSProxy11getComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEES8_(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  store ptr %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !32
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !35
  store ptr %4, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !299
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit26, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  br label %bb.f

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit26: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !7
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.u, -16777216 ; 2 uses
  %i.v = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1107296256
  %spec.select.i.i.i = select i1 %i.v, ptr %i.t, ptr null ; 2 uses
  %.not.i = icmp eq ptr %spec.select.i.i.i, null
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 20
  %i.x = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 1191182336
  %spec.select.i.i8.i = select i1 %i.x, ptr %i.t, ptr null
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i8.i, i64 40
  %.0.i = select i1 %.not.i, ptr %i.y, ptr %i.w
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !36
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !3 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !7
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 65) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit26
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !300 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) #13 ; 2 uses
  %i.ar = extractvalue { i32, i64 } %i.aq, 0
  %i.as = extractvalue { i32, i64 } %i.aq, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.at = call fastcc { i32, i64 } @_ZN6hermes2vm12_GLOBAL__N_111getWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr nonnull %i.ak, ptr nonnull %i.aa, ptr nonnull %i.e, ptr %3) ; 2 uses
  %i.au = extractvalue { i32, i64 } %i.at, 0
  %i.av = extractvalue { i32, i64 } %i.at, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit26, %bb.b
  %.sroa.030.1 = phi i32 [ %i.r, %bb.b ], [ %i.ar, %bb.d ], [ %i.au, %bb.e ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit26 ]
  %.sroa.5.1 = phi i64 [ -1688849860263936, %bb.b ], [ %i.as, %bb.d ], [ %i.av, %bb.e ], [ -1688849860263936, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit26 ]
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !67
  %i.ax = add i64 %i.aw, -1
end_hunk_1
