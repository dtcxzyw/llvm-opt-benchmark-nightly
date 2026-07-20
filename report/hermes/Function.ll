inline.NumInlined: 464
inline.NumDeleted: 291
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0
@.str.12 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZN6hermes2vm6VTable11vtableArrayE = external local_unnamed_addr global %"struct.std::array.202", align 8
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm25createFunctionConstructorERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 131, ptr noundef nonnull @_ZN6hermes2vm19functionConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, ptr nonnull %i.a, i32 noundef 1, ptr noundef nonnull @_ZN6hermes2vm17NativeConstructor15creatorFunctionINS0_10JSFunctionEEENS0_10CallResultINS0_12PseudoHandleINS0_8JSObjectEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeENS0_6HandleIS6_EEPv, i32 noundef 76) #13
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 28, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0) #13
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 136, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22functionPrototypeApplyEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 2) #13
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 135, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #13
  tail call void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 137, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm21functionPrototypeBindEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1) #13
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, i32 268436016, i32 479, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm34functionPrototypeSymbolHasInstanceEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1, i32 312) #13 ; 0 uses
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm19functionConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = call { i32, i64 } @_ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull dead_on_return %3, i32 noundef 0) #13
  ret { i32, i64 } %i.d
}

declare void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.197", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string.197", align 8 ; 6 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::SmallXString", align 8 ; 11 uses
  %8 = alloca %"class.hermes::vm::SmallXString", align 8 ; 23 uses
  %i.a = alloca [16 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  store ptr %i.d, ptr %i.b, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.i, align 4, !tbaa !25
  store ptr %i.f, ptr %i.g, align 8
  store i32 1, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192
  store ptr %i.f, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.e, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i32 0, ptr %i.l, align 8, !tbaa !29
  store ptr %5, ptr %i.c, align 8, !tbaa !13
  %i.m = load ptr, ptr %2, align 8, !tbaa !7, !noalias !30 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !tbaa !33 ; 2 uses
  %i.n = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.n, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.o = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, -1140850688
  %i.s = icmp ult i32 %i.r, 150994944
  br i1 %i.s, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !35 ; 2 uses
  %.pre167 = and i64 %.pre, 281474976710655
  %i.t = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.o, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre167, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.u = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %i.t, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ]
  %.sroa.01.0.i = phi ptr [ %i.m, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 7 uses
  %i.v = icmp ne i64 %.pre-phi, 0
  %i.w = and i1 %i.u, %i.v
  br i1 %i.w, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.x, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 56, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !41
  store ptr @.str, ptr %6, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.aa, align 8, !tbaa !43
  %i.ab = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.ak

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  %i.ac = inttoptr i64 %.pre-phi to ptr           ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, -1291845632
  %i.af = icmp ult i32 %i.ae, -67108864
  br i1 %i.af, label %.critedge27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.ak = xor i64 %i.aj, %i.ah
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = call i64 @_ZNK6hermes2vm9CodeBlock19getFunctionSourceIDEv(ptr noundef nonnull align 8 dereferenceable(40) %i.al) #13 ; 2 uses
  %i.an = and i64 %i.am, 4294967296
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %..critedge27_crit_edge, label %bb.d

..critedge27_crit_edge:                           ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i41.pre = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %.pre168 = and i64 %.sroa.0.0.copyload.i.i.i41.pre, 281474976710655
  %.pre170 = inttoptr i64 %.pre168 to ptr
  br label %.critedge27

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !44
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  %.sroa.0146.0.extract.trunc = trunc i64 %i.am to i32
  %i.at = call noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192) %i.as, i32 noundef %.sroa.0146.0.extract.trunc) #13 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51
  %i.aw = and i32 %i.av, 2147483647
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i, label %bb.o

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 64, ptr %i.ba, align 4, !tbaa !25
  store <8 x i16> <i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110>, ptr %i.ay, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 32, ptr %i.bb, align 8, !tbaa !55
  store i32 9, ptr %i.az, align 8, !tbaa !26
  %i.bc = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 139, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #13 ; 2 uses
  %i.bd = extractvalue { i32, i64 } %i.bc, 0
  %i.be = extractvalue { i32, i64 } %i.bc, 1      ; 3 uses
  %i.bf = icmp eq i32 %i.bd, 0
  br i1 %i.bf, label %bb.m, label %bb.e, !prof !57

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %.mask.i.i = and i64 %i.be, -140737488355328
  %i.bg = icmp eq i64 %.mask.i.i, -1688849860263936
  br i1 %i.bg, label %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit.a", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 192 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !27 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28
  %i.bm = icmp ult ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.g, label %bb.h, !prof !58

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !27
  store i64 %i.be, ptr %i.bj, align 8, !tbaa !33
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bo = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bh, i64 %i.be) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.g ], [ %i.bo, %bb.h ]
  %i.bp = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i.i) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %bb.m, label %bb.i, !prof !57

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(144) %7) #13
  br label %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit.a"

