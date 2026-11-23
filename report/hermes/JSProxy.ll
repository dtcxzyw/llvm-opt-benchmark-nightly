Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSProxy?download=true
inline.NumInlined: 1411
inline.NumDeleted: 553
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm7JSProxy14getPrototypeOfENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE:bb.a
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 67) ; 3 uses
  %.not56 = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not56, label %bb.o, label %bb.c, !prof !97

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit25
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !57 ; 2 uses
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = call ptr @_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.at = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.aa, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false) #13 ; 2 uses
  %i.au = extractvalue { i32, i64 } %i.at, 0
  %i.av = extractvalue { i32, i64 } %i.at, 1      ; 4 uses
  %i.aw = icmp eq i32 %i.au, 0
  br i1 %i.aw, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = icmp ugt i64 %i.av, -281474976710657
  br i1 %i.ax, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.mask.i = and i64 %i.av, -140737488355328
  %i.ay = icmp eq i64 %.mask.i, -1548112371908608
  br i1 %i.ay, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.az, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 53, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !62
  store ptr @.str.4, ptr %3, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.bc, align 8, !tbaa !64
  %i.bd = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.be = and i64 %i.av, 281474976710655
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = add i32 %i.bg, -436207616
  %i.bi = icmp ult i32 %i.bh, 855638016
  %i.bj = select i1 %i.bi, i64 %i.av, i64 -281474976710656
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.g, %bb.h
  %i.bk = phi i64 [ %i.bj, %bb.h ], [ -281474976710656, %bb.g ] ; 2 uses
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 192 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 200
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %bb.i, label %bb.j, !prof !86

bb.i:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !85
  store i64 %i.bk, ptr %i.bn, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.j:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit
  %i.bs = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bl, i64 %i.bk) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i28 = phi ptr [ %i.bn, %bb.i ], [ %i.bs, %bb.j ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i29 = load i64, ptr %i.e, align 8, !tbaa !57
  %i.bt = and i64 %.sroa.0.0.copyload.i.i.i.i29, 281474976710655
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.bu, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask = and i32 %i.bv, 255
  %i.bw = icmp eq i32 %.mask, 0
  br i1 %i.bw, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.bx = and i32 %i.bv, 256
  %.not57 = icmp eq i32 %i.bx, 0
  br i1 %.not57, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i30 = load i64, ptr %.0.i.i.i.i.i.i28, align 8, !tbaa !57
  %i.by = and i64 %.sroa.0.0.copyload.i.i.i30, 281474976710655
  %i.bz = inttoptr i64 %i.by to ptr
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i31 = load i64, ptr %i.e, align 8, !tbaa !57
  %i.ca = and i64 %.sroa.0.0.copyload.i.i.i.i31, 281474976710655
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = call ptr @_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 3 uses
  %.not58 = icmp eq ptr %i.cc, inttoptr (i64 -1 to ptr)
  br i1 %.not58, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i28, align 8, !tbaa !57
  %i.cd = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %.not = icmp eq ptr %i.cc, %i.ce
  br i1 %.not, label %bb.o, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit33

_ZN6hermes2vm11TwineChar16C2EPKc.exit33:          ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.cf, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 82, ptr %i.cg, align 8, !tbaa !61
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ch, align 8, !tbaa !62
  store ptr @.str.5, ptr %4, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ci, align 8, !tbaa !64
  %i.cj = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit25, %bb.l, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, %bb.m, %_ZN6hermes2vm11TwineChar16C2EPKc.exit33, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.b
  %.sroa.055.4 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.as, %bb.d ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit25 ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ inttoptr (i64 -1 to ptr), %bb.e ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ], [ %i.bz, %bb.l ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit33 ], [ inttoptr (i64 -1 to ptr), %bb.m ], [ %i.cc, %bb.n ]
  %i.ck = load i64, ptr %i.l, align 8, !tbaa !329
  %i.cl = add i64 %i.ck, -1
  store i64 %i.cl, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret ptr %.sroa.055.4
}

declare noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #3

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy14setPrototypeOfENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeES4_(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #2 align 2 !guid !385 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %3, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit24, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %5 = and i32 %i.r, 255
  br label %bb.k

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit24: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 68) ; 3 uses
  %.not62 = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not62, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !57 ; 2 uses
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %.sroa.0.0.copyload.i.i.i26 = load i64, ptr %2, align 8, !tbaa !57
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i26, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = call i32 @_ZN6hermes2vm8JSObject9setParentEPS1_RNS0_7RuntimeES2_NS0_11PropOpFlagsE(ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.at, i32 0) #13
  %i.av = and i32 %i.au, 65535
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i27 = load i64, ptr %2, align 8, !tbaa !57 ; 2 uses
  %i.aw = and i64 %.sroa.0.0.copyload.i.i.i27, 281474976710655
  %.not = icmp eq i64 %i.aw, 0
  %spec.select = select i1 %.not, i64 -1548112371908608, i64 %.sroa.0.0.copyload.i.i.i27
  %i.ax = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.aa, i64 %.sroa.0.0.copyload.i, i64 %spec.select, i1 noundef zeroext false) #13 ; 2 uses
  %i.ay = extractvalue { i32, i64 } %i.ax, 0
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = extractvalue { i32, i64 } %i.ax, 1
  %i.bb = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.ba) #13
  br i1 %i.bb, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !57
  %i.bc = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.bd, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask = and i32 %i.be, 255
  %i.bf = icmp eq i32 %.mask, 0
  br i1 %i.bf, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = and i32 %i.be, 256
  %.not63 = icmp eq i32 %i.bg, 0
  br i1 %.not63, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i.i.i30 = load i64, ptr %i.e, align 8, !tbaa !57
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i.i30, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = call ptr @_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.bi, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.not64 = icmp eq ptr %i.bj, inttoptr (i64 -1 to ptr)
  br i1 %.not64, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !57
  %i.bk = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr
  %.not19 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not19, label %bb.k, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bm, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 62, ptr %i.bn, align 8, !tbaa !61
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bo, align 8, !tbaa !62
  store ptr @.str.6, ptr %4, align 8, !tbaa !63
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bp, align 8, !tbaa !64
  %i.bq = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  %6 = and i32 %i.bq, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit24, %bb.g, %bb.h, %bb.j, %bb.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.f, %bb.e, %bb.b
  %.sroa.052.4 = phi i32 [ %5, %bb.b ], [ %i.av, %bb.d ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit24 ], [ 0, %bb.e ], [ 1, %bb.f ], [ 257, %bb.h ], [ 0, %bb.g ], [ %6, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.i ], [ 257, %bb.j ]
  %i.br = load i64, ptr %i.l, align 8, !tbaa !329
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.sroa.052.4
}

declare i32 @_ZN6hermes2vm8JSObject9setParentEPS1_RNS0_7RuntimeES2_NS0_11PropOpFlagsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy12isExtensibleENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #2 align 2 !guid !386 {
bb.a:
  %2 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %1, ptr %2, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %2, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit22, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %4 = and i32 %i.r, 255
  br label %bb.i

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit22: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 83) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit22
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !57 ; 2 uses
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13
  %5 = and i32 %i.as, 65535
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.at = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.aa, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false) #13 ; 2 uses
  %i.au = extractvalue { i32, i64 } %i.at, 0
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = extractvalue { i32, i64 } %i.at, 1
  %i.ax = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.aw) #13 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i24 = load i64, ptr %i.e, align 8, !tbaa !57
  %i.ay = and i64 %.sroa.0.0.copyload.i.i.i.i24, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.az, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask = and i32 %i.ba, 255
  %i.bb = icmp eq i32 %.mask, 0
  br i1 %i.bb, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = and i32 %i.ba, 256
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = xor i1 %i.ax, %i.bd
  br i1 %i.be, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.h

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.bf, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 54, ptr %i.bg, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bh, align 8, !tbaa !62
  store ptr @.str.7, ptr %3, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.bi, align 8, !tbaa !64
  %i.bj = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  %6 = and i32 %i.bj, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %7 = select i1 %i.ax, i32 257, i32 1
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit22, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.h, %bb.f, %bb.e, %bb.b
  %.sroa.038.3 = phi i32 [ %4, %bb.b ], [ %5, %bb.d ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit22 ], [ 0, %bb.e ], [ %7, %bb.h ], [ %6, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.f ]
  %i.bk = load i64, ptr %i.l, align 8, !tbaa !329
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %.sroa.038.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy17preventExtensionsENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_11PropOpFlagsE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) local_unnamed_addr #2 align 2 !guid !387 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %3, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %6 = and i32 %i.r, 255
  br label %.critedge

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 79) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call i32 @_ZN6hermes2vm8JSObject17preventExtensionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_11PropOpFlagsE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #13
  %i.ar = and i32 %i.aq, 65535
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !57
  %i.as = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.aa, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false) #13 ; 2 uses
  %i.at = extractvalue { i32, i64 } %i.as, 0
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = extractvalue { i32, i64 } %i.as, 1
  %i.aw = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.av) #13
  br i1 %i.aw, label %bb.g, label %.critedge23

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !57
  %i.ax = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask = and i32 %i.az, 255
  %i.ba = icmp eq i32 %.mask, 0
  br i1 %i.ba, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = and i32 %i.az, 256
  %.not54 = icmp eq i32 %i.bb, 0
  br i1 %.not54, label %.critedge, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bc, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 58, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.be, align 8, !tbaa !62
  store ptr @.str.8, ptr %4, align 8, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bf, align 8, !tbaa !64
  %i.bg = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  %7 = and i32 %i.bg, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge

