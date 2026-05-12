inline.NumInlined: 652
inline.NumDeleted: 319
begin_hunk_0_@_ZN6hermes3hbc28visitBytecodeSegmentsInOrderINS0_18BytecodeSerializerEEEvRT_:bb.a
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !110  ; 4 uses
  %i.f = and i64 %i.e, 3                          ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc28visitBytecodeSegmentsInOrderINS0_18BytecodeSerializerEEEvRT_:bb.a
  br i1 %i.m, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i.preheader, label %.lr.ph.split.i.i

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i.preheader: ; preds = %bb.b
  %i.n = or i64 %i.e, -4
  %sub = sub i64 %i.e, %i.n
  store i64 %sub, ptr %i.d, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv.exit

.lr.ph.split.i.i:                                 ; preds = %bb.b, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc28visitBytecodeSegmentsInOrderINS0_18BytecodeSerializerEEEvRT_:bb.a
  call void @_ZN6hermes3hbc18BytecodeSerializer18visitBigIntStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer16visitRegExpTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  call void @_ZN6hermes3hbc18BytecodeSerializer18visitRegExpStorageEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.y = load i64, ptr %i.d, align 8, !tbaa !110  ; 4 uses
  %i.z = and i64 %i.y, 3                          ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv.exit, label %bb.d
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc28visitBytecodeSegmentsInOrderINS0_18BytecodeSerializerEEEvRT_:bb.a
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i20.preheader, label %.lr.ph.split.i.i15

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i20.preheader: ; preds = %bb.d
  %i.ah = or i64 %i.y, -4
  %sub33 = sub i64 %i.y, %i.ah
  store i64 %sub33, ptr %i.d, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv.exit

.lr.ph.split.i.i15:                               ; preds = %bb.d, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i18
end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc28visitBytecodeSegmentsInOrderINS0_18BytecodeSerializerEEEvRT_:bb.a
_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv.exit: ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i18, %_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv.exit, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i20.preheader
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !7
  call void @_ZN6hermes3hbc18BytecodeSerializer23serializeCJSModuleTableERNS0_14BytecodeModuleE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(513) %i.aq)
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !110 ; 4 uses
  %i.as = and i64 %i.ar, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN6hermes3hbc18BytecodeSerializer24visitFunctionSourceTableEv.exit, label %bb.f
end_hunk_4
begin_hunk_5_@_ZN6hermes3hbc28visitBytecodeSegmentsInOrderINS0_18BytecodeSerializerEEEvRT_:bb.a
  br i1 %i.az, label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i29.preheader, label %.lr.ph.split.i.i24

_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.us.i.i29.preheader: ; preds = %bb.f
  %i.ba = or i64 %i.ar, -4
  %sub34 = sub i64 %i.ar, %i.ba
  store i64 %sub34, ptr %i.d, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer24visitFunctionSourceTableEv.exit

.lr.ph.split.i.i24:                               ; preds = %bb.f, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i.i27
end_hunk_5
begin_hunk_6_@_ZN6hermes3hbc18BytecodeSerializer26serializeFunctionsBytecodeERNS0_14BytecodeModuleE:bb.a
  br i1 %i.bk, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc18BytecodeSerializer16writeBinaryArrayIhEEvN4llvh8ArrayRefIT_EE.exit
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !110 ; 4 uses
  %i.bm = and i64 %i.bl, 3                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.i
end_hunk_6
begin_hunk_7_@_ZN6hermes3hbc18BytecodeSerializer26serializeFunctionsBytecodeERNS0_14BytecodeModuleE:bb.a
  br i1 %i.br, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.i
  %4 = or i64 %i.bl, -4
  %sub = sub i64 %i.bl, %4
  store i64 %sub, ptr %i.j, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

.lr.ph.split.i:                                   ; preds = %bb.i, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
end_hunk_7
begin_hunk_8_@_ZN6hermes3hbc18BytecodeSerializer26serializeFunctionsBytecodeERNS0_14BytecodeModuleE:bb.a
  br i1 %.not19, label %._crit_edge, label %.lr.ph.split, !llvm.loop !152

._crit_edge:                                      ; preds = %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit, %.._crit_edge_crit_edge, %._crit_edge.split.us
  %i.dd = phi i64 [ %.pre65, %.._crit_edge_crit_edge ], [ %i.cv, %._crit_edge.split.us ], [ %i.dc, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit ] ; 4 uses
  %i.de = and i64 %i.dd, 3                        ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31, label %bb.o
