inline.NumInlined: 1255
inline.NumDeleted: 622
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes2vm34hermesBuiltinGeneratorSetDelegatedEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %bb.c

_ZN6hermes2vm10dyn_vmcastINS0_22GeneratorInnerFunctionEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  store i8 1, ptr %i.p, align 4, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_22GeneratorInnerFunctionEEEPT_NS0_11HermesValueE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.06.0 = phi i32 [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_22GeneratorInnerFunctionEEEPT_NS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::MutableHandle.191", align 8 ; 5 uses
  %4 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 6 uses
  %5 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 7 uses
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %7 = alloca %"class.hermes::vm::Handle.177", align 8 ; 6 uses
  %8 = alloca %"class.hermes::vm::Handle.177", align 8 ; 6 uses
  %9 = alloca %"class.hermes::vm::Handle.177", align 8 ; 5 uses
  %10 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 4 uses
  %11 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 5 uses
  %12 = alloca %"class.hermes::vm::MutableHandle.191", align 8 ; 4 uses
  %13 = alloca %class.anon, align 8               ; 9 uses
  %14 = alloca %class.anon.193, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store ptr %1, ptr %6, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  store ptr %i.c, ptr %i.a, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !46
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !50
  store ptr %6, ptr %i.b, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !12, !noalias !100
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !16 ; 2 uses
  %i.p = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.p, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.q = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, -436207616
  %i.u = icmp ult i32 %i.t, 855638016
  %spec.select.i = select i1 %i.u, ptr %i.o, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.07.0.copyload = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 4 uses
  store ptr %.sroa.07.0.copyload, ptr %7, align 8
  %i.v = load i64, ptr %.sroa.07.0.copyload, align 8, !tbaa !18 ; 4 uses
  %i.w = icmp ugt i64 %i.v, -844424930131969
  %i.x = and i64 %i.v, 281474976710655
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i1 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.aa = icmp ugt i32 %i.m, 1
  %i.ab = load ptr, ptr %2, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %.sroa.02.0.i = select i1 %i.aa, ptr %i.ac, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 3 uses
  %i.ad = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !18 ; 2 uses
  %.mask.i = and i64 %i.ad, -140737488355328
  switch i64 %.mask.i, label %bb.d [
    i64 -1548112371908608, label %bb.ax
    i64 -1688849860263936, label %bb.ax
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ae = icmp ugt i64 %i.ad, -281474976710657
  br i1 %i.ae, label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10
  %i.ag = extractvalue { i32, i64 } %i.af, 1      ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !34  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %bb.g, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !48
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, i64 %i.ag) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.g, %bb.f, %bb.d
  %storemerge = phi ptr [ %.sroa.02.0.i, %bb.d ], [ %i.aj, %bb.f ], [ %i.ao, %bb.g ] ; 8 uses
  store ptr %storemerge, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.ap = load i32, ptr %i.l, align 8, !tbaa !7
  %i.aq = icmp ugt i32 %i.ap, 2
  br i1 %i.aq, label %bb.h, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.ar = load ptr, ptr %2, align 8, !tbaa !12, !noalias !103
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 2 uses
  %.sroa.0.0.copyload.i23 = load i64, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %i.at = icmp ugt i64 %.sroa.0.0.copyload.i23, -844424930131969
  br i1 %i.at, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i24, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i24: ; preds = %bb.h
  %i.au = and i64 %.sroa.0.0.copyload.i23, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.aw, -436207616
  %i.ay = icmp ult i32 %i.ax, 855638016
  %spec.select.i25 = select i1 %i.ay, ptr %i.as, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.h, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i24
  %.sroa.03.0.i22 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.h ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %spec.select.i25, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i24 ] ; 3 uses
  store ptr %.sroa.03.0.i22, ptr %9, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %storemerge, align 8, !tbaa !16
  %i.az = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 160
  %or.cond.not = icmp eq i32 %i.bd, 0
  br i1 %or.cond.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bk = load i8, ptr %i.bj, align 2
  %i.bl = and i8 %i.bk, 8
  %.not43 = icmp eq i8 %i.bl, 0
  br i1 %.not43, label %bb.ao, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit26
  %i.bm = call ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nonnull %storemerge, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 7) #10 ; 3 uses
  %.not116.i = icmp eq ptr %i.bm, inttoptr (i64 -1 to ptr)
  br i1 %.not116.i, label %_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !34  ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 192 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 200
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49 ; 2 uses
  %i.bs = icmp ult ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.l, label %bb.m, !prof !31

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.bp, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bu = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bn, i64 -1688849860263936) #10
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !34 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 192
  %.pre125.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  %.phi.trans.insert126.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 200
  %.pre127.i = load ptr, ptr %.phi.trans.insert126.i, align 8, !tbaa !49
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i: ; preds = %bb.m, %bb.l
  %i.bv = phi ptr [ %i.br, %bb.l ], [ %.pre127.i, %bb.m ]
  %i.bw = phi ptr [ %i.bt, %bb.l ], [ %.pre125.i, %bb.m ] ; 4 uses
  %i.bx = phi ptr [ %i.bn, %bb.l ], [ %.pre.i, %bb.m ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.l ], [ %i.bu, %bb.m ] ; 8 uses
  %i.by = icmp ult ptr %i.bw, %i.bv
  br i1 %i.by, label %bb.n, label %bb.o, !prof !31

