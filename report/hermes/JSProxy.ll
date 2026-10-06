Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSProxy?download=true
inline.NumInlined: 1411
inline.NumDeleted: 553
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm7JSProxy17defineOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES8_NS0_11PropOpFlagsE:bb.a
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
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !37
  %i.ad = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ae = icmp eq <2 x i32> %i.ad, zeroinitializer
  %i.af = zext <2 x i32> %i.ad to <2 x i64>
  %i.ag = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ai = add <2 x i64> %i.ah, %i.af
  %i.aj = or <2 x i64> %i.ai, splat (i64 -281474976710656)
  %i.ak = select <2 x i1> %i.ae, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.aj
  store <2 x i64> %i.ak, ptr %i.e, align 8, !tbaa !9
  %i.al = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 77) ; 3 uses
  %.not104 = icmp eq ptr %i.al, inttoptr (i64 -1 to ptr)
  br i1 %.not104, label %bb.u, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit49
  %i.am = load i64, ptr %i.al, align 8, !tbaa !283 ; 2 uses
  %i.an = icmp ugt i64 %i.am, -844424930131969
  %i.ao = and i64 %i.am, 281474976710655
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = and i1 %i.an, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 %3, ptr %4, i32 %5) #13
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.as = call { i32, i64 } @_ZN6hermes2vm28objectFromPropertyDescriptorERNS0_7RuntimeENS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %3, ptr %4) #13 ; 2 uses
  %i.at = extractvalue { i32, i64 } %i.as, 0
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = extractvalue { i32, i64 } %i.as, 1
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !9
  %.sroa.0.0.copyload.i50 = load i64, ptr %2, align 8, !tbaa !9
  %i.aw = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %i.al, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ab, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i50, i64 %i.av, i1 noundef zeroext false) #13 ; 2 uses
  %i.ax = extractvalue { i32, i64 } %i.aw, 0
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = extractvalue { i32, i64 } %i.aw, 1
  %i.ba = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.az) #13
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = trunc i32 %5 to i1
  br i1 %i.bb, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.u

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.bc, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 40, ptr %i.bd, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.be, align 8, !tbaa !14
  store ptr @.str.17, ptr %7, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.bf, align 8, !tbaa !16
  %i.bg = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  %i.bh = and i32 %i.bg, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 -1, ptr %i.bi, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !22  ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !37 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !35 ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k, !prof !38

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !37
  store i64 -1688849860263936, ptr %i.bl, align 8, !tbaa !9
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.k:                                             ; preds = %bb.i
  %i.bq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bj, i64 -1688849860263936) #13
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !22  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre107 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !37
  %.phi.trans.insert108 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre109 = load ptr, ptr %.phi.trans.insert108, align 8, !tbaa !35
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.j, %bb.k
  %i.br = phi ptr [ %i.bn, %bb.j ], [ %.pre109, %bb.k ]
  %i.bs = phi ptr [ %i.bp, %bb.j ], [ %.pre107, %bb.k ] ; 4 uses
  %i.bt = phi ptr [ %i.bj, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %.0.i.i.i.i.i.i52 = phi ptr [ %i.bl, %bb.j ], [ %i.bq, %bb.k ]
  store ptr %.0.i.i.i.i.i.i52, ptr %9, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.bu = icmp ult ptr %i.bs, %i.br
  br i1 %i.bu, label %bb.l, label %bb.m, !prof !38

bb.l:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 192
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !37
  store i64 -1266636858327041, ptr %i.bs, align 8, !tbaa !9
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.m:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bx = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bt, i64 -1266636858327041) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i.i.i.i53 = phi ptr [ %i.bs, %bb.l ], [ %i.bx, %bb.m ]
  store ptr %.0.i.i.i.i.i.i53, ptr %10, align 8, !tbaa !285
  %i.by = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #13 ; 2 uses
  %.mask = and i32 %i.by, 255
  %i.bz = icmp eq i32 %.mask, 0
  br i1 %i.bz, label %bb.t, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !9
  %i.ca = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask105 = and i32 %i.cc, 255
  %i.cd = icmp eq i32 %.mask105, 0
  br i1 %i.cd, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = and i32 %3, 36
  %i.cf = icmp ne i32 %i.ce, 32                   ; 2 uses
  %i.cg = and i32 %i.by, 256
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ch = and i32 %i.cc, 256
  %.not106 = icmp eq i32 %i.ch, 0
  br i1 %.not106, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit55, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit55:          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 1, ptr %i.ci, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 77, ptr %i.cj, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ck, align 8, !tbaa !14
  store ptr @.str.18, ptr %11, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 3, ptr %i.cl, align 8, !tbaa !16
  %i.cm = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %11) #13
  %i.cn = and i32 %i.cm, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %i.cf, label %bb.t, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit57

