Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/File?download=true
inline.NumInlined: 2841
inline.NumDeleted: 1404
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS8_S8_Em:bb.a

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01418.i, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !264  ; 2 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.q, ptr %i.o, align 8, !tbaa !266
  %i.x = load i64, ptr %i.r, align 8, !tbaa !274
  store i64 %i.x, ptr %i.p, align 8, !tbaa !274
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.01418.i, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !264
  %i.aa = getelementptr inbounds nuw i8, ptr %.01517.i, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !264
  store ptr %i.r, ptr %i.b, align 8, !tbaa !266
  store i64 0, ptr %i.y, align 8, !tbaa !264
  store i8 0, ptr %i.r, align 8, !tbaa !274
  %i.ab = load ptr, ptr %.01418.i, align 8, !tbaa !266 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.e
  br i1 %i.ac, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !274
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #43
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.af = add nuw i64 %.019.i, 1                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01418.i, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.01517.i, i64 64
  %exitcond.not.i = icmp eq i64 %i.af, %2
  br i1 %exitcond.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS8_S8_EEPSE_SH_m.exit, label %.lr.ph.i, !llvm.loop !6

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS8_S8_EEPSE_SH_m.exit: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !381
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !859 {
bb.a:
  %2 = alloca %class.anon.106, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !253
  %i.c = lshr i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.f = call noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKSt4pairIKS8_S8_EE_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.g = load i64, ptr %i.d, align 8, !tbaa !253  ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !382
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i.i37 = load i16, ptr %i.k, align 1
  %i.l = zext i16 %.0.copyload.i.i37 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = shl i64 12, %i.h
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.n = load i64, ptr %i.a, align 8, !tbaa !253  ; 2 uses
  %i.o = and i64 %i.n, 255                        ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.0.copyload.i.i39 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.0.copyload.i.i39 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit40

bb.e:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.u = shl i64 12, %i.o
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit40

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit40: ; preds = %bb.d, %bb.e
  %.0.i38 = phi i64 [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  %i.v = icmp eq i64 %.0.i, %.0.i38
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit40
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !382  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.0.copyload.i = load i16, ptr %i.x, align 1    ; 2 uses
  %i.y = zext i16 %.0.copyload.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 16
  %i.ab = shl i64 64, %i.h
  %.0.i41 = select i1 %i.i, i64 %i.aa, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !382
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.w, ptr align 16 %i.ad, i64 %.0.i41, i1 false)
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !253
  %i.af = and i64 %i.ae, -256
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !253
  %i.ah = and i64 %i.ag, 255
  %i.ai = or disjoint i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !253
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !382
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i16 %.0.copyload.i, ptr %i.ak, align 1
  br label %.loopexit

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit40
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !382
  %i.an = shl nuw i64 1, %i.h                     ; 2 uses
  %i.ao = getelementptr [64 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !382
  %i.aq = getelementptr [64 x i8], ptr %i.ap, i64 %i.an
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.ar = phi i64 [ %i.n, %bb.g ], [ %i.bz, %._crit_edge ]
  %i.as = phi i64 [ %i.g, %bb.g ], [ %i.ca, %._crit_edge ]
  %.pn34 = phi ptr [ %i.aq, %bb.g ], [ %.033, %._crit_edge ] ; 4 uses
  %.pn = phi ptr [ %i.ao, %bb.g ], [ %.031, %._crit_edge ] ; 4 uses
  %.033 = getelementptr i8, ptr %.pn34, i64 -64   ; 2 uses
  %.031 = getelementptr i8, ptr %.pn, i64 -64     ; 4 uses
  %i.at = getelementptr i8, ptr %.pn, i64 -50
  %i.au = load i8, ptr %i.at, align 2, !tbaa !439
  %i.av = and i8 %i.au, -16
  %i.aw = getelementptr i8, ptr %.pn34, i64 -50   ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !439
  %i.ay = add i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.aw, align 2, !tbaa !439
  %i.az = getelementptr i8, ptr %.pn, i64 -49
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !437
  %i.bb = getelementptr i8, ptr %.pn34, i64 -49
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !437
  %i.bc = load <16 x i8>, ptr %.031, align 16, !tbaa !274
  %i.bd = icmp slt <16 x i8> %i.bc, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = and i16 %i.be, 4095                     ; 2 uses
  %.not5153 = icmp eq i16 %i.bf, 0
  br i1 %.not5153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %.sroa.0.0.extract.trunc = zext nneg i16 %i.bf to i32
  %i.bg = icmp ne ptr %.031, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr i8, ptr %.pn, i64 -48
  %i.bi = getelementptr i8, ptr %.pn34, i64 -48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.03256 = phi i64 [ 0, %.lr.ph ], [ %i.by, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.0.055 = phi i32 [ %.sroa.0.0.extract.trunc, %.lr.ph ], [ %.sroa.0.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.054 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 2 uses
  %i.bj = and i32 %.sroa.0.055, 1
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !278

bb.j:                                             ; preds = %bb.i
  %i.bk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0.055, i1 true) ; 2 uses
  %i.bl = add i32 %i.bk, %.sroa.8.054
  %i.bm = add nuw nsw i32 %i.bk, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.i, %bb.j
  %.sroa.8.1.in = phi i32 [ %i.bl, %bb.j ], [ %.sroa.8.054, %bb.i ] ; 2 uses
  %.pn52 = phi i32 [ %i.bm, %bb.j ], [ 1, %bb.i ]
  %i.bn = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !248
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.03256
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !248
  %i.br = getelementptr inbounds nuw i8, ptr %.033, i64 %.03256 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !274
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.031, i64 %i.bn
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !274
  %.sroa.0.1 = lshr i32 %.sroa.0.055, %.pn52      ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !274
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !253 ; 2 uses
  %3 = and i64 %i.bw, -256
  %i.bx = add i64 %3, 256
  %4 = and i64 %i.bw, 255
  %5 = or disjoint i64 %i.bx, %4                  ; 2 uses
  store i64 %5, ptr %i.d, align 8, !tbaa !253
  %i.by = add i64 %.03256, 1
  %.not51 = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not51, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !857

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !253
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.bz = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ar, %bb.h ] ; 2 uses
  %i.ca = phi i64 [ %5, %._crit_edge.loopexit ], [ %i.as, %bb.h ] ; 2 uses
  %.not.unshifted = xor i64 %i.bz, %i.ca
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !858

.loopexit:                                        ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !862 {
bb.a:
  %2 = alloca %class.anon.106, align 1            ; 3 uses
  %3 = alloca %"struct.std::array.95", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !253
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 4 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 3 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !278

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit
  %.0122 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %3, %bb.a ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0122, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !253
  %i.i = lshr i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.k = invoke noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKSt4pairIKS8_S8_EE_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.g, align 8, !tbaa !253
  %i.n = and i64 %i.m, 255
  %.idx = shl nuw i64 64, %i.n
  %i.o = add nsw i64 %.idx, -64
  %i.p = lshr exact i64 %i.o, 6
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.0114 = phi i64 [ %i.p, %bb.e ], [ %i.hy, %.loopexit ] ; 4 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !382
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %.0114 ; 6 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp slt <16 x i8> %i.s, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 4095                       ; 2 uses
  %.sroa.086.0.extract.trunc = zext nneg i16 %i.v to i32 ; 3 uses
  %.not125140 = icmp eq i16 %i.v, 0
  %i.w = extractelement <16 x i8> %i.s, i64 14
  br i1 %.not125140, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.x = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = load ptr, ptr %0, align 8, !tbaa !381
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.aa = icmp ult i8 %i.w, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.aa, label %.lr.ph150, label %.lr.ph146

bb.g:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit74

bb.h:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.083.0142 = phi i32 [ %.sroa.086.0.extract.trunc, %.lr.ph ], [ %.sroa.083.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0141 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ad = and i32 %.sroa.083.0142, 1
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.i, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !278

bb.i:                                             ; preds = %bb.h
  %i.ae = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.083.0142, i1 true) ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.8.0141
  %i.ag = add nuw nsw i32 %i.ae, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.h, %bb.i
  %.sroa.8.1.in = phi i32 [ %i.af, %bb.i ], [ %.sroa.8.0141, %bb.h ] ; 2 uses
  %.pn129 = phi i32 [ %i.ag, %bb.i ], [ 1, %bb.h ]
  %.sroa.083.1 = lshr i32 %.sroa.083.0142, %.pn129 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.ah = zext i32 %.sroa.8.1.in to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !248
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.ak
  call void @llvm.prefetch.p0(ptr %i.al, i32 0, i32 3, i32 1)
  %.not125 = icmp eq i32 %.sroa.083.1, 0
  br i1 %.not125, label %._crit_edge, label %bb.h

.lr.ph150:                                        ; preds = %._crit_edge, %bb.m
  %.sroa.086.0149 = phi i32 [ %.sroa.086.2, %bb.m ], [ %.sroa.086.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.0148 = phi i32 [ %.sroa.12.2, %bb.m ], [ 0, %._crit_edge ] ; 2 uses
  %i.am = and i32 %.sroa.086.0149, 1
  %.not.i56 = icmp eq i32 %i.am, 0
  br i1 %.not.i56, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58, !prof !278

bb.j:                                             ; preds = %.lr.ph150
  %i.an = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.086.0149, i1 true) ; 2 uses
  %i.ao = add i32 %i.an, %.sroa.12.0148
  %i.ap = add nuw nsw i32 %i.an, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58: ; preds = %.lr.ph150, %bb.j
  %.sroa.12.2.in = phi i32 [ %i.ao, %bb.j ], [ %.sroa.12.0148, %.lr.ph150 ] ; 2 uses
  %.pn128 = phi i32 [ %i.ap, %bb.j ], [ 1, %.lr.ph150 ]
  %.sroa.086.2 = lshr i32 %.sroa.086.0149, %.pn128 ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %i.aq = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !248
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !tbaa !274 ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !253
  %i.az = and i64 %i.ay, 255                      ; 2 uses
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !382 ; 2 uses
  %i.bb = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0114, i64 range(i64 0, 256) %i.az) ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0122, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !274 ; 2 uses
  %i.be = icmp ult i8 %i.bd, 12
  br i1 %i.be, label %._crit_edge.i, label %.lr.ph.i, !prof !433

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.bf = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.bb, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 15 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !437 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bi, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bj = add i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !437
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.k, %.lr.ph.i
  %i.bk = add i64 %i.ax, %i.bf
  %i.bl = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bk, i64 range(i64 0, 256) %i.az) ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0122, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !274 ; 2 uses
  %i.bo = icmp ult i8 %i.bn, 12
  br i1 %i.bo, label %._crit_edge.i, label %.lr.ph.i, !prof !438, !llvm.loop !5

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58
  %.lcssa22.i = phi i64 [ %i.bb, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58 ], [ %i.bl, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i8 [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58 ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.bd, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit58 ], [ %i.bn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %.lcssa22.i ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0122, i64 %.lcssa22.i
  %i.bq = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !274
  %i.br = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !274
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

bb.m:                                             ; preds = %._crit_edge.i
  store i8 %i.au, ptr %i.bs, align 1, !tbaa !274
  %i.bv = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !439
  %i.bx = add i8 %i.bw, %.0.lcssa.i
  store i8 %i.bx, ptr %i.bv, align 2, !tbaa !439
  %i.by = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.br
  %i.ca = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  store i32 %i.as, ptr %i.bz, align 4, !tbaa !248
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !253 ; 2 uses
  %4 = and i64 %i.cb, -256
  %i.cc = add i64 %4, 256
  %5 = and i64 %i.cb, 255
  %6 = or disjoint i64 %i.cc, %5
  store i64 %6, ptr %i.a, align 8, !tbaa !253
  %.not127 = icmp eq i32 %.sroa.086.2, 0
  br i1 %.not127, label %.loopexit, label %.lr.ph150, !llvm.loop !860

.lr.ph146:                                        ; preds = %._crit_edge, %bb.z
  %.sroa.086.1145 = phi i32 [ %.sroa.086.3, %bb.z ], [ %.sroa.086.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.1144 = phi i32 [ %.sroa.12.3, %bb.z ], [ 0, %._crit_edge ] ; 2 uses
  %i.cd = and i32 %.sroa.086.1145, 1
  %.not.i59 = icmp eq i32 %i.cd, 0
  br i1 %.not.i59, label %bb.n, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit61, !prof !278

bb.n:                                             ; preds = %.lr.ph146
  %i.ce = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.086.1145, i1 true) ; 2 uses
  %i.cf = add i32 %i.ce, %.sroa.12.1144
  %i.cg = add nuw nsw i32 %i.ce, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit61

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit61: ; preds = %.lr.ph146, %bb.n
  %.sroa.12.3.in = phi i32 [ %i.cf, %bb.n ], [ %.sroa.12.1144, %.lr.ph146 ] ; 2 uses
  %.pn = phi i32 [ %i.cg, %bb.n ], [ 1, %.lr.ph146 ]
  %.sroa.086.3 = lshr i32 %.sroa.086.1145, %.pn   ; 2 uses
  %.sroa.12.3 = add i32 %.sroa.12.3.in, 1
  %i.ch = zext i32 %.sroa.12.3.in to i64          ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !248 ; 2 uses
  %i.ck = load ptr, ptr %1, align 8, !tbaa !381
  %i.cl = zext i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !266 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !264 ; 13 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cp ; 3 uses
  %i.cr = icmp ult i64 %i.cp, 17
  br i1 %i.cr, label %bb.o, label %bb.s, !prof !249

bb.o:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit61
  %i.cs = icmp samesign ugt i64 %i.cp, 3
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = xor i64 %i.cp, 4766890152743124950      ; 2 uses
  %i.cu = icmp samesign ugt i64 %i.cp, 7
  br i1 %i.cu, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i: ; preds = %bb.p
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.cn, align 1
  %.0.copyload.i.i15.i = load i64, ptr %i.cv, align 1
  br label %bb.u

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i: ; preds = %bb.p
  %i.cw = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %.0.copyload.i.i16.i = load i32, ptr %i.cn, align 1
  %i.cx = zext i32 %.0.copyload.i.i16.i to i64
  %.0.copyload.i.i17.i = load i32, ptr %i.cw, align 1
  %i.cy = zext i32 %.0.copyload.i.i17.i to i64
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %.not.i.i76 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i76, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = load i8, ptr %i.cn, align 1, !tbaa !274
  %i.da = sext i8 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 45
  %i.dc = getelementptr i8, ptr %i.cq, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !274
  %i.de = sext i8 %i.dd to i64
  %i.df = or i64 %i.db, %i.de
  %i.dg = lshr i64 %i.cp, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !274
  %i.dj = sext i8 %i.di to i64
  br label %bb.u

bb.s:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit61
  %i.dk = icmp ugt i64 %i.cp, 48
  br i1 %i.dk, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i: ; preds = %bb.s, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %.069.i.i = phi i64 [ %i.ep, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.cp, %bb.s ]
  %.067.i.i = phi i64 [ %i.dt, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.066.i.i = phi ptr [ %i.eo, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.cn, %bb.s ] ; 7 uses
  %.065.i.i = phi i64 [ %i.ed, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.i.i = phi i64 [ %i.en, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.copyload.i.i18.i = load i64, ptr %.066.i.i, align 1
  %i.dl = xor i64 %.0.copyload.i.i18.i, 3257665815644502181
  %i.dm = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 8
  %.0.copyload.i.i19.i = load i64, ptr %i.dm, align 1
  %i.dn = xor i64 %.0.copyload.i.i19.i, %.067.i.i
  %i.do = zext i64 %i.dl to i128
  %i.dp = zext i64 %i.dn to i128
  %i.dq = mul nuw i128 %i.dp, %i.do               ; 2 uses
  %i.dr = lshr i128 %i.dq, 64
  %i.ds = xor i128 %i.dr, %i.dq
  %i.dt = trunc i128 %i.ds to i64                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 16
  %.0.copyload.i.i20.i = load i64, ptr %i.du, align 1
  %i.dv = xor i64 %.0.copyload.i.i20.i, -8378864009470890807
  %i.dw = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 24
  %.0.copyload.i.i21.i = load i64, ptr %i.dw, align 1
  %i.dx = xor i64 %.0.copyload.i.i21.i, %.065.i.i
  %i.dy = zext i64 %i.dv to i128
  %i.dz = zext i64 %i.dx to i128
  %i.ea = mul nuw i128 %i.dz, %i.dy               ; 2 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = xor i128 %i.eb, %i.ea
  %i.ed = trunc i128 %i.ec to i64                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 32
  %.0.copyload.i.i22.i = load i64, ptr %i.ee, align 1
  %i.ef = xor i64 %.0.copyload.i.i22.i, 5418857496715711651
  %i.eg = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 40
  %.0.copyload.i.i23.i = load i64, ptr %i.eg, align 1
  %i.eh = xor i64 %.0.copyload.i.i23.i, %.0.i.i
  %i.ei = zext i64 %i.ef to i128
  %i.ej = zext i64 %i.eh to i128
  %i.ek = mul nuw i128 %i.ej, %i.ei               ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = xor i128 %i.el, %i.ek
  %i.en = trunc i128 %i.em to i64                 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 48 ; 3 uses
  %i.ep = add i64 %.069.i.i, -48                  ; 5 uses
  %i.eq = icmp ugt i64 %i.ep, 48
  br i1 %i.eq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %bb.t, !llvm.loop !4

bb.t:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %i.er = xor i64 %i.ed, %i.dt
  %i.es = xor i64 %i.er, %i.en                    ; 2 uses
  %i.et = icmp samesign ugt i64 %i.ep, 16
  br i1 %i.et, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i: ; preds = %bb.t, %bb.s
  %.1.i72.i = phi ptr [ %i.eo, %bb.t ], [ %i.cn, %bb.s ] ; 6 uses
  %.168.i70.i = phi i64 [ %i.es, %bb.t ], [ 4766890152743124950, %bb.s ]
  %.170.i69.i = phi i64 [ %i.ep, %bb.t ], [ %i.cp, %bb.s ] ; 3 uses
  %.0.copyload.i.i24.i = load i64, ptr %.1.i72.i, align 1
  %i.eu = xor i64 %.0.copyload.i.i24.i, 5418857496715711651
  %i.ev = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 8
  %.0.copyload.i.i25.i = load i64, ptr %i.ev, align 1
  %i.ew = xor i64 %.0.copyload.i.i25.i, %.168.i70.i
  %i.ex = zext i64 %i.eu to i128
  %i.ey = zext i64 %i.ew to i128
  %i.ez = mul nuw i128 %i.ey, %i.ex               ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = xor i128 %i.fa, %i.ez
  %i.fc = trunc i128 %i.fb to i64                 ; 2 uses
  %i.fd = icmp samesign ugt i64 %.170.i69.i, 32
  br i1 %i.fd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 16
  %.0.copyload.i.i26.i = load i64, ptr %i.fe, align 1
  %i.ff = xor i64 %.0.copyload.i.i26.i, 5418857496715711651
  %i.fg = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 24
  %.0.copyload.i.i27.i = load i64, ptr %i.fg, align 1
  %i.fh = xor i64 %.0.copyload.i.i27.i, %i.fc
  %i.fi = zext i64 %i.ff to i128
  %i.fj = zext i64 %i.fh to i128
  %i.fk = mul nuw i128 %i.fj, %i.fi               ; 2 uses
  %i.fl = lshr i128 %i.fk, 64
  %i.fm = xor i128 %i.fl, %i.fk
  %i.fn = trunc i128 %i.fm to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, %bb.t
  %.1.i71.i = phi ptr [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.eo, %bb.t ]
  %.170.i68.i = phi i64 [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.ep, %bb.t ] ; 3 uses
  %.2.i.i = phi i64 [ %i.fn, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %i.fc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.es, %bb.t ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.1.i71.i, i64 %.170.i68.i ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -16
  %.0.copyload.i.i28.i = load i64, ptr %i.fp, align 1
  %i.fq = xor i64 %.0.copyload.i.i28.i, %.170.i68.i
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 -8
  %.0.copyload.i.i29.i = load i64, ptr %i.fr, align 1
  br label %bb.u

bb.u:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i, %bb.q, %bb.r, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i
  %.064.i = phi i64 [ %.0.copyload.i.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.cx, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %i.fq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.df, %bb.r ], [ 0, %bb.q ]
  %.0.i75 = phi i64 [ %.0.copyload.i.i15.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.cy, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.0.copyload.i.i29.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.dj, %bb.r ], [ 0, %bb.q ]
  %.271.i.i = phi i64 [ %i.cp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.cp, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.170.i68.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.cp, %bb.r ], [ 0, %bb.q ]
  %.3.i.i = phi i64 [ %i.ct, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.ct, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.2.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ 4766890152743124950, %bb.r ], [ 4766890152743124950, %bb.q ]
  %i.fs = xor i64 %.064.i, -8378864009470890807
  %i.ft = xor i64 %.3.i.i, %.0.i75
  %i.fu = zext i64 %i.fs to i128
  %i.fv = zext i64 %i.ft to i128
  %i.fw = mul nuw i128 %i.fv, %i.fu               ; 2 uses
  %i.fx = trunc i128 %i.fw to i64
  %i.fy = lshr i128 %i.fw, 64
  %i.fz = trunc nuw i128 %i.fy to i64
  %i.ga = xor i64 %i.fx, -6148914691236517206
  %i.gb = xor i64 %.271.i.i, %i.fz
  %i.gc = xor i64 %i.gb, -8378864009470890807
  %i.gd = zext i64 %i.ga to i128
  %i.ge = zext i64 %i.gc to i128
  %i.gf = mul nuw i128 %i.ge, %i.gd               ; 2 uses
  %i.gg = lshr i128 %i.gf, 64
  %i.gh = xor i128 %i.gg, %i.gf
  %i.gi = trunc i128 %i.gh to i64                 ; 2 uses
  %i.gj = lshr i64 %i.gi, 56
  %i.gk = or i64 %i.gj, 128                       ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ch
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !274
  %i.gn = zext i8 %i.gm to i64
  %i.go = icmp eq i64 %i.gk, %i.gn
  br i1 %i.go, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_E30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.gp = shl nuw nsw i64 %i.gk, 1
  %i.gq = or disjoint i64 %i.gp, 1
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !253
  %i.gs = and i64 %i.gr, 255                      ; 2 uses
  %i.gt = load ptr, ptr %i.j, align 8, !tbaa !382 ; 2 uses
  %i.gu = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.gi, i64 range(i64 0, 256) %i.gs) ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0122, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !274 ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 12
  br i1 %i.gx, label %._crit_edge.i65, label %.lr.ph.i62, !prof !433

.lr.ph.i62:                                       ; preds = %bb.w, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i64
  %i.gy = phi i64 [ %i.he, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i64 ], [ %i.gu, %bb.w ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [64 x i8], ptr %i.gt, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 15 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !437 ; 2 uses
  %.not.i.i63 = icmp eq i8 %i.hb, -2
  br i1 %.not.i.i63, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i64, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i62
  %i.hc = add i8 %i.hb, 1
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !437
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i64

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i64: ; preds = %bb.x, %.lr.ph.i62
  %i.hd = add i64 %i.gq, %i.gy
  %i.he = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.hd, i64 range(i64 0, 256) %i.gs) ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0122, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !274 ; 2 uses
  %i.hh = icmp ult i8 %i.hg, 12
  br i1 %i.hh, label %._crit_edge.i65, label %.lr.ph.i62, !prof !438, !llvm.loop !5

._crit_edge.i65:                                  ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i64, %bb.w
  %.lcssa22.i66 = phi i64 [ %i.gu, %bb.w ], [ %i.he, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i64 ] ; 2 uses
  %.0.lcssa.i67 = phi i8 [ 0, %bb.w ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i64 ]
  %.lcssa.i68 = phi i8 [ %i.gw, %bb.w ], [ %i.hg, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i64 ] ; 2 uses
  %.lcssa21.i69 = getelementptr inbounds nuw [64 x i8], ptr %i.gt, i64 %.lcssa22.i66 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0122, i64 %.lcssa22.i66
  %i.hj = add nuw nsw i8 %.lcssa.i68, 1
  store i8 %i.hj, ptr %i.hi, align 1, !tbaa !274
  %i.hk = zext nneg i8 %.lcssa.i68 to i64         ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.lcssa21.i69, i64 %i.hk ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !274
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i65
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

bb.z:                                             ; preds = %._crit_edge.i65
  %i.ho = trunc nuw i64 %i.gk to i8
  store i8 %i.ho, ptr %i.hl, align 1, !tbaa !274
  %i.hp = getelementptr inbounds nuw i8, ptr %.lcssa21.i69, i64 14 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !439
  %i.hr = add i8 %i.hq, %.0.lcssa.i67
  store i8 %i.hr, ptr %i.hp, align 2, !tbaa !439
  %i.hs = getelementptr inbounds nuw i8, ptr %.lcssa21.i69, i64 16
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hk
  %i.hu = icmp ne ptr %.lcssa21.i69, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hu)
  store i32 %i.cj, ptr %i.ht, align 4, !tbaa !248
  %i.hv = load i64, ptr %i.a, align 8, !tbaa !253 ; 2 uses
  %7 = and i64 %i.hv, -256
  %i.hw = add i64 %7, 256
  %8 = and i64 %i.hv, 255
  %9 = or disjoint i64 %i.hw, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !253
  %.not126 = icmp eq i32 %.sroa.086.3, 0
  br i1 %.not126, label %.loopexit, label %.lr.ph146, !llvm.loop !861

.loopexit:                                        ; preds = %bb.z, %bb.m, %bb.f
  %i.hx = icmp eq i64 %.0114, 0
  %i.hy = add i64 %.0114, -1
  br i1 %i.hx, label %bb.aa, label %bb.f

bb.aa:                                            ; preds = %.loopexit
  br i1 %.not, label %bb.ab, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.0122, i64 noundef %i.d) #43
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.ac:                                            ; preds = %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %.0122, i64 noundef %i.d) #43
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit74

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_vvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit74: ; preds = %bb.g, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKSt4pairIKS8_S8_EE_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !865 {
bb.a:
  %4 = alloca %"struct.std::pair.98", align 8     ; 12 uses
  %.not41 = icmp eq i64 %1, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !381
  %i.b = load ptr, ptr %2, align 8, !tbaa !381
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.02035 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ]
  %.02134 = phi ptr [ %i.a, %.lr.ph ], [ %i.aj, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 11 uses
  %.02233 = phi ptr [ %i.b, %.lr.ph ], [ %i.ai, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.02134) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %.02233)
          to label %_ZZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeBuildEmmRKSB_ENKUlRKSt4pairIKS8_S8_EE_clB5cxx11ESI_.exit unwind label %bb.h

_ZZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeBuildEmmRKSB_ENKUlRKSt4pairIKS8_S8_EE_clB5cxx11ESI_.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.02134, i64 16 ; 3 uses
  store ptr %i.h, ptr %.02134, align 8, !tbaa !287
  %i.i = load ptr, ptr %4, align 8, !tbaa !266    ; 2 uses
  %i.j = load i64, ptr %i.c, align 8, !tbaa !264  ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %_ZZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeBuildEmmRKSB_ENKUlRKSt4pairIKS8_S8_EE_clB5cxx11ESI_.exit
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !278

.noexc6.i.i.i:                                    ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #45
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.o, ptr %.02134, align 8, !tbaa !266
  store i64 %i.j, ptr %i.h, align 8, !tbaa !274
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc24, %_ZZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeBuildEmmRKSB_ENKUlRKSt4pairIKS8_S8_EE_clB5cxx11ESI_.exit
  %i.p = phi ptr [ %i.o, %.noexc24 ], [ %i.h, %_ZZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEE11beforeBuildEmmRKSB_ENKUlRKSt4pairIKS8_S8_EE_clB5cxx11ESI_.exit ] ; 3 uses
  switch i64 %i.j, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !274
  store i8 %i.q, ptr %i.p, align 1, !tbaa !274
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.i, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.02134, i64 8
  store i64 %i.j, ptr %i.r, align 8, !tbaa !264
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !274
  %i.t = getelementptr inbounds nuw i8, ptr %.02134, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02134, i64 48 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !287
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !266  ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.x = load i64, ptr %i.f, align 8, !tbaa !264  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  store ptr %i.v, ptr %i.t, align 8, !tbaa !266
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !274
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !274
  %.pre = load i64, ptr %i.f, align 8, !tbaa !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ab = phi i64 [ %i.x, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.02134, i64 40
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !264
  store ptr %i.e, ptr %i.d, align 8, !tbaa !266
  store i64 0, ptr %i.f, align 8, !tbaa !264
  store i8 0, ptr %i.e, align 8, !tbaa !274
  %i.ad = load ptr, ptr %4, align 8, !tbaa !266   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.g
  br i1 %i.ae, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.af = load i64, ptr %i.g, align 8, !tbaa !274
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #43
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ah = add nuw i64 %.02035, 1                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02233, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.02134, i64 64
  %exitcond.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !863

bb.h:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #16
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.h
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ak, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.1 = extractvalue { ptr, i32 } %.pn, 0
  %i.al = call ptr @__cxa_begin_catch(ptr %.1) #16 ; 0 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !381   ; 2 uses
  %.not36 = icmp eq ptr %i.am, %.02134
  br i1 %.not36, label %._crit_edge40, label %.lr.ph39

._crit_edge40:                                    ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit, %bb.i
  invoke void @__cxa_rethrow() #42
          to label %bb.m unwind label %bb.j

.lr.ph39:                                         ; preds = %bb.i, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit
  %.037 = phi ptr [ %i.ay, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit ], [ %i.am, %bb.i ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.037, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !266 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.037, i64 48 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph39
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !274
  %i.as = add i64 %i.ar, 1
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKS9_SC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESK_ImmERKT_DpOT0_:bb.a

bb.g:                                             ; preds = %.thread66
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi107, i64 noundef %i.bv, i64 noundef %i.bz)
  %.pre103 = load ptr, ptr %i.ca, align 8, !tbaa !259
  %.pre104 = load i64, ptr %i.a, align 8, !tbaa !253
  %.pre108 = and i64 %.pre104, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.g
  %.pre-phi109 = phi i64 [ %.pre-phi, %.thread66 ], [ %.pre108, %bb.g ] ; 2 uses
  %i.cb = phi ptr [ %i.bt, %.thread66 ], [ %.pre103, %bb.g ] ; 3 uses
  %i.cc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi109) ; 2 uses
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load <16 x i8>, ptr %i.cd, align 16, !tbaa !274
  %i.cf = icmp slt <16 x i8> %i.ce, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = and i16 %i.cg, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.ch, 4095
  br i1 %.not69, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.ci = shl i64 %3, 1
  %i.cj = or disjoint i64 %i.ci, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.ck = phi i64 [ %i.cc, %bb.h ], [ %i.cq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.cp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 15 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !437 ; 2 uses
  %.not.i32 = icmp eq i8 %i.cn, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = add i8 %i.cn, 1
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !437
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cp = add i64 %i.cj, %.029                    ; 2 uses
  %i.cq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cp, i64 range(i64 0, 256) %.pre-phi109) ; 2 uses
  %i.cr = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cq ; 3 uses
  %i.cs = load <16 x i8>, ptr %i.cr, align 16     ; 2 uses
  %i.ct = icmp slt <16 x i8> %i.cs, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16
  %i.cv = and i16 %i.cu, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.cv, 4095
  br i1 %.not70, label %bb.i, label %bb.k, !llvm.loop !1104

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.cw = extractelement <16 x i8> %i.cs, i64 14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 14
  %i.cy = add i8 %i.cw, 16
  store i8 %i.cy, ptr %i.cx, align 2, !tbaa !439
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ch, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cv, %bb.k ]
  %.1 = phi ptr [ %i.cd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cr, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.cz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.da = zext nneg i16 %i.cz to i64              ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !274
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.de = trunc i64 %3 to i8
  store i8 %i.de, ptr %i.db, align 1, !tbaa !274
  %i.df = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.da ; 2 uses
  %i.dh = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dh)
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_SC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.dg, i64 %i.da, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink133 = phi ptr [ %i.bs, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dg, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.da, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink133, ptr %0, align 8, !tbaa !491
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !324
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.di, align 8, !tbaa !493
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_SC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1106 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !253
  %i.c = lshr i64 %i.b, 8                         ; 2 uses
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !248
  %i.e = load ptr, ptr %0, align 8, !tbaa !260, !nonnull !271, !noundef !271
  %i.f = and i64 %i.c, 4294967295
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !287
  %i.i = load ptr, ptr %5, align 8, !tbaa !266    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !264  ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.b, label %._crit_edge.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %.noexc.i.i.i.i.i, label %bb.c

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #42
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !278

.noexc6.i.i.i.i.i:                                ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc3 unwind label %bb.f

.noexc3:                                          ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #45
          to label %.noexc4 unwind label %bb.f    ; 2 uses

.noexc4:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.p, ptr %i.g, align 8, !tbaa !266
  store i64 %i.k, ptr %i.h, align 8, !tbaa !274
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc4, %bb.a
  %i.q = phi ptr [ %i.p, %.noexc4 ], [ %i.h, %bb.a ] ; 3 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_SC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.r = load i8, ptr %i.i, align 1, !tbaa !274
  store i8 %i.r, ptr %i.q, align 1, !tbaa !274
  br label %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_SC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_SC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit

_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_SC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.k, ptr %i.s, align 8, !tbaa !264
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1, !tbaa !274
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !495
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_SD_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSH_SP_SR_EJSW_RSP_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #16 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE14eraseBlankColdEPSG_NS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSI_RSN_RSP_ESQ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.g, !inline_history !12

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSI_RSN_RSP_ESQ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.f
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_SD_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSH_SP_SR_EJSW_RSP_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_SD_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSH_SP_SR_EJSW_RSP_RSR_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_SC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSI_RSN_RSP_ESQ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !253 ; 2 uses
  %7 = and i64 %i.ab, -256
  %i.ac = add i64 %7, 256
  %8 = and i64 %i.ab, 255
  %9 = or disjoint i64 %i.ac, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1107 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #27
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !253
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1115 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.208", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.95", align 1    ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !324
  store i64 %2, ptr %i.b, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !259  ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = mul i64 %i.x, 72
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #48 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !314
  %i.ah = load ptr, ptr %0, align 8, !tbaa !260   ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i
  %.019.i.i = phi i64 [ %i.bc, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i ], [ 0, %bb.a ]
  %.01418.i.i = phi ptr [ %i.bd, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i ], [ %i.ah, %bb.a ] ; 8 uses
  %.01517.i.i = phi ptr [ %i.be, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i ], [ %i.aj, %bb.a ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16 ; 3 uses
  store ptr %i.al, ptr %.01517.i.i, align 8, !tbaa !287
  %i.am = load ptr, ptr %.01418.i.i, align 8, !tbaa !266 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 7 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !264 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %_ZSt12construct_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEJS0_IOS6_OSA_EEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.am, ptr %.01517.i.i, align 8, !tbaa !266
  %i.at = load i64, ptr %i.an, align 8, !tbaa !274
  store i64 %i.at, ptr %i.al, align 8, !tbaa !274
  br label %_ZSt12construct_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEJS0_IOS6_OSA_EEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit.i.i

_ZSt12construct_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEJS0_IOS6_OSA_EEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !264
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !264
  store ptr %i.an, ptr %.01418.i.i, align 8, !tbaa !266
  store i64 0, ptr %i.au, align 8, !tbaa !264
  store i8 0, ptr %i.an, align 8, !tbaa !274
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false), !tbaa.struct !495
  %i.ay = load ptr, ptr %.01418.i.i, align 8, !tbaa !266 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.an
  br i1 %i.az, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZSt12construct_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEJS0_IOS6_OSA_EEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit.i.i
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !274
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #43
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i: ; preds = %_ZSt12construct_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEJS0_IOS6_OSA_EEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bc = add nuw i64 %.019.i.i, 1                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 72
  %exitcond.not.i.i = icmp eq i64 %i.bc, %1
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %.lr.ph.i.i, !llvm.loop !13

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEEEvPT_.exit.i.i, %bb.a
  store ptr %i.aj, ptr %0, align 8, !tbaa !260
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !496
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.bf = icmp ult i64 %4, 8
  br i1 %i.bf, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bv, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bg, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKS9_RKSC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_:bb.a

bb.g:                                             ; preds = %.thread66
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi107, i64 noundef %i.bv, i64 noundef %i.bz)
  %.pre103 = load ptr, ptr %i.ca, align 8, !tbaa !259
  %.pre104 = load i64, ptr %i.a, align 8, !tbaa !253
  %.pre108 = and i64 %.pre104, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.g
  %.pre-phi109 = phi i64 [ %.pre-phi, %.thread66 ], [ %.pre108, %bb.g ] ; 2 uses
  %i.cb = phi ptr [ %i.bt, %.thread66 ], [ %.pre103, %bb.g ] ; 3 uses
  %i.cc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi109) ; 2 uses
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load <16 x i8>, ptr %i.cd, align 16, !tbaa !274
  %i.cf = icmp slt <16 x i8> %i.ce, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = and i16 %i.cg, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.ch, 4095
  br i1 %.not69, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.ci = shl i64 %3, 1
  %i.cj = or disjoint i64 %i.ci, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.ck = phi i64 [ %i.cc, %bb.h ], [ %i.cq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.cp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 15 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !437 ; 2 uses
  %.not.i32 = icmp eq i8 %i.cn, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = add i8 %i.cn, 1
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !437
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cp = add i64 %i.cj, %.029                    ; 2 uses
  %i.cq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.cp, i64 range(i64 0, 256) %.pre-phi109) ; 2 uses
  %i.cr = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.cq ; 3 uses
  %i.cs = load <16 x i8>, ptr %i.cr, align 16     ; 2 uses
  %i.ct = icmp slt <16 x i8> %i.cs, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16
  %i.cv = and i16 %i.cu, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.cv, 4095
  br i1 %.not70, label %bb.i, label %bb.k, !llvm.loop !1210

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.cw = extractelement <16 x i8> %i.cs, i64 14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 14
  %i.cy = add i8 %i.cw, 16
  store i8 %i.cy, ptr %i.cx, align 2, !tbaa !439
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.ch, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cv, %bb.k ]
  %.1 = phi ptr [ %i.cd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cr, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 4095
  %i.cz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.da = zext nneg i16 %i.cz to i64              ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !274
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.de = trunc i64 %3 to i8
  store i8 %i.de, ptr %i.db, align 1, !tbaa !274
  %i.df = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.da ; 2 uses
  %i.dh = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dh)
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.dg, i64 %i.da, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink133 = phi ptr [ %i.bs, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dg, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.da, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink133, ptr %0, align 8, !tbaa !491
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !324
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.di, align 8, !tbaa !493
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1212 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !253
  %i.c = lshr i64 %i.b, 8                         ; 2 uses
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !248
  %i.e = load ptr, ptr %0, align 8, !tbaa !260, !nonnull !271, !noundef !271
  %i.f = and i64 %i.c, 4294967295
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !287
  %i.i = load ptr, ptr %5, align 8, !tbaa !266    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !264  ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.b, label %._crit_edge.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %.noexc.i.i.i.i.i, label %bb.c

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #42
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !278

.noexc6.i.i.i.i.i:                                ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc3 unwind label %bb.f

.noexc3:                                          ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #45
          to label %.noexc4 unwind label %bb.f    ; 2 uses

.noexc4:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.p, ptr %i.g, align 8, !tbaa !266
  store i64 %i.k, ptr %i.h, align 8, !tbaa !274
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc4, %bb.a
  %i.q = phi ptr [ %i.p, %.noexc4 ], [ %i.h, %bb.a ] ; 3 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.r = load i8, ptr %i.i, align 1, !tbaa !274
  store i8 %i.r, ptr %i.q, align 1, !tbaa !274
  br label %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit

_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.k, ptr %i.s, align 8, !tbaa !264
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1, !tbaa !274
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !495
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_RKSD_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSH_SR_ST_EJSY_RSR_RST_EvEET2_OT_OT0_DpOT1_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #16 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE14eraseBlankColdEPSG_NS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSI_RSN_RSP_ESQ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i unwind label %bb.g, !inline_history !12

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSI_RSN_RSP_ESQ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i: ; preds = %bb.f
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_RKSD_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSH_SR_ST_EJSY_RSR_RST_EvEET2_OT_OT0_DpOT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSA_RKSD_EEEvNS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEDpOT_EUlvE_PFvPSH_SR_ST_EJSY_RSR_RST_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKS9_RKSC_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEENS2_11F14ItemIterIPNS2_8F14ChunkIjEEEESt4pairImmEEJSI_RSN_RSP_ESQ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !253 ; 2 uses
  %7 = and i64 %i.ab, -256
  %i.ac = add i64 %7, 256
  %8 = and i64 %i.ab, 255
  %9 = or disjoint i64 %i.ac, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SB_EEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSR_22SynchronizedMutexLevelE2ELNSR_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1213 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !284
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !283
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #44
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1216 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !278

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #49
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.f, i32 256)
  %.sroa.speculated.i = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 %.sroa.speculated.i
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.l = or disjoint i64 %i.k, 1
  %i.m = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl)
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit
  %i.n = load i32, ptr %1, align 4, !tbaa !248    ; 2 uses
  %i.o = and i32 %i.n, 128
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %bb.d, !prof !249

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i64 @llvm.x86.rdtsc()
  %i.q = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.q, ptr %1, align 4, !tbaa !248
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.t = call noundef i64 @llvm.x86.rdtsc()
  %i.u = sub i64 %i.t, %i.p
  %i.v = icmp ult i64 %i.u, 4000
  br i1 %i.v, label %bb.e, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, !prof !249