"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit.a": ; preds = %bb.e, %bb.i
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !25
  %i.br = zext i32 %i.bq to i64
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 3 uses
  %i.bu = sub nsw i64 %i.br, %i.bt
  %i.bv = icmp ult i64 %i.bu, 20
  br i1 %i.bv, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32

bb.j:                                             ; preds = %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit.a"
  %i.bw = add nuw nsw i64 %i.bt, 20
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull %i.ay, i64 noundef %i.bw, i64 noundef 2) #13
  %.pre.i.i37 = load i32, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i38 = zext i32 %.pre.i.i37 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32:           ; preds = %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit.a", %bb.j
  %.pre-phi.i.i31 = phi i64 [ %.pre7.i.i38, %bb.j ], [ %i.bt, %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit.a" ]
  %i.bx = phi i32 [ %.pre.i.i37, %bb.j ], [ %i.bs, %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit.a" ]
  %i.by = load ptr, ptr %7, align 8, !tbaa !24    ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %.pre-phi.i.i31 ; 3 uses
  store <8 x i16> <i16 40, i16 41, i16 32, i16 123, i16 32, i16 91, i16 110, i16 97>, ptr %i.bz, align 2, !tbaa !55
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <8 x i16> <i16 116, i16 105, i16 118, i16 101, i16 32, i16 99, i16 111, i16 100>, ptr %i.ca, align 2, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store <4 x i16> <i16 101, i16 93, i16 32, i16 125>, ptr %i.cb, align 2, !tbaa !55
  %i.cc = add i32 %i.bx, 20                       ; 3 uses
  store i32 %i.cc, ptr %i.az, align 8, !tbaa !26
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %.not.i40 = icmp ult i32 %i.cc, 65536
  br i1 %.not.i40, label %bb.k, label %bb.l, !prof !58

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32
  %i.ce = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.by, i64 %i.cd) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.197") align 8 %4, ptr nonnull %i.by, i64 %i.cd)
  %i.cf = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %i.cg = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !42
  %i.ck = shl i64 %i.cj, 1
  %i.cl = add i64 %i.ck, 2
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cl) #14
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.ce, %bb.k ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.cm = extractvalue { i32, i64 } %.pn.i, 0
  %i.cn = extractvalue { i32, i64 } %.pn.i, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0148.0 = phi i32 [ %i.cm, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ]
  %.sroa.8.0 = phi i64 [ %i.cn, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i ], [ undef, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ]
  %i.co = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ay
  br i1 %i.cp, label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.co) #13
  br label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit:          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.ak

bb.o:                                             ; preds = %bb.d
  %i.cq = ptrtoint ptr %i.at to i64
  %i.cr = or i64 %i.cq, -844424930131968
  br label %bb.ak

.critedge27:                                      ; preds = %..critedge27_crit_edge, %bb.b
  %.pre-phi171 = phi ptr [ %.pre170, %..critedge27_crit_edge ], [ %i.ac, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.cs, ptr %8, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 17 uses
  store i32 0, ptr %i.ct, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 6 uses
  store i32 64, ptr %i.cu, align 4, !tbaa !25
  %i.cv = load i32, ptr %.pre-phi171, align 4
  %.mask.i.i.i.i.i.i.i = and i32 %i.cv, -16777216
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  switch i32 %.mask.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i63 [
    i32 1258291200, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i43
    i32 1224736768, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i54
  ]

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i43:           ; preds = %.critedge27
  store <8 x i16> <i16 97, i16 115, i16 121, i16 110, i16 99, i16 32, i16 102, i16 117>, ptr %i.cs, align 8, !tbaa !55
  store <4 x i16> <i16 110, i16 99, i16 116, i16 105>, ptr %i.cw, align 8, !tbaa !55
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i16 111, ptr %i.cx, align 8, !tbaa !55
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 42
  store i16 110, ptr %i.cy, align 2, !tbaa !55
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i16 32, ptr %i.cz, align 4, !tbaa !55
  br label %bb.p

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i54:           ; preds = %.critedge27
  store <8 x i16> <i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110>, ptr %i.cs, align 8, !tbaa !55
  store i16 32, ptr %i.cw, align 8, !tbaa !55
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 34
  store i16 42, ptr %i.da, align 2, !tbaa !55
  br label %bb.p

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i63:           ; preds = %.critedge27
  store <8 x i16> <i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110>, ptr %i.cs, align 8, !tbaa !55
  store i16 32, ptr %i.cw, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i54, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i63, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i43
  %.sink = phi i32 [ 10, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i54 ], [ 9, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i63 ], [ 15, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i43 ]
  store i32 %.sink, ptr %i.ct, align 8, !tbaa !26
  %i.db = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 139, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #13 ; 2 uses
  %i.dc = extractvalue { i32, i64 } %i.db, 0
  %i.dd = extractvalue { i32, i64 } %i.db, 1      ; 3 uses
  %i.de = icmp eq i32 %i.dc, 0
  br i1 %i.de, label %.thread, label %bb.q, !prof !57

bb.q:                                             ; preds = %bb.p
  %.mask.i.i71 = and i64 %i.dd, -140737488355328
  %i.df = icmp eq i64 %.mask.i.i71, -1688849860263936
  br i1 %i.df, label %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76.a", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 192 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 200
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !28
  %i.dl = icmp ult ptr %i.di, %i.dk
  br i1 %i.dl, label %bb.s, label %bb.t, !prof !58

bb.s:                                             ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dm, ptr %i.dh, align 8, !tbaa !27
  store i64 %i.dd, ptr %i.di, align 8, !tbaa !33
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72

bb.t:                                             ; preds = %bb.r
  %i.dn = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dg, i64 %i.dd) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i73 = phi ptr [ %i.di, %bb.s ], [ %i.dn, %bb.t ]
  %i.do = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i.i73) #13 ; 2 uses
  %.not.i74 = icmp eq ptr %i.do, inttoptr (i64 -1 to ptr)
  br i1 %.not.i74, label %.thread, label %bb.u, !prof !57

