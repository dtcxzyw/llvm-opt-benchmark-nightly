inline.NumInlined: 864
inline.NumDeleted: 421
begin_hunk_0_@_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i71, i64 %.170.i68 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %.0.copyload.i.i28 = load i64, ptr %i.cc, align 1
  %i.cd = xor i64 %.0.copyload.i.i28, %.170.i68
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %.0.copyload.i.i29 = load i64, ptr %i.ce, align 1
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit: ; preds = %bb.d, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit, %bb.e, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12
  %.064 = phi i64 [ %.0.copyload.i.i15, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.l, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.0.copyload.i.i29, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.w, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %.0.copyload.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.k, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %i.cd, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.s, %bb.e ], [ 0, %bb.d ]
  %.271.i = phi i64 [ %i.c, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.c, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.170.i68, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.c, %bb.e ], [ 0, %bb.d ]
  %.3.i = phi i64 [ %i.g, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.g, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.2.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ 4766890152743124950, %bb.e ], [ 4766890152743124950, %bb.d ]
  %i.cf = xor i64 %.0, -8378864009470890807
  %i.cg = xor i64 %.3.i, %.064
  %i.ch = zext i64 %i.cf to i128
  %i.ci = zext i64 %i.cg to i128
  %i.cj = mul nuw i128 %i.ci, %i.ch               ; 2 uses
  %i.ck = trunc i128 %i.cj to i64
  %i.cl = lshr i128 %i.cj, 64
  %i.cm = trunc nuw i128 %i.cl to i64
  %i.cn = xor i64 %i.ck, -6148914691236517206
  %i.co = xor i64 %.271.i, %i.cm
  %i.cp = xor i64 %i.co, -8378864009470890807
  %i.cq = zext i64 %i.cn to i128
  %i.cr = zext i64 %i.cp to i128
  %i.cs = mul nuw i128 %i.cr, %i.cq               ; 2 uses
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = xor i128 %i.ct, %i.cs
  %i.cv = trunc i128 %i.cu to i64
  ret i64 %i.cv
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5folly8settings21FrozenSettingProjectsC2ENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !140
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !140
  store ptr null, ptr %1, align 8, !tbaa !32
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63
  store i64 %i.f, ptr %i.b, align 8, !tbaa !63
  store i64 0, ptr %i.e, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly8settings21FrozenSettingProjects8containsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31
  %i.d = icmp ult i64 %i.c, 256
  br i1 %i.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 3 uses
  %i.f = lshr i64 %i.e, 56
  %i.g = or i64 %i.f, 128                         ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.j = trunc nuw i64 %i.g to i8
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !31
  %i.n = and i64 %i.m, 255                        ; 3 uses
  %i.o = shl nuw i64 1, %i.n                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i64, ptr %3, align 8
  %.fr36 = freeze i64 %i.t                        ; 3 uses
  %i.u = icmp eq i64 %.fr36, 0
  br i1 %i.u, label %.split.us, label %.split, !llvm.loop !132

.split.us:                                        ; preds = %bb.b, %bb.c
  %.0.i33.us = phi i64 [ %i.ae, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.022.i32.us = phi i64 [ %i.ad, %bb.c ], [ %i.o, %bb.b ]
  %i.v = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i33.us, i64 range(i64 0, 256) %i.n)
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.v ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.l
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 4095                      ; 2 uses
  %.not30.us = icmp eq i16 %i.aa, 0
  %i.ab = extractelement <16 x i8> %i.x, i64 15
  br i1 %.not30.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split.us
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.ad = add i64 %.022.i32.us, -1                ; 2 uses
  %i.ae = add i64 %i.i, %.0.i33.us
  %.not.i.us = icmp eq i64 %i.ad, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.split.us, !llvm.loop !133

.lr.ph.us:                                        ; preds = %.split.us
  %i.af = zext nneg i16 %i.aa to i32
  %i.ag = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.07.031.us.us = phi i32 [ %i.af, %.lr.ph.us ], [ %i.ar, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ai = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.031.us.us, i1 true)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !52
  %.not.i.i.i.us.us = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.critedge.i.backedge.us.us, !prof !30

.critedge.i.backedge.us.us:                       ; preds = %bb.d
  %i.aq = add nsw i32 %.sroa.07.031.us.us, -1
  %i.ar = and i32 %i.aq, %.sroa.07.031.us.us      ; 2 uses
  %.not.us.us = icmp eq i32 %i.ar, 0
  br i1 %.not.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.d, !llvm.loop !132

