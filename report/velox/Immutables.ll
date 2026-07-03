inline.NumInlined: 864
inline.NumDeleted: 421
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_:bb.a
_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.a, align 1
  %.0.copyload.i.i15 = load i64, ptr %i.i, align 1
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -4
  %.0.copyload.i.i16 = load i32, ptr %i.a, align 1
  %i.k = zext i32 %.0.copyload.i.i16 to i64
  %.0.copyload.i.i17 = load i32, ptr %i.j, align 1
  %i.l = zext i32 %.0.copyload.i.i17 to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.a, align 1, !tbaa !45
  %i.n = sext i8 %i.m to i64
  %i.o = shl nsw i64 %i.n, 45
  %i.p = getelementptr i8, ptr %i.d, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !45
  %i.r = sext i8 %i.q to i64
  %i.s = or i64 %i.o, %i.r
  %i.t = lshr i64 %i.c, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !45
  %i.w = sext i8 %i.v to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.f:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.c, 48
  br i1 %i.x, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2: ; preds = %bb.f, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %.069.i = phi i64 [ %i.bc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.c, %bb.f ]
  %.067.i = phi i64 [ %i.ag, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.066.i = phi ptr [ %i.bb, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.a, %bb.f ] ; 7 uses
  %.065.i = phi i64 [ %i.aq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.i = phi i64 [ %i.ba, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.copyload.i.i18 = load i64, ptr %.066.i, align 1
  %i.y = xor i64 %.0.copyload.i.i18, 3257665815644502181
  %i.z = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %.0.copyload.i.i19 = load i64, ptr %i.z, align 1
  %i.aa = xor i64 %.0.copyload.i.i19, %.067.i
  %i.ab = zext i64 %i.y to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = mul nuw i128 %i.ac, %i.ab               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.066.i, i64 16
  %.0.copyload.i.i20 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i20, -8378864009470890807
  %i.aj = getelementptr inbounds nuw i8, ptr %.066.i, i64 24
  %.0.copyload.i.i21 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i.i21, %.065.i
  %i.al = zext i64 %i.ai to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.am, %i.al               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.066.i, i64 32
  %.0.copyload.i.i22 = load i64, ptr %i.ar, align 1
  %i.as = xor i64 %.0.copyload.i.i22, 5418857496715711651
  %i.at = getelementptr inbounds nuw i8, ptr %.066.i, i64 40
  %.0.copyload.i.i23 = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i.i23, %.0.i
  %i.av = zext i64 %i.as to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %i.ay, %i.ax
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.066.i, i64 48 ; 3 uses
  %i.bc = add i64 %.069.i, -48                    ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 48
  br i1 %i.bd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %bb.g, !llvm.loop !56

bb.g:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %i.be = xor i64 %i.aq, %i.ag
  %i.bf = xor i64 %i.be, %i.ba                    ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, 16
  br i1 %i.bg, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10: ; preds = %bb.f, %bb.g
  %.1.i72 = phi ptr [ %i.bb, %bb.g ], [ %i.a, %bb.f ] ; 6 uses
  %.168.i70 = phi i64 [ %i.bf, %bb.g ], [ 4766890152743124950, %bb.f ]
  %.170.i69 = phi i64 [ %i.bc, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %.0.copyload.i.i24 = load i64, ptr %.1.i72, align 1
  %i.bh = xor i64 %.0.copyload.i.i24, 5418857496715711651
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i72, i64 8
  %.0.copyload.i.i25 = load i64, ptr %i.bi, align 1
  %i.bj = xor i64 %.0.copyload.i.i25, %.168.i70
  %i.bk = zext i64 %i.bh to i128
  %i.bl = zext i64 %i.bj to i128
  %i.bm = mul nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64                 ; 2 uses
  %i.bq = icmp samesign ugt i64 %.170.i69, 32
  br i1 %i.bq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %.0.copyload.i.i26 = load i64, ptr %i.br, align 1
  %i.bs = xor i64 %.0.copyload.i.i26, 5418857496715711651
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i72, i64 24
  %.0.copyload.i.i27 = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i27, %i.bp
  %i.bv = zext i64 %i.bs to i128
  %i.bw = zext i64 %i.bu to i128
  %i.bx = mul nuw i128 %i.bw, %i.bv               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, %bb.g
  %.1.i71 = phi ptr [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bb, %bb.g ]
  %.170.i68 = phi i64 [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bc, %bb.g ] ; 3 uses
  %.2.i = phi i64 [ %i.ca, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %i.bp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bf, %bb.g ]
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread65_crit_edge, label %bb.b

..thread65_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !12
  %.pre104 = shl nuw i64 1, %i.b
  br label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.fr89 = freeze i64 %i.o                        ; 3 uses
  %i.p = icmp eq i64 %.fr89, 0
  %6 = load ptr, ptr %4, align 8
  br i1 %i.p, label %.split.us, label %.split, !llvm.loop !57

.split.us:                                        ; preds = %bb.b, %bb.c
  %.0.i84.us = phi i64 [ %i.z, %bb.c ], [ %2, %bb.b ] ; 2 uses
  %.022.i83.us = phi i64 [ %i.y, %bb.c ], [ %i.j, %bb.b ]
  %i.q = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i84.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.h
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 4095                       ; 2 uses
  %.not6775.us = icmp eq i16 %i.v, 0
  %i.w = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not6775.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split.us
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.thread65, label %bb.c, !prof !29

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.y = add i64 %.022.i83.us, -1                 ; 2 uses
  %i.z = add i64 %i.e, %.0.i84.us
  %.not.i.us = icmp eq i64 %i.y, 0
  br i1 %.not.i.us, label %.thread65, label %.split.us, !llvm.loop !58

.lr.ph.us:                                        ; preds = %.split.us
  %i.aa = zext nneg i16 %i.v to i32
  %i.ab = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.040.076.us.us = phi i32 [ %i.aa, %.lr.ph.us ], [ %i.an, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ad = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.076.us.us, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !52
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us, !prof !30

.critedge.i.backedge.us.us:                       ; preds = %bb.d
  %i.am = add nsw i32 %.sroa.040.076.us.us, -1
  %i.an = and i32 %i.am, %.sroa.040.076.us.us     ; 2 uses
  %.not67.us.us = icmp eq i32 %i.an, 0
  br i1 %.not67.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.d, !llvm.loop !57

.split:                                           ; preds = %bb.b, %bb.g
  %.0.i84 = phi i64 [ %i.bn, %bb.g ], [ %2, %bb.b ] ; 2 uses
  %.022.i83 = phi i64 [ %i.bm, %bb.g ], [ %i.j, %bb.b ]
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i84, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.ao ; 3 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16     ; 2 uses
  %i.ar = icmp eq <16 x i8> %i.aq, %i.h
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 4095                     ; 2 uses
  %.not6775 = icmp eq i16 %i.at, 0
  %i.au = extractelement <16 x i8> %i.aq, i64 15
  br i1 %.not6775, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.av = zext nneg i16 %i.at to i32
  %i.aw = icmp ne ptr %i.ap, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.040.076 = phi i32 [ %i.av, %.lr.ph ], [ %i.ba, %.critedge.i.backedge ] ; 3 uses
  %i.ay = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.076, i1 true)
  %i.az = add nsw i32 %.sroa.040.076, -1
  %i.ba = and i32 %i.az, %.sroa.040.076           ; 2 uses
  %i.bb = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !52
  %i.bi = icmp eq i64 %.fr89, %i.bh
  br i1 %i.bi, label %bb.f, label %.critedge.i.backedge, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !47
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %6, ptr %i.bj, i64 %.fr89)
  %i.bk = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bk, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !59

.critedge.i.backedge:                             ; preds = %bb.f, %bb.e
  %.not67 = icmp eq i32 %i.ba, 0
  br i1 %.not67, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !57

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split
  %i.bl = icmp eq i8 %i.au, 0
  br i1 %i.bl, label %.thread65, label %bb.g, !prof !29

bb.g:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bm = add i64 %.022.i83, -1                   ; 2 uses
  %i.bn = add i64 %i.e, %.0.i84
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %.thread65, label %.split, !llvm.loop !58

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread: ; preds = %bb.f, %bb.d
  %.us-phi = phi i64 [ %i.ae, %bb.d ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bo = phi i64 [ %i.q, %bb.d ], [ %i.ao, %bb.f ]
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.us-phi
  br label %bb.p

.thread65:                                        ; preds = %bb.g, %.critedge.i._crit_edge.split, %bb.c, %.critedge.i._crit_edge.split.us.us, %..thread65_crit_edge
  %.pre-phi105 = phi i64 [ %.pre104, %..thread65_crit_edge ], [ %i.j, %bb.c ], [ %i.j, %.critedge.i._crit_edge.split.us.us ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.g ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread65_crit_edge ], [ %i.i, %bb.c ], [ %i.i, %.critedge.i._crit_edge.split.us.us ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.g ]
  %i.bs = phi ptr [ %.pre, %..thread65_crit_edge ], [ %i.l, %bb.c ], [ %i.l, %.critedge.i._crit_edge.split.us.us ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.g ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %.0.copyload.i.i = load i16, ptr %i.bt, align 1
  %i.bu = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.bv = add i64 %.pre-phi105, -1
  %i.bw = lshr i64 %i.bv, 12
  %i.bx = add nuw nsw i64 %i.bw, 1
  %i.by = mul i64 %i.bx, %i.bu                    ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.by
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi105, i64 noundef %i.bu, i64 noundef %i.by)
  %.pre101 = load ptr, ptr %i.bz, align 8, !tbaa !12
  %.pre102 = load i64, ptr %i.a, align 8, !tbaa !31
  %.pre106 = and i64 %.pre102, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread65, %bb.h
  %.pre-phi107 = phi i64 [ %.pre-phi, %.thread65 ], [ %.pre106, %bb.h ] ; 2 uses
  %i.ca = phi ptr [ %i.bs, %.thread65 ], [ %.pre101, %bb.h ] ; 3 uses
  %i.cb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi107) ; 2 uses
  %i.cc = getelementptr inbounds nuw [64 x i8], ptr %i.ca, i64 %i.cb ; 2 uses
  %i.cd = load <16 x i8>, ptr %i.cc, align 16, !tbaa !45
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = and i16 %i.cf, 4095                     ; 2 uses
  %.not68 = icmp eq i16 %i.cg, 4095
  br i1 %.not68, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.ch = shl i64 %3, 1
  %i.ci = or disjoint i64 %i.ch, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.cj = phi i64 [ %i.cb, %bb.i ], [ %i.cp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.co, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ck = getelementptr inbounds nuw [64 x i8], ptr %i.ca, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 15 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !46  ; 2 uses
  %.not.i31 = icmp eq i8 %i.cm, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = add i8 %i.cm, 1
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !46
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.co = add i64 %i.ci, %.028                    ; 2 uses
  %i.cp = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.co, i64 range(i64 0, 256) %.pre-phi107) ; 2 uses
  %i.cq = getelementptr inbounds nuw [64 x i8], ptr %i.ca, i64 %i.cp ; 3 uses
  %i.cr = load <16 x i8>, ptr %i.cq, align 16     ; 2 uses
  %i.cs = icmp slt <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.cu, 4095
  br i1 %.not69, label %bb.j, label %bb.l, !llvm.loop !60

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.cv = extractelement <16 x i8> %i.cr, i64 14
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  %i.cx = add i8 %i.cv, 16
  store i8 %i.cx, ptr %i.cw, align 2, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.cg, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cu, %bb.l ]
  %.1 = phi ptr [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.cq, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 4095
  %i.cy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.cz = zext nneg i16 %i.cy to i64              ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cz ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !45
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #29
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.dd = trunc i64 %3 to i8
  store i8 %i.dd, ptr %i.da, align 1, !tbaa !45
  %i.de = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cz ; 2 uses
  %i.dg = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !31
  %i.di = lshr i64 %i.dh, 8                       ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !7
  %i.dk = load ptr, ptr %1, align 8, !tbaa !32, !nonnull !55, !noundef !55
  %i.dl = and i64 %i.di, 4294967295
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dl ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 3 uses
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !51
  %i.do = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !52 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 16
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw nsw i64 %i.ds, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %i.dp, i64 %i.du, i1 false)
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !47
  %i.dv = load i64, ptr %i.dp, align 8, !tbaa !45
  store i64 %i.dv, ptr %i.dn, align 8, !tbaa !45
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !52
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !52
  store ptr %i.dp, ptr %5, align 8, !tbaa !47
  store i64 0, ptr %i.dw, align 8, !tbaa !52
  store i8 0, ptr %i.dp, align 8, !tbaa !45
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.ea = and i64 %i.dz, -256
  %i.eb = add i64 %i.ea, 256
  %i.ec = and i64 %i.dz, 255
  %i.ed = or disjoint i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.a, align 8, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit
  %.sink134 = phi ptr [ %i.br, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.df, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.cz, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !61
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !63
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ee, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_:bb.a

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -4
  %.0.copyload.i.i16 = load i32, ptr %i.b, align 1
  %i.k = zext i32 %.0.copyload.i.i16 to i64
  %.0.copyload.i.i17 = load i32, ptr %i.j, align 1
  %i.l = zext i32 %.0.copyload.i.i17 to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.b, align 1, !tbaa !45
  %i.n = sext i8 %i.m to i64
  %i.o = shl nsw i64 %i.n, 45
  %i.p = getelementptr i8, ptr %i.d, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !45
  %i.r = sext i8 %i.q to i64
  %i.s = or i64 %i.o, %i.r
  %i.t = lshr i64 %i.c, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !45
  %i.w = sext i8 %i.v to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.f:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.c, 48
  br i1 %i.x, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2: ; preds = %bb.f, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %.069.i = phi i64 [ %i.bc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.c, %bb.f ]
  %.067.i = phi i64 [ %i.ag, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.066.i = phi ptr [ %i.bb, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.b, %bb.f ] ; 7 uses
  %.065.i = phi i64 [ %i.aq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.i = phi i64 [ %i.ba, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.copyload.i.i18 = load i64, ptr %.066.i, align 1
  %i.y = xor i64 %.0.copyload.i.i18, 3257665815644502181
  %i.z = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %.0.copyload.i.i19 = load i64, ptr %i.z, align 1
  %i.aa = xor i64 %.0.copyload.i.i19, %.067.i
  %i.ab = zext i64 %i.y to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = mul nuw i128 %i.ac, %i.ab               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.066.i, i64 16
  %.0.copyload.i.i20 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i20, -8378864009470890807
  %i.aj = getelementptr inbounds nuw i8, ptr %.066.i, i64 24
  %.0.copyload.i.i21 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i.i21, %.065.i
  %i.al = zext i64 %i.ai to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.am, %i.al               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.066.i, i64 32
  %.0.copyload.i.i22 = load i64, ptr %i.ar, align 1
  %i.as = xor i64 %.0.copyload.i.i22, 5418857496715711651
  %i.at = getelementptr inbounds nuw i8, ptr %.066.i, i64 40
  %.0.copyload.i.i23 = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i.i23, %.0.i
  %i.av = zext i64 %i.as to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %i.ay, %i.ax
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.066.i, i64 48 ; 3 uses
  %i.bc = add i64 %.069.i, -48                    ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 48
  br i1 %i.bd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %bb.g, !llvm.loop !56

bb.g:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %i.be = xor i64 %i.aq, %i.ag
  %i.bf = xor i64 %i.be, %i.ba                    ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, 16
  br i1 %i.bg, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10: ; preds = %bb.f, %bb.g
  %.1.i72 = phi ptr [ %i.bb, %bb.g ], [ %i.b, %bb.f ] ; 6 uses
  %.168.i70 = phi i64 [ %i.bf, %bb.g ], [ 4766890152743124950, %bb.f ]
  %.170.i69 = phi i64 [ %i.bc, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %.0.copyload.i.i24 = load i64, ptr %.1.i72, align 1
  %i.bh = xor i64 %.0.copyload.i.i24, 5418857496715711651
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i72, i64 8
  %.0.copyload.i.i25 = load i64, ptr %i.bi, align 1
  %i.bj = xor i64 %.0.copyload.i.i25, %.168.i70
  %i.bk = zext i64 %i.bh to i128
  %i.bl = zext i64 %i.bj to i128
  %i.bm = mul nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64                 ; 2 uses
  %i.bq = icmp samesign ugt i64 %.170.i69, 32
  br i1 %i.bq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %.0.copyload.i.i26 = load i64, ptr %i.br, align 1
  %i.bs = xor i64 %.0.copyload.i.i26, 5418857496715711651
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i72, i64 24
  %.0.copyload.i.i27 = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i27, %i.bp
  %i.bv = zext i64 %i.bs to i128
  %i.bw = zext i64 %i.bu to i128
  %i.bx = mul nuw i128 %i.bw, %i.bv               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, %bb.g
  %.1.i71 = phi ptr [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bb, %bb.g ]
  %.170.i68 = phi i64 [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bc, %bb.g ] ; 3 uses
  %.2.i = phi i64 [ %i.ca, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %i.bp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bf, %bb.g ]
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
  %4 = load ptr, ptr %i.p, align 8, !tbaa !12     ; 2 uses
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = load i64, ptr %3, align 8
  %.fr36 = freeze i64 %i.s                        ; 3 uses
  %i.t = icmp eq i64 %.fr36, 0
  br i1 %i.t, label %.split.us, label %.split, !llvm.loop !132

.split.us:                                        ; preds = %bb.b, %bb.c
  %.0.i33.us = phi i64 [ %i.ad, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.022.i32.us = phi i64 [ %i.ac, %bb.c ], [ %i.o, %bb.b ]
  %i.u = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i33.us, i64 range(i64 0, 256) %i.n)
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.w = load <16 x i8>, ptr %i.v, align 16       ; 2 uses
  %i.x = icmp eq <16 x i8> %i.w, %i.l
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = and i16 %i.y, 4095                       ; 2 uses
  %.not30.us = icmp eq i16 %i.z, 0
  %i.aa = extractelement <16 x i8> %i.w, i64 15
  br i1 %.not30.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split.us
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.ac = add i64 %.022.i32.us, -1                ; 2 uses
  %i.ad = add i64 %i.i, %.0.i33.us
  %.not.i.us = icmp eq i64 %i.ac, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.split.us, !llvm.loop !133

.lr.ph.us:                                        ; preds = %.split.us
  %i.ae = zext nneg i16 %i.z to i32
  %i.af = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.backedge.us.us, %.lr.ph.us
  %.sroa.07.031.us.us = phi i32 [ %i.ae, %.lr.ph.us ], [ %i.aq, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.ah = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.031.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !52
  %.not.i.i.i.us.us = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.critedge.i.backedge.us.us, !prof !30

.critedge.i.backedge.us.us:                       ; preds = %bb.d
  %i.ap = add nsw i32 %.sroa.07.031.us.us, -1
  %i.aq = and i32 %i.ap, %.sroa.07.031.us.us      ; 2 uses
  %.not.us.us = icmp eq i32 %i.aq, 0
  br i1 %.not.us.us, label %.critedge.i._crit_edge.split.us.us, label %bb.d, !llvm.loop !132

.split:                                           ; preds = %bb.b, %bb.g
  %.0.i33 = phi i64 [ %i.bp, %bb.g ], [ %i.e, %bb.b ] ; 2 uses
  %.022.i32 = phi i64 [ %i.bo, %bb.g ], [ %i.o, %bb.b ]
  %i.ar = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i33, i64 range(i64 0, 256) %i.n)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.ar ; 3 uses
  %i.at = load <16 x i8>, ptr %i.as, align 16     ; 2 uses
  %i.au = icmp eq <16 x i8> %i.at, %i.l
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = and i16 %i.av, 4095                     ; 2 uses
  %.not30 = icmp eq i16 %i.aw, 0
  %i.ax = extractelement <16 x i8> %i.at, i64 15
  br i1 %.not30, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.ay = zext nneg i16 %i.aw to i32
  %i.az = icmp ne ptr %i.as, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.07.031 = phi i32 [ %i.ay, %.lr.ph ], [ %i.bd, %.critedge.i.backedge ] ; 3 uses
  %i.bb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.031, i1 true)
  %i.bc = add nsw i32 %.sroa.07.031, -1
  %i.bd = and i32 %i.bc, %.sroa.07.031            ; 2 uses
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !52
  %.not.i.i.i = icmp eq i64 %.fr36, %i.bk
  br i1 %.not.i.i.i, label %bb.f, label %.critedge.i.backedge, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !47
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.r, ptr %i.bl, i64 %.fr36)
  %i.bm = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.critedge.i.backedge, !prof !59

.critedge.i.backedge:                             ; preds = %bb.f, %bb.e
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.critedge.i._crit_edge.split, label %bb.e, !llvm.loop !132

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split
  %i.bn = icmp eq i8 %i.ax, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.g, !prof !29

bb.g:                                             ; preds = %.critedge.i._crit_edge.split
  %i.bo = add i64 %.022.i32, -1                   ; 2 uses
  %i.bp = add i64 %i.i, %.0.i33
  %.not.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.split, !llvm.loop !133

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit: ; preds = %bb.g, %.critedge.i._crit_edge.split, %bb.f, %bb.c, %.critedge.i._crit_edge.split.us.us, %bb.d, %bb.a
  %.sroa.06.0 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.c ], [ false, %.critedge.i._crit_edge.split.us.us ], [ false, %.critedge.i._crit_edge.split ], [ false, %bb.g ]
  ret i1 %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly8settings21frozenSettingProjectsEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::settings::FrozenSettingProjects") align 8 %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::F14FastSet", align 16 ; 11 uses
  %2 = alloca %"class.folly::F14FastSet", align 16 ; 8 uses
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
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %.pre19 = load ptr, ptr %2, align 16, !tbaa !32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %i.v = phi ptr [ %i.ac, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre19, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i = phi i64 [ %i.ad, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.05.i.i.i ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !45
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #30
  %.pre = load ptr, ptr %2, align 16, !tbaa !32
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ac = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i ]
  %i.ad = add nuw nsw i64 %.05.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ad, %i.o
  br i1 %exitcond.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !144

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.e, align 16, !tbaa !31
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.e
  %i.ae = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.af = icmp ult i64 %i.ae, 256
  br i1 %i.af, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.ag = and i64 %i.ae, 255                      ; 2 uses
  store i64 %i.ag, ptr %i.e, align 16, !tbaa !31
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.f, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.ah = phi i64 [ %i.ae, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %.0.copyload.i.i = load i16, ptr %i.aj, align 1
  %i.ak = zext i16 %.0.copyload.i.i to i64
  %i.al = icmp eq i64 %i.ah, 0
  %i.am = shl nuw nsw i64 %i.ak, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.am
  %.neg18.i = shl i64 -64, %i.ah
  %.0.i.neg.i = select i1 %i.al, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.d, align 8, !tbaa !12
  store i64 0, ptr %i.e, align 16, !tbaa !31
  %i.an = and i64 %.0.i.neg.i, -8
  %i.ao = shl nuw nsw i64 %i.r, 5
  %i.ap = mul i64 %i.ao, %i.u
  %i.aq = sub i64 %i.ap, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.aq) #21
  store ptr null, ptr %2, align 16, !tbaa !32
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %bb.d, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !12  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !141
  %i.au = icmp eq i8 %i.at, -1
  br i1 %i.au, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit18, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit
  %i.av = load i64, ptr %i.h, align 16, !tbaa !31 ; 3 uses
  %i.aw = lshr i64 %i.av, 8                       ; 2 uses
  %i.ax = and i64 %i.av, 255
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i.i1 = load i16, ptr %i.ay, align 1
  %i.az = zext i16 %.0.copyload.i.i.i1 to i64
  %notmask.i.i2 = shl nsw i64 -1, %i.ax
  %i.ba = xor i64 %notmask.i.i2, -1
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = add nuw nsw i64 %i.bb, 1
  %.not.i.i.i3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i3, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i11, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %bb.g
  %.pre21 = load ptr, ptr %1, align 16, !tbaa !32
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.preheader, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7
  %i.bd = phi ptr [ %i.bk, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7 ], [ %.pre21, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %.05.i.i.i5 = phi i64 [ %i.bl, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7 ], [ 0, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %.05.i.i.i5 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6: ; preds = %.lr.ph.i.i.i4
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !45
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #30
  %.pre20 = load ptr, ptr %1, align 16, !tbaa !32
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7: ; preds = %.lr.ph.i.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6
  %i.bk = phi ptr [ %.pre20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i6 ], [ %i.bd, %.lr.ph.i.i.i4 ]
  %i.bl = add nuw nsw i64 %.05.i.i.i5, 1          ; 2 uses
  %exitcond.not.i.i.i8 = icmp eq i64 %i.bl, %i.aw
  br i1 %exitcond.not.i.i.i8, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i9, label %.lr.ph.i.i.i4, !llvm.loop !144

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i9: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i7
  %.pre.i10 = load i64, ptr %i.h, align 16, !tbaa !31
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i11

end_hunk_1
