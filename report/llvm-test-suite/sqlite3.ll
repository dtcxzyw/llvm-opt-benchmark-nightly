Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 106
begin_hunk_0_@autoIncBegin:bb.a
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = mul nuw nsw i64 %i.hv, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ht, i8 0, i64 %i.hw, i1 false)
  br label %resizeOpArray.exit.i.i87

resizeOpArray.exit.i.i87:                         ; preds = %bb.ag, %sqlite3DbRealloc.exit.i.i.i93, %bb.af, %bb.ad
  %i.hx = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 42
  %i.hz = load i8, ptr %i.hy, align 2, !tbaa !129
  %.not24.i.i88 = icmp eq i8 %i.hz, 0
  %.pre127 = load i32, ptr %i.u, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i88, label %resizeOpArray.exit._crit_edge.i.i90, label %sqlite3VdbeAddOp2.exit94

resizeOpArray.exit._crit_edge.i.i90:              ; preds = %resizeOpArray.exit.i.i87, %sqlite3VdbeAddOp3.exit83
  %i.ia = phi i32 [ %i.hh, %sqlite3VdbeAddOp3.exit83 ], [ %.pre127, %resizeOpArray.exit.i.i87 ]
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.u, align 8, !tbaa !135
  %i.ic = load ptr, ptr %i.ew, align 8, !tbaa !136
  %i.id = sext i32 %i.hh to i64
  %i.ie = getelementptr inbounds [24 x i8], ptr %i.ic, i64 %i.id ; 6 uses
  store i8 90, ptr %i.ie, align 8, !tbaa !137
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 0, ptr %i.if, align 4, !tbaa !141
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i32 %i.bc, ptr %i.ig, align 8, !tbaa !140
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !190
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store ptr null, ptr %i.ii, align 8, !tbaa !37
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  store i8 0, ptr %i.ij, align 1, !tbaa !191
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 339
  store i8 0, ptr %i.ik, align 1, !tbaa !104
  %.pre126 = load i32, ptr %i.u, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit94

sqlite3VdbeAddOp2.exit94:                         ; preds = %resizeOpArray.exit.i.i87, %resizeOpArray.exit._crit_edge.i.i90
  %i.il = phi i32 [ %.pre127, %resizeOpArray.exit.i.i87 ], [ %.pre126, %resizeOpArray.exit._crit_edge.i.i90 ] ; 3 uses
  %i.im = add nsw i32 %.val, 2
  %i.in = load i32, ptr %i.w, align 4, !tbaa !147 ; 6 uses
  %.not.i.i95 = icmp sgt i32 %i.in, %i.il
  br i1 %.not.i.i95, label %resizeOpArray.exit._crit_edge.i.i101, label %bb.ah

bb.ah:                                            ; preds = %sqlite3VdbeAddOp2.exit94
  %.not23.i.i96 = icmp eq i32 %i.in, 0
  %i.io = shl nsw i32 %i.in, 1
  %spec.select.i.i97 = select i1 %.not23.i.i96, i32 42, i32 %i.io ; 4 uses
  %i.ip = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 42 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !129
  %i.is = icmp eq i8 %i.ir, 0
  br i1 %i.is, label %bb.ai, label %resizeOpArray.exit.i.i98

bb.ai:                                            ; preds = %bb.ah
  %i.it = mul i32 %spec.select.i.i97, 24
  %i.iu = load ptr, ptr %i.ew, align 8, !tbaa !136
  %i.iv = tail call ptr @sqlite3_realloc(ptr noundef %i.iu, i32 noundef %i.it) ; 3 uses
  %.not.i.i.i.i103 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i103, label %bb.aj, label %sqlite3DbRealloc.exit.i.i.i104

bb.aj:                                            ; preds = %bb.ai
  store i8 1, ptr %i.iq, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i98

sqlite3DbRealloc.exit.i.i.i104:                   ; preds = %bb.ai
  store i32 %spec.select.i.i97, ptr %i.w, align 4, !tbaa !147
  store ptr %i.iv, ptr %i.ew, align 8, !tbaa !136
  %i.iw = icmp sgt i32 %spec.select.i.i97, %i.in
  br i1 %i.iw, label %bb.ak, label %resizeOpArray.exit.i.i98

