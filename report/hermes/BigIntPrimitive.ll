inline.NumInlined: 309
inline.NumDeleted: 127
begin_hunk_0_@_ZN6hermes2vm15BigIntPrimitive8toStringERNS0_7RuntimeENS0_12PseudoHandleIS1_EEh:bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.f, i64 %i.g) #8
  %i.i = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !tbaa !37
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret { i32, i64 } %i.h
}

declare void @_ZN6hermes6bigint8toStringB5cxx11ENS0_18ImmutableBigIntRefEh(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i32, i8 noundef zeroext) local_unnamed_addr #4

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #4

declare { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive6asIntNERNS0_7RuntimeEmNS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i64 noundef %1, ptr readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.e, %i.g
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.i = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, i32 noundef 16) #8
  br label %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.c, align 8, !tbaa !31
  br label %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit

_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit: ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.d, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 1, ptr %i.k, align 4, !tbaa !27
  store i32 1291845648, ptr %i.j, align 4, !tbaa !37
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = call noundef i32 @_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE(ptr nonnull %i.m, ptr nonnull %i.k, ptr nonnull %i.a, i64 4) #8
  %i.o = call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.n)
  %i.p = or i64 %i.l, -562949953421312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint6asIntNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.e:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !51
  %i.q = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3, !noalias !52
  %i.v = tail call noundef i32 @_ZN6hermes6bigint16asIntNResultSizeEmNS0_18ImmutableBigIntRefE(i64 noundef %1, ptr nonnull %i.s, i32 %i.u) #8 ; 3 uses
  %i.w = icmp ugt i32 %i.v, 1024
  br i1 %i.w, label %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, label %bb.f

_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 28, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !42
  store ptr @.str.2, ptr %3, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.aa, align 8, !tbaa !43
  %i.ab = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint6asIntNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = shl nuw nsw i32 %i.v, 3
  %i.ad = add nuw nsw i32 %i.ac, 8                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %i.ag = zext nneg i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.ah, %i.aj
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.g, label %bb.h, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.al = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ak, i32 noundef %i.ad) #8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = phi ptr [ %i.al, %bb.g ], [ %i.af, %bb.h ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store i32 %i.v, ptr %i.an, align 4, !tbaa !27
  %i.ao = or disjoint i32 %i.ad, 1291845632
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !51
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3, !noalias !55
  %i.av = tail call noundef i32 @_ZN6hermes6bigint6asIntNENS0_16MutableBigIntRefEmNS0_18ImmutableBigIntRefE(ptr nonnull %i.ap, ptr nonnull %i.an, i64 noundef range(i64 1, 0) %1, ptr nonnull %i.as, i32 %i.au) #8 ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !44

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.av)
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint6asIntNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = ptrtoint ptr %i.am to i64
  %i.ay = or i64 %i.ax, -562949953421312
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint6asIntNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint6asIntNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit: ; preds = %bb.k, %bb.j, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit
  %.pn14 = phi i32 [ %i.o, %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit ], [ %i.aw, %bb.j ], [ 1, %bb.k ], [ 0, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.pn12 = phi i64 [ %i.p, %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit ], [ undef, %bb.j ], [ %i.ay, %bb.k ], [ undef, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.fca.0.insert.i4.i.pn = insertvalue { i32, i64 } poison, i32 %.pn14, 0
  %.pn = insertvalue { i32, i64 } %.fca.0.insert.i4.i.pn, i64 %.pn12, 1
  ret { i32, i64 } %.pn
}

declare noundef i32 @_ZN6hermes6bigint16asIntNResultSizeEmNS0_18ImmutableBigIntRefE(i64 noundef, ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive7asUintNERNS0_7RuntimeEmNS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i64 noundef %1, ptr readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.f, %i.h
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.j = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.i, i32 noundef 16) #8
  br label %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit

bb.d:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.d, align 8, !tbaa !31
  br label %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit

_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit: ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.d ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 1, ptr %i.l, align 4, !tbaa !27
  store i32 1291845648, ptr %i.k, align 4, !tbaa !37
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = call noundef i32 @_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE(ptr nonnull %i.n, ptr nonnull %i.l, ptr nonnull %i.a, i64 4) #8
  %i.p = call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.o)
  %i.q = or i64 %i.m, -562949953421312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !51
  %i.r = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3, !noalias !58
  %i.w = call noundef i32 @_ZN6hermes6bigint17asUintNResultSizeEmNS0_18ImmutableBigIntRefERj(i64 noundef %1, ptr nonnull %i.t, i32 %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #8 ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.l, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.b, align 4, !tbaa !3    ; 3 uses
  %i.y = icmp ugt i32 %i.x, 1024
  br i1 %i.y, label %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, label %bb.g

_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 28, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !42
  store ptr @.str.2, ptr %3, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ac, align 8, !tbaa !43
  %i.ad = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint7asUintNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = shl nuw nsw i32 %i.x, 3
  %i.af = add nuw nsw i32 %i.ae, 8                ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.aj, %i.al
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.an = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.am, i32 noundef %i.af) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.ah, %bb.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  store i32 %i.x, ptr %i.ap, align 4, !tbaa !27
  %i.aq = or disjoint i32 %i.af, 1291845632
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !51
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3, !noalias !61
  %i.ax = call noundef i32 @_ZN6hermes6bigint7asUintNENS0_16MutableBigIntRefEmNS0_18ImmutableBigIntRefE(ptr nonnull %i.ar, ptr nonnull %i.ap, i64 noundef range(i64 1, 0) %1, ptr nonnull %i.au, i32 %i.aw) #8 ; 2 uses
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.k, label %bb.l, !prof !44