.critedge23:                                      ; preds = %bb.f
  %i.bh = trunc i32 %2 to i1
  br i1 %i.bh, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit31, label %.critedge

_ZN6hermes2vm11TwineChar16C2EPKc.exit31:          ; preds = %.critedge23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 37, ptr %i.bj, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !62
  store ptr @.str.9, ptr %5, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.bl, align 8, !tbaa !64
  %i.bm = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  %8 = and i32 %i.bm, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge

.critedge:                                        ; preds = %.critedge23, %bb.h, %bb.d, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.g, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit31, %bb.b
  %.sroa.046.3 = phi i32 [ %6, %bb.b ], [ %i.ar, %bb.d ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28 ], [ %8, %_ZN6hermes2vm11TwineChar16C2EPKc.exit31 ], [ 0, %bb.e ], [ 0, %bb.g ], [ %7, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 257, %bb.h ], [ 1, %.critedge23 ]
  %i.bn = load i64, ptr %i.l, align 8, !tbaa !329
  %i.bo = add i64 %i.bn, -1
  store i64 %i.bo, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.sroa.046.3
}

declare i32 @_ZN6hermes2vm8JSObject17preventExtensionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy14getOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_26ComputedPropertyDescriptorEPNS0_13MutableHandleIS7_EE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #2 align 2 !guid !388 {
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
  store ptr %1, ptr %5, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %5, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %16 = and i32 %i.r, 255
  br label %bb.am

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 69) ; 3 uses
  %.not135 = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not135, label %bb.am, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 192 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83
  %i.aq = icmp ult ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !86

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !85
  store i64 -1266636858327041, ptr %i.an, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.al, i64 -1266636858327041) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i68 = phi ptr [ %i.an, %bb.d ], [ %i.as, %bb.e ]
  store ptr %.0.i.i.i.i.i.i68, ptr %6, align 8, !tbaa !333
  %i.at = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.au = icmp ugt i64 %i.at, -844424930131969
  %i.av = and i64 %i.at, 281474976710655
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %bb.al

bb.h:                                             ; preds = %bb.f
  %i.az = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %3) #13
  br label %bb.al

bb.i:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !57
  %.sroa.0.0.copyload.i69 = load i64, ptr %2, align 8, !tbaa !57
  %i.ba = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.aa, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i69, i1 noundef zeroext false) #13 ; 2 uses
  %i.bb = extractvalue { i32, i64 } %i.ba, 0
  %i.bc = extractvalue { i32, i64 } %i.ba, 1      ; 2 uses
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %bb.al, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !70  ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 192 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !85 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !83
  %i.bj = icmp ult ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.l, !prof !86

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !85
  store i64 %i.bc, ptr %i.bg, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.be, i64 %i.bc) #13
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !70
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.k, %bb.l
  %i.bm = phi ptr [ %i.be, %bb.k ], [ %.pre, %bb.l ] ; 3 uses
  %.0.i.i.i.i.i.i70 = phi ptr [ %i.bg, %bb.k ], [ %i.bl, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 -1, ptr %i.bn, align 4, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 192 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !85 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 200
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !83
  %i.bs = icmp ult ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.m, label %bb.n, !prof !86

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !85
  store i64 -1688849860263936, ptr %i.bp, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.n:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bu = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bm, i64 -1688849860263936) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i71 = phi ptr [ %i.bp, %bb.m ], [ %i.bu, %bb.n ]
  store ptr %.0.i.i.i.i.i.i71, ptr %8, align 8, !tbaa !333
  %i.bv = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #13 ; 2 uses
  %i.bw = trunc i32 %i.bv to i16                  ; 2 uses
  %.mask = and i32 %i.bv, 255
  %i.bx = icmp eq i32 %.mask, 0
  br i1 %i.bx, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.by = load i64, ptr %.0.i.i.i.i.i.i70, align 8, !tbaa !331 ; 2 uses
  %.mask.i = and i64 %i.by, -140737488355328
  %i.bz = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.bz, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ca = and i16 %i.bw, 256
  %.not140 = icmp eq i16 %i.ca, 0
  br i1 %.not140, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = load i16, ptr %7, align 4
  %i.cc = and i16 %i.cb, 8
  %.not61 = icmp eq i16 %i.cc, 0
  br i1 %.not61, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.r

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.cd, align 8, !tbaa !60
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 56, ptr %i.ce, align 8, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.cf, align 8, !tbaa !62
  store ptr @.str.10, ptr %9, align 8, !tbaa !63
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.cg, align 8, !tbaa !64
  %i.ch = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %9) #13
  %17 = and i32 %i.ch, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ak

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !57
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.cj, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask141 = and i32 %i.ck, 255
  %i.cl = icmp eq i32 %.mask141, 0
  br i1 %i.cl, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = and i32 %i.ck, 256
  %.not142 = icmp eq i32 %i.cm, 0
  br i1 %.not142, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %bb.s
  %i.cn = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.e, ptr nonnull @.str.11, i64 52)
  %18 = and i32 %i.cn, 255
  br label %bb.ak

bb.u:                                             ; preds = %bb.o
  %i.co = icmp ugt i64 %i.by, -281474976710657
  br i1 %i.co, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i70, ptr nonnull @.str.12, i64 60)
  %19 = and i32 %i.cp, 255
  br label %bb.ak

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i.i72 = load i64, ptr %i.e, align 8, !tbaa !57
  %i.cq = and i64 %.sroa.0.0.copyload.i.i.i.i72, 281474976710655
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.cr, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask136 = and i32 %i.cs, 255
  %i.ct = icmp eq i32 %.mask136, 0
  br i1 %i.ct, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !70  ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 192 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !85 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 200
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !83 ; 2 uses
  %i.cz = icmp ult ptr %i.cw, %i.cy
  br i1 %i.cz, label %bb.y, label %bb.z, !prof !86

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  store ptr %i.da, ptr %i.cv, align 8, !tbaa !85
  store i64 -1688849860263936, ptr %i.cw, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74

bb.z:                                             ; preds = %bb.x
  %i.db = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cu, i64 -1688849860263936) #13
  %.pre143 = load ptr, ptr %i.b, align 8, !tbaa !70 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre143, i64 192
  %.pre144 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85
  %.phi.trans.insert145 = getelementptr inbounds nuw i8, ptr %.pre143, i64 200
  %.pre146 = load ptr, ptr %.phi.trans.insert145, align 8, !tbaa !83
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74: ; preds = %bb.y, %bb.z
  %i.dc = phi ptr [ %i.cy, %bb.y ], [ %.pre146, %bb.z ]
  %i.dd = phi ptr [ %i.da, %bb.y ], [ %.pre144, %bb.z ] ; 4 uses
  %i.de = phi ptr [ %i.cu, %bb.y ], [ %.pre143, %bb.z ] ; 2 uses
  %.0.i.i.i.i.i.i73 = phi ptr [ %i.cw, %bb.y ], [ %i.db, %bb.z ]
  store ptr %.0.i.i.i.i.i.i73, ptr %11, align 8, !tbaa !333
  %.sroa.0.0.copyload.i.i.i75 = load i64, ptr %.0.i.i.i.i.i.i70, align 8, !tbaa !57
  %i.df = or i64 %.sroa.0.0.copyload.i.i.i75, -281474976710656 ; 2 uses
  %i.dg = icmp ult ptr %i.dd, %i.dc
  br i1 %i.dg, label %bb.aa, label %bb.ab, !prof !86

