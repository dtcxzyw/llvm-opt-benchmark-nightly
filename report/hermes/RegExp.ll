inline.NumInlined: 2505
inline.NumDeleted: 964
begin_hunk_0_@_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN6hermes2vm18advanceStringIndexEPKNS0_15StringPrimitiveEmb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = add i64 %1, 1                            ; 10 uses
  br i1 %2, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %i.d = and i32 %i.c, 2147483647
  %i.e = zext nneg i32 %i.d to i64
  %i.f = icmp ult i64 %i.a, %i.e
  br i1 %i.f, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4                ; 6 uses
  %i.h = and i32 %i.g, 16777216
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp ugt i32 %i.g, 150994943             ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread25, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.g, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit

bb.h:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !17
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit

bb.i:                                             ; preds = %bb.c
  br i1 %i.j, label %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread.thread, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  %.mask.i.i.i.i.i.i.i.i3.i = and i32 %i.g, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i3.i, label %bb.m [
    i32 117440512, label %bb.k
    i32 50331648, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i5.i = load i64, ptr %i.t, align 8, !tbaa !17
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i5.i, 281474976710655
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread

_ZNK6hermes2vm15StringPrimitive2atEj.exit:        ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.q, %bb.h ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  %i.y = and i64 %1, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !27
  %i.ab = sext i8 %i.aa to i32
  %i.ac = and i32 %i.ab, 64512
  %i.ad = icmp eq i32 %i.ac, 55296
  br i1 %i.ad, label %bb.n, label %._crit_edge

_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread25: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ag = and i64 %1, 4294967295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27
  %i.aj = sext i8 %i.ai to i32
  %i.ak = and i32 %i.aj, 64512
  %i.al = icmp eq i32 %i.ak, 55296
  br i1 %i.al, label %.thread27, label %._crit_edge

_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread: ; preds = %bb.k, %bb.l, %bb.m
  %.0.i4.i = phi ptr [ %i.x, %bb.m ], [ %i.r, %bb.k ], [ %i.s, %bb.l ]
  %i.am = and i64 %1, 4294967295
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.0.i4.i, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !80
  %i.ap = and i16 %i.ao, -1024
  %i.aq = icmp eq i16 %i.ap, -10240
  br i1 %i.aq, label %.thread, label %._crit_edge

_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread.thread: ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.at = and i64 %1, 4294967295
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !80
  %i.aw = and i16 %i.av, -1024
  %i.ax = icmp eq i16 %i.aw, -10240
  br i1 %i.ax, label %.thread.thread, label %._crit_edge

.thread27:                                        ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread25
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !62
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i16

bb.n:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit
  %.mask.i.i.i.i.i.i.i.i.i15 = and i32 %i.g, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i15, label %bb.q [
    i32 134217728, label %bb.o
    i32 67108864, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i16

bb.p:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i16

bb.q:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i18 = load i64, ptr %i.bc, align 8, !tbaa !17
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i.i18, 281474976710655
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i16

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i16: ; preds = %bb.q, %bb.p, %bb.o, %.thread27
  %.0.i.i17 = phi ptr [ %i.az, %.thread27 ], [ %i.ba, %bb.o ], [ %i.bb, %bb.p ], [ %i.bg, %bb.q ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 %i.a
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bj = sext i8 %i.bi to i16
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit19

.thread.thread:                                   ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !65
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i11

.thread:                                          ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread
  %.mask.i.i.i.i.i.i.i.i3.i10 = and i32 %i.g, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i3.i10, label %bb.t [
    i32 117440512, label %bb.r
    i32 50331648, label %bb.s
  ]

bb.r:                                             ; preds = %.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i11

bb.s:                                             ; preds = %.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i11

bb.t:                                             ; preds = %.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i5.i14 = load i64, ptr %i.bo, align 8, !tbaa !17
  %i.bp = and i64 %.sroa.0.0.copyload.i.i.i5.i14, 281474976710655
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i11

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i11: ; preds = %bb.t, %bb.s, %bb.r, %.thread.thread
  %.0.i4.i12 = phi ptr [ %i.bl, %.thread.thread ], [ %i.bm, %bb.r ], [ %i.bn, %bb.s ], [ %i.bs, %bb.t ]
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.0.i4.i12, i64 %i.a
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !80
  br label %_ZNK6hermes2vm15StringPrimitive2atEj.exit19

_ZNK6hermes2vm15StringPrimitive2atEj.exit19:      ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i16, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i11
  %.0.i13 = phi i16 [ %i.bj, %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit.i16 ], [ %i.bu, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit.i11 ]
  %i.bv = and i16 %.0.i13, -1024
  %i.bw = icmp eq i16 %i.bv, -9216
  %i.bx = add nsw i64 %1, 2
  %spec.select = select i1 %i.bw, i64 %i.bx, i64 %i.a
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6hermes2vm15StringPrimitive2atEj.exit19, %bb.a, %bb.b, %_ZNK6hermes2vm15StringPrimitive2atEj.exit, %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread, %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread.thread, %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread25
  %.0 = phi i64 [ %i.a, %bb.a ], [ %i.a, %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread25 ], [ %i.a, %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread ], [ %spec.select, %_ZNK6hermes2vm15StringPrimitive2atEj.exit19 ], [ %i.a, %_ZNK6hermes2vm15StringPrimitive2atEj.exit ], [ %i.a, %bb.b ], [ %i.a, %_ZNK6hermes2vm15StringPrimitive2atEj.exit.thread.thread ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10regExpExecERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 327, ptr %1, i32 0, ptr noundef null) #12 ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = extractvalue { i32, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !32
  store i64 %i.c, ptr %i.h, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 %i.c) #12 ; 2 uses
  %.sroa.0.0.copyload.i.i11.pr = load i64, ptr %i.m, align 8, !tbaa !17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i11 = phi i64 [ %i.c, %bb.c ], [ %.sroa.0.0.copyload.i.i11.pr, %bb.d ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.m, %bb.d ]
  %i.n = icmp ugt i64 %.sroa.0.0.copyload.i.i11, -844424930131969
  br i1 %i.n, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.o = and i64 %.sroa.0.0.copyload.i.i11, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, -1140850688
  %i.s = icmp ult i32 %i.r, 150994944
  %spec.select.i = select i1 %i.s, ptr %.0.i.i.i.i.i.i, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.t = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !13 ; 2 uses
  %i.u = icmp ugt i64 %i.t, -844424930131969
  %i.v = and i64 %i.t, 281474976710655
  %i.w = icmp ne i64 %i.v, 0
  %i.x = and i1 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !17
  %i.y = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false) #12 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0        ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = extractvalue { i32, i64 } %i.y, 1       ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, -281474976710657
  %.mask.i = and i64 %i.ab, -140737488355328
  %i.ad = icmp eq i64 %.mask.i, -1548112371908608
  %or.cond = or i1 %i.ac, %i.ad
  br i1 %or.cond, label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 46, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ag, align 8, !tbaa !26
  store ptr @.str, ptr %3, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ah, align 8, !tbaa !28
  %i.ai = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit

.critedge:                                        ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %.sroa.0.0.copyload.i.i13 = load i64, ptr %1, align 8, !tbaa !17 ; 2 uses
  %i.aj = icmp ugt i64 %.sroa.0.0.copyload.i.i13, -844424930131969
  br i1 %i.aj, label %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i: ; preds = %.critedge
  %i.ak = and i64 %.sroa.0.0.copyload.i.i13, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i32, ptr %i.al, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.am, -16777216
  %i.an = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 1040187392
  %spec.select.i15 = select i1 %i.an, ptr %1, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %.critedge, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i14 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %.critedge ], [ %spec.select.i15, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.ao = load i64, ptr %.sroa.0.0.i14, align 8, !tbaa !13 ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, -844424930131969
  %i.aq = and i64 %i.ao, 281474976710655
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = and i1 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit17, !prof !42

_ZN6hermes2vm11TwineChar16C2EPKc.exit17:          ; preds = %_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.at, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 55, ptr %i.au, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.av, align 8, !tbaa !26
  store ptr @.str.1, ptr %4, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.aw, align 8, !tbaa !28
  %i.ax = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit

bb.g:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.ay = tail call ptr @_ZN6hermes2vm16directRegExpExecENS0_6HandleINS0_8JSRegExpEEERNS0_7RuntimeENS1_INS0_15StringPrimitiveEEE(ptr nonnull %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %2) ; 2 uses
  %.not.i = icmp eq ptr %i.ay, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !13 ; 3 uses
  %i.ba = icmp ugt i64 %i.az, -844424930131969
  %i.bb = and i64 %i.az, 281474976710655
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = and i1 %i.ba, %i.bc
  %spec.select.i18 = select i1 %i.bd, i64 %i.az, i64 -1548112371908608
  br label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit

_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit17, %bb.a
  %.sroa.034.3 = phi i32 [ 0, %bb.a ], [ %i.z, %bb.f ], [ %i.ai, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.e ], [ %i.ax, %_ZN6hermes2vm11TwineChar16C2EPKc.exit17 ], [ 0, %bb.g ], [ 1, %bb.h ]
  %.sroa.7.4 = phi i64 [ undef, %bb.a ], [ %i.ab, %bb.f ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.e ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit17 ], [ undef, %bb.g ], [ %spec.select.i18, %bb.h ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.034.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSRegExp13escapePatternENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSRegExp10getPatternEPS1_RNS0_11PointerBaseE(ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, i32 noundef %3, ptr nofree readonly captures(none) %4, ptr %5, i64 %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string.248", align 8 ; 6 uses
  %8 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %9 = alloca %"class.hermes::vm::SmallXString", align 8 ; 30 uses
  %10 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %11 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %12 = alloca %"class.llvh::SmallVector.188", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %i.a = inttoptr i64 %6 to ptr
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !17
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !105
  %i.f = and i32 %i.e, 2147483647
  %.sroa.0.0.copyload.i.i145 = load i64, ptr %2, align 8, !tbaa !17
  %i.g = and i64 %.sroa.0.0.copyload.i.i145, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !105
  %i.k = and i32 %i.j, 2147483647
  %i.l = add i32 %i.f, %3                         ; 3 uses
  %i.m = load i64, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.n = icmp ugt i64 %i.m, -844424930131969
  %i.o = and i64 %i.m, 281474976710655            ; 2 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = and i1 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %i.o to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = zext i32 %i.t to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi i64 [ %i.u, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.w = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.a) #12 ; 2 uses
end_hunk_0
