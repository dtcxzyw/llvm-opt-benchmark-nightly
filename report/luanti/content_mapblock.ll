Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_mapblock?download=true
inline.NumInlined: 881
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN21MapblockMeshGenerator17drawFencelikeNodeEv:bb.a
  br i1 %i.fe, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit18
  call void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEEPK8TileSpeciPKfh(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull byval(%"class.core::aabbox3d") align 8 @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE6bar_z1, ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef 1, ptr noundef nonnull @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE7zrailuv, i8 noundef zeroext 0)
  call void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEEPK8TileSpeciPKfh(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull byval(%"class.core::aabbox3d") align 8 @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE6bar_z2, ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef 1, ptr noundef nonnull @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE7zrailuv, i8 noundef zeroext 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14NodeDefManager3getERK7MapNode.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, i48 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.VoxelArea, align 8           ; 8 uses
  %.sroa.017.0.extract.trunc = trunc i48 %1 to i16
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i16, ptr %i.b, align 8, !tbaa !41
  %i.e = load i16, ptr %i.c, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.g = load i16, ptr %i.f, align 2, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.i = load i16, ptr %i.h, align 2, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i16, ptr %i.j, align 4, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = load i16, ptr %i.l, align 4, !tbaa !43
  %i.n = add i16 %i.d, %.sroa.017.0.extract.trunc
  %i.o = add i16 %i.n, %i.e                       ; 2 uses
  %i.p = add i16 %i.g, %.sroa.2.0.extract.trunc
  %i.q = add i16 %i.p, %i.i                       ; 2 uses
  %i.r = add i16 %i.k, %.sroa.3.0.extract.trunc
  %i.s = add i16 %i.r, %i.m                       ; 2 uses
  %.sroa.3.0.insert.ext.i4 = zext i16 %i.s to i48
  %.sroa.3.0.insert.shift.i5 = shl nuw i48 %.sroa.3.0.insert.ext.i4, 32
  %.sroa.2.0.insert.ext.i6 = zext i16 %i.q to i48
  %.sroa.2.0.insert.shift.i7 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i6, 16
  %.sroa.0.0.insert.ext.i9 = zext i16 %i.o to i48
  %i.t = or disjoint i48 %.sroa.2.0.insert.shift.i7, %.sroa.0.0.insert.ext.i9
  %.sroa.0.0.insert.insert.i10 = or disjoint i48 %.sroa.3.0.insert.shift.i5, %i.t ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i48 %.sroa.0.0.insert.insert.i10, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i48 %.sroa.0.0.insert.insert.i10, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.y = sext i16 %i.s to i32
  store i32 1, ptr %i.v, align 4, !tbaa !115
  store i32 1, ptr %i.w, align 8, !tbaa !115
  store i32 1, ptr %i.x, align 4, !tbaa !115
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %2)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !123
  %i.ac = sext i16 %i.ab to i32
  %i.ad = sub nsw i32 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !124
  %i.ah = mul nsw i32 %i.ad, %i.ag
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !125
  %i.aj = sext i16 %i.q to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !126
  %i.am = sext i16 %i.al to i32
  %i.an = add i32 %i.ah, %i.aj
  %i.ao = sub i32 %i.an, %i.am
  %i.ap = mul i32 %i.ao, %i.ai
  %i.aq = sext i16 %i.o to i32
  %i.ar = load i16, ptr %i.z, align 4, !tbaa !127
  %i.as = sext i16 %i.ar to i32
  %i.at = sub nsw i32 %i.aq, %i.as
  %i.au = add nsw i32 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !128
  %i.ax = sext i32 %i.au to i64                   ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !55
  %i.ba = and i8 %i.az, 1
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %bb.b, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !129
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ax
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = trunc i32 %i.be to i16
  br label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i11 = phi i16 [ %i.bf, %bb.b ], [ 127, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !121
  %i.bi = icmp eq i16 %.sroa.0.0.insert.insert.i11, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40 ; 2 uses
  %i.bl = zext i16 %.sroa.0.0.insert.insert.i11 to i64 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !132
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !133 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 2080
  %i.bu = icmp ugt i64 %i.bt, %i.bl
  br i1 %i.bu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw [2080 x i8], ptr %i.bp, i64 %i.bl ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !134
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.e, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.d, %bb.e
  %i.ca = phi ptr [ %i.bz, %bb.e ], [ %i.bv, %bb.d ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 98
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !130
  %i.cd = icmp eq i8 %i.cc, 11
  br i1 %i.cd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cf = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E) ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !167
  br label %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ci, %bb.g ], [ 0, %bb.f ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !168
  %i.cl = icmp eq i32 %.0.i.i, %i.ck
  br label %bb.h

bb.h:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %.0 = phi i1 [ true, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit ], [ false, %_ZNK14NodeDefManager3getERK7MapNode.exit ], [ %i.cl, %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator16drawRaillikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) initializes((456, 460)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %struct.TileSpec, align 8           ; 22 uses
  %2 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 14 uses
  %3 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !167
  br label %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %.0.i.i, ptr %i.h, align 8, !tbaa !168
  %i.i = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 4295032832) ; 4 uses
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.j = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 4294967296)
  br i1 %i.j, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 8589869056)
  br i1 %i.k, label %.critedge, label %bb.e