bb.aa:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 192
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !85
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.ab:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit74
  %i.dj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.de, i64 %i.df) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i.i.i.i76 = phi ptr [ %i.dd, %bb.aa ], [ %i.dj, %bb.ab ]
  %i.dk = call noundef i32 @_ZN6hermes2vm20toPropertyDescriptorENS0_6HandleINS0_11HermesValueEEERNS0_7RuntimeERNS0_19DefinePropertyFlagsERNS0_13MutableHandleIS2_EE(ptr %.0.i.i.i.i.i.i76, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aj, label %bb.ac, !prof !97

bb.ac:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  call fastcc void @_ZN6hermes2vm12_GLOBAL__N_126completePropertyDescriptorERNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 4 dereferenceable(4) %10)
  %i.dm = and i16 %i.bw, 256
  %.not137 = icmp eq i16 %i.dm, 0
  br i1 %.not137, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = and i32 %i.cs, 256
  %.not138 = icmp eq i32 %i.dn, 0
  br i1 %.not138, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit78, label %.thread

_ZN6hermes2vm11TwineChar16C2EPKc.exit78:          ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.do, align 8, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 70, ptr %i.dp, align 8, !tbaa !61
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.dq, align 8, !tbaa !62
  store ptr @.str.13, ptr %12, align 8, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.dr, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.ds, align 8, !tbaa !60
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.du, align 8, !tbaa !64
  %i.dv = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  %20 = and i32 %i.dv, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %.sroa.02.0.copyload = load ptr, ptr %11, align 8
  %.sroa.01.0.copyload = load ptr, ptr %8, align 8
  %.val = load i16, ptr %10, align 4
  %.val62 = load i16, ptr %7, align 4
  %i.dw = call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 %.val, ptr %.sroa.02.0.copyload, i16 %.val62, ptr %.sroa.01.0.copyload)
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.aj, label %bb.af, !prof !97

bb.af:                                            ; preds = %bb.ae
  %i.dy = load i16, ptr %10, align 4              ; 3 uses
  %i.dz = and i16 %i.dy, 4
  %.not56 = icmp eq i16 %i.dz, 0
  br i1 %.not56, label %bb.ag, label %bb.ah

.thread:                                          ; preds = %bb.ad
  %i.ea = load i16, ptr %10, align 4              ; 2 uses
  %i.eb = and i16 %i.ea, 4
  %.not56133 = icmp eq i16 %i.eb, 0
  br i1 %.not56133, label %.thread134, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ec = load i16, ptr %7, align 4
  %i.ed = and i16 %i.ec, 8
  %.not57 = icmp eq i16 %i.ed, 0
  br i1 %.not57, label %bb.ah, label %.thread134

.thread134:                                       ; preds = %.thread, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 1, ptr %i.ee, align 8, !tbaa !60
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 77, ptr %i.ef, align 8, !tbaa !61
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %i.eg, align 8, !tbaa !62
  store ptr @.str.15, ptr %14, align 8, !tbaa !63
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 3, ptr %i.eh, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 1, ptr %i.ei, align 8, !tbaa !60
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 32, ptr %i.ej, align 8, !tbaa !61
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.ek, align 8, !tbaa !62
  store ptr @.str.16, ptr %15, align 8, !tbaa !63
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 3, ptr %i.el, align 8, !tbaa !64
  %i.em = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  %21 = and i32 %i.em, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.aj

bb.ah:                                            ; preds = %.thread, %bb.ag, %bb.af
  %i.en = phi i16 [ %i.ea, %.thread ], [ %i.dy, %bb.ag ], [ %i.dy, %bb.af ] ; 2 uses
  %i.eo = load i16, ptr %3, align 4
  %i.ep = shl i16 %i.en, 1
  %i.eq = and i16 %i.eo, -15
  %i.er = and i16 %i.ep, 14
  %i.es = or disjoint i16 %i.eq, %i.er            ; 2 uses
  %i.et = and i16 %i.en, 192
  %or.cond = icmp eq i16 %i.et, 0
  %i.eu = or i16 %i.es, 16
  %spec.select = select i1 %or.cond, i16 %i.es, i16 %i.eu
  store i16 %spec.select, ptr %3, align 4
  %.not60 = icmp eq ptr %4, null
  br i1 %.not60, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = load ptr, ptr %11, align 8, !tbaa !336
  %i.ew = load ptr, ptr %4, align 8, !tbaa !336
  %.sroa.0.0.copyload.i.i85 = load i64, ptr %i.ev, align 8, !tbaa !57
  store i64 %.sroa.0.0.copyload.i.i85, ptr %i.ew, align 8, !tbaa !331
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ae, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %.thread134, %_ZN6hermes2vm11TwineChar16C2EPKc.exit78
  %.sroa.0116.1 = phi i32 [ %20, %_ZN6hermes2vm11TwineChar16C2EPKc.exit78 ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ 0, %bb.ae ], [ %21, %.thread134 ], [ 257, %bb.ai ], [ 257, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.w, %bb.t, %bb.r, %bb.s, %bb.p, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.v, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.0116.3 = phi i32 [ %19, %bb.v ], [ %17, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.p ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ 1, %bb.s ], [ %18, %bb.t ], [ 0, %bb.r ], [ %.sroa.0116.1, %bb.aj ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.al

bb.al:                                            ; preds = %bb.g, %bb.h, %bb.ak, %bb.i
  %.sroa.0116.5 = phi i32 [ 0, %bb.i ], [ %.sroa.0116.3, %bb.ak ], [ %i.az, %bb.h ], [ %i.ay, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.ex = and i32 %.sroa.0116.5, 65535
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67, %bb.b
  %.sroa.0116.7 = phi i32 [ %16, %bb.b ], [ %i.ex, %bb.al ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67 ]
  %i.ey = load i64, ptr %i.l, align 8, !tbaa !329
  %i.ez = add i64 %i.ey, -1
  store i64 %i.ez, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %.sroa.0116.7
}

declare i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZN6hermes2vm20toPropertyDescriptorENS0_6HandleINS0_11HermesValueEEERNS0_7RuntimeERNS0_19DefinePropertyFlagsERNS0_13MutableHandleIS2_EE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN6hermes2vm12_GLOBAL__N_126completePropertyDescriptorERNS0_19DefinePropertyFlagsE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #6 !guid !389 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 6 uses
  %i.b = and i16 %i.a, 272
  %or.cond = icmp eq i16 %i.b, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %i.a, 192
  %or.cond16 = icmp eq i16 %i.c, 0
  br i1 %or.cond16, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = and i16 %i.a, 16
  %.not10 = icmp eq i16 %i.d, 0
  br i1 %.not10, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %i.e = and i16 %i.a, -19                        ; 2 uses
  store i16 %i.e, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.b
  %i.f = phi i16 [ %i.a, %bb.c ], [ %i.e, %.thread ], [ %i.a, %bb.b ] ; 3 uses
  %i.g = and i16 %i.f, 8
  %.not14 = icmp eq i16 %i.g, 0                   ; 2 uses
  %i.h = and i16 %i.f, -10
  %i.i = select i1 %.not14, i16 %i.h, i16 %i.f    ; 3 uses
  %i.j = and i16 %i.i, 32
  %.not15 = icmp eq i16 %i.j, 0                   ; 2 uses
  %i.k = or i1 %.not14, %.not15
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = and i16 %i.i, -37
  %simplifycfg.merge = select i1 %.not15, i16 %i.l, i16 %i.i
  store i16 %simplifycfg.merge, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret void
}

declare noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48), ptr, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_(ptr noundef nonnull align 8 dereferenceable(9816) %0, i16 %.0.val, ptr nofree readonly captures(none) %1, i16 %.0.val1, ptr nofree readonly captures(none) %2) unnamed_addr #2 !guid !424 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 15 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 10 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %15 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = and i16 %.0.val1, 8
  %.not = icmp ne i16 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i16 %.0.val, 36
  %or.cond70.not = icmp eq i16 %i.b, 36
  br i1 %or.cond70.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.c

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 67, ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !62
  store ptr @.str.26, ptr %3, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !64
  %i.g = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.thread17

bb.c:                                             ; preds = %bb.b
  %i.h = and i16 %.0.val, 8
  %.not56 = icmp eq i16 %i.h, 0
  br i1 %.not56, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i16 %.0.val1, 1
  %i.j = xor i16 %i.i, %.0.val
  %i.k = and i16 %i.j, 1
  %.not57 = icmp eq i16 %i.k, 0
  br i1 %.not57, label %bb.h, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit75