bb.n:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.bw, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i

bb.o:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.cb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bx, i64 -1688849860263936) #10
  %.pre128.i = load ptr, ptr %i.b, align 8, !tbaa !34
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i: ; preds = %bb.o, %bb.n
  %i.cc = phi ptr [ %i.bx, %bb.n ], [ %.pre128.i, %bb.o ] ; 4 uses
  %i.cd = phi ptr [ %i.bw, %bb.n ], [ %i.cb, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %15 = getelementptr inbounds nuw i8, ptr %i.cc, i64 192 ; 2 uses
  %16 = load ptr, ptr %15, align 8, !tbaa !48     ; 4 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %i.ce = icmp ult ptr %16, %18
  br i1 %i.ce, label %bb.p, label %bb.q, !prof !31

bb.p:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %i.cf, ptr %15, align 8, !tbaa !48
  store i64 -1266636858327041, ptr %16, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit61.i
  %i.cg = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cc, i64 -1266636858327041) #10
  %.pre133.i.a = load ptr, ptr %i.b, align 8, !tbaa !34 ; 2 uses
  %.phi.trans.insert134.i = getelementptr inbounds nuw i8, ptr %.pre133.i.a, i64 192
  %.pre135.i = load ptr, ptr %.phi.trans.insert134.i, align 8, !tbaa !48
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i: ; preds = %bb.q, %bb.p
  %i.ch = phi ptr [ %i.cf, %bb.p ], [ %.pre135.i, %bb.q ] ; 2 uses
  %i.ci = phi ptr [ %i.cc, %bb.p ], [ %.pre133.i.a, %bb.q ] ; 6 uses
  %.0.i.i.i.i.i.i62.i = phi ptr [ %16, %bb.p ], [ %i.cg, %bb.q ]
  store ptr %.0.i.i.i.i.i.i62.i, ptr %3, align 8, !tbaa !106
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 192 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 208 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !50 ; 4 uses
  %.sroa.0.0.copyload.i.i.i29 = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.cm = and i64 %.sroa.0.0.copyload.i.i.i29, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !108 ; 2 uses
  %.not43122.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not43122.not.i, label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit..critedge45_crit_edge.i, label %.lr.ph.i

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit..critedge45_crit_edge.i: ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %.pre137.i = zext i32 %i.cl to i64
  br label %.critedge45.i

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %i.cr = zext i32 %i.cl to i64                   ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 200
  %i.ct = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.an, %.lr.ph.i
  %.042123.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ge, %bb.an ] ; 4 uses
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !45
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !50
  store ptr %i.cz, ptr %i.cs, align 8, !tbaa !49
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !48
  %.sroa.0.0.copyload.i.i65.i = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.da = and i64 %.sroa.0.0.copyload.i.i65.i, 281474976710655
  %i.db = inttoptr i64 %i.da to ptr               ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !111 ; 2 uses
  %.not.i.i = icmp uge i32 %.042123.i, %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = icmp ult i32 %.042123.i, %i.df
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.dg, i1 false
  br i1 %or.cond.i.i, label %bb.s, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.di = zext i32 %.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.dj = add i64 %i.di, %i.ct
  %i.dk = inttoptr i64 %i.dj to ptr               ; 2 uses
  %i.dl = sub nuw i32 %.042123.i, %i.dd           ; 4 uses
  %i.dm = icmp ult i32 %i.dl, 4096
  br i1 %i.dm, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = add i32 %i.dl, -4096
  %i.do = lshr i32 %i.dn, 10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16392
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !112
  %i.dt = zext i32 %i.ds to i64
  %i.du = add i64 %i.dt, %i.ct
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = and i32 %i.dl, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i: ; preds = %bb.t, %bb.s
  %.sink8.i.i.i = phi ptr [ %i.dv, %bb.t ], [ %i.dk, %bb.s ]
  %.sink7.i.i.i = phi i32 [ %i.dw, %bb.t ], [ %i.dl, %bb.s ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.sink8.i.i.i, i64 8
  %i.dy = zext nneg i32 %.sink7.i.i.i to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy
  %.sroa.0.0.i.i.i = load i32, ptr %i.dz, align 4, !tbaa !3 ; 9 uses
  %i.ea = trunc i32 %.sroa.0.0.i.i.i to i8
  %i.eb = and i8 %i.ea, 15
  switch i8 %i.eb, label %default.unreachable [
    i8 0, label %bb.u
    i8 8, label %bb.u
    i8 1, label %bb.v
    i8 9, label %bb.v
    i8 2, label %bb.w
    i8 10, label %bb.w
    i8 3, label %bb.x
    i8 11, label %bb.x
    i8 4, label %bb.y
    i8 12, label %bb.y
    i8 5, label %bb.z
    i8 13, label %bb.z
    i8 6, label %bb.aa
    i8 14, label %.sink.split.i
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i
    i8 15, label %bb.ab
  ]

bb.u:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i, 0
  %i.ec = zext i32 %.sroa.0.0.i.i.i to i64
  %i.ed = add i64 %i.ec, %i.ct
  %i.ee = or i64 %i.ed, -281474976710656
  %i.ef = select i1 %.not.i.i.i.i.i.i, i64 -281474976710656, i64 %i.ee
  br label %.sink.split.i

bb.v:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.eg = and i32 %.sroa.0.0.i.i.i, -8
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add i64 %i.eh, %i.ct
  %i.ej = or i64 %i.ei, -562949953421312
  br label %.sink.split.i

bb.w:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.ek = and i32 %.sroa.0.0.i.i.i, -8
  %i.el = zext i32 %i.ek to i64
  %i.em = add i64 %i.el, %i.ct
  %i.en = or i64 %i.em, -844424930131968
  br label %.sink.split.i

bb.x:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.eo = and i32 %.sroa.0.0.i.i.i, -8
  %i.ep = zext i32 %i.eo to i64
  %i.eq = add i64 %i.ep, %i.ct
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load double, ptr %i.es, align 8, !tbaa !113 ; 2 uses
  %i.eu = fcmp uno double %i.et, 0.000000e+00
  br i1 %i.eu, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread104.i, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i, !prof !20

bb.y:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.ev = ashr i32 %.sroa.0.0.i.i.i, 3
  %i.ew = sitofp i32 %i.ev to double
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i

bb.z:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.ex = lshr i32 %.sroa.0.0.i.i.i, 3
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = or disjoint i64 %i.ey, -1266637395197952
  br label %.sink.split.i

bb.aa:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %i.fa = icmp ugt i32 %.sroa.0.0.i.i.i, 15
  %i.fb = zext i1 %i.fa to i64
  %i.fc = or disjoint i64 %i.fb, -1407374883553280
  br label %.sink.split.i

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i: ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i, %bb.r
  br label %.sink.split.i

bb.ab:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  br label %.sink.split.i

default.unreachable:                              ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread104.i: ; preds = %bb.x
  store i64 9221120237041090560, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !18
  br label %bb.ac

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i: ; preds = %bb.y, %bb.x
  %.sroa.05.0.i.in.i = phi double [ %i.et, %bb.x ], [ %i.ew, %bb.y ] ; 2 uses
  %.sroa.05.0.i.i = bitcast double %.sroa.05.0.i.in.i to i64
  store double %.sroa.05.0.i.in.i, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !18
  %i.fd = icmp ult i64 %.sroa.05.0.i.i, -1970324836974592
  br i1 %i.fd, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread104.i
  %i.fe = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i) #10 ; 2 uses
  %.not117.i = icmp eq ptr %i.fe, inttoptr (i64 -1 to ptr)
  br i1 %.not117.i, label %.thread.i, label %bb.ad, !prof !20