bb.e:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !474
  %i.w = load atomic i32, ptr %0 acquire, align 4 ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !248
  %i.x = and i32 %i.w, 128
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread, label %.lr.ph.i, !llvm.loop !10

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit: ; preds = %.lr.ph.i
  %i.z = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 128, i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !248
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread: ; preds = %bb.e, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit, %bb.d, %bb.c
  %i.aa = phi i32 [ %i.n, %bb.c ], [ %.pre, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit ], [ %i.q, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %i.ac = and i32 %i.aa, -1536
  %or.cond = icmp eq i32 %i.ac, 0
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.ad = shl i32 %i.ab, 2
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ae
  %i.ag = load atomic i64, ptr %i.af monotonic, align 32
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i59 = icmp eq ptr %i.ah, null
  br i1 %.not.i59, label %bb.h, label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit, !prof !278

bb.h:                                             ; preds = %bb.g
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, ptr noundef nonnull @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv, ptr noundef nonnull @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v) ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit

_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null), !inline_history !1214 ; 0 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !248
  %i.am = and i32 %i.al, 255
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load atomic i8, ptr %i.ao monotonic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = shl nuw nsw i32 %i.aq, 2
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.as
  %i.au = load atomic i64, ptr %i.at monotonic, align 32
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %i.aw = xor i32 %i.aq, 1                        ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.ay
  %i.ba = load atomic i64, ptr %i.az monotonic, align 32
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  %.pre91 = load i32, ptr %1, align 4, !tbaa !248
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit
  %.lcssa = phi i32 [ %i.aq, %_ZN5folly14AccessSpreaderISt6atomicE5stateEv.exit ], [ %i.aw, %bb.i ] ; 2 uses
  store atomic i32 %.lcssa, ptr %i.g monotonic, align 4
  %.pre90 = load i32, ptr %1, align 4, !tbaa !248
  br label %bb.m

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread
  %i.bc = phi i32 [ %.pre91, %.loopexit.loopexit ], [ %i.aa, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_.exit.thread ] ; 2 uses
  %i.bd = add i32 %i.bc, 2048
  %i.be = cmpxchg ptr %0, i32 %i.bc, i32 %i.bd seq_cst seq_cst, align 4 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bf, label %bb.k, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %.loopexit
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  store i32 %i.bg, ptr %1, align 4
  br label %.backedge