_ZN6hermes2vm11TwineChar16C2EPKc.exit75:          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %.not58 = trunc i16 %.0.val to i1
  store ptr @.str.27, ptr %7, align 8, !tbaa !63
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %.sroa.572.0..sroa_idx, align 8, !tbaa !425
  br i1 %.not58, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86, label %.thread

.thread:                                          ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit75
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.28, ptr %i.l, align 8, !tbaa !63, !alias.scope !426
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86:   ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit75, %.thread
  %spec.select17.i.i82 = phi ptr [ %7, %.thread ], [ @.str.27, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ]
  %spec.select.i.i81 = phi i32 [ 2, %.thread ], [ 3, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ]
  %.sink84 = phi i32 [ 3, %.thread ], [ 1, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ]
  %.sink = phi i64 [ 4, %.thread ], [ 0, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ]
  %i.m = phi i64 [ 19, %.thread ], [ 15, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ] ; 2 uses
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sink84, ptr %.sroa.674.0..sroa_idx, align 8, !tbaa !425
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 15, ptr %.sroa.776.0..sroa_idx, align 8, !tbaa !57
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sink, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !57
  store ptr %spec.select17.i.i82, ptr %6, align 8, !tbaa !63, !alias.scope !427
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %spec.select.i.i81, ptr %i.n, align 8, !tbaa !64, !alias.scope !427
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.29, ptr %i.o, align 8, !tbaa !63, !alias.scope !427
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.p, align 8, !tbaa !60, !alias.scope !427
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.m, ptr %i.q, align 8, !tbaa !61, !alias.scope !427
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 34, ptr %i.r, align 8, !tbaa !62, !alias.scope !427
  %i.s = and i16 %.0.val1, 2
  %.not59.not.not = icmp eq i16 %i.s, 0
  br i1 %.not59.not.not, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95.thread, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95.thread: ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86
  %i.t = add nuw nsw i64 %i.m, 34
  store ptr %6, ptr %5, align 8, !tbaa !63, !alias.scope !428
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 2, ptr %i.u, align 8, !tbaa !64, !alias.scope !428
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.28, ptr %i.v, align 8, !tbaa !63, !alias.scope !428
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 3, ptr %i.w, align 8, !tbaa !60, !alias.scope !428
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.t, ptr %i.x, align 8, !tbaa !61, !alias.scope !428
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 4, ptr %i.y, align 8, !tbaa !62, !alias.scope !428
  br label %bb.g

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95:   ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !429
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !64, !noalias !430 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  switch i32 %.pre, label %bb.g [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !64, !alias.scope !433
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.aa, align 8, !tbaa !60, !alias.scope !433
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !alias.scope !433
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit104

bb.f:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95
  store ptr @.str.30, ptr %4, align 8, !tbaa !63
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %.sroa.551.0..sroa_idx, align 8, !tbaa !425
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %.sroa.653.0..sroa_idx, align 8, !tbaa !425
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 10, ptr %.sroa.755.0..sroa_idx, align 8, !tbaa !57
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %.sroa.856.0..sroa_idx, align 8, !tbaa !57
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit104

bb.g:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95.thread, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95
  %i.ac = phi i32 [ 2, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95.thread ], [ %.pre, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !61, !noalias !430
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_:bb.a
  store ptr %10, ptr %9, align 8, !tbaa !63, !alias.scope !436
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 2, ptr %i.bp, align 8, !tbaa !64, !alias.scope !436
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !63, !alias.scope !436
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 3, ptr %i.br, align 8, !tbaa !60, !alias.scope !436
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.bo, ptr %i.bs, align 8, !tbaa !61, !alias.scope !436
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.bm, ptr %i.bt, align 8, !tbaa !62, !alias.scope !436
  %i.bu = add nuw nsw i64 %i.bm, %i.bo
  store ptr %9, ptr %8, align 8, !tbaa !63, !alias.scope !437
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 2, ptr %i.bv, align 8, !tbaa !64, !alias.scope !437
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.34, ptr %i.bw, align 8, !tbaa !63, !alias.scope !437
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 3, ptr %i.bx, align 8, !tbaa !60, !alias.scope !437
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.bu, ptr %i.by, align 8, !tbaa !61, !alias.scope !437
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 20, ptr %i.bz, align 8, !tbaa !62, !alias.scope !437
  %i.ca = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %.thread17

bb.j:                                             ; preds = %bb.i
  %i.cb = xor i1 %i.ay, true
  %or.cond3 = and i1 %i.av, %i.cb
  br i1 %or.cond3, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cc = and i16 %.0.val1, 12
  %or.cond72 = icmp eq i16 %i.cc, 0
  br i1 %or.cond72, label %bb.l, label %.thread17

bb.l:                                             ; preds = %bb.k
  %i.cd = and i16 %.0.val, 18
  %or.cond73.not = icmp eq i16 %i.cd, 18
  br i1 %or.cond73.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit144, label %bb.m

_ZN6hermes2vm11TwineChar16C2EPKc.exit144:         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.ce, align 8, !tbaa !60
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 80, ptr %i.cf, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.cg, align 8, !tbaa !62
  store ptr @.str.35, ptr %12, align 8, !tbaa !63
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.ch, align 8, !tbaa !64
  %i.ci = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %.thread17

bb.m:                                             ; preds = %bb.l
  br i1 %.not61.not, label %.thread17, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !57
  %.sroa.0.0.copyload.i145 = load i64, ptr %2, align 8, !tbaa !57
  %i.cj = tail call noundef zeroext i1 @_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_(i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i145) #13
  br i1 %i.cj, label %.thread17, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit147

_ZN6hermes2vm11TwineChar16C2EPKc.exit147:         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.ck, align 8, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 109, ptr %i.cl, align 8, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %i.cm, align 8, !tbaa !62
  store ptr @.str.36, ptr %13, align 8, !tbaa !63
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 3, ptr %i.cn, align 8, !tbaa !64
  %i.co = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %.thread17

bb.o:                                             ; preds = %bb.j
  %i.cp = and i16 %.0.val1, 24
  %i.cq = icmp ne i16 %i.cp, 16
  %brmerge.demorgan.not = or i1 %i.as, %i.cq
  br i1 %brmerge.demorgan.not, label %.thread17, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !57
  %i.cr = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i148 = load i64, ptr %2, align 8, !tbaa !57
  %i.ct = and i64 %.sroa.0.0.copyload.i.i148, 281474976710655
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !337 ; 2 uses
  %.not24 = icmp eq i32 %i.cw, 0
  br i1 %.not24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.0.0.copyload.i.i149 = load i32, ptr %i.cx, align 4, !tbaa !7
  %.not25 = icmp eq i32 %i.cw, %.sroa.0.0.copyload.i.i149
  br i1 %.not25, label %bb.r, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit151

_ZN6hermes2vm11TwineChar16C2EPKc.exit151:         ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 1, ptr %i.cy, align 8, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 93, ptr %i.cz, align 8, !tbaa !61
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %i.da, align 8, !tbaa !62
  store ptr @.str.37, ptr %14, align 8, !tbaa !63
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 3, ptr %i.db, align 8, !tbaa !64
  %i.dc = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %.thread17

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !337 ; 2 uses
  %.not26 = icmp eq i32 %i.de, 0
  br i1 %.not26, label %.thread17, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %.sroa.0.0.copyload.i.i152 = load i32, ptr %i.df, align 4, !tbaa !7
  %.not27 = icmp eq i32 %i.de, %.sroa.0.0.copyload.i.i152
  br i1 %.not27, label %.thread17, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit154

_ZN6hermes2vm11TwineChar16C2EPKc.exit154:         ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 1, ptr %i.dg, align 8, !tbaa !60
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 93, ptr %i.dh, align 8, !tbaa !61
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.di, align 8, !tbaa !62
  store ptr @.str.38, ptr %15, align 8, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 3, ptr %i.dj, align 8, !tbaa !64
  %i.dk = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %.thread17

.thread17:                                        ; preds = %bb.o, %bb.r, %bb.s, %bb.k, %_ZN6hermes2vm11TwineChar16C2EPKc.exit151, %_ZN6hermes2vm11TwineChar16C2EPKc.exit154, %bb.h, %bb.m, %bb.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit147, %_ZN6hermes2vm11TwineChar16C2EPKc.exit144, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit142, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit104, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.3 = phi i32 [ %i.aq, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit104 ], [ %i.g, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.h ], [ %i.dk, %_ZN6hermes2vm11TwineChar16C2EPKc.exit154 ], [ 1, %bb.m ], [ %i.ci, %_ZN6hermes2vm11TwineChar16C2EPKc.exit144 ], [ %i.ca, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit142 ], [ %i.co, %_ZN6hermes2vm11TwineChar16C2EPKc.exit147 ], [ 1, %bb.n ], [ %i.dc, %_ZN6hermes2vm11TwineChar16C2EPKc.exit151 ], [ 1, %bb.k ], [ 1, %bb.o ], [ 1, %bb.r ], [ 1, %bb.s ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy17defineOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES8_NS0_11PropOpFlagsE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #2 align 2 !guid !438 {
bb.a:
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 7 uses
  %9 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 5 uses
  %10 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.078.0.extract.trunc = trunc i32 %3 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %1, ptr %6, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %6, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit49, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %14 = and i32 %i.r, 255
  br label %bb.u

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit49: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 77) ; 3 uses
  %.not104 = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not104, label %bb.u, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit49
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 %3, ptr %4, i32 %5) #13
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.ar = call { i32, i64 } @_ZN6hermes2vm28objectFromPropertyDescriptorERNS0_7RuntimeENS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %3, ptr %4) #13 ; 2 uses
  %i.as = extractvalue { i32, i64 } %i.ar, 0
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = extractvalue { i32, i64 } %i.ar, 1
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !57
  %.sroa.0.0.copyload.i50 = load i64, ptr %2, align 8, !tbaa !57
  %i.av = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.aa, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i50, i64 %i.au, i1 noundef zeroext false) #13 ; 2 uses
  %i.aw = extractvalue { i32, i64 } %i.av, 0
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = extractvalue { i32, i64 } %i.av, 1
  %i.az = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.ay) #13
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = trunc i32 %5 to i1
  br i1 %i.ba, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.u

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.bb, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 40, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bd, align 8, !tbaa !62
  store ptr @.str.17, ptr %7, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.be, align 8, !tbaa !64
  %i.bf = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  %15 = and i32 %i.bf, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 -1, ptr %i.bg, align 4, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !70  ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 192 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !85 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !83 ; 2 uses
  %i.bm = icmp ult ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %bb.k, !prof !86

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !85
  store i64 -1688849860263936, ptr %i.bj, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.k:                                             ; preds = %bb.i
  %i.bo = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bh, i64 -1688849860263936) #13
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre107 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85
  %.phi.trans.insert108 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre109 = load ptr, ptr %.phi.trans.insert108, align 8, !tbaa !83
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.j, %bb.k
  %i.bp = phi ptr [ %i.bl, %bb.j ], [ %.pre109, %bb.k ]
  %i.bq = phi ptr [ %i.bn, %bb.j ], [ %.pre107, %bb.k ] ; 4 uses
  %i.br = phi ptr [ %i.bh, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %.0.i.i.i.i.i.i52 = phi ptr [ %i.bj, %bb.j ], [ %i.bo, %bb.k ]
  store ptr %.0.i.i.i.i.i.i52, ptr %9, align 8, !tbaa !333
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.bs = icmp ult ptr %i.bq, %i.bp
  br i1 %i.bs, label %bb.l, label %bb.m, !prof !86

bb.l:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 192
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !85
  store i64 -1266636858327041, ptr %i.bq, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.m:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bv = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.br, i64 -1266636858327041) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i.i.i.i53 = phi ptr [ %i.bq, %bb.l ], [ %i.bv, %bb.m ]
  store ptr %.0.i.i.i.i.i.i53, ptr %10, align 8, !tbaa !333
  %i.bw = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #13 ; 2 uses
  %.mask = and i32 %i.bw, 255
  %i.bx = icmp eq i32 %.mask, 0
  br i1 %i.bx, label %bb.t, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !57
  %i.by = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.bz, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %.mask105 = and i32 %i.ca, 255
  %i.cb = icmp eq i32 %.mask105, 0
  br i1 %i.cb, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = and i32 %3, 36
  %i.cd = icmp ne i32 %i.cc, 32                   ; 2 uses
  %i.ce = and i32 %i.bw, 256
  %.not = icmp eq i32 %i.ce, 0
  br i1 %.not, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cf = and i32 %i.ca, 256
  %.not106 = icmp eq i32 %i.cf, 0
  br i1 %.not106, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit55, label %bb.q