bb.ak:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i104
  %i.ix = sext i32 %i.in to i64
  %i.iy = getelementptr inbounds [24 x i8], ptr %i.iv, i64 %i.ix
  %i.iz = sub nsw i32 %spec.select.i.i97, %i.in
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = mul nuw nsw i64 %i.ja, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.iy, i8 0, i64 %i.jb, i1 false)
  br label %resizeOpArray.exit.i.i98

resizeOpArray.exit.i.i98:                         ; preds = %bb.ak, %sqlite3DbRealloc.exit.i.i.i104, %bb.aj, %bb.ah
  %i.jc = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 42
  %i.je = load i8, ptr %i.jd, align 2, !tbaa !129
  %.not24.i.i99 = icmp eq i8 %i.je, 0
  %.pre129 = load i32, ptr %i.u, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i99, label %resizeOpArray.exit._crit_edge.i.i101, label %sqlite3VdbeAddOp2.exit105

resizeOpArray.exit._crit_edge.i.i101:             ; preds = %resizeOpArray.exit.i.i98, %sqlite3VdbeAddOp2.exit94
  %i.jf = phi i32 [ %i.il, %sqlite3VdbeAddOp2.exit94 ], [ %.pre129, %resizeOpArray.exit.i.i98 ]
  %i.jg = add nsw i32 %i.jf, 1
  store i32 %i.jg, ptr %i.u, align 8, !tbaa !135
  %i.jh = load ptr, ptr %i.ew, align 8, !tbaa !136
  %i.ji = sext i32 %i.il to i64
  %i.jj = getelementptr inbounds [24 x i8], ptr %i.jh, i64 %i.ji ; 6 uses
  store i8 102, ptr %i.jj, align 8, !tbaa !137
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store i32 %i.k, ptr %i.jk, align 4, !tbaa !141
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i32 %i.im, ptr %i.jl, align 8, !tbaa !140
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i32 0, ptr %i.jm, align 4, !tbaa !190
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store ptr null, ptr %i.jn, align 8, !tbaa !37
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  store i8 0, ptr %i.jo, align 1, !tbaa !191
  %i.jp = getelementptr inbounds nuw i8, ptr %i.d, i64 339
  store i8 0, ptr %i.jp, align 1, !tbaa !104
  %.pre128 = load i32, ptr %i.u, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit105

sqlite3VdbeAddOp2.exit105:                        ; preds = %resizeOpArray.exit.i.i98, %resizeOpArray.exit._crit_edge.i.i101
  %i.jq = phi i32 [ %.pre129, %resizeOpArray.exit.i.i98 ], [ %.pre128, %resizeOpArray.exit._crit_edge.i.i101 ] ; 3 uses
  %i.jr = load i32, ptr %i.w, align 4, !tbaa !147 ; 6 uses
  %.not.i.i106 = icmp sgt i32 %i.jr, %i.jq
  br i1 %.not.i.i106, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %sqlite3VdbeAddOp2.exit105
  %.not23.i.i107 = icmp eq i32 %i.jr, 0
  %i.js = shl nsw i32 %i.jr, 1
  %spec.select.i.i108 = select i1 %.not23.i.i107, i32 42, i32 %i.js ; 4 uses
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 42 ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 2, !tbaa !129
  %i.jw = icmp eq i8 %i.jv, 0
  br i1 %i.jw, label %bb.am, label %resizeOpArray.exit.i.i109

bb.am:                                            ; preds = %bb.al
  %i.jx = mul i32 %spec.select.i.i108, 24
  %i.jy = load ptr, ptr %i.ew, align 8, !tbaa !136
  %i.jz = tail call ptr @sqlite3_realloc(ptr noundef %i.jy, i32 noundef %i.jx) ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i114, label %bb.an, label %sqlite3DbRealloc.exit.i.i.i115

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.ju, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i109