.split:                                           ; preds = %bb.b, %bb.g
  %.0.i33 = phi i64 [ %i.bq, %bb.g ], [ %i.e, %bb.b ] ; 2 uses
  %.022.i32 = phi i64 [ %i.bp, %bb.g ], [ %i.o, %bb.b ]
  %i.as = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i33, i64 range(i64 0, 256) %i.n)
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.as ; 3 uses
  %i.au = load <16 x i8>, ptr %i.at, align 16     ; 2 uses
  %i.av = icmp eq <16 x i8> %i.au, %i.l
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = and i16 %i.aw, 4095                     ; 2 uses
  %.not30 = icmp eq i16 %i.ax, 0
  %i.ay = extractelement <16 x i8> %i.au, i64 15
  br i1 %.not30, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.az = zext nneg i16 %i.ax to i32
  %i.ba = icmp ne ptr %i.at, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.07.031 = phi i32 [ %i.az, %.lr.ph ], [ %i.be, %.critedge.i.backedge ] ; 3 uses
  %i.bc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.031, i1 true)
  %i.bd = add nsw i32 %.sroa.07.031, -1
  %i.be = and i32 %i.bd, %.sroa.07.031            ; 2 uses
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !52
  %.not.i.i.i = icmp eq i64 %.fr36, %i.bl
  br i1 %.not.i.i.i, label %bb.f, label %.critedge.i.backedge, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !47
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.s, ptr %i.bm, i64 %.fr36)
  %i.bn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.critedge.i.backedge, !prof !59

.critedge.i.backedge:                             ; preds = %bb.f, %bb.e
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !132

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split
  %i.bo = icmp eq i8 %i.ay, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.g, !prof !29

bb.g:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bp = add i64 %.022.i32, -1                   ; 2 uses
  %i.bq = add i64 %i.i, %.0.i33
  %.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.split, !llvm.loop !133

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit: ; preds = %bb.g, %.critedge.i._crit_edge.split, %bb.f, %bb.c, %.critedge.i._crit_edge.split.us.us, %bb.d, %bb.a
  %.sroa.06.0 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.c ], [ false, %.critedge.i._crit_edge.split.us.us ], [ false, %.critedge.i._crit_edge.split ], [ false, %bb.g ]
  ret i1 %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly8settings21frozenSettingProjectsEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::settings::FrozenSettingProjects") align 8 %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::F14FastSet", align 16 ; 10 uses
  %2 = alloca %"class.folly::F14FastSet", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = load atomic i8, ptr @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i8 0, i64 32, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 8), align 8, !tbaa !12
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11) #21
  br label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit

_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @_ZNK5folly12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEE4copyEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastSet") align 8 %1, ptr noundef nonnull align 8 dereferenceable(28) @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load <2 x ptr>, ptr %1, align 16, !tbaa !140
  store ptr null, ptr %1, align 16, !tbaa !32
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !140
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !63
  store i64 %i.i, ptr %i.e, align 16, !tbaa !63
  store i64 0, ptr %i.h, align 16, !tbaa !63
  invoke void @_ZN5folly8settings21FrozenSettingProjectsC1ENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !141
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.e, align 16, !tbaa !31  ; 3 uses
  %i.o = lshr i64 %i.n, 8                         ; 2 uses
  %i.p = and i64 %i.n, 255
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.q, align 1
  %i.r = zext i16 %.0.copyload.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %i.p
  %i.s = xor i64 %notmask.i.i, -1
  %i.t = lshr i64 %i.s, 12
  %i.u = add nuw nsw i64 %i.t, 1
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi i64 [ %i.ab, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %3 = load ptr, ptr %2, align 16, !tbaa !32
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.05.i.i.i ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !45
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #30
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ab = add nuw nsw i64 %.05.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.o
  br i1 %exitcond.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !144

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.e, align 16, !tbaa !31
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.e
  %i.ac = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 256
  br i1 %i.ad, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.ae = and i64 %i.ac, 255                      ; 2 uses
  store i64 %i.ae, ptr %i.e, align 16, !tbaa !31
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.f, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.af = phi i64 [ %i.ac, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ah, align 1
  %i.ai = zext i16 %.0.copyload.i.i to i64
  %i.aj = icmp eq i64 %i.af, 0
  %i.ak = shl nuw nsw i64 %i.ai, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.ak
  %.neg18.i = shl i64 -64, %i.af
  %.0.i.neg.i = select i1 %i.aj, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.d, align 8, !tbaa !12
  store i64 0, ptr %i.e, align 16, !tbaa !31
  %i.al = and i64 %.0.i.neg.i, -8
  %i.am = shl nuw nsw i64 %i.r, 5
  %i.an = mul i64 %i.am, %i.u
  %i.ao = sub i64 %i.an, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ao) #21
  store ptr null, ptr %2, align 16, !tbaa !32
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %bb.d, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !12  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 15
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !141
  %i.as = icmp eq i8 %i.ar, -1
  br i1 %i.as, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit18, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit
  %i.at = load i64, ptr %i.h, align 16, !tbaa !31 ; 3 uses
  %i.au = lshr i64 %i.at, 8                       ; 2 uses
  %i.av = and i64 %i.at, 255
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %.0.copyload.i.i.i1 = load i16, ptr %i.aw, align 1
  %i.ax = zext i16 %.0.copyload.i.i.i1 to i64
  %notmask.i.i2 = shl nsw i64 -1, %i.av
  %i.ay = xor i64 %notmask.i.i2, -1
  %i.az = lshr i64 %i.ay, 12
  %i.ba = add nuw nsw i64 %i.az, 1
  %.not.i.i.i3 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i3, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i11, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %bb.g, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7
  %.05.i.i.i5 = phi i64 [ %i.bh, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7 ], [ 0, %bb.g ] ; 2 uses
  %4 = load ptr, ptr %1, align 16, !tbaa !32
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.05.i.i.i5 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6: ; preds = %.lr.ph.i.i.i4
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !45
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #30
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7: ; preds = %.lr.ph.i.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6
  %i.bh = add nuw nsw i64 %.05.i.i.i5, 1          ; 2 uses
  %exitcond.not.i.i.i8 = icmp eq i64 %i.bh, %i.au
  br i1 %exitcond.not.i.i.i8, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i9, label %.lr.ph.i.i.i4, !llvm.loop !144

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i9: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7
  %.pre.i10 = load i64, ptr %i.h, align 16, !tbaa !31
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i11

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i11: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i9, %bb.g
  %i.bi = phi i64 [ %.pre.i10, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i9 ], [ %i.at, %bb.g ] ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 256
  br i1 %i.bj, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i12, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i11
  %i.bk = and i64 %i.bi, 255                      ; 2 uses
  store i64 %i.bk, ptr %i.h, align 16, !tbaa !31
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i12

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i12: ; preds = %bb.h, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i11
  %i.bl = phi i64 [ %i.bi, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i11 ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !12  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %.0.copyload.i.i13 = load i16, ptr %i.bn, align 1
  %i.bo = zext i16 %.0.copyload.i.i13 to i64
  %i.bp = icmp eq i64 %i.bl, 0
  %i.bq = shl nuw nsw i64 %i.bo, 2
  %.neg17.i14 = sub nuw nsw i64 -16, %i.bq
  %.neg18.i15 = shl i64 -64, %i.bl
  %.0.i.neg.i16 = select i1 %i.bp, i64 %.neg17.i14, i64 %.neg18.i15
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !12
  store i64 0, ptr %i.h, align 16, !tbaa !31
  %i.br = and i64 %.0.i.neg.i16, -8
  %i.bs = shl nuw nsw i64 %i.ax, 5
  %i.bt = mul i64 %i.bs, %i.ba
  %i.bu = sub i64 %i.bt, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bu) #21
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit18

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit18: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.i:                                             ; preds = %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.bv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEE4copyEv(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastSet") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr.37", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 0, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  store i16 0, ptr %i.f, align 2, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.g = load atomic i32, ptr %i.d monotonic, align 8 ; 4 uses
  store i32 %i.g, ptr %i.c, align 4, !tbaa !7
  %i.h = and i32 %i.g, -1408
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i32 %i.g, 2048
  %i.k = cmpxchg ptr %i.d, i32 %i.g, i32 %i.j seq_cst seq_cst, align 4 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.m = extractvalue { i32, i1 } %i.k, 0
  store i32 %i.m, ptr %i.c, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2, ptr %i.e, align 8, !tbaa !130
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEEC2EPSK_.exit

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i, %bb.a
  %i.n = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEEC2EPSK_.exit

_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEEC2EPSK_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store ptr null, ptr %0, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.p, align 8, !tbaa !31
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaIS6_EEC2ERKSC_.exit unwind label %bb.n

_ZN5folly10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaIS6_EEC2ERKSC_.exit: ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEEC2EPSK_.exit
  %i.q = load i16, ptr %i.e, align 8, !tbaa !130  ; 2 uses
  %.not.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaIS6_EEC2ERKSC_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !125    ; 7 uses
  switch i16 %i.q, label %bb.k [
    i16 1, label %bb.f
    i16 3, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = load atomic i32, ptr %i.r acquire, align 4
  %i.t = and i32 %i.s, 768
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  br i1 %i.v, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.w = atomicrmw sub ptr %i.r, i32 2048 seq_cst, align 4 ; 2 uses
  %i.x = add i32 %i.w, -2048                      ; 2 uses
  store i32 %i.x, ptr %i.b, align 4, !tbaa !7
  %i.y = icmp ugt i32 %i.x, 2047
  %i.z = and i32 %i.w, 16
  %.not.i.i.i.i = icmp eq i32 %i.z, 0
  %or.cond.i.i.i = or i1 %i.y, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.i, !prof !134

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.m

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.j:                                             ; preds = %bb.e
  %i.aa = load i16, ptr %i.f, align 2, !tbaa !131
  %i.ab = zext i16 %i.aa to i64
  %i.ac = ptrtoint ptr %i.r to i64
  %.idx.i = shl nuw nsw i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.ae = cmpxchg ptr %i.ad, i64 %i.ac, i64 0 seq_cst seq_cst, align 8
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ag = atomicrmw sub ptr %i.r, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ah = add i32 %i.ag, -2048                    ; 2 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !7
  %i.ai = icmp ugt i32 %i.ah, 2047
  %i.aj = and i32 %i.ag, 16
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  %or.cond.i.i = or i1 %i.ai, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.l, !prof !134

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.m

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.g
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #31
  unreachable

_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.j, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc, %_ZN5folly10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaIS6_EEC2ERKSC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.n:                                             ; preds = %_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEEC2EPSK_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