_ZN6hermes2vm11TwineChar16C2EPKc.exit55:          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 1, ptr %i.cg, align 8, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 77, ptr %i.ch, align 8, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ci, align 8, !tbaa !62
  store ptr @.str.18, ptr %11, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 3, ptr %i.cj, align 8, !tbaa !64
  %i.ck = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %11) #13
  %16 = and i32 %i.ck, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %i.cd, label %bb.t, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit57

_ZN6hermes2vm11TwineChar16C2EPKc.exit57:          ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.cl, align 8, !tbaa !60
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 105, ptr %i.cm, align 8, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.cn, align 8, !tbaa !62
  store ptr @.str.19, ptr %12, align 8, !tbaa !63
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.co, align 8, !tbaa !64
  %i.cp = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %12) #13
  %17 = and i32 %i.cp, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %.sroa.0.0.copyload = load ptr, ptr %9, align 8
  %.val44 = load i16, ptr %8, align 4
  %i.cq = call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 %.sroa.078.0.extract.trunc, ptr %4, i16 %.val44, ptr %.sroa.0.0.copyload)
  %i.cr = icmp eq i32 %i.cq, 0                    ; 2 uses
  %brmerge = select i1 %i.cr, i1 true, i1 %i.cd, !prof !439
  %.mux = select i1 %i.cr, i32 0, i32 257, !prof !439
  br i1 %brmerge, label %bb.t, label %bb.s, !prof !338

bb.s:                                             ; preds = %bb.r
  %i.cs = load i16, ptr %8, align 4
  %i.ct = and i16 %i.cs, 8
  %.not43 = icmp eq i16 %i.ct, 0
  br i1 %.not43, label %bb.t, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit59

_ZN6hermes2vm11TwineChar16C2EPKc.exit59:          ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.cu, align 8, !tbaa !60
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 105, ptr %i.cv, align 8, !tbaa !61
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %i.cw, align 8, !tbaa !62
  store ptr @.str.20, ptr %13, align 8, !tbaa !63
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 3, ptr %i.cx, align 8, !tbaa !64
  %i.cy = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  %18 = and i32 %i.cy, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit59, %_ZN6hermes2vm11TwineChar16C2EPKc.exit57, %_ZN6hermes2vm11TwineChar16C2EPKc.exit55, %bb.n, %bb.s, %bb.q, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.089.1 = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %16, %_ZN6hermes2vm11TwineChar16C2EPKc.exit55 ], [ 0, %bb.n ], [ %.mux, %bb.r ], [ %18, %_ZN6hermes2vm11TwineChar16C2EPKc.exit59 ], [ %17, %_ZN6hermes2vm11TwineChar16C2EPKc.exit57 ], [ 257, %bb.q ], [ 257, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit49, %bb.t, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.f, %bb.h, %bb.e, %bb.b
  %.sroa.089.5 = phi i32 [ %14, %bb.b ], [ %i.aq, %bb.d ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit49 ], [ 0, %bb.e ], [ 0, %bb.f ], [ %.sroa.089.1, %bb.t ], [ %15, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.h ]
  %i.cz = load i64, ptr %i.l, align 8, !tbaa !329
  %i.da = add i64 %i.cz, -1
  store i64 %i.da, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.sroa.089.0.insert.ext = and i32 %.sroa.089.5, 65535
  ret i32 %.sroa.089.0.insert.ext
}

declare i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #3

declare { i32, i64 } @_ZN6hermes2vm28objectFromPropertyDescriptorERNS0_7RuntimeENS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr) local_unnamed_addr #3

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i64, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy8hasNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) local_unnamed_addr #2 align 2 !guid !440 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %3, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %4 = and i32 %i.r, 255
  br label %bb.h

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 256) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call i32 @_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #13
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.as = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #13
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = or i64 %i.at, -844424930131968          ; 2 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 192 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !85 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !83
  %i.ba = icmp ult ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !85
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.av, i64 %i.au) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i29 = phi ptr [ %i.ax, %bb.f ], [ %i.bc, %bb.g ]
  %i.bd = call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_111hasWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i29, ptr nonnull %i.ak, ptr nonnull %i.aa, ptr nonnull %i.e)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28, %bb.b
  %.sroa.033.1 = phi i32 [ %4, %bb.b ], [ %i.aq, %bb.d ], [ %i.bd, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28 ]
  %i.be = load i64, ptr %i.l, align 8, !tbaa !329
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.sroa.033.0.insert.ext.a = and i32 %.sroa.033.1, 65535
  ret i32 %.sroa.033.0.insert.ext.a
}