sqlite3DbRealloc.exit.i.i.i115:                   ; preds = %bb.am
  store i32 %spec.select.i.i108, ptr %i.w, align 4, !tbaa !147
  store ptr %i.jz, ptr %i.ew, align 8, !tbaa !136
  %i.ka = icmp sgt i32 %spec.select.i.i108, %i.jr
  br i1 %i.ka, label %bb.ao, label %resizeOpArray.exit.i.i109

bb.ao:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i115
  %i.kb = sext i32 %i.jr to i64
  %i.kc = getelementptr inbounds [24 x i8], ptr %i.jz, i64 %i.kb
  %i.kd = sub nsw i32 %spec.select.i.i108, %i.jr
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = mul nuw nsw i64 %i.ke, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kc, i8 0, i64 %i.kf, i1 false)
  br label %resizeOpArray.exit.i.i109

resizeOpArray.exit.i.i109:                        ; preds = %bb.ao, %sqlite3DbRealloc.exit.i.i.i115, %bb.an, %bb.al
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 42
  %i.ki = load i8, ptr %i.kh, align 2, !tbaa !129
  %.not24.i.i110 = icmp eq i8 %i.ki, 0
  br i1 %.not24.i.i110, label %resizeOpArray.exit._crit_edge.i.i112, label %sqlite3VdbeAddOp2.exit116

resizeOpArray.exit._crit_edge.i.i112:             ; preds = %resizeOpArray.exit.i.i109
  %.pre.i.i113 = load i32, ptr %i.u, align 8, !tbaa !135
  br label %bb.ap

bb.ap:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i112, %sqlite3VdbeAddOp2.exit105
  %i.kj = phi i32 [ %.pre.i.i113, %resizeOpArray.exit._crit_edge.i.i112 ], [ %i.jq, %sqlite3VdbeAddOp2.exit105 ]
  %i.kk = add nsw i32 %i.kj, 1
  store i32 %i.kk, ptr %i.u, align 8, !tbaa !135
  %i.kl = load ptr, ptr %i.ew, align 8, !tbaa !136
  %i.km = sext i32 %i.jq to i64
  %i.kn = getelementptr inbounds [24 x i8], ptr %i.kl, i64 %i.km ; 4 uses
  store i8 31, ptr %i.kn, align 8, !tbaa !137
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  store i32 %i.k, ptr %i.ko, align 4, !tbaa !141
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  store i8 0, ptr %i.kq, align 1, !tbaa !191
  %i.kr = getelementptr inbounds nuw i8, ptr %i.d, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.kr, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit116