bb.k:                                             ; preds = %.loopexit
  br i1 %i.j, label %.thread81, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 2, ptr %2, align 2, !tbaa !284
  br label %.thread81

bb.m:                                             ; preds = %bb.f, %bb.j
  %i.bh = phi i32 [ %.pre90, %bb.j ], [ %i.aa, %bb.f ] ; 3 uses
  %.2.ph = phi i32 [ %.lcssa, %bb.j ], [ %i.ab, %bb.f ] ; 3 uses
  %i.bi = and i32 %i.bh, 512
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.n, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread

bb.n:                                             ; preds = %bb.m
  %i.bk = or disjoint i32 %i.bh, 512
  %i.bl = cmpxchg ptr %0, i32 %i.bh, i32 %i.bk seq_cst seq_cst, align 4 ; 2 uses
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = extractvalue { i32, i1 } %i.bl, 0       ; 2 uses
  store i32 %i.bn, ptr %1, align 4
  %i.bo = and i32 %i.bn, 640
  %.not52 = icmp eq i32 %i.bo, 512
  br i1 %.not52, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread, label %.backedge

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread: ; preds = %bb.n, %bb.o, %bb.m
  %i.bp = shl i32 %.2.ph, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bq ; 3 uses
  br i1 %i.j, label %bb.p, label %.thread77

