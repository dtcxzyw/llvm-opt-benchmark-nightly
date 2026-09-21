Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/client?download=true
inline.NumInlined: 5006
inline.NumDeleted: 2353
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Client15inventoryActionEP15InventoryAction:bb.a
  tail call void @_ZN6Client19sendInventoryActionEP15InventoryAction(ptr noundef nonnull align 8 dereferenceable(1674) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %1, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.f = load ptr, ptr %1, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #39
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZThn8_N6Client15inventoryActionEP15InventoryAction(ptr noundef %0, ptr noundef %1) unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN6Client19sendInventoryActionEP15InventoryAction(ptr noundef nonnull align 8 dereferenceable(1674) %i.a, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %1, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !inline_history !1113
  %i.f = load ptr, ptr %1, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #39, !inline_history !1113
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN6Client13getCrackLevelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1674) %0) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.b = load i32, ptr %i.a, align 4, !tbaa !306
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZN6Client11getCrackPosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1674) %0) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %.sroa.0.0.copyload = load i48, ptr %i.a, align 8
  ret i48 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Client8setCrackEiN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(1674) %0, i32 noundef %1, i48 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.013.0.extract.trunc = trunc i48 %2 to i16 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i48 %2, 16
  %.sroa.5.0.extract.trunc = trunc i48 %.sroa.5.0.extract.shift to i16 ; 3 uses
  %.sroa.7.0.extract.shift = lshr i48 %2, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !306  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %.sroa.0.0.copyload10 = load i16, ptr %i.c, align 8, !tbaa !343 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 722 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 2 ; 3 uses
  %i.d = zext i32 %.sroa.6.0.copyload to i48
  %i.e = shl nuw i48 %i.d, 16
  %i.f = trunc i32 %.sroa.6.0.copyload to i16     ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.g = lshr i32 %.sroa.6.0.copyload, 16
  %i.h = trunc nuw i32 %i.g to i16                ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !306
  store i16 %.sroa.013.0.extract.trunc, ptr %i.c, align 8, !tbaa !343
  store i16 %.sroa.5.0.extract.trunc, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !343
  store i16 %.sroa.7.0.extract.trunc, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !343
  %i.i = icmp sgt i32 %i.b, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %1, 0
  %i.k = icmp ne i16 %.sroa.0.0.copyload10, %.sroa.013.0.extract.trunc
  %or.cond.not26 = select i1 %i.j, i1 true, i1 %i.k
  %i.l = icmp ne i16 %i.f, %.sroa.5.0.extract.trunc
  %or.cond18.not23 = select i1 %or.cond.not26, i1 true, i1 %i.l
  %i.m = icmp ne i16 %i.h, %.sroa.7.0.extract.trunc
  %or.cond19 = select i1 %or.cond18.not23, i1 true, i1 %i.m
  br i1 %or.cond19, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread, label %_ZNK4core8vector3dIsEneERKS1_.exit8