end_hunk_8
begin_hunk_9_@_ZN6hermes3hbc18BytecodeSerializer26serializeFunctionsBytecodeERNS0_14BytecodeModuleE:bb.a
  br i1 %i.dj, label %..loopexit_crit_edge.split.us.i30, label %.lr.ph.split.i24

..loopexit_crit_edge.split.us.i30:                ; preds = %bb.o
  %5 = or i64 %i.dd, -4
  %sub75 = sub i64 %i.dd, %5
  store i64 %sub75, ptr %i.j, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit31

.lr.ph.split.i24:                                 ; preds = %bb.o, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i27
end_hunk_9
begin_hunk_10_@_ZN6hermes3hbc18BytecodeSerializer21serializeFunctionInfoERNS0_16BytecodeFunctionE:bb.a
.critedge:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !110 ; 4 uses
  %i.af = and i64 %i.ae, 3                        ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.d

end_hunk_10
begin_hunk_11_@_ZN6hermes3hbc18BytecodeSerializer21serializeFunctionInfoERNS0_16BytecodeFunctionE:bb.a
  br i1 %i.d, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread, label %.lr.ph.split.i

_ZN6hermes3hbc18BytecodeSerializer3padEj.exit.thread: ; preds = %bb.d
  %3 = xor i64 %i.af, 3
  %4 = add i64 %i.ae, %3
  %i.ak = add i64 %4, 1
  br label %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryINS0_14FunctionHeaderEEEvRKT_.exit

.lr.ph.split.i:                                   ; preds = %bb.d, %_ZN6hermes3hbc18BytecodeSerializer11writeBinaryIcEEvRKT_.exit.i
end_hunk_11
begin_hunk_12_@_ZN6hermes3hbc18BytecodeSerializer18serializeDebugInfoERNS0_14BytecodeModuleE:bb.a
  %3 = alloca %"struct.hermes::hbc::DebugInfoHeader", align 4 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_12
begin_hunk_13_@_ZN6hermes3hbc18BytecodeSerializer18serializeDebugInfoERNS0_14BytecodeModuleE:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %4 = xor i64 %i.d, 3
  %5 = add i64 %i.c, %4
  %i.l = add i64 %5, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_13
begin_hunk_14_@_ZN6hermes3hbc18BytecodeSerializer23serializeCJSModuleTableERNS0_14BytecodeModuleE:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_14
begin_hunk_15_@_ZN6hermes3hbc18BytecodeSerializer23serializeCJSModuleTableERNS0_14BytecodeModuleE:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %2 = xor i64 %i.d, 3
  %3 = add i64 %i.c, %2
  %i.l = add i64 %3, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_15
begin_hunk_16_@_ZN6hermes3hbc18BytecodeSerializer28serializeFunctionSourceTableERNS0_14BytecodeModuleE:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_16
begin_hunk_17_@_ZN6hermes3hbc18BytecodeSerializer28serializeFunctionSourceTableERNS0_14BytecodeModuleE:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %2 = xor i64 %i.d, 3
  %3 = add i64 %i.c, %2
  %i.l = add i64 %3, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_17
begin_hunk_18_@_ZN6hermes3hbc18BytecodeSerializer30serializeExceptionHandlerTableERNS0_16BytecodeFunctionE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !110  ; 4 uses
  %i.h = and i64 %i.g, 3                          ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.c

end_hunk_18
begin_hunk_19_@_ZN6hermes3hbc18BytecodeSerializer30serializeExceptionHandlerTableERNS0_16BytecodeFunctionE:bb.a
  br i1 %i.o, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.c
  %3 = xor i64 %i.h, 3
  %4 = add i64 %i.g, %3
  %i.p = add i64 %4, 1                            ; 2 uses
  store i64 %i.p, ptr %i.f, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_19
begin_hunk_20_@_ZN6hermes3hbc18BytecodeSerializer21serializeDebugOffsetsERNS0_16BytecodeFunctionE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !110  ; 4 uses
  %i.m = and i64 %i.l, 3                          ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.d

end_hunk_20
begin_hunk_21_@_ZN6hermes3hbc18BytecodeSerializer21serializeDebugOffsetsERNS0_16BytecodeFunctionE:bb.a
  br i1 %i.t, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.d
  %2 = xor i64 %i.m, 3
  %3 = add i64 %i.l, %2
  %i.u = add i64 %3, 1                            ; 2 uses
  store i64 %i.u, ptr %i.k, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_21