.critedge:                                        ; preds = %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.c, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %.1 = phi i32 [ 1, %.critedge ], [ 0, %bb.d ]   ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 -4294901760)
  br i1 %i.l, label %.critedge.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 -4294967296)
  br i1 %i.m, label %.critedge.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 -65536)
  br i1 %i.n, label %.critedge.1, label %bb.h

.critedge.1:                                      ; preds = %bb.e, %bb.g, %bb.f
  %.13358.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 180, %bb.e ]
  %.13655.1 = phi i1 [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ true, %bb.e ]
  %4 = or disjoint i32 %.1, 2
  br label %bb.h

bb.h:                                             ; preds = %.critedge.1, %bb.g
  %.13357.1 = phi i32 [ %.13358.1, %.critedge.1 ], [ 0, %bb.g ] ; 3 uses
  %.13654.1 = phi i1 [ %.13655.1, %.critedge.1 ], [ %i.i, %bb.g ] ; 3 uses
  %.1.1 = phi i32 [ %4, %.critedge.1 ], [ %.1, %bb.g ] ; 2 uses
  %i.o = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 131071)
  br i1 %i.o, label %.critedge.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 65535)
  br i1 %i.p, label %.critedge.2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 4294967295)
  br i1 %i.q, label %.critedge.2, label %bb.k

.critedge.2:                                      ; preds = %bb.h, %bb.j, %bb.i
  %.13358.2 = phi i32 [ %.13357.1, %bb.j ], [ %.13357.1, %bb.i ], [ 90, %bb.h ]
  %.13655.2 = phi i1 [ %.13654.1, %bb.j ], [ %.13654.1, %bb.i ], [ true, %bb.h ]
  %5 = or i32 %.1.1, 4
  br label %bb.k

bb.k:                                             ; preds = %.critedge.2, %bb.j
  %.13357.2 = phi i32 [ %.13358.2, %.critedge.2 ], [ %.13357.1, %bb.j ] ; 2 uses
  %.13654.2 = phi i1 [ %.13655.2, %.critedge.2 ], [ %.13654.1, %bb.j ] ; 2 uses
  %.1.2 = phi i32 [ %5, %.critedge.2 ], [ %.1.1, %bb.j ] ; 2 uses
  %i.r = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 65537)
  br i1 %i.r, label %.critedge.3.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 1)
  br i1 %i.s, label %.critedge.3, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 4294901761)
  br i1 %i.t, label %.critedge.3, label %bb.n

.critedge.3:                                      ; preds = %bb.m, %bb.l
  %6 = or i32 %.1.2, 8
  br i1 %.13654.2, label %.critedge.3.thread, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %.13654.2, label %.critedge.3.thread, label %bb.o

bb.o:                                             ; preds = %.critedge.3, %bb.n
  %.1.365 = phi i32 [ %6, %.critedge.3 ], [ %.1.2, %bb.n ]
  %7 = zext nneg i32 %.1.365 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_110rail_kindsE, i64 %7 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !236
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !237
  %i.y = trunc i32 %i.v to i8
  br label %.critedge.3.thread