_ZNK4core8vector3dIsEneERKS1_.exit.thread:        ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0.copyload10 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %i.e, %.sroa.0.0.insert.ext
  tail call void @_ZN6Client24addUpdateMeshTaskForNodeEN4core8vector3dIsEEbb(ptr noundef nonnull align 8 dereferenceable(1674) %0, i48 %.sroa.0.0.insert.insert, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit.thread, %bb.a
  %i.n = icmp sgt i32 %1, -1
  br i1 %i.n, label %bb.d, label %_ZNK4core8vector3dIsEneERKS1_.exit8

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i32 %i.b, 0
  %i.p = icmp ne i16 %.sroa.0.0.copyload10, %.sroa.013.0.extract.trunc
  %or.cond20.not30 = select i1 %i.o, i1 true, i1 %i.p
  %i.q = icmp ne i16 %i.f, %.sroa.5.0.extract.trunc
  %or.cond21.not27 = select i1 %or.cond20.not30, i1 true, i1 %i.q
  %i.r = icmp ne i16 %i.h, %.sroa.7.0.extract.trunc
  %or.cond22 = select i1 %or.cond21.not27, i1 true, i1 %i.r
  br i1 %or.cond22, label %_ZNK4core8vector3dIsEneERKS1_.exit8.thread, label %_ZNK4core8vector3dIsEneERKS1_.exit8

_ZNK4core8vector3dIsEneERKS1_.exit8.thread:       ; preds = %bb.d
  tail call void @_ZN6Client24addUpdateMeshTaskForNodeEN4core8vector3dIsEEbb(ptr noundef nonnull align 8 dereferenceable(1674) %0, i48 %2, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZNK4core8vector3dIsEneERKS1_.exit8

_ZNK4core8vector3dIsEneERKS1_.exit8:              ; preds = %bb.b, %bb.d, %_ZNK4core8vector3dIsEneERKS1_.exit8.thread, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Client24addUpdateMeshTaskForNodeEN4core8vector3dIsEEbb(ptr noundef nonnull align 8 dereferenceable(1674) %0, i48 %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  store i48 %1, ptr %4, align 8
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.a, %bb.b
  %i.b = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !394, !nonnull !395, !align !396 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !24
  %.v.i = select i1 %i.f, i64 976, i64 984
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.126, ptr %i.a, align 8, !tbaa !397
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 2 dereferenceable(6) %4) ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !398  ; 5 uses
  %.not.i15 = icmp eq ptr %i.j, null
  br i1 %.not.i15, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZTW10infostream.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !399
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !398 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !66
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre55 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i64 [ %.pre55, %bb.d ], [ %i.m, %bb.c ]
  %i.s = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !82   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt16__throw_bad_castv() #40
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i8, ptr %i.w, align 8, !tbaa !88
  %.not.i1.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 67
  %i.z = load i8, ptr %i.y, align 1, !tbaa !89
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.v)
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.v, i8 noundef signext 10), !inline_history !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.z, %bb.g ], [ %i.ad, %bb.h ]
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef signext %.0.i.i.i)
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW10infostream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sroa.09.0.copyload = load i48, ptr %4, align 8 ; 4 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.09.0.copyload, 16
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.09.0.copyload to i16
  %5 = insertelement <2 x i16> poison, i16 %.sroa.2.0.extract.trunc.i.i, i64 0
  %6 = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %7 = insertelement <2 x i16> %5, i16 %6, i64 1  ; 2 uses
  %8 = sext <2 x i16> %7 to <2 x i32>             ; 2 uses
  %9 = add nsw <2 x i32> %8, splat (i32 -15)
  %10 = icmp slt <2 x i16> %7, zeroinitializer
  %11 = select <2 x i1> %10, <2 x i32> %9, <2 x i32> %8
  %12 = sdiv <2 x i32> %11, splat (i32 16)        ; 2 uses
  %i.ag = ashr i48 %.sroa.09.0.copyload, 32
  %i.ah = trunc nsw i48 %i.ag to i32              ; 2 uses
  %i.ai = add nsw i32 %i.ah, -15
  %i.aj = icmp slt i48 %.sroa.09.0.copyload, 0
  %i.ak = select i1 %i.aj, i32 %i.ai, i32 %i.ah
  %i.al = sdiv i32 %i.ak, 16                      ; 2 uses
  %13 = extractelement <2 x i32> %12, i64 0       ; 2 uses
  %.sroa.045.0.extract.trunc = trunc nsw i32 %13 to i16 ; 2 uses
  %14 = extractelement <2 x i32> %12, i64 1       ; 2 uses
  %.sroa.8.0.extract.trunc = trunc nsw i32 %14 to i16 ; 2 uses
  %.sroa.12.0.extract.trunc = trunc nsw i32 %i.al to i16 ; 2 uses
  %i.am = shl nsw i16 %.sroa.045.0.extract.trunc, 4
  %i.an = shl nsw i16 %.sroa.8.0.extract.trunc, 4
  %i.ao = shl nsw i16 %.sroa.12.0.extract.trunc, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !292
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.as = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ClientEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.ar)
  %.sroa.12.0.extract.trunc.mask = and i32 %i.al, 65535
  %.sroa.12.0.insert.ext = zext nneg i32 %.sroa.12.0.extract.trunc.mask to i48
  %.sroa.12.0.insert.shift = shl nuw i48 %.sroa.12.0.insert.ext, 32 ; 2 uses
  %i.at = shl nsw i32 %14, 16
  %.sroa.8.0.insert.shift = zext i32 %i.at to i48 ; 2 uses
  %.sroa.8.0.insert.insert = or disjoint i48 %.sroa.12.0.insert.shift, %.sroa.8.0.insert.shift ; 2 uses
  %.sroa.045.0.extract.trunc.mask = and i32 %13, 65535
  %.sroa.045.0.insert.ext = zext nneg i32 %.sroa.045.0.extract.trunc.mask to i48 ; 3 uses
  %.sroa.045.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.insert, %.sroa.045.0.insert.ext
  call void @_ZN17MeshUpdateManager11updateBlockEP3MapN4core8vector3dIsEEbbb(ptr noundef nonnull align 8 dereferenceable(520) %i.aq, ptr noundef nonnull %i.as, i48 %.sroa.045.0.insert.insert, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext false)
  %i.au = load i16, ptr %4, align 8, !tbaa !307
  %i.av = icmp eq i16 %i.au, %i.am
  br i1 %i.av, label %bb.i, label %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit

