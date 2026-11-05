Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/escape?download=true
inline.NumInlined: 629
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6hermes2vm6escapeEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %.sink = phi i32 [ %i.dm, %bb.al ], [ %i.en, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31 ], [ %i.gf, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48 ], [ %.pre.i51, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.sink.split ]
  %.0.i32.sink = phi i16 [ %i.di, %bb.al ], [ %.0.i32, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31 ], [ %.0.i49, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48 ], [ %.0.i32.sink.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.sink.split ]
  %i.gl = load ptr, ptr %4, align 8, !tbaa !37
  %i.gm = zext i32 %.sink to i64
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gm
  store i16 %.0.i32.sink, ptr %i.gn, align 1
  %i.go = load i32, ptr %i.w, align 8, !tbaa !38
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.w, align 8, !tbaa !38
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.069.0, i64 1
  %.sroa.7.1.idx = select i1 %.not.i.i23, i64 2, i64 0
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %.sroa.7.1.idx
  %.sroa.069.0.be = select i1 %.not.i.i23, ptr null, ptr %i.gq
  br label %bb.af

bb.as:                                            ; preds = %bb.a, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit
  %.sroa.087.0 = phi i32 [ %i.db, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.dc, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.087.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #0 comdat align 2 !guid !60 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 2) #10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !37
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %1, align 2
  store i16 %i.j, ptr %i.i, align 1
  %i.k = load i32, ptr %i.a, align 8, !tbaa !38
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8unescapeEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 !guid !63 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.168", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::SmallXString", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %.not307 = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not307, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10 ; 2 uses
  %.not308 = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %.not308, label %bb.fy, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, -844424930131968            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !28
  store i64 %i.g, ptr %i.k, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.i, i64 %i.g) #10 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.p, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.g, %bb.c ], [ %.sroa.0.0.copyload.i.i.pre, %bb.d ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36
  %i.u = and i32 %i.t, 2147483647                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 32, ptr %i.x, align 4, !tbaa !39
  %i.y = icmp samesign ugt i32 %i.u, 32
  br i1 %i.y, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit

_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.z = zext nneg i32 %i.u to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.v, i64 noundef %i.z, i64 noundef 2) #10
  %i.aa = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #10
  br label %.lr.ph

_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit:     ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ab = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #10
  %.not336 = icmp eq i32 %i.u, 0
  br i1 %.not336, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.._crit_edge_crit_edge, label %.lr.ph