.critedge.3.thread:                               ; preds = %bb.k, %.critedge.3, %bb.n, %bb.o
  %i.z = phi float [ -4.843750e+00, %bb.o ], [ 5.156250e+00, %bb.n ], [ 5.156250e+00, %.critedge.3 ], [ 5.156250e+00, %bb.k ] ; 2 uses
  %.034 = phi i8 [ %i.y, %bb.o ], [ 0, %bb.n ], [ 0, %.critedge.3 ], [ 0, %bb.k ]
  %.2 = phi i32 [ %i.x, %bb.o ], [ %.13357.2, %bb.n ], [ %.13357.2, %.critedge.3 ], [ -90, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i8 0, ptr %1, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !48
  %.ptr.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.ab, align 2, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 0, ptr %i.ac, align 4, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 2 uses
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.ad, align 2, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.af, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 0, ptr %i.ah, align 4, !tbaa !57
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.ai, align 2, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %i.aj, align 4, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 79 ; 2 uses
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.ak, align 2, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.am, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 0, ptr %i.an, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 0, ptr %i.ao, align 4, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %0, align 8, !tbaa !31
  call void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.ap, i8 noundef zeroext %.034, ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.as = load i8, ptr %i.ae, align 1, !tbaa !109
  %i.at = and i8 %i.as, -2
  store i8 %i.at, ptr %i.ae, align 1, !tbaa !109
  %i.au = load i8, ptr %i.al, align 1, !tbaa !109
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.al, align 1, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store float -5.000000e+00, ptr %2, align 16, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.z, ptr %i.aw, align 4, !tbaa !118
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <2 x float> splat (float 5.000000e+00), ptr %i.ax, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.z, ptr %i.ay, align 16, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 20
  store <4 x float> <float 5.000000e+00, float 5.000000e+00, float -4.843750e+00, float -5.000000e+00>, ptr %i.az, align 4, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36
  store <2 x float> <float -5.000000e+00, float -4.843750e+00>, ptr %i.ba, align 4, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float -5.000000e+00, ptr %i.bb, align 4, !tbaa !45
  %.not = icmp eq i32 %.2, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge.3.thread
  %i.bc = sitofp nsz i32 %.2 to double
  %i.bd = fmul nnan nsz double %i.bc, f0x3F91DF46A2529D39
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.bd) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bf = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %sin.i, i64 1 ; 5 uses
  %i.bh = fmul nsz <2 x double> %i.bg, <double 5.000000e+00, double -5.000000e+00> ; 2 uses
  %i.bi = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> <double -5.000000e+00, double 5.000000e+00>, <2 x double> %i.bh)
  %i.bk = fptrunc <2 x double> %i.bj to <2 x float>
  store <2 x float> %i.bk, ptr %i.ax, align 8, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bm = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %cos.i, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bp = fmul nsz <2 x double> %i.bg, <double -5.000000e+00, double 5.000000e+00> ; 2 uses
  %i.bq = fmul nsz <2 x double> %i.bg, splat (double 5.000000e+00)
  %i.br = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> splat (double 5.000000e+00), <2 x double> %i.bq)
  %i.bs = fptrunc <2 x double> %i.br to <2 x float>
  store <2 x float> %i.bs, ptr %i.be, align 4, !tbaa !44
  %i.bt = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> <double 5.000000e+00, double -5.000000e+00>, <2 x double> %i.bp)
  %i.bu = fptrunc <2 x double> %i.bt to <2 x float>
  %i.bv = shufflevector <2 x double> %i.bh, <2 x double> %i.bp, <2 x i32> <i32 1, i32 2>
  %i.bw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> splat (double -5.000000e+00), <2 x double> %i.bv)
  %i.bx = fptrunc <2 x double> %i.bw to <2 x float> ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  store float %i.by, ptr %2, align 16, !tbaa !117
  store <2 x float> %i.bu, ptr %i.bl, align 16, !tbaa !44
  %i.bz = extractelement <2 x float> %i.bx, i64 1
  store float %i.bz, ptr %i.bo, align 4, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.critedge.3.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i16 0, ptr %3, align 2, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.ca, align 2, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 0, ptr %i.cb, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %2, ptr noundef nonnull align 2 dereferenceable(6) %3, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator16drawAllfacesNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #4 align 2 {
.preheader:
  %1 = alloca %"class.core::vector3d", align 8    ; 4 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 24 uses
  %3 = alloca [6 x %struct.TileSpec], align 16    ; 100 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 0, ptr %3, align 16, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !48
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.b, align 2, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 0, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 30
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.d, align 2, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.f, align 16, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i8 0, ptr %i.g, align 4, !tbaa !57
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.h, align 2, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i16 0, ptr %i.i, align 4, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 78
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.j, align 2, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 0, ptr %i.l, align 16, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i8 0, ptr %i.m, align 4, !tbaa !57
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store i8 0, ptr %.ptr.1, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 105
  store i8 0, ptr %i.n, align 1, !tbaa !48
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %.ptr.i.1, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.o, align 2, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 132
  store i16 0, ptr %i.p, align 4, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 134
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.q, align 2, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr null, ptr %i.r, align 16, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i32 0, ptr %i.s, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i8 0, ptr %i.t, align 4, !tbaa !57
  %.ptr.1.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %.ptr.1.i.1, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.u, align 2, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 180
  store i16 0, ptr %i.v, align 4, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 182
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.w, align 2, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr null, ptr %i.x, align 16, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i32 0, ptr %i.y, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 204
  store i8 0, ptr %i.z, align 4, !tbaa !57
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i8 0, ptr %.ptr.2, align 16, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 209
  store i8 0, ptr %i.aa, align 1, !tbaa !48
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i.2, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.ab, align 2, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 236
end_hunk_0