bb.u:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(144) %8) #13
  br label %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76.a"

"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76.a": ; preds = %bb.q, %bb.u
  %.sroa.0.0.copyload.i.i.i77 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %i.dp = and i64 %.sroa.0.0.copyload.i.i.i77, 281474976710655
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = add i32 %i.dr, -1157627904
  %i.dt = icmp ult i32 %i.ds, 67108864
  br i1 %i.dt, label %bb.v, label %bb.x

bb.v:                                             ; preds = %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76.a"
  %i.du = load i32, ptr %i.cu, align 4, !tbaa !25
  %i.dv = zext i32 %i.du to i64
  %i.dw = load i32, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %i.dx = zext i32 %i.dw to i64                   ; 3 uses
  %i.dy = sub nsw i64 %i.dv, %i.dx
  %i.dz = icmp ult i64 %i.dy, 20
  br i1 %i.dz, label %bb.w, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79

bb.w:                                             ; preds = %bb.v
  %i.ea = add nuw nsw i64 %i.dx, 20
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.cs, i64 noundef %i.ea, i64 noundef 2) #13
  %.pre.i.i84 = load i32, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i85 = zext i32 %.pre.i.i84 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79:           ; preds = %bb.v, %bb.w
  %.pre-phi.i.i78 = phi i64 [ %.pre7.i.i85, %bb.w ], [ %i.dx, %bb.v ]
  %i.eb = phi i32 [ %.pre.i.i84, %bb.w ], [ %i.dw, %bb.v ]
  %i.ec = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %.pre-phi.i.i78 ; 3 uses
  store <8 x i16> <i16 40, i16 41, i16 32, i16 123, i16 32, i16 91, i16 110, i16 97>, ptr %i.ed, align 2, !tbaa !55
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <8 x i16> <i16 116, i16 105, i16 118, i16 101, i16 32, i16 99, i16 111, i16 100>, ptr %i.ee, align 2, !tbaa !55
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store <4 x i16> <i16 101, i16 93, i16 32, i16 125>, ptr %i.ef, align 2, !tbaa !55
  %i.eg = add i32 %i.eb, 20
  br label %bb.ag

bb.x:                                             ; preds = %"_ZZN6hermes2vm25functionPrototypeToStringEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_12SmallXStringIDsLj64EEE.exit76.a"
  %i.eh = load i32, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %i.ei = load i32, ptr %i.cu, align 4, !tbaa !25
  %.not.i.i = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i.i, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit, label %bb.y, !prof !58

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.cs, i64 noundef 0, i64 noundef 2) #13
  %.pre.i.i87 = load i32, ptr %i.ct, align 8, !tbaa !26
  br label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit

_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit: ; preds = %bb.x, %bb.y
  %i.ej = phi i32 [ %.pre.i.i87, %bb.y ], [ %i.eh, %bb.x ]
  %i.ek = load ptr, ptr %8, align 8, !tbaa !24
  %i.el = zext i32 %i.ej to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %i.el
  store i16 40, ptr %i.em, align 1
  %i.en = load i32, ptr %i.ct, align 8, !tbaa !26
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.ct, align 8, !tbaa !26
  %i.ep = call { i32, double } @_ZN6hermes2vm8Callable28extractOwnLengthProperty_RJSENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13 ; 2 uses
  %i.eq = extractvalue { i32, double } %i.ep, 0
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %.thread, label %bb.z