_ZN6hermes2vm11TwineChar16C2EPKc.exit57:          ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.co, align 8, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 105, ptr %i.cp, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.cq, align 8, !tbaa !14
  store ptr @.str.19, ptr %12, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.cr, align 8, !tbaa !16
  %i.cs = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %12) #13
  %i.ct = and i32 %i.cs, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %.sroa.0.0.copyload = load ptr, ptr %9, align 8
  %.val44 = load i16, ptr %8, align 4
  %i.cu = call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 %.sroa.078.0.extract.trunc, ptr %4, i16 %.val44, ptr %.sroa.0.0.copyload)
  %i.cv = icmp eq i32 %i.cu, 0                    ; 2 uses
  %brmerge = select i1 %i.cv, i1 true, i1 %i.cf, !prof !377
  %.mux = select i1 %i.cv, i32 0, i32 257, !prof !377
  br i1 %brmerge, label %bb.t, label %bb.s, !prof !290

bb.s:                                             ; preds = %bb.r
  %i.cw = load i16, ptr %8, align 4
  %i.cx = and i16 %i.cw, 8
  %.not43 = icmp eq i16 %i.cx, 0
  br i1 %.not43, label %bb.t, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit59

_ZN6hermes2vm11TwineChar16C2EPKc.exit59:          ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.cy, align 8, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 105, ptr %i.cz, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %i.da, align 8, !tbaa !14
  store ptr @.str.20, ptr %13, align 8, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 3, ptr %i.db, align 8, !tbaa !16
  %i.dc = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  %i.dd = and i32 %i.dc, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit59, %_ZN6hermes2vm11TwineChar16C2EPKc.exit57, %_ZN6hermes2vm11TwineChar16C2EPKc.exit55, %bb.n, %bb.s, %bb.q, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.089.1 = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.cn, %_ZN6hermes2vm11TwineChar16C2EPKc.exit55 ], [ 0, %bb.n ], [ %.mux, %bb.r ], [ %i.dd, %_ZN6hermes2vm11TwineChar16C2EPKc.exit59 ], [ %i.ct, %_ZN6hermes2vm11TwineChar16C2EPKc.exit57 ], [ 257, %bb.q ], [ 257, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit49, %bb.t, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.f, %bb.h, %bb.e, %bb.b
  %.sroa.089.5 = phi i32 [ %i.s, %bb.b ], [ %i.ar, %bb.d ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit49 ], [ 0, %bb.e ], [ 0, %bb.f ], [ %.sroa.089.1, %bb.t ], [ %i.bh, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.h ]
  %i.de = load i64, ptr %i.l, align 8, !tbaa !281
  %i.df = add i64 %i.de, -1
  store i64 %i.df, ptr %i.l, align 8, !tbaa !281
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.sroa.089.0.insert.ext = and i32 %.sroa.089.5, 65535
  ret i32 %.sroa.089.0.insert.ext
}

declare i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #3

declare { i32, i64 } @_ZN6hermes2vm28objectFromPropertyDescriptorERNS0_7RuntimeENS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr) local_unnamed_addr #3

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i64, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy8hasNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  store ptr %i.c, ptr %i.a, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !33
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !36
  store ptr %3, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !281
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !281
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !282
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %i.s = and i32 %i.r, 255
  br label %bb.h

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !9
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
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !37
  %i.ad = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ae = icmp eq <2 x i32> %i.ad, zeroinitializer
  %i.af = zext <2 x i32> %i.ad to <2 x i64>
  %i.ag = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ai = add <2 x i64> %i.ah, %i.af
  %i.aj = or <2 x i64> %i.ai, splat (i64 -281474976710656)
  %i.ak = select <2 x i1> %i.ae, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.aj
  store <2 x i64> %i.ak, ptr %i.e, align 8, !tbaa !9
  %i.al = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 256) ; 3 uses
  %.not = icmp eq ptr %i.al, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28
  %i.am = load i64, ptr %i.al, align 8, !tbaa !283 ; 2 uses
  %i.an = icmp ugt i64 %i.am, -844424930131969
  %i.ao = and i64 %i.am, 281474976710655
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = and i1 %i.an, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = call i32 @_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #13
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.at = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.as, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #13
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = or i64 %i.au, -844424930131968          ; 2 uses
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !22  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 192 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.bb = icmp ult ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.f, label %bb.g, !prof !38

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !37
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aw, i64 %i.av) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i29 = phi ptr [ %i.ay, %bb.f ], [ %i.bd, %bb.g ]
  %i.be = call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_111hasWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i29, ptr nonnull %i.al, ptr nonnull %i.ab, ptr nonnull %i.e)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28, %bb.b
  %.sroa.033.1 = phi i32 [ %i.s, %bb.b ], [ %i.ar, %bb.d ], [ %i.be, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28 ]
  %i.bf = load i64, ptr %i.l, align 8, !tbaa !281
  %i.bg = add i64 %i.bf, -1
  store i64 %i.bg, ptr %i.l, align 8, !tbaa !281
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.sroa.033.0.insert.ext = and i32 %.sroa.033.1, 65535
  ret i32 %.sroa.033.0.insert.ext
}

declare i32 @_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 258) i32 @_ZN6hermes2vm12_GLOBAL__N_111hasWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 6 uses
  %6 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !9
  %.sroa.0.0.copyload.i20 = load i64, ptr %1, align 8, !tbaa !9
  %i.a = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr %2, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %3, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i20, i1 noundef zeroext false) #13 ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i64 } %i.a, 1
  %i.e = tail call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.d) #13
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
end_hunk_0
