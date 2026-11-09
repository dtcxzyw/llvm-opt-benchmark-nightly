Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Immutables?download=true
inline.NumInlined: 904
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESF_ImmERKT_DpOT0_:bb.a
  %i.at = and i64 %.025.i85, %i.k
  %i.au = shl nuw nsw i64 %i.at, 6
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.au ; 3 uses
  %i.aw = load <16 x i8>, ptr %i.av, align 16     ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.aw, %i.h
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %i.ba = and i32 %i.az, 4095
  %.not70 = icmp eq i32 %i.ba, 0
  %i.bb = extractelement <16 x i8> %i.aw, i64 15
  br i1 %.not70, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.bc = icmp ne ptr %i.av, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.042.0 = phi i32 [ %i.bg, %.critedge.i ], [ %i.az, %.preheader ] ; 4 uses
  %i.bd = icmp ne i32 %.sroa.042.0, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.bf = add nuw nsw i32 %.sroa.042.0, 65535
  %i.bg = and i32 %i.bf, %.sroa.042.0             ; 2 uses
  %i.bh = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = getelementptr i8, ptr %i.av, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !34
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !50
  %i.bq = icmp eq i64 %.fr92, %i.bp
  br i1 %i.bq, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit, label %.critedge.i, !prof !36

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit: ; preds = %bb.e
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.bs = load ptr, ptr %4, align 8, !tbaa !48
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bs, ptr %i.br, i64 %.fr92)
  %i.bt = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bt, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i, !prof !53

.critedge.i:                                      ; preds = %bb.e, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit
  %i.bu = and i32 %i.bg, 4094
  %.not71 = icmp eq i32 %i.bu, 0
  br i1 %.not71, label %.loopexit.split, label %bb.e, !llvm.loop !95

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.bv = icmp eq i8 %i.bb, 0
  br i1 %i.bv, label %.thread68, label %bb.f, !prof !35

bb.f:                                             ; preds = %.loopexit.split
  %i.bw = add i64 %.023.i86, -1                   ; 2 uses
  %i.bx = add i64 %i.e, %.025.i85
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %.thread68, label %.split, !llvm.loop !96

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread: ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit, %bb.c
  %.us-phi = phi ptr [ %i.af, %bb.c ], [ %i.bj, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit ]
  %.us-phi80 = phi i64 [ %i.ad, %bb.c ], [ %i.bh, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit ]
  %i.by = getelementptr i8, ptr %.us-phi, i64 16
  br label %bb.o