bb.i:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.aw = add nsw i16 %.sroa.045.0.extract.trunc, -1
  %.sroa.0.0.insert.ext.i21 = zext i16 %i.aw to i48
  %.sroa.0.0.insert.insert.i22 = or disjoint i48 %.sroa.8.0.insert.insert, %.sroa.0.0.insert.ext.i21 ; 2 uses
  %i.ax = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ClientEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.ar)
  %i.ay = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ax, i48 %.sroa.0.0.insert.insert.i22)
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !292
  %i.bb = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ClientEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.ar)
  call void @_ZN17MeshUpdateManager11updateBlockEP3MapN4core8vector3dIsEEbbb(ptr noundef nonnull align 8 dereferenceable(520) %i.ba, ptr noundef nonnull %i.bb, i48 %.sroa.0.0.insert.insert.i22, i1 noundef zeroext false, i1 noundef zeroext %3, i1 noundef zeroext false)
  br label %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit

_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit: ; preds = %bb.j, %bb.i, %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !308
  %i.be = icmp eq i16 %i.bd, %i.an
  br i1 %i.be, label %bb.k, label %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit30

bb.k:                                             ; preds = %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit
  %i.bf = add nsw i16 %.sroa.8.0.extract.trunc, -1
  %.sroa.2.0.insert.ext.i25 = zext i16 %i.bf to i48
  %.sroa.2.0.insert.shift.i26 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i25, 16
  %.sroa.2.0.insert.insert.i27 = or disjoint i48 %.sroa.2.0.insert.shift.i26, %.sroa.12.0.insert.shift
  %.sroa.0.0.insert.insert.i29 = or disjoint i48 %.sroa.2.0.insert.insert.i27, %.sroa.045.0.insert.ext ; 2 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ClientEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.ar)
  %i.bh = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.bg, i48 %.sroa.0.0.insert.insert.i29)
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit30, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !292
  %i.bk = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ClientEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.ar)
  call void @_ZN17MeshUpdateManager11updateBlockEP3MapN4core8vector3dIsEEbbb(ptr noundef nonnull align 8 dereferenceable(520) %i.bj, ptr noundef nonnull %i.bk, i48 %.sroa.0.0.insert.insert.i29, i1 noundef zeroext false, i1 noundef zeroext %3, i1 noundef zeroext false)
  br label %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit30

_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit30: ; preds = %bb.l, %bb.k, %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !309
  %i.bn = icmp eq i16 %i.bm, %i.ao
  br i1 %i.bn, label %bb.m, label %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit38