begin_hunk_22_@_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_22
begin_hunk_23_@_ZN6hermes3hbc18BytecodeSerializer20visitFunctionHeadersEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_23
begin_hunk_24_@_ZN6hermes3hbc18BytecodeSerializer16visitStringKindsEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_24
begin_hunk_25_@_ZN6hermes3hbc18BytecodeSerializer16visitStringKindsEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_25
begin_hunk_26_@_ZN6hermes3hbc18BytecodeSerializer21visitIdentifierHashesEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_26
begin_hunk_27_@_ZN6hermes3hbc18BytecodeSerializer21visitIdentifierHashesEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_27
begin_hunk_28_@_ZN6hermes3hbc18BytecodeSerializer21visitSmallStringTableEv:bb.a
  %1 = alloca %"struct.hermes::hbc::SmallStringTableEntry", align 4 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_28
begin_hunk_29_@_ZN6hermes3hbc18BytecodeSerializer21visitSmallStringTableEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %2 = xor i64 %i.d, 3
  %3 = add i64 %i.c, %2
  %i.l = add i64 %3, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_29
begin_hunk_30_@_ZN6hermes3hbc18BytecodeSerializer24visitOverflowStringTableEv:bb.a
  %1 = alloca %"class.llvh::SmallVector.66", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_30
begin_hunk_31_@_ZN6hermes3hbc18BytecodeSerializer24visitOverflowStringTableEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %2 = xor i64 %i.d, 3
  %3 = add i64 %i.c, %2
  %i.l = add i64 %3, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_31
begin_hunk_32_@_ZN6hermes3hbc18BytecodeSerializer18visitStringStorageEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_32
begin_hunk_33_@_ZN6hermes3hbc18BytecodeSerializer18visitStringStorageEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_33
begin_hunk_34_@_ZN6hermes3hbc18BytecodeSerializer16visitArrayBufferEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_34
begin_hunk_35_@_ZN6hermes3hbc18BytecodeSerializer16visitArrayBufferEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_35
begin_hunk_36_@_ZN6hermes3hbc18BytecodeSerializer20visitObjectKeyBufferEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_36
begin_hunk_37_@_ZN6hermes3hbc18BytecodeSerializer20visitObjectKeyBufferEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_37
begin_hunk_38_@_ZN6hermes3hbc18BytecodeSerializer22visitObjectValueBufferEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_38
begin_hunk_39_@_ZN6hermes3hbc18BytecodeSerializer22visitObjectValueBufferEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_39
begin_hunk_40_@_ZN6hermes3hbc18BytecodeSerializer16visitBigIntTableEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_40
begin_hunk_41_@_ZN6hermes3hbc18BytecodeSerializer16visitBigIntTableEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_41
begin_hunk_42_@_ZN6hermes3hbc18BytecodeSerializer18visitBigIntStorageEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_42
begin_hunk_43_@_ZN6hermes3hbc18BytecodeSerializer18visitBigIntStorageEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_43
begin_hunk_44_@_ZN6hermes3hbc18BytecodeSerializer16visitRegExpTableEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_44
begin_hunk_45_@_ZN6hermes3hbc18BytecodeSerializer16visitRegExpTableEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_45
begin_hunk_46_@_ZN6hermes3hbc18BytecodeSerializer18visitRegExpStorageEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_46
begin_hunk_47_@_ZN6hermes3hbc18BytecodeSerializer18visitRegExpStorageEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1                            ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_47
begin_hunk_48_@_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_48
begin_hunk_49_@_ZN6hermes3hbc18BytecodeSerializer19visitCJSModuleTableEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_49
begin_hunk_50_@_ZN6hermes3hbc18BytecodeSerializer24visitFunctionSourceTableEv:bb.a
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 3 uses
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit, label %bb.b

end_hunk_50
begin_hunk_51_@_ZN6hermes3hbc18BytecodeSerializer24visitFunctionSourceTableEv:bb.a
  br i1 %i.k, label %..loopexit_crit_edge.split.us.i, label %.lr.ph.split.i

..loopexit_crit_edge.split.us.i:                  ; preds = %bb.b
  %1 = xor i64 %i.d, 3
  %2 = add i64 %i.c, %1
  %i.l = add i64 %2, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !110
  br label %_ZN6hermes3hbc18BytecodeSerializer3padEj.exit

end_hunk_51