bb.ad:                                            ; preds = %bb.ac
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = or i64 %i.ff, -844424930131968
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ad, %bb.ab, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.u, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i
  %.sink.i = phi i64 [ %i.fg, %bb.ad ], [ -1688849860263936, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.i ], [ -1970324836974592, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread.i ], [ -1548112371908608, %bb.ab ], [ %i.fc, %bb.aa ], [ %i.ez, %bb.z ], [ %i.en, %bb.w ], [ %i.ej, %bb.v ], [ %i.ef, %bb.u ]
  store i64 %.sink.i, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split.i, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i
  %i.fh = load i64, ptr %.sroa.03.0.i22, align 8, !tbaa !18 ; 2 uses
  %i.fi = icmp ugt i64 %i.fh, -844424930131969
  %i.fj = and i64 %i.fh, 281474976710655
  %i.fk = icmp ne i64 %i.fj, 0
  %i.fl = and i1 %i.fi, %i.fk
  br i1 %i.fl, label %bb.af, label %.thread111.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !tbaa !26
  store i32 -1, ptr %i.cu, align 4, !tbaa !116
  %i.fm = call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %.sroa.03.0.i22, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) #10 ; 2 uses
  %.mask.i30 = and i32 %i.fm, 255
  %i.fn = icmp eq i32 %.mask.i30, 0
  br i1 %i.fn, label %.thread108.i, label %bb.ag, !prof !20