bb.z:                                             ; preds = %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit
  %i.es = extractvalue { i32, double } %i.ep, 1   ; 2 uses
  %i.et = fcmp ogt double %i.es, 0.000000e+00
  %.sroa.speculated131 = select i1 %i.et, double %i.es, double 0.000000e+00 ; 2 uses
  %i.eu = fcmp olt double %.sroa.speculated131, 6.553500e+04
  %.sroa.speculated = select i1 %i.eu, double %.sroa.speculated131, double 6.553500e+04
  %i.ev = fptoui double %.sroa.speculated to i32  ; 2 uses
  %.not160 = icmp eq i32 %i.ev, 0
  br i1 %.not160, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.z
  %.pre166 = load i32, ptr %i.ct, align 8, !tbaa !26
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.z
  %scevgep = getelementptr i8, ptr %i.a, i64 -1
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115, %.._crit_edge_crit_edge
  %i.ew = phi i32 [ %.pre166, %.._crit_edge_crit_edge ], [ %i.hb, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115 ] ; 2 uses
  %i.ex = load i32, ptr %i.cu, align 4, !tbaa !25
  %i.ey = zext i32 %i.ex to i64
  %i.ez = zext i32 %i.ew to i64                   ; 3 uses
  %i.fa = sub nsw i64 %i.ey, %i.ez
  %i.fb = icmp ult i64 %i.fa, 16
  br i1 %i.fb, label %bb.aa, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90

bb.aa:                                            ; preds = %._crit_edge
  %i.fc = add nuw nsw i64 %i.ez, 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.cs, i64 noundef %i.fc, i64 noundef 2) #13
  %.pre.i.i95 = load i32, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i96 = zext i32 %.pre.i.i95 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90:           ; preds = %._crit_edge, %bb.aa
  %.pre-phi.i.i89 = phi i64 [ %.pre7.i.i96, %bb.aa ], [ %i.ez, %._crit_edge ]
  %i.fd = phi i32 [ %.pre.i.i95, %bb.aa ], [ %i.ew, %._crit_edge ]
  %i.fe = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %.pre-phi.i.i89 ; 2 uses
  store <8 x i16> <i16 41, i16 32, i16 123, i16 32, i16 91, i16 98, i16 121, i16 116>, ptr %i.ff, align 2, !tbaa !55
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <8 x i16> <i16 101, i16 99, i16 111, i16 100, i16 101, i16 93, i16 32, i16 125>, ptr %i.fg, align 2, !tbaa !55
  %i.fh = add i32 %i.fd, 16
  br label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115
  %.0159 = phi i32 [ %i.hc, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.not25 = icmp eq i32 %.0159, 0
  br i1 %.not25, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.fi = load i32, ptr %i.cu, align 4, !tbaa !25
  %i.fj = zext i32 %i.fi to i64
  %i.fk = load i32, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 3 uses
  %i.fm = sub nsw i64 %i.fj, %i.fl
  %i.fn = icmp ult i64 %i.fm, 2
  br i1 %i.fn, label %bb.ac, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i99

bb.ac:                                            ; preds = %bb.ab
  %i.fo = add nuw nsw i64 %i.fl, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.cs, i64 noundef %i.fo, i64 noundef 2) #13
  %.pre.i.i104 = load i32, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i105 = zext i32 %.pre.i.i104 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i99

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i99:           ; preds = %bb.ab, %bb.ac
  %.pre-phi.i.i98 = phi i64 [ %.pre7.i.i105, %bb.ac ], [ %i.fl, %bb.ab ]
  %i.fp = phi i32 [ %.pre.i.i104, %bb.ac ], [ %i.fk, %bb.ab ]
  %i.fq = load ptr, ptr %8, align 8, !tbaa !24
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %.pre-phi.i.i98 ; 2 uses
  store i16 44, ptr %i.fr, align 2, !tbaa !55
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  store i16 32, ptr %i.fs, align 2, !tbaa !55
  %i.ft = add i32 %i.fp, 2
  store i32 %i.ft, ptr %i.ct, align 8, !tbaa !26
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i99, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %.0159) #13 ; 0 uses
  %i.fv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15 ; 12 uses
  %i.fw = load i32, ptr %i.cu, align 4, !tbaa !25
  %i.fx = zext i32 %i.fw to i64
  %i.fy = load i32, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %i.fz = zext i32 %i.fy to i64                   ; 3 uses
  %i.ga = sub nsw i64 %i.fx, %i.fz
  %i.gb = icmp ugt i64 %i.fv, %i.ga
  br i1 %i.gb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gc = add i64 %i.fv, %i.fz
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.cs, i64 noundef %i.gc, i64 noundef 2) #13
  %.pre.i.i113 = load i32, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %.pre7.i.i114 = zext i32 %.pre.i.i113 to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pre-phi.i.i107 = phi i64 [ %.pre7.i.i114, %bb.ae ], [ %i.fz, %bb.ad ]
  %i.gd = phi i32 [ %.pre.i.i113, %bb.ae ], [ %i.fy, %bb.ad ]
  %i.ge = icmp sgt i64 %i.fv, 0
  br i1 %i.ge, label %iter.check, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115