bb.k:                                             ; preds = %bb.j
  %4 = ptrtoint ptr %i.ao to i64
  %5 = or i64 %4, -562949953421312
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint7asUintNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.l:                                             ; preds = %bb.j, %bb.e
  %.sink = phi i32 [ %i.w, %bb.e ], [ %i.ax, %bb.j ]
  %6 = call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %.sink)
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint7asUintNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint7asUintNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit: ; preds = %bb.l, %bb.k, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i
  %.sroa.012.0 = phi i32 [ 1, %bb.k ], [ 0, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ], [ %6, %bb.l ]
  %.sroa.413.0 = phi i64 [ %5, %bb.k ], [ undef, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ], [ undef, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint7asUintNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit, %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit
  %.sroa.012.1 = phi i32 [ %i.p, %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit ], [ %.sroa.012.0, %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint7asUintNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit ]
  %.sroa.413.1 = phi i64 [ %i.q, %_ZN6hermes2vm15BigIntPrimitive10fromSignedIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEE4typeERNS0_7RuntimeES4_.exit ], [ %.sroa.413.0, %_ZN6hermes2vm15BigIntPrimitive7unaryOpIZNS0_L16makeTruncAdapterITnDaXadL_ZNS_6bigint7asUintNENS4_16MutableBigIntRefEmNS4_18ImmutableBigIntRefEEEEEDamEUlS5_S6_E_EENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.012.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.413.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes6bigint17asUintNResultSizeEmNS0_18ImmutableBigIntRefERj(i64 noundef, ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive10unaryMinusERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %i.f = tail call noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl(ptr nonnull %i.c, i32 %i.e, i64 noundef 0) #8
  %i.g = icmp eq i32 %i.f, 0
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i64 %i.h, -562949953421312
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIPFNS_6bigint15OperationStatusENS3_16MutableBigIntRefENS3_18ImmutableBigIntRefEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !64
  %i.n = tail call noundef i32 @_ZN6hermes6bigint20unaryMinusResultSizeENS0_18ImmutableBigIntRefE(ptr nonnull %i.k, i32 %i.m) #8 ; 3 uses
  %i.o = icmp ugt i32 %i.n, 1024
  br i1 %i.o, label %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, label %bb.d

_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.p, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 28, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !42
  store ptr @.str.2, ptr %2, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.s, align 8, !tbaa !43
  %i.t = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIPFNS_6bigint15OperationStatusENS3_16MutableBigIntRefENS3_18ImmutableBigIntRefEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.d:                                             ; preds = %bb.c
  %i.u = shl nuw nsw i32 %i.n, 3
  %i.v = add nuw nsw i32 %i.u, 8                  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.y = zext nneg i32 %i.v to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.z, %i.ab
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ad = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ac, i32 noundef %i.v) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.z, ptr %i.w, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.e ], [ %i.x, %bb.f ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  store i32 %i.n, ptr %i.af, align 4, !tbaa !27
  %i.ag = or disjoint i32 %i.v, 1291845632
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0.0.copyload.i.i.i5 = load i64, ptr %1, align 8, !tbaa !51
  %i.ai = and i64 %.sroa.0.0.copyload.i.i.i5, 281474976710655
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !67
  %i.an = tail call noundef i32 @_ZN6hermes6bigint10unaryMinusENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE(ptr nonnull %i.ah, ptr nonnull %i.af, ptr nonnull %i.ak, i32 %i.am) #8, !inline_history !70 ; 2 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.an)
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIPFNS_6bigint15OperationStatusENS3_16MutableBigIntRefENS3_18ImmutableBigIntRefEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.ae to i64
  %i.aq = or i64 %i.ap, -562949953421312
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIPFNS_6bigint15OperationStatusENS3_16MutableBigIntRefENS3_18ImmutableBigIntRefEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

_ZN6hermes2vm15BigIntPrimitive7unaryOpIPFNS_6bigint15OperationStatusENS3_16MutableBigIntRefENS3_18ImmutableBigIntRefEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit: ; preds = %bb.i, %bb.h, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, %bb.b
  %.sroa.09.0 = phi i32 [ 1, %bb.b ], [ %i.ao, %bb.h ], [ 1, %bb.i ], [ 0, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.sroa.3.0 = phi i64 [ %i.i, %bb.b ], [ undef, %bb.h ], [ %i.aq, %bb.i ], [ undef, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes6bigint20unaryMinusResultSizeENS0_18ImmutableBigIntRefE(ptr, i32) local_unnamed_addr #4

declare noundef i32 @_ZN6hermes6bigint10unaryMinusENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE(ptr, ptr, ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive8unaryNOTERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !71
  %i.f = tail call noundef i32 @_ZN6hermes6bigint18unaryNotResultSizeENS0_18ImmutableBigIntRefE(ptr nonnull %i.c, i32 %i.e) #8 ; 3 uses
  %i.g = icmp ugt i32 %i.f, 1024
  br i1 %i.g, label %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, label %bb.b

_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 28, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !42
  store ptr @.str.2, ptr %2, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.k, align 8, !tbaa !43
  %i.l = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIPFNS_6bigint15OperationStatusENS3_16MutableBigIntRefENS3_18ImmutableBigIntRefEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.b:                                             ; preds = %bb.a
  %i.m = shl nuw nsw i32 %i.f, 3
  %i.n = add nuw nsw i32 %i.m, 8                  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.r, %i.t
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.v = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.u, i32 noundef %i.n) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.r, ptr %i.o, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ %i.v, %bb.c ], [ %i.p, %bb.d ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store i32 %i.f, ptr %i.x, align 4, !tbaa !27
  %i.y = or disjoint i32 %i.n, 1291845632
  store i32 %i.y, ptr %i.w, align 4, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3, !noalias !74
  %i.af = tail call noundef i32 @_ZN6hermes6bigint8unaryNotENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE(ptr nonnull %i.z, ptr nonnull %i.x, ptr nonnull %i.ac, i32 %i.ae) #8, !inline_history !70 ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.af)
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIPFNS_6bigint15OperationStatusENS3_16MutableBigIntRefENS3_18ImmutableBigIntRefEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.w to i64
  %i.ai = or i64 %i.ah, -562949953421312
  br label %_ZN6hermes2vm15BigIntPrimitive7unaryOpIPFNS_6bigint15OperationStatusENS3_16MutableBigIntRefENS3_18ImmutableBigIntRefEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit

_ZN6hermes2vm15BigIntPrimitive7unaryOpIPFNS_6bigint15OperationStatusENS3_16MutableBigIntRefENS3_18ImmutableBigIntRefEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeET_NS0_6HandleIS1_EEm.exit: ; preds = %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i, %bb.f, %bb.g
  %.sroa.015.0.i = phi i32 [ %i.ag, %bb.f ], [ 1, %bb.g ], [ 0, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.sroa.416.0.i = phi i64 [ undef, %bb.f ], [ %i.ai, %bb.g ], [ undef, %_ZN6hermes2vm15BigIntPrimitive32createUninitializedWithNumDigitsERNS0_7RuntimeEj.exit.thread.i ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.015.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.416.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

end_hunk_0