.thread108.i:                                     ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.fo = and i32 %i.fm, 256
  %.not118.i = icmp eq i32 %i.fo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.not118.i, label %.thread111.i, label %bb.an

.thread111.i:                                     ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !26
  store i32 -1, ptr %i.cv, align 4, !tbaa !116
  %i.fp = call i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %storemerge, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %5) #10 ; 2 uses
  %.mask119.i = and i32 %i.fp, 255
  %i.fq = icmp eq i32 %.mask119.i, 0
  br i1 %i.fq, label %.critedge.i, label %bb.ah, !prof !20

bb.ah:                                            ; preds = %.thread111.i
  %i.fr = and i32 %i.fp, 256
  %.not120.i = icmp eq i32 %i.fr, 0
  br i1 %.not120.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fs = load i16, ptr %5, align 4
  %i.ft = and i16 %i.fs, 2
  %.not.i = icmp eq i16 %i.ft, 0
  br i1 %.not.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0.0.copyload.i.i67.i = load i64, ptr %storemerge, align 8, !tbaa !16
  %i.fu = and i64 %.sroa.0.0.copyload.i.i67.i, 281474976710655
  %i.fv = inttoptr i64 %i.fu to ptr
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = and i32 %i.fx, 32
  %.not121.i = icmp eq i32 %i.fy, 0
  br i1 %.not121.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fz = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %storemerge, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i, ptr nonnull %storemerge) #10 ; 2 uses
  %i.ga = extractvalue { i32, i64 } %i.fz, 0
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.critedge.i, label %bb.al, !prof !20