bb.p:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bs = cmpxchg ptr %i.br, i64 0, i64 %i.l seq_cst seq_cst, align 8
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %.thread79, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread77:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit57.thread
  %i.bu = cmpxchg ptr %i.br, i64 0, i64 %i.k seq_cst seq_cst, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSG_EEvOT_:bb.a

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSG_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSH_EEvOT_EUlvE_PFvPSH_EJSO_EvEET2_SM_OT0_DpOT1_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #16 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE26buildFromF14TableCatchColdEPSG_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEEEJSI_ESJ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.i, !inline_history !1219

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEEEJSI_ESJ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.h
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSH_EEvOT_EUlvE_PFvPSH_EJSO_EvEET2_SM_OT0_DpOT1_.exit

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.an

bb.k:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSH_EEvOT_EUlvE_PFvPSH_EJSO_EvEET2_SM_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEEEEJSI_ESJ_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE26buildFromF14TableCatchColdEPSG_(ptr noundef %0) local_unnamed_addr #29 comdat align 2 !guid !1221 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #16
  tail call void @__cxa_rethrow() #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSG_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1224 {
bb.a:
  %2 = alloca %class.anon.234, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !253
  %i.c = lshr i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.f = call noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSE_ZNSE_11beforeBuildEmmSH_EUlRKSt4pairIKS8_SB_EE_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.g = load i64, ptr %i.d, align 8, !tbaa !253  ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !259
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i.i43 = load i16, ptr %i.k, align 1
  %i.l = zext i16 %.0.copyload.i.i43 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = shl i64 12, %i.h
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.n = load i64, ptr %i.a, align 8, !tbaa !253  ; 2 uses
  %i.o = and i64 %i.n, 255                        ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !259
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.0.copyload.i.i45 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.0.copyload.i.i45 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46