declare i32 @_ZN6hermes2vm8JSObject8hasNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 258) i32 @_ZN6hermes2vm12_GLOBAL__N_111hasWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #2 !guid !441 {
bb.a:
  %5 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 6 uses
  %6 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !57
  %.sroa.0.0.copyload.i20 = load i64, ptr %1, align 8, !tbaa !57
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
  store i32 0, ptr %5, align 4, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !85   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e, !prof !86

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.i, align 8, !tbaa !85
  store i64 -1266636858327041, ptr %i.j, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.h, i64 -1266636858327041) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.j, %bb.d ], [ %i.o, %bb.e ]
  store ptr %.0.i.i.i.i.i.i, ptr %6, align 8, !tbaa !333
  %i.p = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %5) #13 ; 2 uses
  %.mask = and i32 %i.p, 255
  %i.q = icmp eq i32 %.mask, 0
  br i1 %i.q, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.r = and i32 %i.p, 256
  %.not42 = icmp eq i32 %i.r, 0
  br i1 %.not42, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i16, ptr %5, align 4
  %i.t = and i16 %i.s, 8
  %.not = icmp eq i16 %i.t, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.h

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.u, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 43, ptr %i.v, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !62
  store ptr @.str.39, ptr %7, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.x, align 8, !tbaa !64
  %i.y = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  %9 = and i32 %i.y, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.sink.split

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %4, align 8, !tbaa !57
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = call i32 @_ZN6hermes2vm8JSObject12isExtensibleENS0_12PseudoHandleIS1_EERNS0_7RuntimeE(ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(9816) %0) #13 ; 2 uses
  %.mask43 = and i32 %i.ab, 255
  %i.ac = icmp eq i32 %.mask43, 0
  br i1 %i.ac, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i32 %i.ab, 256
  %.not44 = icmp eq i32 %i.ad, 0
  br i1 %.not44, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit23, label %.sink.split

_ZN6hermes2vm11TwineChar16C2EPKc.exit23:          ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 42, ptr %i.af, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.ag, align 8, !tbaa !62
  store ptr @.str.40, ptr %8, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.ah, align 8, !tbaa !64
  %i.ai = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  %10 = and i32 %i.ai, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.h, %_ZN6hermes2vm11TwineChar16C2EPKc.exit23, %bb.f, %bb.i
  %.sroa.035.2.ph = phi i32 [ 1, %bb.f ], [ 1, %bb.i ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %9, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %10, %_ZN6hermes2vm11TwineChar16C2EPKc.exit23 ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.sroa.035.2 = phi i32 [ 257, %bb.b ], [ 0, %bb.a ], [ %.sroa.035.2.ph, %.sink.split ]
  ret i32 %.sroa.035.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy11hasComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #2 align 2 !guid !442 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %3, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %4 = and i32 %i.r, 255
  br label %bb.f

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 256) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call i32 @_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ar = call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_111hasWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr nonnull %i.ak, ptr nonnull %i.aa, ptr nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23, %bb.b
  %.sroa.027.1 = phi i32 [ %4, %bb.b ], [ %i.aq, %bb.d ], [ %i.ar, %bb.e ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23 ]
  %i.as = load i64, ptr %i.l, align 8, !tbaa !329
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.sroa.027.0.insert.ext.a = and i32 %.sroa.027.1, 65535
  ret i32 %.sroa.027.0.insert.ext.a
}

declare i32 @_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7JSProxy8getNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3) local_unnamed_addr #2 align 2 !guid !443 {
bb.a:
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %4, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit30, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  br label %bb.l

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit30: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 65) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit30
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
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
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 192 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !85 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 200
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bd = icmp ult ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.h, !prof !86

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.az, align 8, !tbaa !85
  store i64 %i.ax, ptr %i.ba, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.h:                                             ; preds = %bb.f
  %i.bf = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ay, i64 %i.ax) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.i:                                             ; preds = %bb.e
  %i.bg = zext i32 %2 to i64
  %i.bh = or disjoint i64 %i.bg, -1266637395197952 ; 2 uses
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !85 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !83
  %i.bn = icmp ult ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k, !prof !86

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !85
  store i64 %i.bh, ptr %i.bk, align 8, !tbaa !57
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
  %i.bt = load i64, ptr %i.l, align 8, !tbaa !329
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN6hermes2vm12_GLOBAL__N_111getWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr nofree readonly captures(none) %5) unnamed_addr #2 !guid !444 {
bb.a:
  %6 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 7 uses
  %7 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 6 uses
  %8 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !57
  %.sroa.0.0.copyload.i22 = load i64, ptr %1, align 8, !tbaa !57
  %.sroa.0.0.copyload.i23 = load i64, ptr %5, align 8, !tbaa !57
  %i.a = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr %2, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %3, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i22, i64 %.sroa.0.0.copyload.i23, i1 noundef zeroext false) #13 ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = extractvalue { i32, i64 } %i.a, 1        ; 2 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83   ; 2 uses
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d, !prof !86

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !85
  store i64 %i.c, ptr %i.h, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 %i.c) #13
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !70  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre44 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre46 = load ptr, ptr %.phi.trans.insert45, align 8, !tbaa !83
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm12_GLOBAL__N_111getWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_S6_:bb.a

bb.m:                                             ; preds = %._crit_edge, %bb.k
  %i.aq = phi i16 [ %.pre48, %._crit_edge ], [ %i.ag, %bb.k ]
  %i.ar = and i16 %i.aq, 16
  %.not21 = icmp eq i16 %i.ar, 0
  br i1 %.not21, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %7, align 8, !tbaa !333
  %.sroa.0.0.copyload.i.i.i27 = load i64, ptr %i.as, align 8, !tbaa !57
  %i.at = and i64 %.sroa.0.0.copyload.i.i.i27, 281474976710655
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !337
  %.not43 = icmp eq i32 %i.aw, 0
  br i1 %.not43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !331
  %.mask.i = and i64 %i.ax, -140737488355328
  %i.ay = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.ay, label %bb.p, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit29

_ZN6hermes2vm11TwineChar16C2EPKc.exit29:          ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.az, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 96, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !62
  store ptr @.str.42, ptr %10, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.bc, align 8, !tbaa !64
  %i.bd = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.j, %bb.i
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !57
  br label %bb.q

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit29, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.041.0 = phi i32 [ %i.ap, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.p ], [ %i.bd, %_ZN6hermes2vm11TwineChar16C2EPKc.exit29 ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
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
define hidden { i32, i64 } @_ZN6hermes2vm7JSProxy11getComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEES8_(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3) local_unnamed_addr #2 align 2 !guid !445 {
bb.a:
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %4, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit26, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  br label %bb.f

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit26: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 65) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit26
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
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
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !329
  %i.ax = add i64 %i.aw, -1
  store i64 %i.ax, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.030.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy8setNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES9_(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, ptr %4) local_unnamed_addr #2 align 2 !guid !446 {
bb.a:
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %5, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit33, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %6 = and i32 %i.r, 255
  br label %bb.l

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit33: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 66) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit33
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, ptr %4, i32 0) #13
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.ar = and i32 %2, 268435456
  %.not.i34 = icmp eq i32 %i.ar, 0
  br i1 %.not.i34, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.at = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.as, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #13
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = or i64 %i.au, -844424930131968          ; 2 uses
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 192 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !85 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !83
  %i.bb = icmp ult ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h, !prof !86

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !85
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.h:                                             ; preds = %bb.f
  %i.bd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aw, i64 %i.av) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.i:                                             ; preds = %bb.e
  %i.be = zext i32 %2 to i64
  %i.bf = or disjoint i64 %i.be, -1266637395197952 ; 2 uses
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 192 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !83
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.k, !prof !86

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !85
  store i64 %i.bf, ptr %i.bi, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.k:                                             ; preds = %bb.i
  %i.bn = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bg, i64 %i.bf) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.sroa.037.0 = phi ptr [ %i.bd, %bb.h ], [ %i.ay, %bb.g ], [ %i.bi, %bb.j ], [ %i.bn, %bb.k ]
  %i.bo = ptrtoint ptr %4 to i64
  %i.bp = call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_111setWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES6_NS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.037.0, ptr %3, ptr nonnull %i.ak, ptr nonnull %i.aa, ptr nonnull %i.e, i64 %i.bo)
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit33, %bb.b
  %.sroa.047.1 = phi i32 [ %6, %bb.b ], [ %i.aq, %bb.d ], [ %i.bp, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit33 ]
  %i.bq = load i64, ptr %i.l, align 8, !tbaa !329
  %i.br = add i64 %i.bq, -1
  store i64 %i.br, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.sroa.047.0.insert.ext.a = and i32 %.sroa.047.1, 65535
  ret i32 %.sroa.047.0.insert.ext.a
}