bb.al:                                            ; preds = %bb.ak
  %i.gc = extractvalue { i32, i64 } %i.fz, 1
  store i64 %i.gc, ptr %i.cd, align 8, !tbaa !18
  %i.gd = call i32 @_ZN6hermes2vm8JSObject17defineOwnComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr nonnull %.sroa.07.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i.i, i32 319, ptr nonnull %i.cd, i32 0) #10 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ag
  %i.ge = add nuw i32 %.042123.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ge, %i.cp
  br i1 %exitcond.not.i, label %.critedge45.i, label %bb.r, !llvm.loop !118

.critedge.i:                                      ; preds = %bb.ak, %.thread111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.thread.i

.critedge45.i:                                    ; preds = %bb.an, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit..critedge45_crit_edge.i
  %.pre136.pre-phi.i = phi i64 [ %.pre137.i, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit..critedge45_crit_edge.i ], [ %i.cr, %bb.an ]
  %.sroa.0.0.copyload.i69.i = load i64, ptr %.sroa.07.0.copyload, align 8, !tbaa !16
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %.critedge45.i, %.critedge.i, %.thread108.i
  %.pre-phi.i = phi i64 [ %.pre136.pre-phi.i, %.critedge45.i ], [ %i.cr, %.critedge.i ], [ %i.cr, %.thread108.i ], [ %i.cr, %bb.ac ]
  %.sroa.0100.10.i = phi i32 [ 1, %.critedge45.i ], [ 0, %.critedge.i ], [ 0, %.thread108.i ], [ 0, %bb.ac ]
  %.sroa.7101.0.i = phi i64 [ %.sroa.0.0.copyload.i69.i, %.critedge45.i ], [ undef, %.critedge.i ], [ undef, %.thread108.i ], [ undef, %bb.ac ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !45
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.pre-phi.i
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !51
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 128
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !50
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ci, i64 200
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !49
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit

bb.ao:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.gl = load ptr, ptr %i.b, align 8, !tbaa !34  ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 192 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !48 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 200
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !49 ; 2 uses
  %i.gq = icmp ult ptr %i.gn, %i.gp
  br i1 %i.gq, label %bb.ap, label %bb.aq, !prof !31

bb.ap:                                            ; preds = %bb.ao
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  store ptr %i.gr, ptr %i.gm, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.gn, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.gs = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gl, i64 -1688849860263936) #10
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !34  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre44 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre46 = load ptr, ptr %.phi.trans.insert45, align 8, !tbaa !49
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.ap, %bb.aq
  %i.gt = phi ptr [ %i.gp, %bb.ap ], [ %.pre46, %bb.aq ]
  %i.gu = phi ptr [ %i.gr, %bb.ap ], [ %.pre44, %bb.aq ] ; 4 uses
  %i.gv = phi ptr [ %i.gl, %bb.ap ], [ %.pre, %bb.aq ] ; 3 uses
  %.0.i.i.i.i.i.i31 = phi ptr [ %i.gn, %bb.ap ], [ %i.gs, %bb.aq ]
  store ptr %.0.i.i.i.i.i.i31, ptr %10, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.gw = icmp ult ptr %i.gu, %i.gt
  br i1 %i.gw, label %bb.ar, label %bb.as, !prof !31

bb.ar:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 192
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.gy, ptr %i.gx, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.gu, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33