_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.._crit_edge_crit_edge: ; preds = %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !38
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %i.ac = phi { ptr, i64 } [ %i.aa, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread ], [ %i.ab, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit ] ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 49 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %.sroa.27.8.extract.trunc = trunc i64 %i.ae to i32 ; 3 uses
  %i.af = icmp slt i32 %.sroa.27.8.extract.trunc, 0 ; 8 uses
  %.not.i3.i = icmp samesign ult i32 %.sroa.27.8.extract.trunc, 1073741824 ; 10 uses
  %i.ag = and i64 %i.ae, 1073741823               ; 28 uses
  %i.ah = and i32 %.sroa.27.8.extract.trunc, 1073741824
  %.not.i.i = icmp eq i32 %i.ah, 0                ; 10 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ag
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %.not.i392 = icmp eq ptr %i.ad, null            ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %.0334 = phi i32 [ 0, %.lr.ph ], [ %i.yg, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ] ; 23 uses
  br i1 %i.af, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr               ; 5 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, 150994943
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.i:                                             ; preds = %bb.g
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.ao, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.l [
    i32 134217728, label %bb.j
    i32 67108864, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.l:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.au, align 8, !tbaa !32
  %i.av = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.f
  %.0.i.sink.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ar, %bb.h ], [ %i.as, %bb.j ], [ %i.at, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.ag
  %i.ba = zext i32 %.0334 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !48
  %i.bd = sext i8 %i.bc to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit

bb.m:                                             ; preds = %bb.e
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i.i4.i = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.be = and i64 %.sroa.0.0.copyload.i.i.i.i4.i, 281474976710655
  %i.bf = inttoptr i64 %i.be to ptr               ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, 150994943
  br i1 %i.bh, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.p:                                             ; preds = %bb.n
  %.mask.i.i.i.i.i.i.i.i.i5.i = and i32 %i.bg, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i, label %bb.s [
    i32 117440512, label %bb.q
    i32 50331648, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.s:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i, 281474976710655
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.m
  %.0.i.sink.i6.i = phi ptr [ %i.ad, %bb.m ], [ %i.bj, %bb.o ], [ %i.bk, %bb.q ], [ %i.bl, %bb.r ], [ %i.bq, %bb.s ]
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i, i64 %i.ag
  %i.bs = zext i32 %.0334 to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !50
  br label %_ZNK6hermes2vm10StringViewixEj.exit

_ZNK6hermes2vm10StringViewixEj.exit:              ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i
  %.0.i = phi i16 [ %i.bd, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ], [ %i.bu, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i ] ; 2 uses
  %i.bv = icmp eq i16 %.0.i, 37
  br i1 %i.bv, label %bb.t, label %bb.ft

bb.t:                                             ; preds = %_ZNK6hermes2vm10StringViewixEj.exit
  %i.bw = add i32 %.0334, 6
  %.not = icmp ugt i32 %i.bw, %i.u
  br i1 %.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = add nuw nsw i32 %.0334, 1               ; 5 uses
  br i1 %i.af, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringViewixEj.exit46.thread386, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i.i.i.i.i41 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.by = and i64 %.sroa.0.0.copyload.i.i.i.i.i41, 281474976710655
  %i.bz = inttoptr i64 %i.by to ptr               ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, 150994943
  br i1 %i.cb, label %bb.x, label %bb.y, !prof !16

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringViewixEj.exit46

bb.y:                                             ; preds = %bb.w
  %.mask.i.i.i.i.i.i.i.i.i.i42 = and i32 %i.ca, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i42, label %bb.ab [
    i32 134217728, label %bb.z
    i32 67108864, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  br label %_ZNK6hermes2vm10StringViewixEj.exit46

bb.aa:                                            ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %_ZNK6hermes2vm10StringViewixEj.exit46

bb.ab:                                            ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i45 = load i64, ptr %i.cg, align 8, !tbaa !32
  %i.ch = and i64 %.sroa.0.0.copyload.i.i.i2.i.i45, 281474976710655
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringViewixEj.exit46

bb.ac:                                            ; preds = %bb.u
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringViewixEj.exit46.thread.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.0.copyload.i.i.i.i4.i34 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.cl = and i64 %.sroa.0.0.copyload.i.i.i.i4.i34, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr               ; 5 uses
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 150994943
  br i1 %i.co, label %bb.ae, label %bb.af, !prof !16

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringViewixEj.exit46.thread

bb.af:                                            ; preds = %bb.ad
  %.mask.i.i.i.i.i.i.i.i.i5.i35 = and i32 %i.cn, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i35, label %bb.ai [
    i32 117440512, label %bb.ag
    i32 50331648, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  br label %_ZNK6hermes2vm10StringViewixEj.exit46.thread

bb.ah:                                            ; preds = %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  br label %_ZNK6hermes2vm10StringViewixEj.exit46.thread

bb.ai:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i39 = load i64, ptr %i.ct, align 8, !tbaa !32
  %i.cu = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i39, 281474976710655
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringViewixEj.exit46.thread

_ZNK6hermes2vm10StringViewixEj.exit46:            ; preds = %bb.x, %bb.z, %bb.aa, %bb.ab
  %.0.i.sink.i.i44 = phi ptr [ %i.ck, %bb.ab ], [ %i.cd, %bb.x ], [ %i.ce, %bb.z ], [ %i.cf, %bb.aa ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i44, i64 %i.ag
  %i.cz = zext i32 %i.bx to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !48
  %i.dc = icmp eq i8 %i.db, 117
  br i1 %i.dc, label %bb.aj, label %.critedge

_ZNK6hermes2vm10StringViewixEj.exit46.thread386:  ; preds = %bb.v
  %i.dd = zext i32 %i.bx to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !48
  %i.dg = icmp eq i8 %i.df, 117
  br i1 %i.dg, label %.thread388, label %.critedge

_ZNK6hermes2vm10StringViewixEj.exit46.thread:     ; preds = %bb.ae, %bb.ag, %bb.ah, %bb.ai
  %.0.i.sink.i6.i37 = phi ptr [ %i.cx, %bb.ai ], [ %i.cq, %bb.ae ], [ %i.cr, %bb.ag ], [ %i.cs, %bb.ah ]
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i37, i64 %i.ag
  %i.di = zext i32 %i.bx to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !50
  %i.dl = icmp eq i16 %i.dk, 117
  br i1 %i.dl, label %.thread, label %.critedge.thread

_ZNK6hermes2vm10StringViewixEj.exit46.thread.thread: ; preds = %bb.ac
  %i.dm = zext i32 %i.bx to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !50
  %i.dp = icmp eq i16 %i.do, 117
  br i1 %i.dp, label %.thread.thread, label %.critedge.thread

bb.aj:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit46
  %.sroa.0.0.copyload.i.i.i.i.i49 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.dq = and i64 %.sroa.0.0.copyload.i.i.i.i.i49, 281474976710655
  %i.dr = inttoptr i64 %i.dq to ptr               ; 5 uses
  %i.ds = load i32, ptr %i.dr, align 4            ; 2 uses
  %i.dt = icmp ugt i32 %i.ds, 150994943
  br i1 %i.dt, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !43
  br label %bb.au

bb.al:                                            ; preds = %bb.aj
  %.mask.i.i.i.i.i.i.i.i.i.i50 = and i32 %i.ds, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i50, label %bb.ao [
    i32 134217728, label %bb.am
    i32 67108864, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  br label %bb.au

bb.an:                                            ; preds = %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  br label %bb.au

bb.ao:                                            ; preds = %bb.al
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i53 = load i64, ptr %i.dy, align 8, !tbaa !32
  %i.dz = and i64 %.sroa.0.0.copyload.i.i.i2.i.i53, 281474976710655
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !43
  br label %bb.au

.thread:                                          ; preds = %_ZNK6hermes2vm10StringViewixEj.exit46.thread
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.ee = inttoptr i64 %i.ed to ptr               ; 5 uses
  %i.ef = load i32, ptr %i.ee, align 4            ; 2 uses
  %i.eg = icmp ugt i32 %i.ef, 150994943
  br i1 %i.eg, label %bb.ap, label %bb.aq, !prof !16

bb.ap:                                            ; preds = %.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !47
  br label %bb.ba

bb.aq:                                            ; preds = %.thread
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ef, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.at [
    i32 117440512, label %bb.ar
    i32 50331648, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  br label %bb.ba

bb.as:                                            ; preds = %bb.aq
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  br label %bb.ba

bb.at:                                            ; preds = %bb.aq
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.el, align 8, !tbaa !32
  %i.em = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !47
  br label %bb.ba

.thread388:                                       ; preds = %_ZNK6hermes2vm10StringViewixEj.exit46.thread386
  %i.eq = zext i32 %.0334 to i64                  ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.eq
  %.sroa.3.0.idx.i393 = select i1 %.not.i392, i64 %i.eq, i64 0
  %.sroa.3.0.i54394 = getelementptr inbounds nuw [2 x i8], ptr null, i64 %.sroa.3.0.idx.i393
  %.sroa.0.0.i55395 = select i1 %.not.i392, ptr null, ptr %i.er ; 2 uses
  %.not.i58396 = icmp eq ptr %.sroa.0.0.i55395, null ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i55395, i64 2
  %.sroa.3.0.idx.i59397 = select i1 %.not.i58396, i64 2, i64 0
  %.sroa.3.0.i60398 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.0.i54394, i64 %.sroa.3.0.idx.i59397
  %.sroa.0.0.i61399 = select i1 %.not.i58396, ptr null, ptr %i.es
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77

bb.au:                                            ; preds = %bb.ak, %bb.am, %bb.an, %bb.ao
  %.0.i.sink.i.i52.ph = phi ptr [ %i.ec, %bb.ao ], [ %i.dx, %bb.an ], [ %i.dw, %bb.am ], [ %i.dv, %bb.ak ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i52.ph, i64 %i.ag
  %i.eu = zext i32 %.0334 to i64                  ; 6 uses
  %.not.i392406 = icmp eq ptr %.0.i.sink.i.i52.ph, null ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eu
  %.sroa.3.0.idx.i393407 = select i1 %.not.i392406, i64 %i.eu, i64 0
  %.sroa.3.0.i54394408 = getelementptr inbounds nuw [2 x i8], ptr null, i64 %.sroa.3.0.idx.i393407
  %.sroa.0.0.i55395409 = select i1 %.not.i392406, ptr null, ptr %i.ev ; 2 uses
  %.not.i58396410 = icmp eq ptr %.sroa.0.0.i55395409, null ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i55395409, i64 2
  %.sroa.3.0.idx.i59397411 = select i1 %.not.i58396410, i64 2, i64 0
  %.sroa.3.0.i60398412 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.0.i54394408, i64 %.sroa.3.0.idx.i59397411 ; 4 uses
  %.sroa.0.0.i61399413 = select i1 %.not.i58396410, ptr null, ptr %i.ew ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i75 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ex = and i64 %.sroa.0.0.copyload.i.i.i.i.i75, 281474976710655
  %i.ey = inttoptr i64 %i.ex to ptr               ; 5 uses
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = icmp ugt i32 %i.ez, 150994943
  br i1 %i.fa, label %bb.av, label %bb.aw, !prof !16

bb.av:                                            ; preds = %bb.au
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77

bb.aw:                                            ; preds = %bb.au
  %.mask.i.i.i.i.i.i.i.i.i.i76 = and i32 %i.ez, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i76, label %bb.az [
    i32 134217728, label %bb.ax
    i32 67108864, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77

bb.ay:                                            ; preds = %bb.aw
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77

bb.az:                                            ; preds = %bb.aw
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i79 = load i64, ptr %i.ff, align 8, !tbaa !32
  %i.fg = and i64 %.sroa.0.0.copyload.i.i.i2.i.i79, 281474976710655
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77: ; preds = %.thread388, %bb.az, %bb.ay, %bb.ax, %bb.av
  %.sroa.0.0.i61399417 = phi ptr [ %.sroa.0.0.i61399, %.thread388 ], [ %.sroa.0.0.i61399413, %bb.av ], [ %.sroa.0.0.i61399413, %bb.ax ], [ %.sroa.0.0.i61399413, %bb.ay ], [ %.sroa.0.0.i61399413, %bb.az ]
  %.sroa.3.0.i60398415 = phi ptr [ %.sroa.3.0.i60398, %.thread388 ], [ %.sroa.3.0.i60398412, %bb.av ], [ %.sroa.3.0.i60398412, %bb.ax ], [ %.sroa.3.0.i60398412, %bb.ay ], [ %.sroa.3.0.i60398412, %bb.az ]
  %i.fk = phi i64 [ %i.eq, %.thread388 ], [ %i.eu, %bb.av ], [ %i.eu, %bb.ax ], [ %i.eu, %bb.ay ], [ %i.eu, %bb.az ]
  %.0.i.sink.i.i78 = phi ptr [ %i.ad, %.thread388 ], [ %i.fc, %bb.av ], [ %i.fd, %bb.ax ], [ %i.fe, %bb.ay ], [ %i.fj, %bb.az ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i78, i64 %i.ag
  br label %_ZNK6hermes2vm10StringView5beginEv.exit80

.thread.thread:                                   ; preds = %_ZNK6hermes2vm10StringViewixEj.exit46.thread.thread
  %i.fm = zext i32 %.0334 to i64                  ; 2 uses
  %.sroa.3.0.i54 = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.fm
  %.sroa.3.0.i60 = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i54, i64 4
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67

bb.ba:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.0.i.sink.i4.i.ph = phi ptr [ %i.ep, %bb.at ], [ %i.ek, %bb.as ], [ %i.ej, %bb.ar ], [ %i.ei, %bb.ap ]
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.ph, i64 %i.ag
  %i.fo = zext i32 %.0334 to i64                  ; 5 uses
  %.sroa.3.0.i54423 = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.fo
  %.sroa.3.0.i60427 = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i54423, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i2.i65 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.fp = and i64 %.sroa.0.0.copyload.i.i.i.i2.i65, 281474976710655
  %i.fq = inttoptr i64 %i.fp to ptr               ; 5 uses
  %i.fr = load i32, ptr %i.fq, align 4            ; 2 uses
  %i.fs = icmp ugt i32 %i.fr, 150994943
  br i1 %i.fs, label %bb.bb, label %bb.bc, !prof !16

bb.bb:                                            ; preds = %bb.ba
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67

bb.bc:                                            ; preds = %bb.ba
  %.mask.i.i.i.i.i.i.i.i.i3.i66 = and i32 %i.fr, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i66, label %bb.bf [
    i32 117440512, label %bb.bd
    i32 50331648, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67

bb.be:                                            ; preds = %bb.bc
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67

bb.bf:                                            ; preds = %bb.bc
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i73 = load i64, ptr %i.fx, align 8, !tbaa !32
  %i.fy = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i73, 281474976710655
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67: ; preds = %.thread.thread, %bb.bf, %bb.be, %bb.bd, %bb.bb
  %.sroa.3.0.i60430 = phi ptr [ %.sroa.3.0.i60, %.thread.thread ], [ %.sroa.3.0.i60427, %bb.bb ], [ %.sroa.3.0.i60427, %bb.bd ], [ %.sroa.3.0.i60427, %bb.be ], [ %.sroa.3.0.i60427, %bb.bf ]
  %i.gc = phi i64 [ %i.fm, %.thread.thread ], [ %i.fo, %bb.bb ], [ %i.fo, %bb.bd ], [ %i.fo, %bb.be ], [ %i.fo, %bb.bf ]
  %.0.i.sink.i4.i68 = phi ptr [ %i.ad, %.thread.thread ], [ %i.fu, %bb.bb ], [ %i.fv, %bb.bd ], [ %i.fw, %bb.be ], [ %i.gb, %bb.bf ]
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i68, i64 %i.ag
  br label %_ZNK6hermes2vm10StringView5beginEv.exit80

_ZNK6hermes2vm10StringView5beginEv.exit80:        ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67
  %.sroa.0.0.i61402 = phi ptr [ %.sroa.0.0.i61399417, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ] ; 3 uses
  %.sroa.3.0.i60400 = phi ptr [ %.sroa.3.0.i60398415, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ %.sroa.3.0.i60430, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ] ; 3 uses
  %i.ge = phi i64 [ %i.fk, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ %i.gc, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ] ; 2 uses
  %.sroa.3.0.i69 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ %i.gd, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ]
  %.sroa.0.0.i70 = phi ptr [ %i.fl, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i77 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i67 ] ; 2 uses
  %.not.i81 = icmp eq ptr %.sroa.0.0.i70, null    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i70, i64 %i.ge
  %.sroa.3.0.idx.i82 = select i1 %.not.i81, i64 %i.ge, i64 0
  %.sroa.3.0.i83 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.0.i69, i64 %.sroa.3.0.idx.i82
  %.sroa.0.0.i84 = select i1 %.not.i81, ptr null, ptr %i.gf ; 2 uses
  %.not.i87 = icmp eq ptr %.sroa.0.0.i84, null    ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i84, i64 6
  %.sroa.3.0.idx.i88 = select i1 %.not.i87, i64 6, i64 0
  %.sroa.3.0.i89 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.0.i83, i64 %.sroa.3.0.idx.i88 ; 4 uses
  %.sroa.0.0.i90 = select i1 %.not.i87, ptr null, ptr %i.gg ; 4 uses
  %i.gh = ptrtoint ptr %.sroa.0.0.i90 to i64      ; 2 uses
  %i.gi = ptrtoint ptr %.sroa.0.0.i61402 to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.3.0.i89 to i64      ; 2 uses
  %i.gl = ptrtoint ptr %.sroa.3.0.i60400 to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 1                 ; 2 uses
  %.0.i.i226 = select i1 %.not.i87, i64 %i.gn, i64 %i.gj
  %i.go = ashr i64 %.0.i.i226, 2                  ; 2 uses
  %i.gp = icmp sgt i64 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i, label %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.i

.lr.ph.i:                                         ; preds = %_ZNK6hermes2vm10StringView5beginEv.exit80, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit48.i
  %.0218.i = phi i64 [ %i.iy, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit48.i ], [ %i.go, %_ZNK6hermes2vm10StringView5beginEv.exit80 ] ; 2 uses
  %.sroa.31.0217.i = phi ptr [ %.sroa.31.6.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit48.i ], [ %.sroa.3.0.i60400, %_ZNK6hermes2vm10StringView5beginEv.exit80 ] ; 14 uses
  %.sroa.080.0216.i = phi ptr [ %.sroa.080.6.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit48.i ], [ %.sroa.0.0.i61402, %_ZNK6hermes2vm10StringView5beginEv.exit80 ] ; 10 uses
  %.not.i.i.i = icmp eq ptr %.sroa.080.0216.i, null
  br i1 %.not.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.i: ; preds = %.lr.ph.i
  %i.gq = load i16, ptr %.sroa.31.0217.i, align 2, !tbaa !50 ; 2 uses
  %i.gr = add i16 %i.gq, -48
  %or.cond.i242 = icmp ult i16 %i.gr, 10
  %i.gs = or i16 %i.gq, 32
  %i.gt = add i16 %i.gs, -97
  %i.gu = icmp ult i16 %i.gt, 6
  %i.gv = or i1 %or.cond.i242, %i.gu
  br i1 %i.gv, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit38.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.gw = load i8, ptr %.sroa.080.0216.i, align 1, !tbaa !48
  %i.gx = sext i8 %i.gw to i16                    ; 2 uses
  %i.gy = add nsw i16 %i.gx, -48
  %or.cond.i241 = icmp ult i16 %i.gy, 10
  %i.gz = or i16 %i.gx, 32
  %i.ha = add nsw i16 %i.gz, -97
  %i.hb = icmp ult i16 %i.ha, 6
  %i.hc = or i1 %or.cond.i241, %i.hb
  br i1 %i.hc, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit38.thread.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit38.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.31.0217.i, i64 2
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !50 ; 2 uses
  %i.hf = add i16 %i.he, -48
  %or.cond.i240 = icmp ult i16 %i.hf, 10
  %i.hg = or i16 %i.he, 32
  %i.hh = add i16 %i.hg, -97
  %i.hi = icmp ult i16 %i.hh, 6
  %i.hj = or i1 %or.cond.i240, %i.hi
  br i1 %i.hj, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit42.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit38.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.thread.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.080.0216.i, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !48
  %i.hm = sext i8 %i.hl to i16                    ; 2 uses
  %i.hn = add nsw i16 %i.hm, -48
  %or.cond.i239 = icmp ult i16 %i.hn, 10
  %i.ho = or i16 %i.hm, 32
  %i.hp = add nsw i16 %i.ho, -97
  %i.hq = icmp ult i16 %i.hp, 6
  %i.hr = or i1 %or.cond.i239, %i.hq
  br i1 %i.hr, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit42.thread.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit436

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit42.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit38.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.31.0217.i, i64 4
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !50 ; 2 uses
  %i.hu = add i16 %i.ht, -48
  %or.cond.i238 = icmp ult i16 %i.hu, 10
  %i.hv = or i16 %i.ht, 32
  %i.hw = add i16 %i.hv, -97
  %i.hx = icmp ult i16 %i.hw, 6
  %i.hy = or i1 %or.cond.i238, %i.hx
  br i1 %i.hy, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit46.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit439

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit42.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit38.thread.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.080.0216.i, i64 2
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !48
  %i.ib = sext i8 %i.ia to i16                    ; 2 uses
  %i.ic = add nsw i16 %i.ib, -48
  %or.cond.i237 = icmp ult i16 %i.ic, 10
  %i.id = or i16 %i.ib, 32
  %i.ie = add nsw i16 %i.id, -97
  %i.if = icmp ult i16 %i.ie, 6
  %i.ig = or i1 %or.cond.i237, %i.if
  br i1 %i.ig, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit46.thread.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit442

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit46.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit42.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.31.0217.i, i64 6
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !50 ; 2 uses
  %i.ij = add i16 %i.ii, -48
  %or.cond.i236 = icmp ult i16 %i.ij, 10
  %i.ik = or i16 %i.ii, 32
  %i.il = add i16 %i.ik, -97
  %i.im = icmp ult i16 %i.il, 6
  %i.in = or i1 %or.cond.i236, %i.im
  br i1 %i.in, label %bb.bg, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit445

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit46.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit42.thread.i
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.080.0216.i, i64 3
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !48
  %i.iq = sext i8 %i.ip to i16                    ; 2 uses
  %i.ir = add nsw i16 %i.iq, -48
  %or.cond.i235 = icmp ult i16 %i.ir, 10
  %i.is = or i16 %i.iq, 32
  %i.it = add nsw i16 %i.is, -97
  %i.iu = icmp ult i16 %i.it, 6
  %i.iv = or i1 %or.cond.i235, %i.iu
  br i1 %i.iv, label %.thread154.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit448

.thread154.i:                                     ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit46.thread.i
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.080.0216.i, i64 4
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit48.i

bb.bg:                                            ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit46.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.31.0217.i, i64 8
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit48.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit48.i: ; preds = %bb.bg, %.thread154.i
  %.sroa.080.6.i = phi ptr [ null, %bb.bg ], [ %i.iw, %.thread154.i ] ; 3 uses
  %.sroa.31.6.i = phi ptr [ %i.ix, %bb.bg ], [ %.sroa.31.0217.i, %.thread154.i ] ; 3 uses
  %i.iy = add nsw i64 %.0218.i, -1
  %i.iz = icmp sgt i64 %.0218.i, 1
  br i1 %i.iz, label %.lr.ph.i, label %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.loopexit.i, !llvm.loop !61

_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.loopexit.i: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit48.i
  %.pre.i229 = ptrtoint ptr %.sroa.080.6.i to i64
  %.pre234.i = sub i64 %i.gh, %.pre.i229
  %.pre236.i = ptrtoint ptr %.sroa.31.6.i to i64
  %.pre238.i = sub i64 %i.gk, %.pre236.i
  %.pre240.i = ashr exact i64 %.pre238.i, 1
  br label %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.i

_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.loopexit.i, %_ZNK6hermes2vm10StringView5beginEv.exit80
  %.pre-phi241.i = phi i64 [ %.pre240.i, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.loopexit.i ], [ %i.gn, %_ZNK6hermes2vm10StringView5beginEv.exit80 ]
  %.pre-phi235.i = phi i64 [ %.pre234.i, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.loopexit.i ], [ %i.gj, %_ZNK6hermes2vm10StringView5beginEv.exit80 ]
  %.sroa.080.0.lcssa.i = phi ptr [ %.sroa.080.6.i, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.loopexit.i ], [ %.sroa.0.0.i61402, %_ZNK6hermes2vm10StringView5beginEv.exit80 ] ; 8 uses
  %.sroa.31.0.lcssa.i = phi ptr [ %.sroa.31.6.i, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.loopexit.i ], [ %.sroa.3.0.i60400, %_ZNK6hermes2vm10StringView5beginEv.exit80 ] ; 8 uses
  %.0.i50.i = select i1 %.not.i87, i64 %.pre-phi241.i, i64 %.pre-phi235.i
  switch i64 %.0.i50.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit [
    i64 3, label %bb.bh
    i64 2, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.i
    i64 1, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.i
  ]

bb.bh:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.i
  %.not.i.i52.i = icmp eq ptr %.sroa.080.0.lcssa.i, null
  br i1 %.not.i.i52.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.i: ; preds = %bb.bh
  %i.ja = load i16, ptr %.sroa.31.0.lcssa.i, align 2, !tbaa !50 ; 2 uses
  %i.jb = add i16 %i.ja, -48
  %or.cond.i234 = icmp ult i16 %i.jb, 10
  %i.jc = or i16 %i.ja, 32
  %i.jd = add i16 %i.jc, -97
  %i.je = icmp ult i16 %i.jd, 6
  %i.jf = or i1 %or.cond.i234, %i.je
  br i1 %i.jf, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.thread.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.thread.i: ; preds = %bb.bh
  %i.jg = load i8, ptr %.sroa.080.0.lcssa.i, align 1, !tbaa !48
  %i.jh = sext i8 %i.jg to i16                    ; 2 uses
  %i.ji = add nsw i16 %i.jh, -48
  %or.cond.i233 = icmp ult i16 %i.ji, 10
  %i.jj = or i16 %i.jh, 32
  %i.jk = add nsw i16 %i.jj, -97
  %i.jl = icmp ult i16 %i.jk, 6
  %i.jm = or i1 %or.cond.i233, %i.jl
  br i1 %i.jm, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.thread170.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.thread170.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.thread.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.080.0.lcssa.i, i64 1
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.thread.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.31.0.lcssa.i, i64 2
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.i
  %.not.i.i56.i = icmp eq ptr %.sroa.080.0.lcssa.i, null
  br i1 %.not.i.i56.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.thread.i

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.i: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.thread.i
  %.sroa.31.1166.i = phi ptr [ %i.jo, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.thread.i ], [ %.sroa.31.0.lcssa.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.i ] ; 3 uses
  %i.jp = load i16, ptr %.sroa.31.1166.i, align 2, !tbaa !50 ; 2 uses
  %i.jq = add i16 %i.jp, -48
  %or.cond.i232 = icmp ult i16 %i.jq, 10
  %i.jr = or i16 %i.jp, 32
  %i.js = add i16 %i.jr, -97
  %i.jt = icmp ult i16 %i.js, 6
  %i.ju = or i1 %or.cond.i232, %i.jt
  br i1 %i.ju, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.thread253.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.thread.i: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.thread170.i
  %.sroa.080.1174.i = phi ptr [ %i.jn, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.thread170.i ], [ %.sroa.080.0.lcssa.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit55.i ] ; 3 uses
  %i.jv = load i8, ptr %.sroa.080.1174.i, align 1, !tbaa !48
  %i.jw = sext i8 %i.jv to i16                    ; 2 uses
  %i.jx = add nsw i16 %i.jw, -48
  %or.cond.i231 = icmp ult i16 %i.jx, 10
  %i.jy = or i16 %i.jw, 32
  %i.jz = add nsw i16 %i.jy, -97
  %i.ka = icmp ult i16 %i.jz, 6
  %i.kb = or i1 %or.cond.i231, %i.ka
  br i1 %i.kb, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.thread.i, label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.thread.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.thread.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.080.1174.i, i64 1
  br label %bb.bi

_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.thread253.i: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.31.1166.i, i64 2
  br label %bb.bj

_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.i: ; preds = %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.i
  %.not.i.i60.i = icmp eq ptr %.sroa.080.0.lcssa.i, null
  br i1 %.not.i.i60.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.thread.i
  %.sroa.080.2180.i = phi ptr [ %i.kc, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.thread.i ], [ %.sroa.080.0.lcssa.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.i ] ; 2 uses
  %i.ke = load i8, ptr %.sroa.080.2180.i, align 1, !tbaa !48
  %i.kf = sext i8 %i.ke to i16
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit61.i

bb.bj:                                            ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.thread253.i
  %.sroa.31.2257.i = phi ptr [ %i.kd, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.thread253.i ], [ %.sroa.31.0.lcssa.i, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit59.i ] ; 2 uses
  %i.kg = load i16, ptr %.sroa.31.2257.i, align 2, !tbaa !50
  br label %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit61.i

_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit61.i: ; preds = %bb.bj, %bb.bi
  %.sroa.31.2182.i = phi ptr [ %.sroa.31.0.lcssa.i, %bb.bi ], [ %.sroa.31.2257.i, %bb.bj ]
  %.sroa.080.2181.i = phi ptr [ %.sroa.080.2180.i, %bb.bi ], [ null, %bb.bj ]
  %i.kh = phi i16 [ %i.kf, %bb.bi ], [ %i.kg, %bb.bj ] ; 2 uses
  %i.ki = add i16 %i.kh, -48
  %or.cond.i230 = icmp ult i16 %i.ki, 10
  %i.kj = or i16 %i.kh, 32
  %i.kk = add i16 %i.kj, -97
  %i.kl = icmp ult i16 %i.kk, 6
  %i.km = or i1 %or.cond.i230, %i.kl              ; 2 uses
  %spec.select.i = select i1 %i.km, ptr %.sroa.0.0.i90, ptr %.sroa.080.2181.i
  %spec.select186.i = select i1 %i.km, ptr %.sroa.3.0.i89, ptr %.sroa.31.2182.i
  br label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit38.i
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.31.0217.i, i64 2
  br label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit436: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit38.thread.i
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.080.0216.i, i64 1
  br label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit439: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit42.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.31.0217.i, i64 4
  br label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit442: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit42.thread.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.080.0216.i, i64 2
  br label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit445: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit46.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.31.0217.i, i64 6
  br label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit448: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit46.thread.i
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.080.0216.i, i64 3
  br label %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit

_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.thread.i, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit436, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit439, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit442, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit445, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit448, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.thread.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit61.i
  %.sroa.014.0.in.sroa.speculated.i = phi ptr [ null, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.i ], [ %.sroa.0.0.i90, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.i ], [ %.sroa.080.0.lcssa.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.thread.i ], [ null, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit61.i ], [ %.sroa.080.1174.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.thread.i ], [ %i.ko, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit436 ], [ %i.ks, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit448 ], [ null, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit ], [ %i.kq, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit442 ], [ null, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit445 ], [ null, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit439 ], [ null, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.i ], [ %.sroa.080.0216.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.thread.i ]
  %.sroa.9.0.i = phi ptr [ %.sroa.31.1166.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.i ], [ %.sroa.3.0.i89, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit51.i ], [ %.sroa.31.0.lcssa.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.thread.i ], [ %.sroa.31.0.lcssa.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit53.i ], [ %spec.select186.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit61.i ], [ %.sroa.31.0.lcssa.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit57.thread.i ], [ %.sroa.31.0217.i, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit436 ], [ %.sroa.31.0217.i, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit448 ], [ %i.kn, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit ], [ %.sroa.31.0217.i, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit442 ], [ %i.kr, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit445 ], [ %i.kp, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit439 ], [ %.sroa.31.0217.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.thread.i ], [ %.sroa.31.0217.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEclIN6hermes2vm10StringView14const_iteratorEEEbT_.exit.i ]
  %i.kt = icmp eq ptr %.sroa.0.0.i90, %.sroa.014.0.in.sroa.speculated.i
  %i.ku = icmp eq ptr %.sroa.3.0.i89, %.sroa.9.0.i
  %.0.i.i = select i1 %.not.i87, i1 %i.ku, i1 %i.kt
  br i1 %.0.i.i, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit
  %i.kv = add i32 %.0334, 2                       ; 2 uses
  br i1 %i.af, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not.i.i, label %bb.bz, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.0.0.copyload.i.i.i.i.i102 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.kw = and i64 %.sroa.0.0.copyload.i.i.i.i.i102, 281474976710655
  %i.kx = inttoptr i64 %i.kw to ptr               ; 5 uses
  %i.ky = load i32, ptr %i.kx, align 4            ; 2 uses
  %i.kz = icmp ugt i32 %i.ky, 150994943
  br i1 %i.kz, label %bb.bn, label %bb.bo, !prof !16

bb.bn:                                            ; preds = %bb.bm
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !43
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bm
  %.mask.i.i.i.i.i.i.i.i.i.i103 = and i32 %i.ky, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i103, label %bb.br [
    i32 134217728, label %bb.bp
    i32 67108864, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  br label %bb.bz

bb.bq:                                            ; preds = %bb.bo
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  br label %bb.bz

bb.br:                                            ; preds = %bb.bo
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i106 = load i64, ptr %i.le, align 8, !tbaa !32
  %i.lf = and i64 %.sroa.0.0.copyload.i.i.i2.i.i106, 281474976710655
  %i.lg = inttoptr i64 %i.lf to ptr
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !43
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bk
  br i1 %.not.i3.i, label %bb.cg, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.sroa.0.0.copyload.i.i.i.i4.i95 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.lj = and i64 %.sroa.0.0.copyload.i.i.i.i4.i95, 281474976710655
  %i.lk = inttoptr i64 %i.lj to ptr               ; 5 uses
  %i.ll = load i32, ptr %i.lk, align 4            ; 2 uses
  %i.lm = icmp ugt i32 %i.ll, 150994943
  br i1 %i.lm, label %bb.bu, label %bb.bv, !prof !16

bb.bu:                                            ; preds = %bb.bt
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !47
  br label %bb.cg

bb.bv:                                            ; preds = %bb.bt
  %.mask.i.i.i.i.i.i.i.i.i5.i96 = and i32 %i.ll, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i96, label %bb.by [
    i32 117440512, label %bb.bw
    i32 50331648, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bv
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  br label %bb.cg

bb.by:                                            ; preds = %bb.bv
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i100 = load i64, ptr %i.lr, align 8, !tbaa !32
  %i.ls = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i100, 281474976710655
  %i.lt = inttoptr i64 %i.ls to ptr
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !47
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bl, %bb.bn, %bb.bp, %bb.bq, %bb.br
  %.0.i.sink.i.i105 = phi ptr [ %i.ad, %bb.bl ], [ %i.lb, %bb.bn ], [ %i.lc, %bb.bp ], [ %i.ld, %bb.bq ], [ %i.li, %bb.br ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i105, i64 %i.ag
  %i.lx = zext i32 %i.kv to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !48
  %i.ma = sext i8 %i.lz to i16                    ; 2 uses
  %i.mb = add nsw i16 %i.ma, -48
  %or.cond.i434 = icmp ult i16 %i.mb, 10
  %.v435 = select i1 %or.cond.i434, i16 0, i16 9
  %i.mc = add nsw i16 %.v435, %i.ma
  %i.md = add i32 %.0334, 3
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i118, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.0.0.copyload.i.i.i.i.i116 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.me = and i64 %.sroa.0.0.copyload.i.i.i.i.i116, 281474976710655
  %i.mf = inttoptr i64 %i.me to ptr               ; 5 uses
  %i.mg = load i32, ptr %i.mf, align 4            ; 2 uses
  %i.mh = icmp ugt i32 %i.mg, 150994943
  br i1 %i.mh, label %bb.cb, label %bb.cc, !prof !16

bb.cb:                                            ; preds = %bb.ca
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i118

bb.cc:                                            ; preds = %bb.ca
  %.mask.i.i.i.i.i.i.i.i.i.i117 = and i32 %i.mg, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i117, label %bb.cf [
    i32 134217728, label %bb.cd
    i32 67108864, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i118

bb.ce:                                            ; preds = %bb.cc
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i118

bb.cf:                                            ; preds = %bb.cc
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i120 = load i64, ptr %i.mm, align 8, !tbaa !32
  %i.mn = and i64 %.sroa.0.0.copyload.i.i.i2.i.i120, 281474976710655
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i118

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i118: ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cb, %bb.bz
  %.0.i.sink.i.i119 = phi ptr [ %i.ad, %bb.bz ], [ %i.mj, %bb.cb ], [ %i.mk, %bb.cd ], [ %i.ml, %bb.ce ], [ %i.mq, %bb.cf ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i119, i64 %i.ag
  %i.ms = zext i32 %i.md to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !48
  %i.mv = sext i8 %i.mu to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit121

bb.cg:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bu, %bb.bs
  %.0.i.sink.i6.i98 = phi ptr [ %i.ad, %bb.bs ], [ %i.lo, %bb.bu ], [ %i.lp, %bb.bw ], [ %i.lq, %bb.bx ], [ %i.lv, %bb.by ]
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i98, i64 %i.ag
  %i.mx = zext i32 %i.kv to i64
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !50 ; 2 uses
  %i.na = add i16 %i.mz, -48
  %or.cond.i = icmp ult i16 %i.na, 10
  %.v = select i1 %or.cond.i, i16 0, i16 9
  %i.nb = add i16 %.v, %i.mz
  %i.nc = add i32 %.0334, 3
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i111, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.sroa.0.0.copyload.i.i.i.i4.i109 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.nd = and i64 %.sroa.0.0.copyload.i.i.i.i4.i109, 281474976710655
  %i.ne = inttoptr i64 %i.nd to ptr               ; 5 uses
  %i.nf = load i32, ptr %i.ne, align 4            ; 2 uses
  %i.ng = icmp ugt i32 %i.nf, 150994943
  br i1 %i.ng, label %bb.ci, label %bb.cj, !prof !16

bb.ci:                                            ; preds = %bb.ch
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i111

bb.cj:                                            ; preds = %bb.ch
  %.mask.i.i.i.i.i.i.i.i.i5.i110 = and i32 %i.nf, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i110, label %bb.cm [
    i32 117440512, label %bb.ck
    i32 50331648, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i111

bb.cl:                                            ; preds = %bb.cj
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i111

bb.cm:                                            ; preds = %bb.cj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i114 = load i64, ptr %i.nl, align 8, !tbaa !32
  %i.nm = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i114, 281474976710655
  %i.nn = inttoptr i64 %i.nm to ptr
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i111

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i111: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ci, %bb.cg
  %.0.i.sink.i6.i112 = phi ptr [ %i.ad, %bb.cg ], [ %i.ni, %bb.ci ], [ %i.nj, %bb.ck ], [ %i.nk, %bb.cl ], [ %i.np, %bb.cm ]
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i112, i64 %i.ag
  %i.nr = zext i32 %i.nc to i64
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !50
  br label %_ZNK6hermes2vm10StringViewixEj.exit121

_ZNK6hermes2vm10StringViewixEj.exit121:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i118, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i111
  %.in = phi i16 [ %i.mc, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i118 ], [ %i.nb, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i111 ]
  %.0.i113 = phi i16 [ %i.mv, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i118 ], [ %i.nt, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i111 ] ; 3 uses
  %i.nu = shl i16 %.in, 12
  %i.nv = add i16 %.0.i113, -48
  %or.cond.i122 = icmp ult i16 %i.nv, 10
  %i.nw = or i16 %.0.i113, 32
  %i.nx = add i16 %.0.i113, 208
  %i.ny = add i16 %i.nw, 169
  %i.nz = select i1 %or.cond.i122, i16 %i.nx, i16 %i.ny
  %i.oa = shl i16 %i.nz, 8
  %i.ob = or i16 %i.oa, %i.nu
  %i.oc = add i32 %.0334, 4                       ; 2 uses
  br i1 %i.af, label %bb.cn, label %bb.cu

bb.cn:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit121
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i135, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.sroa.0.0.copyload.i.i.i.i.i133 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.od = and i64 %.sroa.0.0.copyload.i.i.i.i.i133, 281474976710655
  %i.oe = inttoptr i64 %i.od to ptr               ; 5 uses
  %i.of = load i32, ptr %i.oe, align 4            ; 2 uses
  %i.og = icmp ugt i32 %i.of, 150994943
  br i1 %i.og, label %bb.cp, label %bb.cq, !prof !16

bb.cp:                                            ; preds = %bb.co
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i135

bb.cq:                                            ; preds = %bb.co
  %.mask.i.i.i.i.i.i.i.i.i.i134 = and i32 %i.of, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i134, label %bb.ct [
    i32 134217728, label %bb.cr
    i32 67108864, label %bb.cs
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i135

bb.cs:                                            ; preds = %bb.cq
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i135

bb.ct:                                            ; preds = %bb.cq
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i137 = load i64, ptr %i.ol, align 8, !tbaa !32
  %i.om = and i64 %.sroa.0.0.copyload.i.i.i2.i.i137, 281474976710655
  %i.on = inttoptr i64 %i.om to ptr
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i135

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i135: ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.cn
  %.0.i.sink.i.i136 = phi ptr [ %i.ad, %bb.cn ], [ %i.oi, %bb.cp ], [ %i.oj, %bb.cr ], [ %i.ok, %bb.cs ], [ %i.op, %bb.ct ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i136, i64 %i.ag
  %i.or = zext i32 %i.oc to i64
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !48
  %i.ou = sext i8 %i.ot to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit138

bb.cu:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit121
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i128, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.sroa.0.0.copyload.i.i.i.i4.i126 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.ov = and i64 %.sroa.0.0.copyload.i.i.i.i4.i126, 281474976710655
  %i.ow = inttoptr i64 %i.ov to ptr               ; 5 uses
  %i.ox = load i32, ptr %i.ow, align 4            ; 2 uses
  %i.oy = icmp ugt i32 %i.ox, 150994943
  br i1 %i.oy, label %bb.cw, label %bb.cx, !prof !16

bb.cw:                                            ; preds = %bb.cv
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i128

bb.cx:                                            ; preds = %bb.cv
  %.mask.i.i.i.i.i.i.i.i.i5.i127 = and i32 %i.ox, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i127, label %bb.da [
    i32 117440512, label %bb.cy
    i32 50331648, label %bb.cz
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i128

bb.cz:                                            ; preds = %bb.cx
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i128

bb.da:                                            ; preds = %bb.cx
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i131 = load i64, ptr %i.pd, align 8, !tbaa !32
  %i.pe = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i131, 281474976710655
  %i.pf = inttoptr i64 %i.pe to ptr
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i128

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i128: ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cw, %bb.cu
  %.0.i.sink.i6.i129 = phi ptr [ %i.ad, %bb.cu ], [ %i.pa, %bb.cw ], [ %i.pb, %bb.cy ], [ %i.pc, %bb.cz ], [ %i.ph, %bb.da ]
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i129, i64 %i.ag
  %i.pj = zext i32 %i.oc to i64
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.pi, i64 %i.pj
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !50
  br label %_ZNK6hermes2vm10StringViewixEj.exit138

_ZNK6hermes2vm10StringViewixEj.exit138:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i135, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i128
  %.0.i130 = phi i16 [ %i.ou, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i135 ], [ %i.pl, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i128 ] ; 3 uses
  %i.pm = add i16 %.0.i130, -48
  %or.cond.i139 = icmp ult i16 %i.pm, 10
  %i.pn = or i16 %.0.i130, 32
  %i.po = add i16 %.0.i130, 4048
  %i.pp = add i16 %i.pn, 4009
  %i.pq = select i1 %or.cond.i139, i16 %i.po, i16 %i.pp
  %i.pr = shl i16 %i.pq, 4
  %i.ps = or i16 %i.ob, %i.pr
  %i.pt = add i32 %.0334, 5                       ; 3 uses
  br i1 %i.af, label %bb.db, label %bb.di

bb.db:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit138
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i152, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.sroa.0.0.copyload.i.i.i.i.i150 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.pu = and i64 %.sroa.0.0.copyload.i.i.i.i.i150, 281474976710655
  %i.pv = inttoptr i64 %i.pu to ptr               ; 5 uses
  %i.pw = load i32, ptr %i.pv, align 4            ; 2 uses
  %i.px = icmp ugt i32 %i.pw, 150994943
  br i1 %i.px, label %bb.dd, label %bb.de, !prof !16

bb.dd:                                            ; preds = %bb.dc
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i152

bb.de:                                            ; preds = %bb.dc
  %.mask.i.i.i.i.i.i.i.i.i.i151 = and i32 %i.pw, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i151, label %bb.dh [
    i32 134217728, label %bb.df
    i32 67108864, label %bb.dg
  ]

bb.df:                                            ; preds = %bb.de
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pv, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i152

bb.dg:                                            ; preds = %bb.de
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i152

bb.dh:                                            ; preds = %bb.de
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i154 = load i64, ptr %i.qc, align 8, !tbaa !32
  %i.qd = and i64 %.sroa.0.0.copyload.i.i.i2.i.i154, 281474976710655
  %i.qe = inttoptr i64 %i.qd to ptr
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i152

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i152: ; preds = %bb.dh, %bb.dg, %bb.df, %bb.dd, %bb.db
  %.0.i.sink.i.i153 = phi ptr [ %i.ad, %bb.db ], [ %i.pz, %bb.dd ], [ %i.qa, %bb.df ], [ %i.qb, %bb.dg ], [ %i.qg, %bb.dh ]
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i153, i64 %i.ag
  %i.qi = zext i32 %i.pt to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !48
  %i.ql = sext i8 %i.qk to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit155

bb.di:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit138
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i145, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.sroa.0.0.copyload.i.i.i.i4.i143 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.qm = and i64 %.sroa.0.0.copyload.i.i.i.i4.i143, 281474976710655
  %i.qn = inttoptr i64 %i.qm to ptr               ; 5 uses
  %i.qo = load i32, ptr %i.qn, align 4            ; 2 uses
  %i.qp = icmp ugt i32 %i.qo, 150994943
  br i1 %i.qp, label %bb.dk, label %bb.dl, !prof !16

bb.dk:                                            ; preds = %bb.dj
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i145

bb.dl:                                            ; preds = %bb.dj
  %.mask.i.i.i.i.i.i.i.i.i5.i144 = and i32 %i.qo, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i144, label %bb.do [
    i32 117440512, label %bb.dm
    i32 50331648, label %bb.dn
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i145

bb.dn:                                            ; preds = %bb.dl
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i145

bb.do:                                            ; preds = %bb.dl
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i148 = load i64, ptr %i.qu, align 8, !tbaa !32
  %i.qv = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i148, 281474976710655
  %i.qw = inttoptr i64 %i.qv to ptr
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i145

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i145: ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dk, %bb.di
  %.0.i.sink.i6.i146 = phi ptr [ %i.ad, %bb.di ], [ %i.qr, %bb.dk ], [ %i.qs, %bb.dm ], [ %i.qt, %bb.dn ], [ %i.qy, %bb.do ]
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i146, i64 %i.ag
  %i.ra = zext i32 %i.pt to i64
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.qz, i64 %i.ra
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !50
  br label %_ZNK6hermes2vm10StringViewixEj.exit155

_ZNK6hermes2vm10StringViewixEj.exit155:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i152, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i145
  %.0.i147 = phi i16 [ %i.ql, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i152 ], [ %i.rc, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i145 ] ; 2 uses
  %i.rd = add i16 %.0.i147, -48                   ; 2 uses
  %or.cond.i156 = icmp ult i16 %i.rd, 10
  %i.re = or i16 %.0.i147, 32
  %i.rf = add i16 %i.re, -87
  %i.rg = select i1 %or.cond.i156, i16 %i.rd, i16 %i.rf
  %i.rh = or i16 %i.ps, %i.rg
  br label %bb.ft

.critedge:                                        ; preds = %_ZNK6hermes2vm10StringViewixEj.exit46.thread386, %_ZNK6hermes2vm10StringViewixEj.exit46, %bb.t, %_ZSt9__find_ifIN6hermes2vm10StringView14const_iteratorEN9__gnu_cxx5__ops12_Iter_negateIPFbDsEEEET_SA_SA_T0_St26random_access_iterator_tag.exit
  %i.ri = add i32 %.0334, 3
  %.not32 = icmp ugt i32 %i.ri, %i.u
  br i1 %.not32, label %bb.ft, label %bb.dp

.critedge.thread:                                 ; preds = %_ZNK6hermes2vm10StringViewixEj.exit46.thread.thread, %_ZNK6hermes2vm10StringViewixEj.exit46.thread
  %i.rj = add i32 %.0334, 3
  %.not32302 = icmp ugt i32 %i.rj, %i.u
  br i1 %.not32302, label %bb.ft, label %.thread303

bb.dp:                                            ; preds = %.critedge
  %i.rk = add nuw nsw i32 %.0334, 1               ; 3 uses
  br i1 %i.af, label %bb.dq, label %.thread303

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i169, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.sroa.0.0.copyload.i.i.i.i.i167 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.rl = and i64 %.sroa.0.0.copyload.i.i.i.i.i167, 281474976710655
  %i.rm = inttoptr i64 %i.rl to ptr               ; 5 uses
  %i.rn = load i32, ptr %i.rm, align 4            ; 2 uses
  %i.ro = icmp ugt i32 %i.rn, 150994943
  br i1 %i.ro, label %bb.ds, label %bb.dt, !prof !16

bb.ds:                                            ; preds = %bb.dr
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i169

bb.dt:                                            ; preds = %bb.dr
  %.mask.i.i.i.i.i.i.i.i.i.i168 = and i32 %i.rn, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i168, label %bb.dw [
    i32 134217728, label %bb.du
    i32 67108864, label %bb.dv
  ]

bb.du:                                            ; preds = %bb.dt
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i169

bb.dv:                                            ; preds = %bb.dt
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i169

bb.dw:                                            ; preds = %bb.dt
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i171 = load i64, ptr %i.rt, align 8, !tbaa !32
  %i.ru = and i64 %.sroa.0.0.copyload.i.i.i2.i.i171, 281474976710655
  %i.rv = inttoptr i64 %i.ru to ptr
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i169

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i169: ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds, %bb.dq
  %.0.i.sink.i.i170 = phi ptr [ %i.ad, %bb.dq ], [ %i.rq, %bb.ds ], [ %i.rr, %bb.du ], [ %i.rs, %bb.dv ], [ %i.rx, %bb.dw ]
  %i.ry = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i170, i64 %i.ag
  %i.rz = zext i32 %i.rk to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !48
  %i.sc = sext i8 %i.sb to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit172

.thread303:                                       ; preds = %.critedge.thread, %bb.dp
  %i.sd = phi i32 [ %i.rk, %bb.dp ], [ %i.bx, %.critedge.thread ] ; 2 uses
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i162, label %bb.dx

bb.dx:                                            ; preds = %.thread303
  %.sroa.0.0.copyload.i.i.i.i4.i160 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.se = and i64 %.sroa.0.0.copyload.i.i.i.i4.i160, 281474976710655
  %i.sf = inttoptr i64 %i.se to ptr               ; 5 uses
  %i.sg = load i32, ptr %i.sf, align 4            ; 2 uses
  %i.sh = icmp ugt i32 %i.sg, 150994943
  br i1 %i.sh, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %bb.dx
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i162

bb.dz:                                            ; preds = %bb.dx
  %.mask.i.i.i.i.i.i.i.i.i5.i161 = and i32 %i.sg, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i161, label %bb.ec [
    i32 117440512, label %bb.ea
    i32 50331648, label %bb.eb
  ]

bb.ea:                                            ; preds = %bb.dz
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i162

bb.eb:                                            ; preds = %bb.dz
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i162

bb.ec:                                            ; preds = %bb.dz
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i165 = load i64, ptr %i.sm, align 8, !tbaa !32
  %i.sn = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i165, 281474976710655
  %i.so = inttoptr i64 %i.sn to ptr
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i162

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i162: ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dy, %.thread303
  %.0.i.sink.i6.i163 = phi ptr [ %i.ad, %.thread303 ], [ %i.sj, %bb.dy ], [ %i.sk, %bb.ea ], [ %i.sl, %bb.eb ], [ %i.sq, %bb.ec ]
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i163, i64 %i.ag
  %i.ss = zext i32 %i.sd to i64
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.sr, i64 %i.ss
  %i.su = load i16, ptr %i.st, align 2, !tbaa !50
  br label %_ZNK6hermes2vm10StringViewixEj.exit172

_ZNK6hermes2vm10StringViewixEj.exit172:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i169, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i162
  %i.sv = phi i32 [ %i.rk, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i169 ], [ %i.sd, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i162 ] ; 2 uses
  %.0.i164 = phi i16 [ %i.sc, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i169 ], [ %i.su, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i162 ] ; 2 uses
  %i.sw = add i16 %.0.i164, -48
  %or.cond.i173 = icmp ult i16 %i.sw, 10
  %i.sx = or i16 %.0.i164, 32
  %i.sy = add i16 %i.sx, -97
  %i.sz = icmp ult i16 %i.sy, 6
  %i.ta = or i1 %or.cond.i173, %i.sz
  br i1 %i.ta, label %bb.ed, label %bb.ft

bb.ed:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit172
  %i.tb = add i32 %.0334, 2                       ; 5 uses
  br i1 %i.af, label %bb.ee, label %bb.el

bb.ee:                                            ; preds = %bb.ed
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringViewixEj.exit187, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %.sroa.0.0.copyload.i.i.i.i.i182 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.tc = and i64 %.sroa.0.0.copyload.i.i.i.i.i182, 281474976710655
  %i.td = inttoptr i64 %i.tc to ptr               ; 5 uses
  %i.te = load i32, ptr %i.td, align 4            ; 2 uses
  %i.tf = icmp ugt i32 %i.te, 150994943
  br i1 %i.tf, label %bb.eg, label %bb.eh, !prof !16

bb.eg:                                            ; preds = %bb.ef
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringViewixEj.exit187

bb.eh:                                            ; preds = %bb.ef
  %.mask.i.i.i.i.i.i.i.i.i.i183 = and i32 %i.te, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i183, label %bb.ek [
    i32 134217728, label %bb.ei
    i32 67108864, label %bb.ej
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 12
  br label %_ZNK6hermes2vm10StringViewixEj.exit187

bb.ej:                                            ; preds = %bb.eh
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  br label %_ZNK6hermes2vm10StringViewixEj.exit187

bb.ek:                                            ; preds = %bb.eh
  %i.tk = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i186 = load i64, ptr %i.tk, align 8, !tbaa !32
  %i.tl = and i64 %.sroa.0.0.copyload.i.i.i2.i.i186, 281474976710655
  %i.tm = inttoptr i64 %i.tl to ptr
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringViewixEj.exit187

bb.el:                                            ; preds = %bb.ed
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringViewixEj.exit187.thread, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.sroa.0.0.copyload.i.i.i.i4.i175 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.tp = and i64 %.sroa.0.0.copyload.i.i.i.i4.i175, 281474976710655
  %i.tq = inttoptr i64 %i.tp to ptr               ; 5 uses
  %i.tr = load i32, ptr %i.tq, align 4            ; 2 uses
  %i.ts = icmp ugt i32 %i.tr, 150994943
  br i1 %i.ts, label %bb.en, label %bb.eo, !prof !16

bb.en:                                            ; preds = %bb.em
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringViewixEj.exit187.thread

bb.eo:                                            ; preds = %bb.em
  %.mask.i.i.i.i.i.i.i.i.i5.i176 = and i32 %i.tr, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i176, label %bb.er [
    i32 117440512, label %bb.ep
    i32 50331648, label %bb.eq
  ]

bb.ep:                                            ; preds = %bb.eo
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 12
  br label %_ZNK6hermes2vm10StringViewixEj.exit187.thread

bb.eq:                                            ; preds = %bb.eo
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  br label %_ZNK6hermes2vm10StringViewixEj.exit187.thread

bb.er:                                            ; preds = %bb.eo
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i180 = load i64, ptr %i.tx, align 8, !tbaa !32
  %i.ty = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i180, 281474976710655
  %i.tz = inttoptr i64 %i.ty to ptr
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringViewixEj.exit187.thread

_ZNK6hermes2vm10StringViewixEj.exit187:           ; preds = %bb.ee, %bb.eg, %bb.ei, %bb.ej, %bb.ek
  %.0.i.sink.i.i185 = phi ptr [ %i.ad, %bb.ee ], [ %i.th, %bb.eg ], [ %i.ti, %bb.ei ], [ %i.tj, %bb.ej ], [ %i.to, %bb.ek ]
  %i.uc = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i185, i64 %i.ag
  %i.ud = zext i32 %i.tb to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !48
  %i.ug = sext i8 %i.uf to i16                    ; 2 uses
  %i.uh = add nsw i16 %i.ug, -48
  %or.cond.i188 = icmp ult i16 %i.uh, 10
  %i.ui = or i16 %i.ug, 32
  %i.uj = add nsw i16 %i.ui, -97
  %i.uk = icmp ult i16 %i.uj, 6
  %i.ul = or i1 %or.cond.i188, %i.uk
  br i1 %i.ul, label %bb.es, label %bb.ft

_ZNK6hermes2vm10StringViewixEj.exit187.thread:    ; preds = %bb.el, %bb.en, %bb.ep, %bb.eq, %bb.er
  %.0.i.sink.i6.i178 = phi ptr [ %i.ad, %bb.el ], [ %i.tu, %bb.en ], [ %i.tv, %bb.ep ], [ %i.tw, %bb.eq ], [ %i.ub, %bb.er ]
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i178, i64 %i.ag
  %i.un = zext i32 %i.tb to i64
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.um, i64 %i.un
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !50 ; 2 uses
  %i.uq = add i16 %i.up, -48
  %or.cond.i188305 = icmp ult i16 %i.uq, 10
  %i.ur = or i16 %i.up, 32
  %i.us = add i16 %i.ur, -97
  %i.ut = icmp ult i16 %i.us, 6
  %i.uu = or i1 %or.cond.i188305, %i.ut
  br i1 %i.uu, label %.thread306, label %bb.ft

bb.es:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit187
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i199, label %bb.et

bb.et:                                            ; preds = %bb.es
  %.sroa.0.0.copyload.i.i.i.i.i197 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.uv = and i64 %.sroa.0.0.copyload.i.i.i.i.i197, 281474976710655
  %i.uw = inttoptr i64 %i.uv to ptr               ; 5 uses
  %i.ux = load i32, ptr %i.uw, align 4            ; 2 uses
  %i.uy = icmp ugt i32 %i.ux, 150994943
  br i1 %i.uy, label %bb.eu, label %bb.ev, !prof !16

bb.eu:                                            ; preds = %bb.et
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i199

bb.ev:                                            ; preds = %bb.et
  %.mask.i.i.i.i.i.i.i.i.i.i198 = and i32 %i.ux, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i198, label %bb.ey [
    i32 134217728, label %bb.ew
    i32 67108864, label %bb.ex
  ]

bb.ew:                                            ; preds = %bb.ev
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i199

bb.ex:                                            ; preds = %bb.ev
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i199

bb.ey:                                            ; preds = %bb.ev
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i201 = load i64, ptr %i.vd, align 8, !tbaa !32
  %i.ve = and i64 %.sroa.0.0.copyload.i.i.i2.i.i201, 281474976710655
  %i.vf = inttoptr i64 %i.ve to ptr
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i199

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i199: ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.eu, %bb.es
  %.0.i.sink.i.i200 = phi ptr [ %i.ad, %bb.es ], [ %i.va, %bb.eu ], [ %i.vb, %bb.ew ], [ %i.vc, %bb.ex ], [ %i.vh, %bb.ey ]
  %i.vi = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i200, i64 %i.ag
  %i.vj = zext i32 %i.sv to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !48
  %i.vm = sext i8 %i.vl to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit202

.thread306:                                       ; preds = %_ZNK6hermes2vm10StringViewixEj.exit187.thread
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i192, label %bb.ez

bb.ez:                                            ; preds = %.thread306
  %.sroa.0.0.copyload.i.i.i.i4.i190 = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.vn = and i64 %.sroa.0.0.copyload.i.i.i.i4.i190, 281474976710655
  %i.vo = inttoptr i64 %i.vn to ptr               ; 5 uses
  %i.vp = load i32, ptr %i.vo, align 4            ; 2 uses
  %i.vq = icmp ugt i32 %i.vp, 150994943
  br i1 %i.vq, label %bb.fa, label %bb.fb, !prof !16

bb.fa:                                            ; preds = %bb.ez
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i192

bb.fb:                                            ; preds = %bb.ez
  %.mask.i.i.i.i.i.i.i.i.i5.i191 = and i32 %i.vp, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i191, label %bb.fe [
    i32 117440512, label %bb.fc
    i32 50331648, label %bb.fd
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vo, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i192

bb.fd:                                            ; preds = %bb.fb
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i192

bb.fe:                                            ; preds = %bb.fb
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i195 = load i64, ptr %i.vv, align 8, !tbaa !32
  %i.vw = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i195, 281474976710655
  %i.vx = inttoptr i64 %i.vw to ptr
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !47
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i192

end_hunk_0