.thread68:                                        ; preds = %.loopexit.split, %bb.f, %bb.d, %.loopexit.split.us.us, %..thread68_crit_edge
  %.pre-phi108 = phi i64 [ %.pre107, %..thread68_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.loopexit.split.us.us ], [ %i.j, %bb.f ], [ %i.j, %.loopexit.split ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread68_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.loopexit.split.us.us ], [ %i.i, %bb.f ], [ %i.i, %.loopexit.split ]
  %i.bz = phi ptr [ %.pre, %..thread68_crit_edge ], [ %i.m, %bb.d ], [ %i.m, %.loopexit.split.us.us ], [ %i.m, %bb.f ], [ %i.m, %.loopexit.split ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ca, align 1
  %i.cb = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.cc = add i64 %.pre-phi108, -1
  %i.cd = lshr i64 %i.cc, 12
  %i.ce = add nuw nsw i64 %i.cd, 1
  %i.cf = mul i64 %i.ce, %i.cb                    ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.cf
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread68
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi108, i64 noundef %i.cb, i64 noundef %i.cf)
  %.pre104 = load i64, ptr %i.a, align 8, !tbaa !37
  %.pre105 = load ptr, ptr %i.cg, align 8, !tbaa !28
  %.pre109 = and i64 %.pre104, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread68, %bb.g
  %.pre-phi110 = phi i64 [ %.pre-phi, %.thread68 ], [ %.pre109, %bb.g ]
  %i.ch = phi ptr [ %i.bz, %.thread68 ], [ %.pre105, %bb.g ] ; 4 uses
  %notmask.i31 = shl nsw i64 -1, %.pre-phi110
  %i.ci = xor i64 %notmask.i31, -1                ; 2 uses
  %i.cj = and i64 %2, %i.ci
  %i.ck = shl nuw nsw i64 %i.cj, 6                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = load <16 x i8>, ptr %i.cl, align 16, !tbaa !43
  %i.cn = icmp eq <16 x i8> %i.cm, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = and i16 %i.co, 4095                     ; 2 uses
  %.not72 = icmp eq i16 %i.cp, 0
  br i1 %.not72, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cq = shl i64 %3, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.cs = phi i64 [ %i.ck, %bb.h ], [ %i.cz, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.cx, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 15 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !44  ; 2 uses
  %.not.i32 = icmp eq i8 %i.cv, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !44
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cx = add i64 %i.cr, %.028                    ; 2 uses
  %i.cy = and i64 %i.cx, %i.ci
  %i.cz = shl nuw nsw i64 %i.cy, 6                ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cz
  %i.db = load <16 x i8>, ptr %i.da, align 16     ; 2 uses
  %i.dc = icmp eq <16 x i8> %i.db, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %i.de = and i16 %i.dd, 4095                     ; 2 uses
  %.not73 = icmp eq i16 %i.de, 0
  br i1 %.not73, label %bb.i, label %bb.k, !llvm.loop !97

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cz ; 2 uses
  %i.dg = extractelement <16 x i8> %i.db, i64 14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 14
  %i.di = add i8 %i.dg, 16
  store i8 %i.di, ptr %i.dh, align 2, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in = phi i16 [ %i.cp, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.de, %bb.k ]
  %.1 = phi ptr [ %i.cl, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.df, %bb.k ] ; 3 uses
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.dk = zext nneg i16 %i.dj to i64              ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dk ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !43
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.do = trunc i64 %3 to i8
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !43
  %i.dp = shl nuw nsw i64 %i.dk, 2
  %i.dq = getelementptr i8, ptr %.1, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 16     ; 3 uses
  %i.ds = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ds)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !37
  %i.du = lshr i64 %i.dt, 8                       ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !34
  %i.dw = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !52, !noundef !52
  %i.dx = and i64 %i.du, 4294967295
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.dx ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 3 uses
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !49
  %i.ea = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !50 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, 16
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %i.ee, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dz, ptr noundef nonnull align 8 dereferenceable(1) %i.eb, i64 %i.eg, i1 false)
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !43
  store i64 %i.eh, ptr %i.dz, align 8, !tbaa !43
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !50
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !50
  store ptr %i.eb, ptr %5, align 8, !tbaa !48
  store i64 0, ptr %i.ei, align 8, !tbaa !50
  store i8 0, ptr %i.eb, align 8, !tbaa !43
  %i.el = load i64, ptr %i.a, align 8, !tbaa !37
  %i.em = add i64 %i.el, 256
  store i64 %i.em, ptr %i.a, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit
  %.sink134 = phi ptr [ %i.by, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dr, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit ]
  %.us-phi80.sink = phi i64 [ %.us-phi80, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dk, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !99
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi80.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !54
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.en, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #14
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.17", align 1    ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !54
  store i64 %2, ptr %i.b, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6                            ; 2 uses
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i53 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i53, ptr %i.g, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.ac = sub i64 0, %.0.i53
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #31 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !56
  %i.ah = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.019.i.i = phi i64 [ %i.aw, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ 0, %bb.a ]
  %.01418.i.i = phi ptr [ %i.ax, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.ah, %bb.a ] ; 6 uses
  %.01517.i.i = phi ptr [ %i.ay, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.aj, %bb.a ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 16 ; 3 uses
  store ptr %i.ak, ptr %.01517.i.i, align 8, !tbaa !49
  %i.al = load ptr, ptr %.01418.i.i, align 8, !tbaa !48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 16
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.al, ptr %.01517.i.i, align 8, !tbaa !48
  %i.as = load i64, ptr %i.am, align 8, !tbaa !43
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !43
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !50
  store ptr %i.am, ptr %.01418.i.i, align 8, !tbaa !48
  store i64 0, ptr %i.at, align 8, !tbaa !50
  store i8 0, ptr %i.am, align 8, !tbaa !43
  %i.aw = add nuw i64 %.019.i.i, 1                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32
  %exitcond.not.i.i = icmp eq i64 %i.aw, %1
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %bb.a
  store ptr %i.aj, ptr %0, align 8, !tbaa !38
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !57
  %.not.i54 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i54, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.az = icmp ult i64 %4, 8
  br i1 %i.az, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bx, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ba = shl nsw i64 %.08.i, 6
  %i.bb = getelementptr inbounds i8, ptr %i.ag, i64 %i.ba
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = shl i64 %.08.i, 6
  %i.bd = getelementptr i8, ptr %i.ag, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = shl i64 %.08.i, 6
  %i.bg = getelementptr i8, ptr %i.ag, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 128
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSD_EEvOT_:bb.a
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #20 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE26buildFromF14TableCatchColdEPSD_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.i, !inline_history !146

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.h
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit

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
  tail call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE26buildFromF14TableCatchColdEPSD_(ptr noundef %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #20
  tail call void @__cxa_rethrow() #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.39, align 1             ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = lshr i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = call noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.g = load i64, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i.i43 = load i16, ptr %i.k, align 1
  %i.l = zext i16 %.0.copyload.i.i43 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = shl i64 12, %i.h
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.n = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.o = and i64 %i.n, 255                        ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.0.copyload.i.i45 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.0.copyload.i.i45 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46

bb.e:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.u = shl i64 12, %i.o
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46: ; preds = %bb.d, %bb.e
  %.0.i44 = phi i64 [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  %i.v = icmp eq i64 %.0.i, %.0.i44
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.0.copyload.i = load i16, ptr %i.x, align 1    ; 2 uses
  %i.y = zext i16 %.0.copyload.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 16
  %i.ab = shl i64 64, %i.h
  %.0.i47 = select i1 %i.i, i64 %i.aa, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.w, ptr align 16 %i.ad, i64 %.0.i47, i1 false)
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !37
  %i.af = and i64 %i.ae, -256
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !37
  %i.ah = and i64 %i.ag, 255
  %i.ai = or disjoint i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !37
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i16 %.0.copyload.i, ptr %i.ak, align 1
  br label %.loopexit

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %notmask = shl nsw i64 -1, %i.h
  %i.an = xor i64 %notmask, -1
  %i.ao = shl nuw nsw i64 %i.an, 6                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.as = phi i64 [ %i.cd, %._crit_edge ], [ %i.n, %bb.g ]
  %i.at = phi i64 [ %i.ce, %._crit_edge ], [ %i.g, %bb.g ]
  %.037 = phi ptr [ %i.cf, %._crit_edge ], [ %i.ap, %bb.g ] ; 7 uses
  %.036 = phi ptr [ %i.cg, %._crit_edge ], [ %i.ar, %bb.g ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.037, i64 14
  %i.av = load i8, ptr %i.au, align 2, !tbaa !42
  %i.aw = and i8 %i.av, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %.036, i64 14 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !42
  %i.az = add i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.ax, align 2, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %.037, i64 15
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %.036, i64 15
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !44
  %i.bd = load <16 x i8>, ptr %.037, align 16, !tbaa !43
  %i.be = icmp eq <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 4095                     ; 2 uses
  %.not5758 = icmp eq i16 %i.bg, 4095
  br i1 %.not5758, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bh = xor i16 %i.bg, 4095
  %.sroa.0.0.extract.trunc = zext nneg i16 %i.bh to i32
  %i.bi = icmp ne ptr %.037, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bi)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.03561 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.0.060 = phi i32 [ %.sroa.0.0.extract.trunc, %.lr.ph ], [ %.sroa.0.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.059 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 2 uses
  %i.bj = and i32 %.sroa.0.060, 1
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !66

bb.j:                                             ; preds = %bb.i
  %i.bk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0.060, i1 true) ; 2 uses
  %i.bl = add i32 %i.bk, %.sroa.8.059
  %i.bm = add nuw nsw i32 %i.bk, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.i, %bb.j
  %.sroa.8.1.in = phi i32 [ %i.bl, %bb.j ], [ %.sroa.8.059, %bb.i ] ; 2 uses
  %.pn = phi i32 [ %i.bm, %bb.j ], [ 1, %bb.i ]
  %i.bn = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = getelementptr i8, ptr %.037, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !34
  %i.bs = shl i64 %.03561, 2
  %i.bt = getelementptr i8, ptr %.036, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %.036, i64 %.03561 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.037, i64 %i.bn
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !43
  %.sroa.0.1 = lshr i32 %.sroa.0.060, %.pn        ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !43
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !37
  %i.cb = add i64 %i.ca, 256                      ; 2 uses
  store i64 %i.cb, ptr %i.d, align 8, !tbaa !37
  %i.cc = add i64 %.03561, 1
  %.not57 = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not57, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !147

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.cd = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.as, %bb.h ] ; 2 uses
  %i.ce = phi i64 [ %i.cb, %._crit_edge.loopexit ], [ %i.at, %bb.h ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.037, i64 -64
  %i.cg = getelementptr inbounds i8, ptr %.036, i64 -64
  %.not.unshifted = xor i64 %i.cd, %i.ce
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !148

.loopexit:                                        ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.39, align 1             ; 3 uses
  %3 = alloca %"struct.std::array.17", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 4 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 3 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !66

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit
  %.0129 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %3, %bb.a ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0129, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = lshr i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.k = invoke noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.g, align 8, !tbaa !37
  %i.n = and i64 %i.m, 255
  %notmask.i60 = shl nsw i64 -1, %i.n
  %i.o = xor i64 %notmask.i60, -1
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.0121 = phi i64 [ %i.o, %bb.e ], [ %i.im, %.loopexit ] ; 4 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.q = shl nsw i64 %.0121, 6
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 7 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 4095                       ; 2 uses
  %i.w = xor i16 %i.v, 4095
  %.sroa.093.0.extract.trunc = zext nneg i16 %i.w to i32 ; 3 uses
  %.not132149 = icmp eq i16 %i.v, 4095
  %i.x = extractelement <16 x i8> %i.s, i64 14
  br i1 %.not132149, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %0, align 8, !tbaa !38
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.aa = icmp ult i8 %i.x, 16
  br i1 %i.aa, label %.lr.ph159, label %.lr.ph155

bb.g:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit81

bb.h:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.090.0151 = phi i32 [ %.sroa.093.0.extract.trunc, %.lr.ph ], [ %.sroa.090.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0150 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ac = and i32 %.sroa.090.0151, 1
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !66

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.090.0151, i1 true) ; 2 uses
  %i.ae = add i32 %i.ad, %.sroa.8.0150
  %i.af = add nuw nsw i32 %i.ad, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.h, %bb.i
  %.sroa.8.1.in = phi i32 [ %i.ae, %bb.i ], [ %.sroa.8.0150, %bb.h ] ; 2 uses
  %.pn136 = phi i32 [ %i.af, %bb.i ], [ 1, %bb.h ]
  %.sroa.090.1 = lshr i32 %.sroa.090.0151, %.pn136 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.ag = zext i32 %.sroa.8.1.in to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = getelementptr i8, ptr %i.r, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.al
  call void @llvm.prefetch.p0(ptr %i.am, i32 0, i32 3, i32 1)
  %.not132 = icmp eq i32 %.sroa.090.1, 0
  br i1 %.not132, label %._crit_edge, label %bb.h

.lr.ph159:                                        ; preds = %._crit_edge, %bb.m
  %.sroa.093.0158 = phi i32 [ %.sroa.093.2, %bb.m ], [ %.sroa.093.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.0157 = phi i32 [ %.sroa.12.2, %bb.m ], [ 0, %._crit_edge ] ; 2 uses
  %i.an = and i32 %.sroa.093.0158, 1
  %.not.i61 = icmp eq i32 %i.an, 0
  br i1 %.not.i61, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63, !prof !66

bb.j:                                             ; preds = %.lr.ph159
  %i.ao = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.093.0158, i1 true) ; 2 uses
  %i.ap = add i32 %i.ao, %.sroa.12.0157
  %i.aq = add nuw nsw i32 %i.ao, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63: ; preds = %.lr.ph159, %bb.j
  %.sroa.12.2.in = phi i32 [ %i.ap, %bb.j ], [ %.sroa.12.0157, %.lr.ph159 ] ; 2 uses
  %.pn135 = phi i32 [ %i.aq, %bb.j ], [ 1, %.lr.ph159 ]
  %.sroa.093.2 = lshr i32 %.sroa.093.0158, %.pn135 ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %i.ar = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr i8, ptr %i.r, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !43  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = or disjoint i64 %i.az, 1
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !37
  %i.bc = and i64 %i.bb, 255
  %notmask.i.i = shl nsw i64 -1, %i.bc
  %i.bd = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.bf = and i64 %.0121, %i.bd                   ; 4 uses
  %i.bg = shl nuw nsw i64 %i.bf, 6                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43  ; 2 uses
  %i.bj = icmp ult i8 %i.bi, 12
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.i, !prof !67

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.bk = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.bg, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ]
  %i.bl = phi i64 [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.bf, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 15 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !44  ; 2 uses
  %.not.i.i = icmp eq i8 %i.bo, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !44
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.k, %.lr.ph.i
  %i.bq = add nuw i64 %i.ba, %i.bl
  %i.br = and i64 %i.bq, %i.bd                    ; 4 uses
  %i.bs = shl nuw nsw i64 %i.br, 6                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !43  ; 2 uses
  %i.bv = icmp ult i8 %i.bu, 12
  br i1 %i.bv, label %._crit_edge.i, label %.lr.ph.i, !prof !68, !llvm.loop !2

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63
  %.lcssa22.i = phi i64 [ %i.bf, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.bg, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.bi, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pn.i ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0129, i64 %.lcssa22.i
  %i.bx = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !43
  %i.by = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.m:                                             ; preds = %._crit_edge.i
  store i8 %i.ax, ptr %i.bz, align 1, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !42
  %i.ce = add i8 %i.cd, %.0.lcssa.i
  store i8 %i.ce, ptr %i.cc, align 2, !tbaa !42
  %i.cf = shl nuw nsw i64 %i.by, 2
  %i.cg = getelementptr i8, ptr %.lcssa21.i, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16     ; 2 uses
  %i.ci = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  store i32 %i.av, ptr %i.ch, align 4, !tbaa !34
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !37
  %i.ck = add i64 %i.cj, 256
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !37
  %.not134 = icmp eq i32 %.sroa.093.2, 0
  br i1 %.not134, label %.loopexit, label %.lr.ph159, !llvm.loop !149

.lr.ph155:                                        ; preds = %._crit_edge, %bb.z
  %.sroa.093.1154 = phi i32 [ %.sroa.093.3, %bb.z ], [ %.sroa.093.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.1153 = phi i32 [ %.sroa.12.3, %bb.z ], [ 0, %._crit_edge ] ; 2 uses
  %i.cl = and i32 %.sroa.093.1154, 1
  %.not.i64 = icmp eq i32 %i.cl, 0
  br i1 %.not.i64, label %bb.n, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66, !prof !66

bb.n:                                             ; preds = %.lr.ph155
  %i.cm = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.093.1154, i1 true) ; 2 uses
  %i.cn = add i32 %i.cm, %.sroa.12.1153
  %i.co = add nuw nsw i32 %i.cm, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66: ; preds = %.lr.ph155, %bb.n
  %.sroa.12.3.in = phi i32 [ %i.cn, %bb.n ], [ %.sroa.12.1153, %.lr.ph155 ] ; 2 uses
  %.pn = phi i32 [ %i.co, %bb.n ], [ 1, %.lr.ph155 ]
  %.sroa.093.3 = lshr i32 %.sroa.093.1154, %.pn   ; 2 uses
  %.sroa.12.3 = add i32 %.sroa.12.3.in, 1
  %i.cp = zext i32 %.sroa.12.3.in to i64          ; 2 uses
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = getelementptr i8, ptr %i.r, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !34 ; 2 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !38
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !48 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !50 ; 13 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz ; 3 uses
  %i.db = icmp ult i64 %i.cz, 17
  br i1 %i.db, label %bb.o, label %bb.s, !prof !35

bb.o:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66
  %i.dc = icmp samesign ugt i64 %i.cz, 3
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dd = xor i64 %i.cz, 4766890152743124950      ; 2 uses
  %i.de = icmp samesign ugt i64 %i.cz, 7
  br i1 %i.de, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i: ; preds = %bb.p
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.cx, align 1
  %.0.copyload.i.i15.i = load i64, ptr %i.df, align 1
  br label %bb.u

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i: ; preds = %bb.p
  %i.dg = getelementptr inbounds i8, ptr %i.da, i64 -4
  %.0.copyload.i.i16.i = load i32, ptr %i.cx, align 1
  %i.dh = zext i32 %.0.copyload.i.i16.i to i64
  %.0.copyload.i.i17.i = load i32, ptr %i.dg, align 1
  %i.di = zext i32 %.0.copyload.i.i17.i to i64
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %.not.i.i83 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i83, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = load i8, ptr %i.cx, align 1, !tbaa !43
  %i.dk = sext i8 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 45
  %i.dm = getelementptr i8, ptr %i.da, i64 -1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !43
  %i.do = sext i8 %i.dn to i64
  %i.dp = or i64 %i.dl, %i.do
  %i.dq = lshr i64 %i.cz, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !43
  %i.dt = sext i8 %i.ds to i64
  br label %bb.u

bb.s:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66
  %i.du = icmp ugt i64 %i.cz, 48
  br i1 %i.du, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i: ; preds = %bb.s, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %.069.i.i = phi i64 [ %i.ez, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.cz, %bb.s ]
  %.067.i.i = phi i64 [ %i.ed, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.066.i.i = phi ptr [ %i.ey, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.cx, %bb.s ] ; 7 uses
  %.065.i.i = phi i64 [ %i.en, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.i.i = phi i64 [ %i.ex, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.copyload.i.i18.i = load i64, ptr %.066.i.i, align 1
  %i.dv = xor i64 %.0.copyload.i.i18.i, 3257665815644502181
  %i.dw = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 8
  %.0.copyload.i.i19.i = load i64, ptr %i.dw, align 1
  %i.dx = xor i64 %.0.copyload.i.i19.i, %.067.i.i
  %i.dy = zext i64 %i.dv to i128
  %i.dz = zext i64 %i.dx to i128
  %i.ea = mul nuw i128 %i.dz, %i.dy               ; 2 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = xor i128 %i.eb, %i.ea
  %i.ed = trunc i128 %i.ec to i64                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 16
  %.0.copyload.i.i20.i = load i64, ptr %i.ee, align 1
  %i.ef = xor i64 %.0.copyload.i.i20.i, -8378864009470890807
  %i.eg = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 24
  %.0.copyload.i.i21.i = load i64, ptr %i.eg, align 1
  %i.eh = xor i64 %.0.copyload.i.i21.i, %.065.i.i
  %i.ei = zext i64 %i.ef to i128
  %i.ej = zext i64 %i.eh to i128
  %i.ek = mul nuw i128 %i.ej, %i.ei               ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = xor i128 %i.el, %i.ek
  %i.en = trunc i128 %i.em to i64                 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 32
  %.0.copyload.i.i22.i = load i64, ptr %i.eo, align 1
  %i.ep = xor i64 %.0.copyload.i.i22.i, 5418857496715711651
  %i.eq = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 40
  %.0.copyload.i.i23.i = load i64, ptr %i.eq, align 1
  %i.er = xor i64 %.0.copyload.i.i23.i, %.0.i.i
  %i.es = zext i64 %i.ep to i128
  %i.et = zext i64 %i.er to i128
  %i.eu = mul nuw i128 %i.et, %i.es               ; 2 uses
  %i.ev = lshr i128 %i.eu, 64
  %i.ew = xor i128 %i.ev, %i.eu
  %i.ex = trunc i128 %i.ew to i64                 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 48 ; 3 uses
  %i.ez = add i64 %.069.i.i, -48                  ; 5 uses
  %i.fa = icmp ugt i64 %i.ez, 48
  br i1 %i.fa, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %bb.t, !llvm.loop !0

bb.t:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %i.fb = xor i64 %i.en, %i.ed
  %i.fc = xor i64 %i.fb, %i.ex                    ; 2 uses
  %i.fd = icmp samesign ugt i64 %i.ez, 16
  br i1 %i.fd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i: ; preds = %bb.t, %bb.s
  %.1.i72.i = phi ptr [ %i.ey, %bb.t ], [ %i.cx, %bb.s ] ; 6 uses
  %.168.i70.i = phi i64 [ %i.fc, %bb.t ], [ 4766890152743124950, %bb.s ]
  %.170.i69.i = phi i64 [ %i.ez, %bb.t ], [ %i.cz, %bb.s ] ; 3 uses
  %.0.copyload.i.i24.i = load i64, ptr %.1.i72.i, align 1
  %i.fe = xor i64 %.0.copyload.i.i24.i, 5418857496715711651
  %i.ff = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 8
  %.0.copyload.i.i25.i = load i64, ptr %i.ff, align 1
  %i.fg = xor i64 %.0.copyload.i.i25.i, %.168.i70.i
  %i.fh = zext i64 %i.fe to i128
  %i.fi = zext i64 %i.fg to i128
  %i.fj = mul nuw i128 %i.fi, %i.fh               ; 2 uses
  %i.fk = lshr i128 %i.fj, 64
  %i.fl = xor i128 %i.fk, %i.fj
  %i.fm = trunc i128 %i.fl to i64                 ; 2 uses
  %i.fn = icmp samesign ugt i64 %.170.i69.i, 32
  br i1 %i.fn, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 16
  %.0.copyload.i.i26.i = load i64, ptr %i.fo, align 1
  %i.fp = xor i64 %.0.copyload.i.i26.i, 5418857496715711651
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 24
  %.0.copyload.i.i27.i = load i64, ptr %i.fq, align 1
  %i.fr = xor i64 %.0.copyload.i.i27.i, %i.fm
  %i.fs = zext i64 %i.fp to i128
  %i.ft = zext i64 %i.fr to i128
  %i.fu = mul nuw i128 %i.ft, %i.fs               ; 2 uses
  %i.fv = lshr i128 %i.fu, 64
  %i.fw = xor i128 %i.fv, %i.fu
  %i.fx = trunc i128 %i.fw to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, %bb.t
  %.1.i71.i = phi ptr [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.ey, %bb.t ]
  %.170.i68.i = phi i64 [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.ez, %bb.t ] ; 3 uses
  %.2.i.i = phi i64 [ %i.fx, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %i.fm, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.fc, %bb.t ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.1.i71.i, i64 %.170.i68.i ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -16
  %.0.copyload.i.i28.i = load i64, ptr %i.fz, align 1
  %i.ga = xor i64 %.0.copyload.i.i28.i, %.170.i68.i
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 -8
  %.0.copyload.i.i29.i = load i64, ptr %i.gb, align 1
  br label %bb.u

bb.u:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i, %bb.q, %bb.r, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i
  %.064.i = phi i64 [ %.0.copyload.i.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dh, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %i.ga, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.dp, %bb.r ], [ 0, %bb.q ]
  %.0.i82 = phi i64 [ %.0.copyload.i.i15.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.di, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.0.copyload.i.i29.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.dt, %bb.r ], [ 0, %bb.q ]
  %.271.i.i = phi i64 [ %i.cz, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.cz, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.170.i68.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.cz, %bb.r ], [ 0, %bb.q ]
  %.3.i.i = phi i64 [ %i.dd, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dd, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.2.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ 4766890152743124950, %bb.r ], [ 4766890152743124950, %bb.q ]
  %i.gc = xor i64 %.064.i, -8378864009470890807
  %i.gd = xor i64 %.3.i.i, %.0.i82
  %i.ge = zext i64 %i.gc to i128
  %i.gf = zext i64 %i.gd to i128
  %i.gg = mul nuw i128 %i.gf, %i.ge               ; 2 uses
  %i.gh = trunc i128 %i.gg to i64
  %i.gi = lshr i128 %i.gg, 64
  %i.gj = trunc nuw i128 %i.gi to i64
  %i.gk = xor i64 %i.gh, -6148914691236517206
  %i.gl = xor i64 %.271.i.i, %i.gj
  %i.gm = xor i64 %i.gl, -8378864009470890807
  %i.gn = zext i64 %i.gk to i128
  %i.go = zext i64 %i.gm to i128
  %i.gp = mul nuw i128 %i.go, %i.gn               ; 2 uses
  %i.gq = lshr i128 %i.gp, 64
  %i.gr = xor i128 %i.gq, %i.gp
  %i.gs = trunc i128 %i.gr to i64                 ; 2 uses
  %i.gt = lshr i64 %i.gs, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 1) ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.cp
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !43
  %i.gw = zext i8 %i.gv to i64
  %i.gx = icmp eq i64 %.sroa.speculated.i.i.i, %i.gw
  br i1 %i.gx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_E30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.gy = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.gz = or disjoint i64 %i.gy, 1
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !37
  %i.hb = and i64 %i.ha, 255
  %notmask.i.i67 = shl nsw i64 -1, %i.hb
  %i.hc = xor i64 %notmask.i.i67, -1              ; 2 uses
  %i.hd = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.he = and i64 %i.hc, %i.gs                    ; 4 uses
  %i.hf = shl nuw nsw i64 %i.he, 6                ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.he
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !43  ; 2 uses
  %i.hi = icmp ult i8 %i.hh, 12
  br i1 %i.hi, label %._crit_edge.i71, label %.lr.ph.i68, !prof !67

.lr.ph.i68:                                       ; preds = %bb.w, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70
  %i.hj = phi i64 [ %i.hr, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ], [ %i.hf, %bb.w ]
  %i.hk = phi i64 [ %i.hq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ], [ %i.he, %bb.w ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hj
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 15 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !44  ; 2 uses
  %.not.i.i69 = icmp eq i8 %i.hn, -2
  br i1 %.not.i.i69, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i68
  %i.ho = add i8 %i.hn, 1
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !44
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70: ; preds = %bb.x, %.lr.ph.i68
  %i.hp = add nuw i64 %i.gz, %i.hk
  %i.hq = and i64 %i.hp, %i.hc                    ; 4 uses
  %i.hr = shl nuw nsw i64 %i.hq, 6                ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.hq
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !43  ; 2 uses
  %i.hu = icmp ult i8 %i.ht, 12
  br i1 %i.hu, label %._crit_edge.i71, label %.lr.ph.i68, !prof !68, !llvm.loop !2

._crit_edge.i71:                                  ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70, %bb.w
  %.lcssa22.i72 = phi i64 [ %i.he, %bb.w ], [ %i.hq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ]
  %.0.lcssa.i73 = phi i8 [ 0, %bb.w ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ]
  %.pn.i74 = phi i64 [ %i.hf, %bb.w ], [ %i.hr, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ]
  %.lcssa.i75 = phi i8 [ %i.hh, %bb.w ], [ %i.ht, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ] ; 2 uses
  %.lcssa21.i76 = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.pn.i74 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.0129, i64 %.lcssa22.i72
  %i.hw = add nuw nsw i8 %.lcssa.i75, 1
  store i8 %i.hw, ptr %i.hv, align 1, !tbaa !43
  %i.hx = zext nneg i8 %.lcssa.i75 to i64         ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.lcssa21.i76, i64 %i.hx ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !43
  %i.ia = icmp eq i8 %i.hz, 0
  br i1 %i.ia, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i71
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.z:                                             ; preds = %._crit_edge.i71
  %i.ib = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  store i8 %i.ib, ptr %i.hy, align 1, !tbaa !43
  %i.ic = getelementptr inbounds nuw i8, ptr %.lcssa21.i76, i64 14 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !42
  %i.ie = add i8 %i.id, %.0.lcssa.i73
  store i8 %i.ie, ptr %i.ic, align 2, !tbaa !42
  %i.if = shl nuw nsw i64 %i.hx, 2
  %i.ig = getelementptr i8, ptr %.lcssa21.i76, i64 %i.if
  %i.ih = getelementptr i8, ptr %i.ig, i64 16     ; 2 uses
  %i.ii = icmp ne ptr %.lcssa21.i76, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ii)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  store i32 %i.ct, ptr %i.ih, align 4, !tbaa !34
  %i.ij = load i64, ptr %i.a, align 8, !tbaa !37
  %i.ik = add i64 %i.ij, 256
  store i64 %i.ik, ptr %i.a, align 8, !tbaa !37
  %.not133 = icmp eq i32 %.sroa.093.3, 0
  br i1 %.not133, label %.loopexit, label %.lr.ph155, !llvm.loop !150

.loopexit:                                        ; preds = %bb.z, %bb.m, %bb.f
  %i.il = icmp eq i64 %.0121, 0
  %i.im = add nsw i64 %.0121, -1
  br i1 %i.il, label %bb.aa, label %bb.f

bb.aa:                                            ; preds = %.loopexit
  br i1 %.not, label %bb.ab, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.0129, i64 noundef %i.d) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.ac:                                            ; preds = %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %.0129, i64 noundef %i.d) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit81

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit81: ; preds = %bb.g, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.not39 = icmp eq i64 %1, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  %i.b = load ptr, ptr %2, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.02033 = phi i64 [ 0, %.lr.ph ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.02132 = phi ptr [ %i.a, %.lr.ph ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %.02231 = phi ptr [ %i.b, %.lr.ph ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.02132) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  store ptr %i.c, ptr %4, align 8, !tbaa !49, !alias.scope !155
  %i.e = load ptr, ptr %.02231, align 8, !tbaa !48, !noalias !155 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02231, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50, !noalias !155 ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #32
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !66

.noexc6.i.i:                                      ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #33
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.l, ptr %4, align 8, !tbaa !48, !alias.scope !155
  store i64 %i.g, ptr %i.c, align 8, !tbaa !43, !alias.scope !155
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc24, %bb.b
  %i.m = phi ptr [ %i.l, %.noexc24 ], [ %i.c, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !43
  store i8 %i.n, ptr %i.m, align 1, !tbaa !43
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  store i64 %i.g, ptr %i.d, align 8, !tbaa !50, !alias.scope !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.o, align 1, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %.02132, i64 16 ; 3 uses
  store ptr %i.p, ptr %.02132, align 8, !tbaa !49
  %i.q = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  store ptr %i.q, ptr %.02132, align 8, !tbaa !48
  %i.v = load i64, ptr %i.c, align 8, !tbaa !43
  store i64 %i.v, ptr %i.p, align 8, !tbaa !43
  %.pre = load i64, ptr %i.d, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.02132, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.y = add nuw i64 %.02033, 1                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02231, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.02132, i64 32
  %exitcond.not = icmp eq i64 %i.y, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !153

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.019 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp65, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %.019) #20 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %.not34 = icmp eq ptr %i.ac, %.02132
  br i1 %.not34, label %._crit_edge38, label %.lr.ph37

._crit_edge38:                                    ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit, %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.i

.lr.ph37:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit
  %.035 = phi ptr [ %i.ai, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit ], [ %i.ac, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.ad = load ptr, ptr %.035, align 8, !tbaa !48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.035, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph37
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit: ; preds = %.lr.ph37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ai, %.02132
  br i1 %.not, label %._crit_edge38, label %.lr.ph37, !llvm.loop !154

bb.i:                                             ; preds = %._crit_edge38
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.aj

bb.k:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

bb.l:                                             ; preds = %._crit_edge38
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 {
end_hunk_1