bb.as:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.gz = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gv, i64 -1688849860263936) #10
  %.pre47 = load ptr, ptr %i.b, align 8, !tbaa !34
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33: ; preds = %bb.ar, %bb.as
  %i.ha = phi ptr [ %i.gv, %bb.ar ], [ %.pre47, %bb.as ] ; 3 uses
  %i.hb = phi ptr [ %i.gu, %bb.ar ], [ %i.gz, %bb.as ]
  store ptr %i.hb, ptr %11, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %19 = getelementptr inbounds nuw i8, ptr %i.ha, i64 192 ; 2 uses
  %20 = load ptr, ptr %19, align 8, !tbaa !48     ; 4 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.ha, i64 200
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %i.hc = icmp ult ptr %20, %22
  br i1 %i.hc, label %bb.at, label %bb.au, !prof !31

bb.at:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33
  %i.hd = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.hd, ptr %19, align 8, !tbaa !48
  store i64 -1266636858327041, ptr %20, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.au:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit33
  %i.he = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ha, i64 -1266636858327041) #10
  %.sroa.01.0.copyload.pre = load ptr, ptr %8, align 8
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.at, %bb.au
  %.sroa.01.0.copyload = phi ptr [ %storemerge, %bb.at ], [ %.sroa.01.0.copyload.pre, %bb.au ]
  %.0.i.i.i.i.i.i34 = phi ptr [ %20, %bb.at ], [ %i.he, %bb.au ]
  store ptr %.0.i.i.i.i.i.i34, ptr %12, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  store ptr %8, ptr %13, align 8, !tbaa !119
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %7, ptr %i.hf, align 8, !tbaa !119
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %9, ptr %i.hg, align 8, !tbaa !119
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %10, ptr %i.hh, align 8, !tbaa !121
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %11, ptr %i.hi, align 8, !tbaa !121
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %12, ptr %i.hj, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  store ptr %8, ptr %14, align 8, !tbaa !119
  %i.hk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %7, ptr %i.hk, align 8, !tbaa !119
  %i.hl = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %9, ptr %i.hl, align 8, !tbaa !119
  %i.hm = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %11, ptr %i.hm, align 8, !tbaa !121
  %i.hn = call fastcc noundef zeroext i1 @"_ZN6hermes2vm8JSObject23forEachOwnPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_0ZNS0_31hermesBuiltinCopyDataPropertiesES3_S5_S6_E3$_1EEbNS0_6HandleIS1_EES5_RKT_RKT0_"(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  br i1 %i.hn, label %bb.av, label %bb.aw, !prof !31

bb.av:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ho = load ptr, ptr %7, align 8, !tbaa !106
  %.sroa.0.0.copyload.i35 = load i64, ptr %i.ho, align 8, !tbaa !16
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.av
  %.sroa.041.0 = phi i32 [ 1, %bb.av ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  %.sroa.6.0 = phi i64 [ %.sroa.0.0.copyload.i35, %bb.av ], [ undef, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit

_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit: ; preds = %.thread.i, %bb.j, %bb.aw
  %.sroa.041.1 = phi i32 [ %.sroa.041.0, %bb.aw ], [ %.sroa.0100.10.i, %.thread.i ], [ 0, %bb.j ]
  %.sroa.6.1 = phi i64 [ %.sroa.6.0, %bb.aw ], [ %.sroa.7101.0.i, %.thread.i ], [ undef, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.ax

bb.ax:                                            ; preds = %bb.c, %bb.c, %_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %.sroa.041.3 = phi i32 [ 1, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ %.sroa.041.1, %_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit ], [ 1, %bb.c ], [ 1, %bb.c ]
  %.sroa.6.3 = phi i64 [ -1688849860263936, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ %.sroa.6.1, %_ZN6hermes2vm12_GLOBAL__N_130copyDataPropertiesSlowPath_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEES6_S6_.exit ], [ %i.v, %bb.c ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.041.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.3, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZN6hermes2vm8JSObject23forEachOwnPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_0ZNS0_31hermesBuiltinCopyDataPropertiesES3_S5_S6_E3$_1EEbNS0_6HandleIS1_EES5_RKT_RKT0_"(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 6 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !16
  %i.a = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = lshr i32 %i.c, 24
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127
  %i.j = tail call i64 %i.i(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1) #10, !inline_history !131 ; 2 uses
  %.sroa.09.0.extract.trunc = trunc i64 %i.j to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.j, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 208 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !50   ; 4 uses
  %.not46 = icmp eq i32 %.sroa.09.0.extract.trunc, %.sroa.4.0.extract.trunc
  br i1 %.not46, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.x = zext i32 %i.p to i64                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.01847 = phi i32 [ %.sroa.09.0.extract.trunc, %.lr.ph ], [ %i.bu, %bb.g ] ; 4 uses
  %.sroa.0.0.copyload.i.i.i22 = load i64, ptr %0, align 8, !tbaa !16
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i22, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = lshr i32 %i.ab, 24
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.ai = call i32 %i.ah(ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.01847) #10, !inline_history !133 ; 2 uses
  %i.aj = and i32 %i.ai, 65536
  %.not44 = icmp eq i32 %i.aj, 0
  br i1 %.not44, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = and i32 %i.ai, 2
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = uitofp i32 %.01847 to double
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !134, !nonnull !136, !align !137 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  store double %i.al, ptr %i.an, align 8, !tbaa !18
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !138, !nonnull !136, !align !137
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !18 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, -844424930131969
  %i.as = and i64 %i.aq, 281474976710655
  %i.at = icmp ne i64 %i.as, 0
  %i.au = and i1 %i.ar, %i.at
  br i1 %i.au, label %bb.e, label %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !tbaa !26
  store i32 -1, ptr %i.s, align 4, !tbaa !116
  %.sroa.06.0.copyload.i = load ptr, ptr %i.am, align 8
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !139, !nonnull !136, !align !137
  %i.aw = call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %i.ap, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.06.0.copyload.i, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %4) #10 ; 2 uses
  %.mask.i = and i32 %i.aw, 255
  %i.ax = icmp eq i32 %.mask.i, 0
  br i1 %i.ax, label %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread40", label %bb.f, !prof !20

"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread40": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ay = and i32 %i.aw, 256
  %.not24.i = icmp eq i32 %i.ay, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.not24.i, label %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit", label %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread"

"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit": ; preds = %bb.d, %bb.f
  %i.az = load ptr, ptr %2, align 8, !tbaa !140, !nonnull !136, !align !137
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !106
  %.sroa.0.0.copyload.i.i.i23 = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i23, 281474976710655
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = lshr i32 %i.bd, 24
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !125
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !141
  %i.bk = call i64 %i.bj(ptr nonnull %i.bc, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.01847) #10, !inline_history !142
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !143, !nonnull !136, !align !137 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !51
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !18
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !144, !nonnull !136, !align !137
  %.sroa.03.0.copyload.i = load ptr, ptr %i.bn, align 8
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !134, !nonnull !136, !align !137
  %.sroa.02.0.copyload.i = load ptr, ptr %i.bo, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bl, align 8
  %i.bp = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %.sroa.03.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.copyload.i, i32 319, ptr %.sroa.0.0.copyload.i, i32 0) #10
  %.mask25.i = and i32 %i.bp, 255
  %.not45 = icmp eq i32 %.mask25.i, 0
  br i1 %.not45, label %.loopexit, label %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread"

"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread": ; preds = %bb.f, %bb.c, %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit"
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.x
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  store i32 %i.p, ptr %i.o, align 8, !tbaa !50
  store ptr %i.bt, ptr %i.y, align 8, !tbaa !49
  store ptr %i.n, ptr %i.m, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread"
  %i.bu = add i32 %.01847, 1                      ; 2 uses
  %.not = icmp eq i32 %i.bu, %.sroa.4.0.extract.trunc
  br i1 %.not, label %.critedge.loopexit, label %bb.b, !llvm.loop !145

.critedge.loopexit:                               ; preds = %bb.g
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
end_hunk_0