bb.e:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.u = shl i64 12, %i.o
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46: ; preds = %bb.d, %bb.e
  %.0.i44 = phi i64 [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  %i.v = icmp eq i64 %.0.i, %.0.i44
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !259  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.0.copyload.i = load i16, ptr %i.x, align 1    ; 2 uses
  %i.y = zext i16 %.0.copyload.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 16
  %i.ab = shl i64 64, %i.h
  %.0.i47 = select i1 %i.i, i64 %i.aa, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !259
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.w, ptr align 16 %i.ad, i64 %.0.i47, i1 false)
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !253
  %i.af = and i64 %i.ae, -256
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !253
  %i.ah = and i64 %i.ag, 255
  %i.ai = or disjoint i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !253
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !259
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i16 %.0.copyload.i, ptr %i.ak, align 1
  br label %.loopexit

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !259
  %i.an = shl nuw i64 1, %i.h                     ; 2 uses
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !259
  %i.ap = getelementptr [64 x i8], ptr %i.am, i64 %i.an
  %i.aq = getelementptr [64 x i8], ptr %i.ao, i64 %i.an
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.ar = phi i64 [ %i.n, %bb.g ], [ %i.bz, %._crit_edge ]
  %i.as = phi i64 [ %i.g, %bb.g ], [ %i.ca, %._crit_edge ]
  %.pn = phi ptr [ %i.ap, %bb.g ], [ %.036, %._crit_edge ] ; 4 uses
  %.pn37 = phi ptr [ %i.aq, %bb.g ], [ %.035, %._crit_edge ] ; 4 uses
  %.035 = getelementptr i8, ptr %.pn37, i64 -64   ; 2 uses
  %.036 = getelementptr i8, ptr %.pn, i64 -64     ; 4 uses
  %i.at = getelementptr i8, ptr %.pn, i64 -50
  %i.au = load i8, ptr %i.at, align 2, !tbaa !439
  %i.av = and i8 %i.au, -16
  %i.aw = getelementptr i8, ptr %.pn37, i64 -50   ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !439
  %i.ay = add i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.aw, align 2, !tbaa !439
  %i.az = getelementptr i8, ptr %.pn, i64 -49
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !437
  %i.bb = getelementptr i8, ptr %.pn37, i64 -49
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !437
  %i.bc = load <16 x i8>, ptr %.036, align 16, !tbaa !274
  %i.bd = icmp slt <16 x i8> %i.bc, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = and i16 %i.be, 4095                     ; 2 uses
  %.not5759 = icmp eq i16 %i.bf, 0
  br i1 %.not5759, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %.sroa.0.0.extract.trunc = zext nneg i16 %i.bf to i32
  %i.bg = icmp ne ptr %.036, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr i8, ptr %.pn, i64 -48
  %i.bi = getelementptr i8, ptr %.pn37, i64 -48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.03462 = phi i64 [ 0, %.lr.ph ], [ %i.by, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.0.061 = phi i32 [ %.sroa.0.0.extract.trunc, %.lr.ph ], [ %.sroa.0.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.060 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 2 uses
  %i.bj = and i32 %.sroa.0.061, 1
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !278

bb.j:                                             ; preds = %bb.i
  %i.bk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0.061, i1 true) ; 2 uses
  %i.bl = add i32 %i.bk, %.sroa.8.060
  %i.bm = add nuw nsw i32 %i.bk, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.i, %bb.j
  %.sroa.8.1.in = phi i32 [ %i.bl, %bb.j ], [ %.sroa.8.060, %bb.i ] ; 2 uses
  %.pn58 = phi i32 [ %i.bm, %bb.j ], [ 1, %bb.i ]
  %i.bn = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !248
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.03462
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !248
  %i.br = getelementptr inbounds nuw i8, ptr %.035, i64 %.03462 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !274
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.036, i64 %i.bn
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !274
  %.sroa.0.1 = lshr i32 %.sroa.0.061, %.pn58      ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !274
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !253 ; 2 uses
  %3 = and i64 %i.bw, -256
  %i.bx = add i64 %3, 256
  %4 = and i64 %i.bw, 255
  %5 = or disjoint i64 %i.bx, %4                  ; 2 uses
  store i64 %5, ptr %i.d, align 8, !tbaa !253
  %i.by = add i64 %.03462, 1
  %.not57 = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not57, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !1222

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !253
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.bz = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ar, %bb.h ] ; 2 uses
  %i.ca = phi i64 [ %5, %._crit_edge.loopexit ], [ %i.as, %bb.h ] ; 2 uses
  %.not.unshifted = xor i64 %i.bz, %i.ca
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !1223