iter.check:                                       ; preds = %bb.af
  %i.gf = load ptr, ptr %8, align 8, !tbaa !24
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %.pre-phi.i.i107 ; 5 uses
  %scevgep161 = getelementptr i8, ptr %scevgep, i64 %i.fv
  %min.iters.check = icmp ult i64 %i.fv, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check186 = icmp ult i64 %i.fv, 16
  br i1 %min.iters.check186, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.fv, 12
  %n.vec = and i64 %i.fv, 9223372036854775792     ; 5 uses
  %i.gh = shl nuw i64 %n.vec, 1
  %i.gi = getelementptr i8, ptr %i.gg, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gk = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.gg, i64 %i.gk ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.gl = getelementptr i8, ptr %next.gep187, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep187, align 16, !tbaa !42
  %wide.load188 = load <8 x i8>, ptr %i.gl, align 8, !tbaa !42
  %i.gm = zext <8 x i8> %wide.load to <8 x i16>
  %i.gn = zext <8 x i8> %wide.load188 to <8 x i16>
  %i.go = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.gm, ptr %next.gep, align 2, !tbaa !55
  store <8 x i16> %i.gn, ptr %i.go, align 2, !tbaa !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec191 = and i64 %i.fv, 9223372036854775804  ; 4 uses
  %i.gq = shl nuw i64 %n.vec191, 1
  %i.gr = getelementptr i8, ptr %i.gg, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.a, i64 %n.vec191
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index192 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next196, %vec.epilog.vector.body ] ; 3 uses
  %i.gt = shl i64 %index192, 1
  %next.gep193 = getelementptr i8, ptr %i.gg, i64 %i.gt
  %next.gep194 = getelementptr i8, ptr %i.a, i64 %index192
  %wide.load195 = load <4 x i8>, ptr %next.gep194, align 4, !tbaa !42
  %i.gu = zext <4 x i8> %wide.load195 to <4 x i16>
  store <4 x i16> %i.gu, ptr %next.gep193, align 2, !tbaa !55
  %index.next196 = add nuw i64 %index192, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next196, %n.vec191
  br i1 %i.gv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n197 = icmp eq i64 %i.fv, %n.vec191
  br i1 %cmp.n197, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115, label %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader:          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0811.i.i.i.i.i.i.i.i.i.i111.ph = phi ptr [ %i.gg, %iter.check ], [ %i.gi, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.i.i112.ph = phi ptr [ %i.a, %iter.check ], [ %i.gj, %vec.epilog.iter.check ], [ %i.gs, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i109

.lr.ph.i.i.i.i.i.i.i.i.i.i109:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i109
  %.0811.i.i.i.i.i.i.i.i.i.i111 = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i.i109 ], [ %.0811.i.i.i.i.i.i.i.i.i.i111.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i.i112 = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i.i.i.i.i.i109 ], [ %.0910.i.i.i.i.i.i.i.i.i.i112.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i109.preheader ] ; 3 uses
  %i.gw = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i112, align 1, !tbaa !42
  %i.gx = zext i8 %i.gw to i16
  store i16 %i.gx, ptr %.0811.i.i.i.i.i.i.i.i.i.i111, align 2, !tbaa !55
  %i.gy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i112, i64 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i111, i64 2
  %exitcond.not = icmp eq ptr %.0910.i.i.i.i.i.i.i.i.i.i112, %scevgep161
  br i1 %exitcond.not, label %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115, label %.lr.ph.i.i.i.i.i.i.i.i.i.i109, !llvm.loop !69

_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEN4llvh9StringRefE.exit115: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i109, %middle.block, %vec.epilog.middle.block, %bb.af
  %i.ha = trunc i64 %i.fv to i32
  %i.hb = add i32 %i.gd, %i.ha                    ; 2 uses
  store i32 %i.hb, ptr %i.ct, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.hc = add nuw i32 %.0159, 1                   ; 2 uses
  %exitcond162.not = icmp eq i32 %i.hc, %i.ev
  br i1 %exitcond162.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79
  %i.hd = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90 ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79 ] ; 2 uses
  %storemerge = phi i32 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i90 ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i79 ] ; 3 uses
  store i32 %storemerge, ptr %i.ct, align 8, !tbaa !26
  %i.he = zext i32 %storemerge to i64             ; 2 uses
  %.not.i116 = icmp ult i32 %storemerge, 65536
  br i1 %.not.i116, label %bb.ah, label %bb.ai, !prof !58

bb.ah:                                            ; preds = %bb.ag
  %i.hf = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.hd, i64 %i.he) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.197") align 8 %3, ptr nonnull %i.hd, i64 %i.he)
  %i.hg = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %i.hh = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i117

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i117: ; preds = %bb.ai
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !42
  %i.hl = shl i64 %i.hk, 1
  %i.hm = add i64 %i.hl, 2
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hm) #14
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118
  %.pn.i119 = phi { i32, i64 } [ %i.hf, %bb.ah ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i118 ] ; 2 uses
  %i.hn = extractvalue { i32, i64 } %.pn.i119, 0
  %i.ho = extractvalue { i32, i64 } %.pn.i119, 1
  br label %.thread