sqlite3VdbeAddOp2.exit116:                        ; preds = %bb.ap, %resizeOpArray.exit.i.i109, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.o, %resizeOpArray.exit.i.i109 ], [ %i.o, %bb.ap ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @readsTable(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #22 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !135 ; 2 uses
  %i.b = icmp slt i32 %1, %.val
  br i1 %i.b, label %sqlite3VdbeGetOp.exit.lr.ph, label %.critedge29

sqlite3VdbeGetOp.exit.lr.ph:                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %4 = zext nneg i32 %1 to i64
  %5 = icmp sgt i32 %1, -1
  tail call void @llvm.assume(i1 %5)
  br label %sqlite3VdbeGetOp.exit

sqlite3VdbeGetOp.exit:                            ; preds = %sqlite3VdbeGetOp.exit.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %4, %sqlite3VdbeGetOp.exit.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !137
  switch i8 %i.i, label %.critedge [
    i8 12, label %bb.b
    i8 30, label %bb.f
  ]

bb.b:                                             ; preds = %sqlite3VdbeGetOp.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !190
  %i.l = icmp eq i32 %i.k, %2
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !140  ; 2 uses
  %i.o = load i32, ptr %i.f, align 8, !tbaa !282
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.critedge29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.02431 = load ptr, ptr %i.g, align 8, !tbaa !268 ; 2 uses
  %.not32 = icmp eq ptr %.02431, null
  br i1 %.not32, label %.critedge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.02433, i64 56
  %.024 = load ptr, ptr %i.q, align 8, !tbaa !268 ; 2 uses
  %.not = icmp eq ptr %.024, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1881

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.02433 = phi ptr [ %.024, %bb.e ], [ %.02431, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02433, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1065
  %i.t = icmp eq i32 %i.n, %i.s
  br i1 %i.t, label %.critedge29, label %bb.e

bb.f:                                             ; preds = %sqlite3VdbeGetOp.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !405
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %.critedge29, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %sqlite3VdbeGetOp.exit, %bb.b, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = trunc nuw i64 %indvars.iv.next to i32
  %i.z = icmp sgt i32 %.val, %i.y
  br i1 %i.z, label %sqlite3VdbeGetOp.exit, label %.critedge29, !llvm.loop !1882

.critedge29:                                      ; preds = %.critedge, %bb.c, %bb.f, %.lr.ph, %bb.a
  %.4 = phi i32 [ 1, %.lr.ph ], [ 0, %bb.a ], [ 0, %.critedge ], [ 1, %bb.c ], [ 1, %bb.f ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @autoIncStep(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483646, -2147483648) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %sqlite3VdbeAddOp2.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !367  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !135  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.g, %i.e
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not23.i.i = icmp eq i32 %i.g, 0
  %i.h = shl nsw i32 %i.g, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.h ; 4 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 42 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !129
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %resizeOpArray.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = mul i32 %spec.select.i.i, 24
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !136
  %i.p = tail call ptr @sqlite3_realloc(ptr noundef %i.o, i32 noundef %i.n) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.e, label %sqlite3DbRealloc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.k, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.d
  store i32 %spec.select.i.i, ptr %i.f, align 4, !tbaa !147
  store ptr %i.p, ptr %i.j, align 8, !tbaa !136
  %i.q = icmp sgt i32 %spec.select.i.i, %i.g
  br i1 %i.q, label %bb.f, label %resizeOpArray.exit.i.i

bb.f:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.r = sext i32 %i.g to i64
  %i.s = getelementptr inbounds [24 x i8], ptr %i.p, i64 %i.r
  %i.t = sub nsw i32 %spec.select.i.i, %i.g
  %i.u = zext nneg i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.v, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.f, %sqlite3DbRealloc.exit.i.i.i, %bb.e, %bb.c
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 42
  %i.y = load i8, ptr %i.x, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.y, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.b
  %i.z = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.e, %bb.b ]
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.d, align 8, !tbaa !135
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ad = sext i32 %i.e to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad ; 6 uses
  store i8 43, ptr %i.ae, align 8, !tbaa !137
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %1, ptr %i.af, align 4, !tbaa !141
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %2, ptr %i.ag, align 8, !tbaa !140
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !190
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 0, ptr %i.aj, align 1, !tbaa !191
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 339
  store i8 0, ptr %i.ak, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.g, %resizeOpArray.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @autoIncEnd(ptr nofree noundef captures(none) %0, i32 noundef %1, i8 %.104.val, i32 noundef range(i32 -2147483646, -2147483648) %2) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i8 %.104.val, 0
  br i1 %.not, label %sqlite3VdbeAddOp1.exit59, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1298 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367  ; 27 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !244
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !235
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1297
  %i.l = add nsw i32 %i.k, 1                      ; 3 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !1297
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !236
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1395
  tail call fastcc void @sqlite3OpenTable(ptr noundef nonnull %0, i32 noundef %i.b, i32 noundef %1, ptr noundef %i.p, i32 noundef 8)
  %i.q = add nsw i32 %2, 1                        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 15 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !135  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 10 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.u, %i.s
  br i1 %.not.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not23.i.i = icmp eq i32 %i.u, 0
  %i.v = shl nsw i32 %i.u, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.v ; 4 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 42 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !129
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.d, label %resizeOpArray.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = mul i32 %spec.select.i.i, 24
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.ad = tail call ptr @sqlite3_realloc(ptr noundef %i.ac, i32 noundef %i.ab) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.e, label %sqlite3DbRealloc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.y, align 2, !tbaa !129
end_hunk_0