.loopexit:                                        ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSG_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1227 {
bb.a:
  %2 = alloca %class.anon.234, align 1            ; 3 uses
  %3 = alloca %"struct.std::array.95", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !253
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 4 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 3 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !278

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit
  %.0124 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %3, %bb.a ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0124, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !253
  %i.i = lshr i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.k = invoke noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSE_ZNSE_11beforeBuildEmmSH_EUlRKSt4pairIKS8_SB_EE_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.g, align 8, !tbaa !253
  %i.n = and i64 %i.m, 255
  %.idx = shl nuw i64 64, %i.n
  %i.o = add nsw i64 %.idx, -64
  %i.p = lshr exact i64 %i.o, 6
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.0116 = phi i64 [ %i.p, %bb.e ], [ %i.hy, %.loopexit ] ; 4 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !259
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %.0116 ; 6 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp slt <16 x i8> %i.s, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 4095                       ; 2 uses
  %.sroa.088.0.extract.trunc = zext nneg i16 %i.v to i32 ; 3 uses
  %.not127142 = icmp eq i16 %i.v, 0
  %i.w = extractelement <16 x i8> %i.s, i64 14
  br i1 %.not127142, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.x = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = load ptr, ptr %0, align 8, !tbaa !260
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.aa = icmp ult i8 %i.w, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.aa, label %.lr.ph152, label %.lr.ph148

bb.g:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSI_EEvOT_EUlvE_Lb1EED2Ev.exit76

bb.h:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.085.0144 = phi i32 [ %.sroa.088.0.extract.trunc, %.lr.ph ], [ %.sroa.085.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0143 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ad = and i32 %.sroa.085.0144, 1
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.i, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !278

bb.i:                                             ; preds = %bb.h
  %i.ae = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.085.0144, i1 true) ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.8.0143
  %i.ag = add nuw nsw i32 %i.ae, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.h, %bb.i
  %.sroa.8.1.in = phi i32 [ %i.af, %bb.i ], [ %.sroa.8.0143, %bb.h ] ; 2 uses
  %.pn131 = phi i32 [ %i.ag, %bb.i ], [ 1, %bb.h ]
  %.sroa.085.1 = lshr i32 %.sroa.085.0144, %.pn131 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.ah = zext i32 %.sroa.8.1.in to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !248
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.ak
  call void @llvm.prefetch.p0(ptr %i.al, i32 0, i32 3, i32 1)
  %.not127 = icmp eq i32 %.sroa.085.1, 0
  br i1 %.not127, label %._crit_edge, label %bb.h

.lr.ph152:                                        ; preds = %._crit_edge, %bb.m
  %.sroa.088.0151 = phi i32 [ %.sroa.088.2, %bb.m ], [ %.sroa.088.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.0150 = phi i32 [ %.sroa.12.2, %bb.m ], [ 0, %._crit_edge ] ; 2 uses
  %i.am = and i32 %.sroa.088.0151, 1
  %.not.i58 = icmp eq i32 %i.am, 0
  br i1 %.not.i58, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60, !prof !278

bb.j:                                             ; preds = %.lr.ph152
  %i.an = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.088.0151, i1 true) ; 2 uses
  %i.ao = add i32 %i.an, %.sroa.12.0150
  %i.ap = add nuw nsw i32 %i.an, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60: ; preds = %.lr.ph152, %bb.j
  %.sroa.12.2.in = phi i32 [ %i.ao, %bb.j ], [ %.sroa.12.0150, %.lr.ph152 ] ; 2 uses
  %.pn130 = phi i32 [ %i.ap, %bb.j ], [ 1, %.lr.ph152 ]
  %.sroa.088.2 = lshr i32 %.sroa.088.0151, %.pn130 ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %i.aq = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !248
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !tbaa !274 ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !253
  %i.az = and i64 %i.ay, 255                      ; 2 uses
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !259 ; 2 uses
  %i.bb = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0116, i64 range(i64 0, 256) %i.az) ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0124, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !274 ; 2 uses
  %i.be = icmp ult i8 %i.bd, 12
  br i1 %i.be, label %._crit_edge.i, label %.lr.ph.i, !prof !433

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.bf = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.bb, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 15 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !437 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bi, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bj = add i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !437
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.k, %.lr.ph.i
  %i.bk = add i64 %i.ax, %i.bf
  %i.bl = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bk, i64 range(i64 0, 256) %i.az) ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0124, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !274 ; 2 uses
  %i.bo = icmp ult i8 %i.bn, 12
  br i1 %i.bo, label %._crit_edge.i, label %.lr.ph.i, !prof !438, !llvm.loop !14

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60
  %.lcssa22.i = phi i64 [ %i.bb, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60 ], [ %i.bl, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i8 [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60 ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.bd, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60 ], [ %i.bn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %.lcssa22.i ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0124, i64 %.lcssa22.i
  %i.bq = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !274
  %i.br = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !274
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

bb.m:                                             ; preds = %._crit_edge.i
  store i8 %i.au, ptr %i.bs, align 1, !tbaa !274
  %i.bv = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !439
  %i.bx = add i8 %i.bw, %.0.lcssa.i
  store i8 %i.bx, ptr %i.bv, align 2, !tbaa !439
  %i.by = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.br
  %i.ca = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  store i32 %i.as, ptr %i.bz, align 4, !tbaa !248
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !253 ; 2 uses
  %4 = and i64 %i.cb, -256
  %i.cc = add i64 %4, 256
  %5 = and i64 %i.cb, 255
  %6 = or disjoint i64 %i.cc, %5
  store i64 %6, ptr %i.a, align 8, !tbaa !253
  %.not129 = icmp eq i32 %.sroa.088.2, 0
  br i1 %.not129, label %.loopexit, label %.lr.ph152, !llvm.loop !1225

.lr.ph148:                                        ; preds = %._crit_edge, %bb.z
  %.sroa.088.1147 = phi i32 [ %.sroa.088.3, %bb.z ], [ %.sroa.088.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.1146 = phi i32 [ %.sroa.12.3, %bb.z ], [ 0, %._crit_edge ] ; 2 uses
  %i.cd = and i32 %.sroa.088.1147, 1
  %.not.i61 = icmp eq i32 %i.cd, 0
  br i1 %.not.i61, label %bb.n, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63, !prof !278

bb.n:                                             ; preds = %.lr.ph148
  %i.ce = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.088.1147, i1 true) ; 2 uses
  %i.cf = add i32 %i.ce, %.sroa.12.1146
  %i.cg = add nuw nsw i32 %i.ce, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63: ; preds = %.lr.ph148, %bb.n
  %.sroa.12.3.in = phi i32 [ %i.cf, %bb.n ], [ %.sroa.12.1146, %.lr.ph148 ] ; 2 uses
  %.pn = phi i32 [ %i.cg, %bb.n ], [ 1, %.lr.ph148 ]
  %.sroa.088.3 = lshr i32 %.sroa.088.1147, %.pn   ; 2 uses
  %.sroa.12.3 = add i32 %.sroa.12.3.in, 1
  %i.ch = zext i32 %.sroa.12.3.in to i64          ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !248 ; 2 uses
  %i.ck = load ptr, ptr %1, align 8, !tbaa !260
  %i.cl = zext i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !266 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !264 ; 13 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cp ; 3 uses
  %i.cr = icmp ult i64 %i.cp, 17
  br i1 %i.cr, label %bb.o, label %bb.s, !prof !249

bb.o:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63
  %i.cs = icmp samesign ugt i64 %i.cp, 3
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = xor i64 %i.cp, 4766890152743124950      ; 2 uses
  %i.cu = icmp samesign ugt i64 %i.cp, 7
  br i1 %i.cu, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i: ; preds = %bb.p
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.cn, align 1
  %.0.copyload.i.i15.i = load i64, ptr %i.cv, align 1
  br label %bb.u

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i: ; preds = %bb.p
  %i.cw = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %.0.copyload.i.i16.i = load i32, ptr %i.cn, align 1
  %i.cx = zext i32 %.0.copyload.i.i16.i to i64
  %.0.copyload.i.i17.i = load i32, ptr %i.cw, align 1
  %i.cy = zext i32 %.0.copyload.i.i17.i to i64
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %.not.i.i78 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i78, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = load i8, ptr %i.cn, align 1, !tbaa !274
  %i.da = sext i8 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 45
  %i.dc = getelementptr i8, ptr %i.cq, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !274
  %i.de = sext i8 %i.dd to i64
  %i.df = or i64 %i.db, %i.de
  %i.dg = lshr i64 %i.cp, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !274
  %i.dj = sext i8 %i.di to i64
  br label %bb.u

bb.s:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63
  %i.dk = icmp ugt i64 %i.cp, 48
  br i1 %i.dk, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i: ; preds = %bb.s, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %.069.i.i = phi i64 [ %i.ep, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.cp, %bb.s ]
  %.067.i.i = phi i64 [ %i.dt, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.066.i.i = phi ptr [ %i.eo, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.cn, %bb.s ] ; 7 uses
  %.065.i.i = phi i64 [ %i.ed, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.i.i = phi i64 [ %i.en, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.copyload.i.i18.i = load i64, ptr %.066.i.i, align 1
  %i.dl = xor i64 %.0.copyload.i.i18.i, 3257665815644502181
  %i.dm = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 8
  %.0.copyload.i.i19.i = load i64, ptr %i.dm, align 1
  %i.dn = xor i64 %.0.copyload.i.i19.i, %.067.i.i
  %i.do = zext i64 %i.dl to i128
  %i.dp = zext i64 %i.dn to i128
  %i.dq = mul nuw i128 %i.dp, %i.do               ; 2 uses
  %i.dr = lshr i128 %i.dq, 64
  %i.ds = xor i128 %i.dr, %i.dq
  %i.dt = trunc i128 %i.ds to i64                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 16
  %.0.copyload.i.i20.i = load i64, ptr %i.du, align 1
  %i.dv = xor i64 %.0.copyload.i.i20.i, -8378864009470890807
  %i.dw = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 24
  %.0.copyload.i.i21.i = load i64, ptr %i.dw, align 1
  %i.dx = xor i64 %.0.copyload.i.i21.i, %.065.i.i
  %i.dy = zext i64 %i.dv to i128
  %i.dz = zext i64 %i.dx to i128
  %i.ea = mul nuw i128 %i.dz, %i.dy               ; 2 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = xor i128 %i.eb, %i.ea
  %i.ed = trunc i128 %i.ec to i64                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 32
  %.0.copyload.i.i22.i = load i64, ptr %i.ee, align 1
  %i.ef = xor i64 %.0.copyload.i.i22.i, 5418857496715711651
  %i.eg = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 40
  %.0.copyload.i.i23.i = load i64, ptr %i.eg, align 1
  %i.eh = xor i64 %.0.copyload.i.i23.i, %.0.i.i
  %i.ei = zext i64 %i.ef to i128
  %i.ej = zext i64 %i.eh to i128
  %i.ek = mul nuw i128 %i.ej, %i.ei               ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = xor i128 %i.el, %i.ek
  %i.en = trunc i128 %i.em to i64                 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 48 ; 3 uses
  %i.ep = add i64 %.069.i.i, -48                  ; 5 uses
  %i.eq = icmp ugt i64 %i.ep, 48
  br i1 %i.eq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %bb.t, !llvm.loop !4

bb.t:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %i.er = xor i64 %i.ed, %i.dt
  %i.es = xor i64 %i.er, %i.en                    ; 2 uses
  %i.et = icmp samesign ugt i64 %i.ep, 16
  br i1 %i.et, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i: ; preds = %bb.t, %bb.s
  %.1.i72.i = phi ptr [ %i.eo, %bb.t ], [ %i.cn, %bb.s ] ; 6 uses
  %.168.i70.i = phi i64 [ %i.es, %bb.t ], [ 4766890152743124950, %bb.s ]
  %.170.i69.i = phi i64 [ %i.ep, %bb.t ], [ %i.cp, %bb.s ] ; 3 uses
  %.0.copyload.i.i24.i = load i64, ptr %.1.i72.i, align 1
  %i.eu = xor i64 %.0.copyload.i.i24.i, 5418857496715711651
  %i.ev = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 8
  %.0.copyload.i.i25.i = load i64, ptr %i.ev, align 1
  %i.ew = xor i64 %.0.copyload.i.i25.i, %.168.i70.i
  %i.ex = zext i64 %i.eu to i128
  %i.ey = zext i64 %i.ew to i128
  %i.ez = mul nuw i128 %i.ey, %i.ex               ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = xor i128 %i.fa, %i.ez
  %i.fc = trunc i128 %i.fb to i64                 ; 2 uses
  %i.fd = icmp samesign ugt i64 %.170.i69.i, 32
  br i1 %i.fd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 16
  %.0.copyload.i.i26.i = load i64, ptr %i.fe, align 1
  %i.ff = xor i64 %.0.copyload.i.i26.i, 5418857496715711651
  %i.fg = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 24
  %.0.copyload.i.i27.i = load i64, ptr %i.fg, align 1
  %i.fh = xor i64 %.0.copyload.i.i27.i, %i.fc
  %i.fi = zext i64 %i.ff to i128
  %i.fj = zext i64 %i.fh to i128
  %i.fk = mul nuw i128 %i.fj, %i.fi               ; 2 uses
  %i.fl = lshr i128 %i.fk, 64
  %i.fm = xor i128 %i.fl, %i.fk
  %i.fn = trunc i128 %i.fm to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, %bb.t
  %.1.i71.i = phi ptr [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.eo, %bb.t ]
  %.170.i68.i = phi i64 [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.ep, %bb.t ] ; 3 uses
  %.2.i.i = phi i64 [ %i.fn, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %i.fc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.es, %bb.t ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.1.i71.i, i64 %.170.i68.i ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -16
  %.0.copyload.i.i28.i = load i64, ptr %i.fp, align 1
  %i.fq = xor i64 %.0.copyload.i.i28.i, %.170.i68.i
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 -8
  %.0.copyload.i.i29.i = load i64, ptr %i.fr, align 1
  br label %bb.u

bb.u:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i, %bb.q, %bb.r, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i
  %.064.i = phi i64 [ %.0.copyload.i.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.cx, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %i.fq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.df, %bb.r ], [ 0, %bb.q ]
  %.0.i77 = phi i64 [ %.0.copyload.i.i15.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.cy, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.0.copyload.i.i29.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.dj, %bb.r ], [ 0, %bb.q ]
  %.271.i.i = phi i64 [ %i.cp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.cp, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.170.i68.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.cp, %bb.r ], [ 0, %bb.q ]
  %.3.i.i = phi i64 [ %i.ct, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.ct, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.2.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ 4766890152743124950, %bb.r ], [ 4766890152743124950, %bb.q ]
  %i.fs = xor i64 %.064.i, -8378864009470890807
  %i.ft = xor i64 %.3.i.i, %.0.i77
  %i.fu = zext i64 %i.fs to i128
  %i.fv = zext i64 %i.ft to i128
  %i.fw = mul nuw i128 %i.fv, %i.fu               ; 2 uses
  %i.fx = trunc i128 %i.fw to i64
  %i.fy = lshr i128 %i.fw, 64
  %i.fz = trunc nuw i128 %i.fy to i64
  %i.ga = xor i64 %i.fx, -6148914691236517206
  %i.gb = xor i64 %.271.i.i, %i.fz
  %i.gc = xor i64 %i.gb, -8378864009470890807
  %i.gd = zext i64 %i.ga to i128
  %i.ge = zext i64 %i.gc to i128
  %i.gf = mul nuw i128 %i.ge, %i.gd               ; 2 uses
  %i.gg = lshr i128 %i.gf, 64
  %i.gh = xor i128 %i.gg, %i.gf
  %i.gi = trunc i128 %i.gh to i64                 ; 2 uses
  %i.gj = lshr i64 %i.gi, 56
  %i.gk = or i64 %i.gj, 128                       ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ch
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !274
  %i.gn = zext i8 %i.gm to i64
  %i.go = icmp eq i64 %i.gk, %i.gn
  br i1 %i.go, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSG_EEvOT_E30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.gp = shl nuw nsw i64 %i.gk, 1
  %i.gq = or disjoint i64 %i.gp, 1
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !253
  %i.gs = and i64 %i.gr, 255                      ; 2 uses
  %i.gt = load ptr, ptr %i.j, align 8, !tbaa !259 ; 2 uses
  %i.gu = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.gi, i64 range(i64 0, 256) %i.gs) ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0124, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !274 ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 12
  br i1 %i.gx, label %._crit_edge.i67, label %.lr.ph.i64, !prof !433

.lr.ph.i64:                                       ; preds = %bb.w, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i66
  %i.gy = phi i64 [ %i.he, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i66 ], [ %i.gu, %bb.w ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [64 x i8], ptr %i.gt, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 15 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !437 ; 2 uses
  %.not.i.i65 = icmp eq i8 %i.hb, -2
  br i1 %.not.i.i65, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i66, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i64
  %i.hc = add i8 %i.hb, 1
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !437
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i66

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i66: ; preds = %bb.x, %.lr.ph.i64
  %i.hd = add i64 %i.gq, %i.gy
  %i.he = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.hd, i64 range(i64 0, 256) %i.gs) ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0124, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !274 ; 2 uses
  %i.hh = icmp ult i8 %i.hg, 12
  br i1 %i.hh, label %._crit_edge.i67, label %.lr.ph.i64, !prof !438, !llvm.loop !14

._crit_edge.i67:                                  ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i66, %bb.w
  %.lcssa22.i68 = phi i64 [ %i.gu, %bb.w ], [ %i.he, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i66 ] ; 2 uses
  %.0.lcssa.i69 = phi i8 [ 0, %bb.w ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i66 ]
  %.lcssa.i70 = phi i8 [ %i.gw, %bb.w ], [ %i.hg, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i66 ] ; 2 uses
  %.lcssa21.i71 = getelementptr inbounds nuw [64 x i8], ptr %i.gt, i64 %.lcssa22.i68 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0124, i64 %.lcssa22.i68
  %i.hj = add nuw nsw i8 %.lcssa.i70, 1
  store i8 %i.hj, ptr %i.hi, align 1, !tbaa !274
  %i.hk = zext nneg i8 %.lcssa.i70 to i64         ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.lcssa21.i71, i64 %i.hk ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !274
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i67
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #47
  unreachable

bb.z:                                             ; preds = %._crit_edge.i67
  %i.ho = trunc nuw i64 %i.gk to i8
  store i8 %i.ho, ptr %i.hl, align 1, !tbaa !274
  %i.hp = getelementptr inbounds nuw i8, ptr %.lcssa21.i71, i64 14 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !439
  %i.hr = add i8 %i.hq, %.0.lcssa.i69
  store i8 %i.hr, ptr %i.hp, align 2, !tbaa !439
  %i.hs = getelementptr inbounds nuw i8, ptr %.lcssa21.i71, i64 16
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hk
  %i.hu = icmp ne ptr %.lcssa21.i71, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hu)
  store i32 %i.cj, ptr %i.ht, align 4, !tbaa !248
  %i.hv = load i64, ptr %i.a, align 8, !tbaa !253 ; 2 uses
  %7 = and i64 %i.hv, -256
  %i.hw = add i64 %7, 256
  %8 = and i64 %i.hv, 255
  %9 = or disjoint i64 %i.hw, %8
  store i64 %9, ptr %i.a, align 8, !tbaa !253
  %.not128 = icmp eq i32 %.sroa.088.3, 0
  br i1 %.not128, label %.loopexit, label %.lr.ph148, !llvm.loop !1226

.loopexit:                                        ; preds = %bb.z, %bb.m, %bb.f
  %i.hx = icmp eq i64 %.0116, 0
  %i.hy = add i64 %.0116, -1
  br i1 %i.hx, label %bb.aa, label %bb.f

bb.aa:                                            ; preds = %.loopexit
  br i1 %.not, label %bb.ab, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSI_EEvOT_EUlvE_Lb1EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.0124, i64 noundef %i.d) #43
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSI_EEvOT_EUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSI_EEvOT_EUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.ac:                                            ; preds = %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %.0124, i64 noundef %i.d) #43
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSI_EEvOT_EUlvE_Lb1EED2Ev.exit76

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSI_EEvOT_EUlvE_Lb1EED2Ev.exit76: ; preds = %bb.g, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSE_ZNSE_11beforeBuildEmmSH_EUlRKSt4pairIKS8_SB_EE_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1232 {
bb.a:
  %4 = alloca %"struct.std::pair.7", align 8      ; 11 uses
  %.not66 = icmp eq i64 %1, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !260
  %i.b = load ptr, ptr %2, align 8, !tbaa !260
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEED2Ev.exit, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEED2Ev.exit
  %.02061 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEED2Ev.exit ]
  %.02160 = phi ptr [ %i.a, %.lr.ph ], [ %i.ak, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEED2Ev.exit ] ; 9 uses
  %.02259 = phi ptr [ %i.b, %.lr.ph ], [ %i.aj, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEED2Ev.exit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.02160) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  store ptr %i.c, ptr %4, align 8, !tbaa !287, !alias.scope !1233
  %i.f = load ptr, ptr %.02259, align 8, !tbaa !266, !noalias !1233 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02259, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !264, !noalias !1233 ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !278

.noexc6.i.i.i:                                    ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #45
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.m, ptr %4, align 8, !tbaa !266, !alias.scope !1233
  store i64 %i.h, ptr %i.c, align 8, !tbaa !274, !alias.scope !1233
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc24, %bb.b
  %i.n = phi ptr [ %i.m, %.noexc24 ], [ %i.c, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !274
  store i8 %i.o, ptr %i.n, align 1, !tbaa !274
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  store i64 %i.h, ptr %i.d, align 8, !tbaa !264, !alias.scope !1233
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.p, align 1, !tbaa !274
  %i.q = getelementptr inbounds nuw i8, ptr %.02259, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !tbaa.struct !495
  %i.r = getelementptr inbounds nuw i8, ptr %.02160, i64 16 ; 3 uses
  store ptr %i.r, ptr %.02160, align 8, !tbaa !287
  %i.s = load ptr, ptr %4, align 8, !tbaa !266    ; 2 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !264  ; 8 uses
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.h, label %._crit_edge.i.i.i.i25

bb.h:                                             ; preds = %bb.g
  %i.v = icmp slt i64 %i.t, 0
  br i1 %i.v, label %.noexc.i.i.i28, label %bb.i

.noexc.i.i.i28:                                   ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #42
          to label %.noexc29 unwind label %.loopexit.split-lp36.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc.i.i.i28
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc6.i.i.i27, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i26, !prof !278

.noexc6.i.i.i27:                                  ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc30 unwind label %.loopexit.split-lp36.loopexit.split-lp

.noexc30:                                         ; preds = %.noexc6.i.i.i27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i26: ; preds = %bb.i
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #45
          to label %.noexc31 unwind label %.loopexit.split-lp36.loopexit.split-lp ; 2 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i26
  store ptr %i.y, ptr %.02160, align 8, !tbaa !266
  store i64 %i.t, ptr %i.r, align 8, !tbaa !274
  br label %._crit_edge.i.i.i.i25

._crit_edge.i.i.i.i25:                            ; preds = %.noexc31, %bb.g
  %i.z = phi ptr [ %i.y, %.noexc31 ], [ %i.r, %bb.g ] ; 3 uses
  switch i64 %i.t, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i25
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !274
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !274
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i25, %bb.j, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.02160, i64 8
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !264
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  store i8 0, ptr %i.ac, align 1, !tbaa !274
  %i.ad = getelementptr inbounds nuw i8, ptr %.02160, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !495
  %i.ae = load ptr, ptr %4, align 8, !tbaa !266   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !274
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #43
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ai = add nuw i64 %.02061, 1                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02259, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %.02160, i64 72
  %exitcond.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1230

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox13RuntimeMetricEED2Ev.exit34

.loopexit.split-lp36.loopexit.split-lp:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i26, %.noexc6.i.i.i27, %.noexc.i.i.i28
end_hunk_3