declare i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, ptr, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 258) i32 @_ZN6hermes2vm12_GLOBAL__N_111setWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES6_NS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr nofree readonly captures(none) %2, ptr %3, ptr %4, ptr %5, i64 %6) unnamed_addr #2 !guid !447 {
bb.a:
  %7 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 7 uses
  %8 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 6 uses
  %9 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = inttoptr i64 %6 to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %5, align 8, !tbaa !57
  %.sroa.0.0.copyload.i22 = load i64, ptr %1, align 8, !tbaa !57
  %.sroa.0.0.copyload.i23 = load i64, ptr %2, align 8, !tbaa !57
  %.sroa.0.0.copyload.i24 = load i64, ptr %i.a, align 8, !tbaa !57
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall4ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_S6_b(ptr %3, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %4, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i22, i64 %.sroa.0.0.copyload.i23, i64 %.sroa.0.0.copyload.i24, i1 noundef zeroext false) #13 ; 2 uses
  %i.c = extractvalue { i32, i64 } %i.b, 0
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i32, i64 } %i.b, 1
  %i.f = tail call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.e) #13
  br i1 %i.f, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 -1, ptr %i.g, align 4, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.e, !prof !86

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !85
  store i64 -1688849860263936, ptr %i.k, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.i, i64 -1688849860263936) #13
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !70  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre50 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre52 = load ptr, ptr %.phi.trans.insert51, align 8, !tbaa !83
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.d, %bb.e
  %i.q = phi ptr [ %i.m, %bb.d ], [ %.pre52, %bb.e ]
  %i.r = phi ptr [ %i.o, %bb.d ], [ %.pre50, %bb.e ] ; 4 uses
  %i.s = phi ptr [ %i.i, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.p, %bb.e ]
  store ptr %.0.i.i.i.i.i.i, ptr %8, align 8, !tbaa !333
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.t = icmp ult ptr %i.r, %i.q
  br i1 %i.t, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.v, ptr %i.u, align 8, !tbaa !85
  store i64 -1266636858327041, ptr %i.r, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.g:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.w = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.s, i64 -1266636858327041) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i26 = phi ptr [ %i.r, %bb.f ], [ %i.w, %bb.g ]
  store ptr %.0.i.i.i.i.i.i26, ptr %9, align 8, !tbaa !333
  %i.x = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #13 ; 2 uses
  %.mask = and i32 %i.x, 255
  %i.y = icmp eq i32 %.mask, 0
  br i1 %i.y, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.z = and i32 %i.x, 256
  %.not48 = icmp eq i32 %i.z, 0
  br i1 %.not48, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i16, ptr %7, align 4               ; 3 uses
  %i.ab = and i16 %i.aa, 8
  %.not = icmp eq i16 %i.ab, 0
  br i1 %.not, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = and i16 %i.aa, 20
  %or.cond = icmp eq i16 %i.ac, 0
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i27 = load i64, ptr %2, align 8, !tbaa !57
  %i.ad = load ptr, ptr %8, align 8, !tbaa !333
  %.sroa.0.0.copyload.i28 = load i64, ptr %i.ad, align 8, !tbaa !57
  %i.ae = call noundef zeroext i1 @_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_(i64 %.sroa.0.0.copyload.i27, i64 %.sroa.0.0.copyload.i28) #13
  br i1 %i.ae, label %._crit_edge, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

._crit_edge:                                      ; preds = %bb.k
  %.pre53 = load i16, ptr %7, align 4
  br label %bb.l

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.af, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 107, ptr %i.ag, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !62
  store ptr @.str.43, ptr %10, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.ai, align 8, !tbaa !64
  %i.aj = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %10) #13
  %12 = and i32 %i.aj, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.ak = phi i16 [ %.pre53, %._crit_edge ], [ %i.aa, %bb.j ]
  %i.al = and i16 %i.ak, 16
  %.not21 = icmp eq i16 %i.al, 0
  br i1 %.not21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %8, align 8, !tbaa !333
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.am, align 8, !tbaa !57
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !337
  %.not49 = icmp eq i32 %i.aq, 0
  br i1 %.not49, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit30, label %bb.n

_ZN6hermes2vm11TwineChar16C2EPKc.exit30:          ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 1, ptr %i.ar, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 80, ptr %i.as, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.at, align 8, !tbaa !62
  store ptr @.str.44, ptr %11, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 3, ptr %i.au, align 8, !tbaa !64
  %i.av = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %11) #13
  %13 = and i32 %i.av, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.i, %bb.m, %bb.l, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.041.0 = phi i32 [ %12, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %13, %_ZN6hermes2vm11TwineChar16C2EPKc.exit30 ], [ 257, %bb.l ], [ 257, %bb.m ], [ 257, %bb.i ], [ 257, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.a, %bb.n
  %.sroa.041.1 = phi i32 [ 0, %bb.a ], [ %.sroa.041.0, %bb.n ], [ 1, %bb.b ]
  ret i32 %.sroa.041.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy11setComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEES8_S8_(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #2 align 2 !guid !448 {
bb.a:
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %5, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit29, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %6 = and i32 %i.r, 255
  br label %bb.f

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit29: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 66) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit29
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3, ptr %4, i32 0) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ar = ptrtoint ptr %4 to i64
  %i.as = call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_111setWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES6_NS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_S6_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr %3, ptr nonnull %i.ak, ptr nonnull %i.aa, ptr nonnull %i.e, i64 %i.ar)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit29, %bb.b
  %.sroa.034.1 = phi i32 [ %6, %bb.b ], [ %i.aq, %bb.d ], [ %i.as, %bb.e ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit29 ]
  %i.at = load i64, ptr %i.l, align 8, !tbaa !329
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.sroa.034.0.insert.ext.a = and i32 %.sroa.034.1, 65535
  ret i32 %.sroa.034.0.insert.ext.a
}

declare i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy11deleteNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) local_unnamed_addr #2 align 2 !guid !449 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %3, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %4 = and i32 %i.r, 255
  br label %bb.h

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 426) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call i32 @_ZN6hermes2vm8JSObject11deleteNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 0) #13
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.as = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #13
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = or i64 %i.at, -844424930131968          ; 2 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !70  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 192 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !85 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !83
  %i.ba = icmp ult ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !85
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.av, i64 %i.au) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i29 = phi ptr [ %i.ax, %bb.f ], [ %i.bc, %bb.g ]
  %i.bd = call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_114deleteWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i29, ptr nonnull %i.ak, ptr nonnull %i.aa, ptr nonnull %i.e)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28, %bb.b
  %.sroa.034.1 = phi i32 [ %4, %bb.b ], [ %i.aq, %bb.d ], [ %i.bd, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit28 ]
  %i.be = load i64, ptr %i.l, align 8, !tbaa !329
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.sroa.034.0.insert.ext.a = and i32 %.sroa.034.1, 65535
  ret i32 %.sroa.034.0.insert.ext.a
}