bb.m:                                             ; preds = %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit30
  %i.bo = add nsw i16 %.sroa.12.0.extract.trunc, -1
  %.sroa.3.0.insert.ext.i31 = zext i16 %i.bo to i48
  %.sroa.3.0.insert.shift.i32 = shl nuw i48 %.sroa.3.0.insert.ext.i31, 32
  %.sroa.2.0.insert.insert.i35 = or disjoint i48 %.sroa.3.0.insert.shift.i32, %.sroa.8.0.insert.shift
  %.sroa.0.0.insert.insert.i37 = or disjoint i48 %.sroa.2.0.insert.insert.i35, %.sroa.045.0.insert.ext ; 2 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ClientEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.ar)
  %i.bq = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.bp, i48 %.sroa.0.0.insert.insert.i37)
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit38, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !292
  %i.bt = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ClientEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.ar)
  call void @_ZN17MeshUpdateManager11updateBlockEP3MapN4core8vector3dIsEEbbb(ptr noundef nonnull align 8 dereferenceable(520) %i.bs, ptr noundef nonnull %i.bt, i48 %.sroa.0.0.insert.insert.i37, i1 noundef zeroext false, i1 noundef zeroext %3, i1 noundef zeroext false)
  br label %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit38

_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit38: ; preds = %bb.n, %bb.m, %_ZN6Client17addUpdateMeshTaskEN4core8vector3dIsEEbb.exit30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN6Client5getHPEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1674) %0) local_unnamed_addr #28 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !407
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.d = load i16, ptr %i.c, align 8, !tbaa !1114
  ret i16 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN6Client14getChatMessageERNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1674) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.432", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string.432", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string.432", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !611
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !611  ; 4 uses
  %i.e = icmp ne ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !613  ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1123
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %.not.i.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZNSt5queueIP11ChatMessageSt5dequeIS1_SaIS1_EEE3popEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1124
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef 512) #42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !380
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !614
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !382  ; 3 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !615
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  store ptr %i.q, ptr %i.g, align 8, !tbaa !616
  br label %_ZNSt5queueIP11ChatMessageSt5dequeIS1_SaIS1_EEE3popEv.exit

_ZNSt5queueIP11ChatMessageSt5dequeIS1_SaIS1_EEE3popEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ %i.j, %bb.c ], [ %i.p, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !617
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !493
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str.122, i64 noundef 0) ; 0 uses
  %i.u = load i32, ptr %i.f, align 8, !tbaa !620
  switch i32 %i.u, label %bb.w [
    i32 0, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZNSt5queueIP11ChatMessageSt5dequeIS1_SaIS1_EEE3popEv.exit, %_ZNSt5queueIP11ChatMessageSt5dequeIS1_SaIS1_EEE3popEv.exit, %_ZNSt5queueIP11ChatMessageSt5dequeIS1_SaIS1_EEE3popEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %bb.w

bb.f:                                             ; preds = %_ZNSt5queueIP11ChatMessageSt5dequeIS1_SaIS1_EEE3popEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !493  ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !426, !noalias !1125
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !494, !alias.scope !1126
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !493, !alias.scope !1126
  store i32 0, ptr %i.ab, align 8, !tbaa !496, !alias.scope !1126
  %i.ad = add i64 %i.x, 1
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ad)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !493, !alias.scope !1126
  %i.af = icmp eq i64 %i.ae, 1152921504606846975
  br i1 %i.af, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.123, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i.i unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !493, !alias.scope !1126
  %i.ai = sub i64 1152921504606846975, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.x
  br i1 %i.aj, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i.i, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.cont.i.i unwind label %bb.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i.i
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.aa, i64 noundef %i.x)
          to label %_ZStplIwSt11char_traitsIwESaIwEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !426, !alias.scope !1126 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ab
  br i1 %i.an, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !89, !alias.scope !1126
  %i.ap = shl i64 %i.ao, 2
  %i.aq = add i64 %i.ap, 4
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #42
end_hunk_0