.thread:                                          ; preds = %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit, %bb.p, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121
  %.sroa.0148.4 = phi i32 [ %i.hn, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121 ], [ 0, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72 ], [ 0, %bb.p ]
  %.sroa.8.3 = phi i64 [ %i.ho, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit121 ], [ undef, %_ZN6hermes2vm12SmallXStringIDsLj64EE6appendEc.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit.i72 ], [ undef, %bb.p ]
  %i.hp = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.cs
  br i1 %i.hq, label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122, label %bb.aj

bb.aj:                                            ; preds = %.thread
  call void @free(ptr noundef %i.hp) #13
  br label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122

_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122:       ; preds = %.thread, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit, %bb.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.0148.6 = phi i32 [ %i.ab, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0148.4, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122 ], [ %.sroa.0148.0, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit ], [ 1, %bb.o ]
  %.sroa.8.5 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.8.3, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit122 ], [ %.sroa.8.0, %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit ], [ %i.cr, %bb.o ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0148.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.5, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22functionPrototypeApplyEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  store ptr %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !25
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !29
  store ptr %3, ptr %i.b, align 8, !tbaa !13
  %i.l = load ptr, ptr %2, align 8, !tbaa !7, !noalias !71 ; 5 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !33 ; 3 uses
  %i.m = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.m, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.n = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add i32 %i.p, -1140850688
  %i.r = icmp ult i32 %i.q, 150994944
  br i1 %i.r, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !35 ; 2 uses
  %.pre47 = and i64 %.pre, 281474976710655
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.n, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre47, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.s = phi i64 [ %.sroa.0.0.copyload.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.l, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 3 uses
  %i.t = icmp ugt i64 %i.s, -844424930131969
  %i.u = icmp ne i64 %.pre-phi, 0
  %i.v = and i1 %i.t, %i.u
  br i1 %i.v, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !58

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 29, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !41
  store ptr @.str.8, ptr %4, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.z, align 8, !tbaa !43
  %i.aa = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ab = insertvalue { i32, i64 } poison, i32 %i.aa, 0
  %i.ac = insertvalue { i32, i64 } %i.ab, i64 undef, 1
  br label %bb.h

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !74 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 1
  br i1 %i.af, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %.critedge

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b
  %i.ag = getelementptr inbounds i8, ptr %i.l, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.ag, align 8, !tbaa !33 ; 3 uses
  %.mask.i = and i64 %.sroa.0.0.copyload.i12, -140737488355328
  switch i64 %.mask.i, label %bb.f [
    i64 -1548112371908608, label %.critedge.thread
    i64 -1688849860263936, label %.critedge.thread
  ]

.critedge:                                        ; preds = %bb.b
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit19, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %.critedge
  %i.ah = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.ah, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit19

_ZNK6hermes2vm10NativeArgs6getArgEj.exit19:       ; preds = %.critedge, %.critedge.thread
  %.sroa.0.0.i17 = phi i64 [ %.sroa.0.0.copyload.i18, %.critedge.thread ], [ -1688849860263936, %.critedge ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !76 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !310
  %i.am = add i64 %i.al, 1                        ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !310
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !311
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = and i64 %i.ar, 34359738360
  %i.at = icmp samesign ult i64 %i.as, 312
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp ugt i64 %i.am, %i.av
  %.not31.i.i = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %.not31.i.i, label %bb.c, label %bb.d, !prof !57

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit19
  %i.ax = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %i.ay = insertvalue { i32, i64 } poison, i32 %i.ax, 0
  %i.az = insertvalue { i32, i64 } %i.ay, i64 undef, 1
  br label %bb.e

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit19
  %i.ba = or i64 %i.s, -281474976710656
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !76
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.bc, align 8, !tbaa !312
  %i.bd = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store i64 -1125899906842624, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 -1688849860263936, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ba, ptr %i.bi, align 8, !tbaa !35
  store i64 %.sroa.0.0.i17, ptr %i.aj, align 8, !tbaa !35
  %.sroa.0.0.copyload.i.i.i20 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %i.bj = and i64 %.sroa.0.0.copyload.i.i.i20, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !313
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !315
  %i.bs = call { i32, i64 } %i.br(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13, !inline_history !320
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.merged = phi { i32, i64 } [ %i.az, %bb.c ], [ %i.bs, %bb.d ]
  %i.bt = load i64, ptr %i.ak, align 8, !tbaa !310
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr %i.ak, align 8, !tbaa !310
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !76
  br label %bb.h

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.bv = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.bw = icmp ugt i64 %.sroa.0.0.copyload.i12, -844424930131969
  br i1 %i.bw, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.f
  %i.bx = and i64 %.sroa.0.0.copyload.i12, 281474976710655
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = add i32 %i.bz, -436207616
  %i.cb = icmp ult i32 %i.ca, 855638016
  %spec.select.i = select i1 %i.cb, ptr %i.ag, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.f, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i22 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.f ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.cc = load i64, ptr %.sroa.0.0.i22, align 8, !tbaa !35 ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, -844424930131969
  %i.ce = and i64 %i.cc, 281474976710655
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = and i1 %i.cd, %i.cf
  br i1 %i.cg, label %bb.g, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit24, !prof !58

_ZN6hermes2vm11TwineChar16C2EPKc.exit24:          ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ch, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 44, ptr %i.ci, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.cj, align 8, !tbaa !41
  store ptr @.str.9, ptr %5, align 8, !tbaa !42
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ck, align 8, !tbaa !43
  %i.cl = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.cm = insertvalue { i32, i64 } poison, i32 %i.cl, 0
  %i.cn = insertvalue { i32, i64 } %i.cm, i64 undef, 1
  br label %bb.h

bb.g:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.co = call { i32, i64 } @_ZN6hermes2vm8Callable11executeCallENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_NS2_INS0_8JSObjectEEE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr nonnull %i.bv, ptr nonnull %.sroa.0.0.i22) #13
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit24, %bb.g, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %.merged, %bb.e ], [ %i.ac, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.co, %bb.g ], [ %i.cn, %_ZN6hermes2vm11TwineChar16C2EPKc.exit24 ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !321 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -1140850688
  %i.g = icmp ult i32 %i.f, 150994944
  br i1 %i.g, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !35 ; 2 uses
  %.pre31 = and i64 %.pre, 281474976710655
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre31, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = phi i64 [ %.sroa.0.0.copyload.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.i = icmp ugt i64 %i.h, -844424930131969
  %i.j = icmp ne i64 %.pre-phi, 0
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !58

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 25, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !41
  store ptr @.str.10, ptr %3, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.o, align 8, !tbaa !43
  %i.p = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !74   ; 5 uses
  %i.s = tail call i32 @llvm.usub.sat.i32(i32 %i.r, i32 1) ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.t, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i12, %bb.c ], [ -1688849860263936, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !76   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !310
  %i.y = add i64 %i.x, 1                          ; 2 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !310
  %i.z = tail call noundef i32 @llvm.uadd.sat.i32(i32 %i.s, i32 7)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !311
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.v to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = zext i32 %i.z to i64                    ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 32
  %i.aj = icmp samesign ugt i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ugt i64 %i.y, %i.al
  %.not31.i.i = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %.not31.i.i, label %bb.d, label %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit, !prof !57

_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.an = or i64 %i.h, -281474976710656
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ah ; 10 uses
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.ap, align 8, !tbaa !312
  %i.aq = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !35
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -24
  %i.at = zext i32 %i.s to i64
  %i.au = or disjoint i64 %i.at, -1125899906842624
  %i.av = getelementptr inbounds i8, ptr %i.ao, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store i64 %i.au, ptr %i.av, align 8, !tbaa !35
  %i.aw = getelementptr inbounds i8, ptr %i.ao, i64 -40
  store i64 -1688849860263936, ptr %i.aw, align 8, !tbaa !35
  %i.ax = getelementptr inbounds i8, ptr %i.ao, i64 -48
  store i64 %i.an, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr inbounds i8, ptr %i.ao, i64 -56
  store i64 %.sroa.0.0.i, ptr %i.ay, align 8, !tbaa !35
  %i.az = icmp ugt i32 %i.r, 1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit
  %i.ba = load i32, ptr %i.q, align 8, !tbaa !74  ; 3 uses
  %i.bb = add i32 %i.r, -1                        ; 3 uses
  %i.bc = icmp eq i32 %i.r, 2
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.bb, -2
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.bd = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1
  %lcmp.mod.not = trunc nuw i32 %i.bb to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.030.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.cy, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc nuw i32 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.be = icmp ult i32 %.030.epil.init, %i.ba
  br i1 %i.be, label %bb.e, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil

bb.e:                                             ; preds = %.epil.preheader
  %i.bf = load ptr, ptr %2, align 8, !tbaa !7, !noalias !324
  %i.bg = zext i32 %.030.epil.init to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.sroa.0.0.copyload.i15.epil = load i64, ptr %i.bj, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil

_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil:  ; preds = %bb.e, %.epil.preheader
  %.sroa.0.0.i14.epil = phi i64 [ %.sroa.0.0.copyload.i15.epil, %bb.e ], [ -1688849860263936, %.epil.preheader ]
  %i.bk = add i32 %.030.epil.init, -1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr [8 x i8], ptr %i.ao, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -64
  store i64 %.sroa.0.0.i14.epil, ptr %i.bo, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil, %._crit_edge.loopexit.unr-lcssa, %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.i13 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %i.bp = and i64 %.sroa.0.0.copyload.i.i.i13, 281474976710655
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = lshr i32 %i.br, 24
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !313
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !315
  %i.by = tail call { i32, i64 } %i.bx(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13, !inline_history !320 ; 2 uses
  %i.bz = extractvalue { i32, i64 } %i.by, 0
  %i.ca = extractvalue { i32, i64 } %i.by, 1
  %i.cb = icmp ne i32 %i.bz, 0                    ; 2 uses
  %spec.select = zext i1 %i.cb to i32
  %spec.select29 = select i1 %i.cb, i64 %i.ca, i64 undef, !prof !58
  br label %bb.i

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1, %.lr.ph.new
  %.030 = phi i32 [ 1, %.lr.ph.new ], [ %i.cy, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1 ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1 ]
  %i.cc = icmp ult i32 %.030, %i.ba
  br i1 %i.cc, label %bb.g, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16

bb.g:                                             ; preds = %bb.f
  %i.cd = load ptr, ptr %2, align 8, !tbaa !7, !noalias !324
  %i.ce = zext i32 %.030 to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.ch, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16

_ZNK6hermes2vm10NativeArgs6getArgEj.exit16:       ; preds = %bb.f, %bb.g
  %.sroa.0.0.i14 = phi i64 [ %.sroa.0.0.copyload.i15, %bb.g ], [ -1688849860263936, %bb.f ]
  %i.ci = add nsw i32 %.030, -1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr [8 x i8], ptr %i.ao, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -64
  store i64 %.sroa.0.0.i14, ptr %i.cm, align 8, !tbaa !35
  %i.cn = add nuw i32 %.030, 1                    ; 2 uses
  %i.co = icmp ult i32 %i.cn, %i.ba
  br i1 %i.co, label %bb.h, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1

bb.h:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16
  %i.cp = load ptr, ptr %2, align 8, !tbaa !7, !noalias !324
  %i.cq = zext i32 %i.cn to i64
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %.sroa.0.0.copyload.i15.1 = load i64, ptr %i.ct, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1

_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1:     ; preds = %bb.h, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16
  %.sroa.0.0.i14.1 = phi i64 [ %.sroa.0.0.copyload.i15.1, %bb.h ], [ -1688849860263936, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16 ]
  %i.cu = sext i32 %.030 to i64
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr [8 x i8], ptr %i.ao, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -64
  store i64 %.sroa.0.0.i14.1, ptr %i.cx, align 8, !tbaa !35
  %i.cy = add nuw i32 %.030, 2                    ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !327

bb.i:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.027.1 = phi i32 [ %i.bd, %bb.d ], [ %spec.select, %._crit_edge ]
  %.sroa.5.1 = phi i64 [ undef, %bb.d ], [ %spec.select29, %._crit_edge ]
  %i.cz = load i64, ptr %i.w, align 8, !tbaa !310
  %i.da = add i64 %i.cz, -1
  store i64 %i.da, ptr %i.w, align 8, !tbaa !310
  store ptr %i.v, ptr %i.u, align 8, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.027.2 = phi i32 [ %.sroa.027.1, %bb.i ], [ %i.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.5.2 = phi i64 [ %.sroa.5.1, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.027.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21functionPrototypeBindEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !328 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -1140850688
  %i.g = icmp ult i32 %i.f, 150994944
  %spec.select.i = select i1 %i.g, ptr %i.a, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.a, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.h = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !35 ; 2 uses
  %i.i = icmp ugt i64 %i.h, -844424930131969
  %i.j = and i64 %i.h, 281474976710655
  %i.k = icmp ne i64 %i.j, 0
  %i.l = and i1 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.n, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !41
  store ptr @.str.11, ptr %3, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !43
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.r = insertvalue { i32, i64 } poison, i32 %i.q, 0
  %i.s = insertvalue { i32, i64 } %i.r, i64 undef, 1
  br label %bb.c

bb.b:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !74
  store ptr %i.a, ptr %4, align 8, !tbaa !7, !alias.scope !331
  %i.v = call { i32, i64 } @_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.0.0.i, i32 noundef %i.u, ptr noundef nonnull dead_on_return %4) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.v, %bb.b ], [ %i.s, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, i32, ptr noundef, ptr noundef, i32 noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm34functionPrototypeSymbolHasInstanceEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !334 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call i32 @_ZN6hermes2vm19ordinaryHasInstanceERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, ptr nonnull %.sroa.02.0.i) #13 ; 2 uses
  %.mask = and i32 %i.e, 255
  %i.f = icmp ne i32 %.mask, 0                    ; 2 uses
  %i.g = lshr i32 %i.e, 8
  %.lobit = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit to i64
  %i.i = or disjoint i64 %i.h, -1407374883553280
  %.sroa.05.0 = zext i1 %i.f to i32
  %.sroa.3.0 = select i1 %i.f, i64 %i.i, i64 undef, !prof !58
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, i64 } @_ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare i64 @_ZNK6hermes2vm9CodeBlock19getFunctionSourceIDEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2
end_hunk_0