declare i32 @_ZN6hermes2vm8JSObject11deleteNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 258) i32 @_ZN6hermes2vm12_GLOBAL__N_114deleteWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #2 !guid !450 {
bb.a:
  %5 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 6 uses
  %6 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 4 uses
  %7 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !57
  %.sroa.0.0.copyload.i13 = load i64, ptr %1, align 8, !tbaa !57
  %i.a = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr %2, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %3, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i13, i1 noundef zeroext false) #13 ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i64 } %i.a, 1
  %i.e = tail call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.d) #13
  br i1 %i.e, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !85   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83   ; 2 uses
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e, !prof !86

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !85
  store i64 -1688849860263936, ptr %i.j, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.h, i64 -1688849860263936) #13
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !70  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre33 = load ptr, ptr %.phi.trans.insert32, align 8, !tbaa !83
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.l, %bb.d ], [ %.pre33, %bb.e ]
  %i.q = phi ptr [ %i.n, %bb.d ], [ %.pre31, %bb.e ] ; 4 uses
  %i.r = phi ptr [ %i.h, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.j, %bb.d ], [ %i.o, %bb.e ]
  store ptr %.0.i.i.i.i.i.i, ptr %6, align 8, !tbaa !333
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.s = icmp ult ptr %i.q, %i.p
  br i1 %i.s, label %bb.f, label %bb.g, !prof !86

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.t, align 8, !tbaa !85
  store i64 -1266636858327041, ptr %i.q, align 8, !tbaa !57
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.g:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.v = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 -1266636858327041) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i15 = phi ptr [ %i.q, %bb.f ], [ %i.v, %bb.g ]
  store ptr %.0.i.i.i.i.i.i15, ptr %7, align 8, !tbaa !333
  %i.w = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #13 ; 2 uses
  %.mask = and i32 %i.w, 255
  %i.x = icmp eq i32 %.mask, 0
  br i1 %i.x, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.y = and i32 %i.w, 256
  %.not30 = icmp eq i32 %i.y, 0
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i16, ptr %5, align 4
  %i.aa = and i16 %i.z, 8
  %.not = icmp eq i16 %i.aa, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.j

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.ab, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 66, ptr %i.ac, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !62
  store ptr @.str.45, ptr %8, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.ae, align 8, !tbaa !64
  %i.af = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  %i.ag = and i32 %i.af, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.023.0 = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.ag, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 257, %bb.h ], [ 257, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.j
  %.sroa.023.1 = phi i32 [ 0, %bb.a ], [ %.sroa.023.0, %bb.j ], [ 1, %bb.b ]
  ret i32 %.sroa.023.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm7JSProxy14deleteComputedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #2 align 2 !guid !451 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %i.a, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !81
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !84
  store ptr %3, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !329
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !329
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %4 = and i32 %i.r, 255
  br label %bb.f

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !85
  %i.ac = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp eq <2 x i32> %i.ac, zeroinitializer
  %i.ae = zext <2 x i32> %i.ac to <2 x i64>
  %i.af = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ag = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ah = add <2 x i64> %i.ag, %i.ae
  %i.ai = or <2 x i64> %i.ah, splat (i64 -281474976710656)
  %i.aj = select <2 x i1> %i.ad, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.ai
  store <2 x i64> %i.aj, ptr %i.e, align 8, !tbaa !57
  %i.ak = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 426) ; 3 uses
  %.not = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !331 ; 2 uses
  %i.am = icmp ugt i64 %i.al, -844424930131969
  %i.an = and i64 %i.al, 281474976710655
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 0) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ar = call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_114deleteWithTrapERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS4_INS0_8CallableEEENS4_INS0_8JSObjectEEESA_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr nonnull %i.ak, ptr nonnull %i.aa, ptr nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23, %bb.b
  %.sroa.028.1 = phi i32 [ %4, %bb.b ], [ %i.aq, %bb.d ], [ %i.ar, %bb.e ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit23 ]
  %i.as = load i64, ptr %i.l, align 8, !tbaa !329
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.l, align 8, !tbaa !329
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.sroa.028.0.insert.ext.a = and i32 %.sroa.028.1, 65535
  ret i32 %.sroa.028.0.insert.ext.a
}

declare i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm7JSProxy15ownPropertyKeysENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) local_unnamed_addr #2 align 2 !guid !461 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 17 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 6 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::Handle.182", align 8 ; 9 uses
  %9 = alloca %"class.hermes::vm::Handle.186", align 8 ; 4 uses
  %10 = alloca %class.anon.187, align 8           ; 8 uses
  %11 = alloca %"class.llvh::SmallSet", align 8   ; 15 uses
  %12 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %13 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 7 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %15 = alloca %"class.hermes::vm::HermesValue32", align 4 ; 4 uses
  %16 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %17 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %1, ptr %6, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  store ptr %i.d, ptr %i.b, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 4, ptr %i.i, align 4, !tbaa !81
  store ptr %i.f, ptr %i.g, align 8
  store i32 1, ptr %i.h, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  store ptr %i.f, ptr %i.j, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.e, ptr %i.k, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 0, ptr %i.l, align 8, !tbaa !84
  store ptr %6, ptr %i.c, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !329
  %i.o = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !329
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.q = load i64, ptr %i.p, align 8, !tbaa !330
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit112, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13 ; 0 uses
  br label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit.thread

_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit112: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !57
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
  %i.aa = ptrtoint ptr %1 to i64                  ; 25 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !85
  %i.ad = load <2 x i32>, ptr %.0.i, align 4, !tbaa !7 ; 2 uses
  %i.ae = icmp eq <2 x i32> %i.ad, zeroinitializer
  %i.af = zext <2 x i32> %i.ad to <2 x i64>
  %i.ag = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ai = add <2 x i64> %i.ah, %i.af
  %i.aj = or <2 x i64> %i.ai, splat (i64 -281474976710656)
  %i.ak = select <2 x i1> %i.ae, <2 x i64> splat (i64 -281474976710656), <2 x i64> %i.aj
  store <2 x i64> %i.ak, ptr %i.f, align 8, !tbaa !57
  %i.al = call ptr @_ZN6hermes2vm6detail8findTrapENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_10Predefined3StrE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 427) ; 3 uses
  %.not299 = icmp eq ptr %i.al, inttoptr (i64 -1 to ptr)
  br i1 %.not299, label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit112
  %i.am = load i64, ptr %i.al, align 8, !tbaa !331 ; 2 uses
  %i.an = icmp ugt i64 %i.am, -844424930131969
  %i.ao = and i64 %i.am, 281474976710655
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = and i1 %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = call ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 7) #13 ; 2 uses
  %.not300 = icmp eq ptr %i.ar, inttoptr (i64 -1 to ptr)
  br i1 %.not300, label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = call fastcc ptr @_ZN6hermes2vm12_GLOBAL__N_110filterKeysENS0_6HandleINS0_8JSObjectEEENS2_INS0_7JSArrayEEERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nonnull %0, ptr %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2)
  br label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit.thread

bb.f:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i127 = load i64, ptr %i.f, align 8, !tbaa !57
  %i.at = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %i.al, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ab, i64 %.sroa.0.0.copyload.i127, i1 noundef zeroext false) #13 ; 2 uses
  %i.au = extractvalue { i32, i64 } %i.at, 0
  %i.av = extractvalue { i32, i64 } %i.at, 1      ; 5 uses
  %i.aw = icmp eq i32 %i.au, 0
  br i1 %i.aw, label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = icmp ugt i64 %i.av, -844424930131969
  br i1 %i.ax, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %bb.g
  %i.ay = and i64 %i.av, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add i32 %i.ba, -436207616
  %i.bc = icmp ult i32 %i.bb, 855638016
  br i1 %i.bc, label %bb.j, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.g, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !70  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !85 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !83
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.i, !prof !86

bb.h:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !85
  store i64 %i.av, ptr %i.bf, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.i:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread
  %i.bk = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.av) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i129 = phi ptr [ %i.bf, %bb.h ], [ %i.bk, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bl, align 8, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.bn, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bo, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 37, ptr %i.bp, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !62
  store ptr @.str.21, ptr %5, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.br, align 8, !tbaa !64
  %i.bs = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %.0.i.i.i.i.i.i129, ptr noundef nonnull align 8 dereferenceable(48) %5) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit.thread

bb.j:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  %i.bt = or i64 %i.av, -281474976710656          ; 2 uses
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !70  ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 192 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !85 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !83
  %i.bz = icmp ult ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.k, label %bb.l, !prof !86

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !85
  store i64 %i.bt, ptr %i.bw, align 8, !tbaa !57
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.l:                                             ; preds = %bb.j
  %i.cb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bu, i64 %i.bt) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i.i131 = phi ptr [ %i.bw, %bb.k ], [ %i.cb, %bb.l ] ; 8 uses
  %i.cc = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i131, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i131, i32 0, ptr noundef null) #13 ; 2 uses
  %i.cd = extractvalue { i32, i64 } %i.cc, 0
  %i.ce = extractvalue { i32, i64 } %i.cc, 1      ; 2 uses
  %i.cf = icmp eq i32 %i.cd, 0
  br i1 %i.cf, label %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit.thread, label %bb.m, !prof !97

bb.m:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !70  ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 192 ; 2 uses
end_hunk_2
