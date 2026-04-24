inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0_@deflate_precompute_huffman_header:bb.a
  store i32 258, ptr %i.b, align 4, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2937
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %.not.30 = icmp eq i8 %i.bm, 0                  ; 2 uses
  %spec.store.select = select i1 %.not.30, i32 257, i32 258
  store i32 %spec.store.select, ptr %i.b, align 4
  %spec.select.a = select i1 %.not.30, i32 257, i32 258
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %storemerge.lcssa.a = phi i32 [ 288, %bb.a ], [ 265, %bb.x ], [ 273, %bb.p ], [ 287, %bb.b ], [ %spec.select.a, %bb.ae ], [ 286, %bb.c ], [ 272, %bb.q ], [ 285, %bb.d ], [ 259, %bb.ad ], [ 284, %bb.e ], [ 267, %bb.v ], [ 283, %bb.f ], [ 260, %bb.ac ], [ 282, %bb.g ], [ 271, %bb.r ], [ 281, %bb.h ], [ 261, %bb.ab ], [ 280, %bb.i ], [ 266, %bb.w ], [ 279, %bb.j ], [ 262, %bb.aa ], [ 278, %bb.k ], [ 270, %bb.s ], [ 277, %bb.l ], [ 263, %bb.z ], [ 276, %bb.m ], [ 268, %bb.u ], [ 275, %bb.n ], [ 264, %bb.y ], [ 274, %bb.o ], [ 269, %bb.t ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 6056 ; 34 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2968 ; 2 uses
  store i32 32, ptr %i.bn, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@deflate_precompute_huffman_header:bb.a
  store i32 2, ptr %i.bn, align 8, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2969
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !20
  %.not39.30 = icmp eq i8 %i.dy, 0                ; 2 uses
  %spec.store.select68 = select i1 %.not39.30, i32 1, i32 2
  store i32 %spec.store.select68, ptr %i.bn, align 8
  %spec.select69 = select i1 %.not39.30, i32 1, i32 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %storemerge38.lcssa.a = phi i32 [ 32, %bb.af ], [ 9, %bb.bc ], [ 17, %bb.au ], [ 31, %bb.ag ], [ %spec.select69, %bb.bj ], [ 30, %bb.ah ], [ 16, %bb.av ], [ 29, %bb.ai ], [ 3, %bb.bi ], [ 28, %bb.aj ], [ 11, %bb.ba ], [ 27, %bb.ak ], [ 4, %bb.bh ], [ 26, %bb.al ], [ 15, %bb.aw ], [ 25, %bb.am ], [ 5, %bb.bg ], [ 24, %bb.an ], [ 10, %bb.bb ], [ 23, %bb.ao ], [ 6, %bb.bf ], [ 22, %bb.ap ], [ 14, %bb.ax ], [ 21, %bb.aq ], [ 7, %bb.be ], [ 20, %bb.ar ], [ 12, %bb.az ], [ 19, %bb.as ], [ 8, %bb.bd ], [ 18, %bb.at ], [ 13, %bb.ay ] ; 2 uses
  br i1 %.not.not, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %1 = zext nneg i32 %storemerge.lcssa.a to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 %1
  %2 = zext nneg i32 %storemerge38.lcssa.a to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dz, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %2, i1 false)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !20
  %.pre57 = load i32, ptr %i.bn, align 8, !tbaa !20
  br label %bb.bm
end_hunk_1
