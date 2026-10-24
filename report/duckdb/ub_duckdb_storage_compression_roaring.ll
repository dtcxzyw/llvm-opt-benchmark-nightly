Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression_roaring?download=true
inline.NumInlined: 1873
inline.NumDeleted: 1202
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6duckdb7roaring13AppendToArrayILb0EEEvRNS0_25ContainerCompressionStateEbt:bb.a
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !200

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec84 = and i64 %wide.trip.count, 248        ; 3 uses
  %broadcast.splatinsert85 = insertelement <8 x i8> poison, i8 %i.ab, i64 0
  %broadcast.splat86 = shufflevector <8 x i8> %broadcast.splatinsert85, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bl = trunc nuw i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert87 = insertelement <8 x i8> poison, i8 %i.bl, i64 0
  %broadcast.splat88 = shufflevector <8 x i8> %broadcast.splatinsert87, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i8> %broadcast.splat88, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind90 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next92, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = add <8 x i8> %vec.ind90, %broadcast.splat86
  %i.bn = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index89
  store <8 x i8> %i.bm, ptr %i.bn, align 1, !tbaa !116
  %index.next91 = add nuw i64 %index89, 8         ; 2 uses
  %vec.ind.next92 = add <8 x i8> %vec.ind90, splat (i8 8)
  %i.bo = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !413

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %n.vec84, %wide.trip.count
  br i1 %cmp.n93, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv69.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec84, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %i.bp = lshr i32 %i.t, 8
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !116
  %i.bt = trunc i16 %i.y to i8
  %i.bu = add i8 %i.bs, %i.bt
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !116
  %i.bv = add i16 %i.z, %.05159                   ; 3 uses
  %i.bw = zext i16 %i.bv to i32
  %i.bx = icmp ult i16 %i.bv, %2
  br i1 %i.bx, label %bb.d, label %._crit_edge62, !llvm.loop !414

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %vec.epilog.scalar.ph ], [ %indvars.iv69.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.by = trunc i64 %indvars.iv69 to i8
  %i.bz = add i8 %i.by, %i.ab
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv69
  store i8 %i.bz, ptr %gep, align 1, !tbaa !116
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !415

._crit_edge62:                                    ; preds = %._crit_edge
  %i.ca = icmp samesign ugt i32 %i.g, 7
  br i1 %i.ca, label %.loopexit, label %iter.check109

iter.check109:                                    ; preds = %._crit_edge62
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.a
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !191
  %i.ce = zext i16 %i.d to i64
  %wide.trip.count75 = zext i16 %2 to i64         ; 6 uses
  %invariant.gep80 = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.ce ; 3 uses
  %min.iters.check94 = icmp ult i16 %2, 4
  br i1 %min.iters.check94, label %vec.epilog.scalar.ph111.preheader, label %vector.main.loop.iter.check95

vector.main.loop.iter.check95:                    ; preds = %iter.check109
  %min.iters.check96 = icmp ult i16 %2, 16
  br i1 %min.iters.check96, label %vec.epilog.ph113, label %vector.ph97

vector.ph97:                                      ; preds = %vector.main.loop.iter.check95
  %i.cf = and i64 %wide.trip.count75, 12
  %n.vec98 = and i64 %wide.trip.count75, 65520    ; 4 uses
  %broadcast.splatinsert99 = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat100 = shufflevector <8 x i16> %broadcast.splatinsert99, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <8 x i16> splat (i16 8), %broadcast.splat100
  br label %vector.body101

vector.body101:                                   ; preds = %vector.ph97, %vector.body101
  %index102 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body101 ] ; 2 uses
  %vec.ind103 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph97 ], [ %vec.ind.next106, %vector.body101 ] ; 3 uses
  %i.cg = add <8 x i16> %broadcast.splat100, %vec.ind103
  %.reass = add <8 x i16> %vec.ind103, %invariant.op
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %index102 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <8 x i16> %i.cg, ptr %i.ch, align 2, !tbaa !189
  store <8 x i16> %.reass, ptr %i.ci, align 2, !tbaa !189
  %index.next105 = add nuw i64 %index102, 16      ; 2 uses
  %vec.ind.next106 = add <8 x i16> %vec.ind103, splat (i16 16)
  %i.cj = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.cj, label %middle.block107, label %vector.body101, !llvm.loop !416

middle.block107:                                  ; preds = %vector.body101
  %cmp.n108 = icmp eq i64 %n.vec98, %wide.trip.count75
  br i1 %cmp.n108, label %.loopexit, label %vec.epilog.iter.check110

vec.epilog.iter.check110:                         ; preds = %middle.block107
  %min.epilog.iters.check112 = icmp eq i64 %i.cf, 0
  br i1 %min.epilog.iters.check112, label %vec.epilog.scalar.ph111.preheader, label %vec.epilog.ph113, !prof !201

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check95, %vec.epilog.iter.check110
  %vec.epilog.resume.val114 = phi i64 [ %n.vec98, %vec.epilog.iter.check110 ], [ 0, %vector.main.loop.iter.check95 ] ; 2 uses
  %n.vec115 = and i64 %wide.trip.count75, 65532   ; 3 uses
  %broadcast.splatinsert116 = insertelement <4 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat117 = shufflevector <4 x i16> %broadcast.splatinsert116, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ck = trunc nuw i64 %vec.epilog.resume.val114 to i16
  %broadcast.splatinsert118 = insertelement <4 x i16> poison, i16 %i.ck, i64 0
  %broadcast.splat119 = shufflevector <4 x i16> %broadcast.splatinsert118, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction120 = or disjoint <4 x i16> %broadcast.splat119, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body121

vec.epilog.vector.body121:                        ; preds = %vec.epilog.vector.body121, %vec.epilog.ph113
  %index122 = phi i64 [ %vec.epilog.resume.val114, %vec.epilog.ph113 ], [ %index.next124, %vec.epilog.vector.body121 ] ; 2 uses
  %vec.ind123 = phi <4 x i16> [ %induction120, %vec.epilog.ph113 ], [ %vec.ind.next125, %vec.epilog.vector.body121 ] ; 2 uses
  %i.cl = add <4 x i16> %broadcast.splat117, %vec.ind123
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %index122
  store <4 x i16> %i.cl, ptr %i.cm, align 2, !tbaa !189
  %index.next124 = add nuw i64 %index122, 4       ; 2 uses
  %vec.ind.next125 = add <4 x i16> %vec.ind123, splat (i16 4)
  %i.cn = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.cn, label %vec.epilog.middle.block126, label %vec.epilog.vector.body121, !llvm.loop !417

vec.epilog.middle.block126:                       ; preds = %vec.epilog.vector.body121
  %cmp.n127 = icmp eq i64 %n.vec115, %wide.trip.count75
  br i1 %cmp.n127, label %.loopexit, label %vec.epilog.scalar.ph111.preheader

vec.epilog.scalar.ph111.preheader:                ; preds = %iter.check109, %vec.epilog.iter.check110, %vec.epilog.middle.block126
  %indvars.iv72.ph = phi i64 [ 0, %iter.check109 ], [ %n.vec98, %vec.epilog.iter.check110 ], [ %n.vec115, %vec.epilog.middle.block126 ]
  br label %vec.epilog.scalar.ph111

vec.epilog.scalar.ph111:                          ; preds = %vec.epilog.scalar.ph111.preheader, %vec.epilog.scalar.ph111
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %vec.epilog.scalar.ph111 ], [ %indvars.iv72.ph, %vec.epilog.scalar.ph111.preheader ] ; 3 uses
  %i.co = trunc i64 %indvars.iv72 to i16
  %i.cp = add i16 %i.j, %i.co
  %gep81 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %indvars.iv72
  store i16 %i.cp, ptr %gep81, align 2, !tbaa !189
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit, label %vec.epilog.scalar.ph111, !llvm.loop !418

.loopexit:                                        ; preds = %vec.epilog.scalar.ph111, %middle.block107, %vec.epilog.middle.block126, %._crit_edge62, %bb.c
  %i.cq = load i16, ptr %i.c, align 2, !tbaa !189
  %i.cr = add i16 %i.cq, %2
  store i16 %i.cr, ptr %i.c, align 2, !tbaa !189
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState11OverrideRunERPhm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) initializes((928, 936)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr @_ZN6duckdb7roaring9AppendRunERNS0_25ContainerCompressionStateEbt, ptr %i.a, align 8, !tbaa !199
  %i.b = icmp ugt i64 %2, 3
  %i.c = load ptr, ptr %1, align 8, !tbaa !150    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.c, align 1
  %i.d = load ptr, ptr %1, align 8, !tbaa !150    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %i.e, align 8, !tbaa !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = add i64 %i.g, 3
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !150
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink9 = phi i64 [ 16, %bb.c ], [ 24, %bb.b ]
  %.sink = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store ptr %.sink, ptr %i.k, align 8, !tbaa !202
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring9AppendRunERNS0_25ContainerCompressionStateEbt(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) #7 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !188  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !195  ; 7 uses
  %.not = xor i1 %1, true
  %i.e = zext i16 %i.b to i32                     ; 2 uses
  %i.f = icmp ult i16 %i.b, 124                   ; 2 uses
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  %3 = icmp ne i16 %i.d, 0                        ; 2 uses
  %or.cond4.a = select i1 %or.cond, i1 %3, i1 false
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i8, ptr %4, align 8, !range !184
  %.not42.a = icmp ne i8 %5, 0
  %or.cond49.not = select i1 %or.cond4.a, i1 %.not42.a, i1 false
  br i1 %or.cond49.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i16 %i.b, 4
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !192
  %i.j = zext nneg i16 %i.b to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !204
  %i.m = xor i16 %i.l, -1
  %i.n = add i16 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 %i.n, ptr %i.o, align 2, !tbaa !205
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = trunc i16 %i.d to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !193
  %i.s = shl nuw nsw i32 %i.e, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.p, ptr %i.v, align 1, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !194
  %i.y = lshr i16 %i.d, 8
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !116
  %i.ac = add i8 %i.ab, 1
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !116
  %i.ad = load i16, ptr %i.a, align 8, !tbaa !188
  %i.ae = add i16 %i.ad, 1
  store i16 %i.ae, ptr %i.a, align 8, !tbaa !188
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %or.cond7 = select i1 %1, i1 %i.f, i1 false
  br i1 %or.cond7, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !184
  %.not43.not = icmp ne i8 %i.ag, 0
  %or.cond46.not = select i1 %3, i1 %.not43.not, i1 false
  br i1 %or.cond46.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp samesign ult i16 %i.b, 4
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !192
  %i.ak = zext nneg i16 %i.b to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  store i16 %i.d, ptr %i.al, align 2, !tbaa !204
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = trunc i16 %i.d to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !193
  %i.ap = shl nuw nsw i32 %i.e, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  store i8 %i.am, ptr %i.ar, align 1, !tbaa !116
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !194
  %i.au = lshr i16 %i.d, 8
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !116
  %i.ay = add i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !116
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState20OverrideUncompressedERPh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) initializes((912, 920), (928, 936)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr @_ZN6duckdb7roaring12AppendBitsetERNS0_25ContainerCompressionStateEbt, ptr %i.a, align 8, !tbaa !199
  %i.b = load ptr, ptr %1, align 8, !tbaa !150
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 7
  %i.e = and i64 %i.d, -8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 912
  store ptr %i.f, ptr %i.g, align 8, !tbaa !206
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7roaring12AppendBitsetERNS0_25ContainerCompressionStateEbt(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::ValidityMask", align 8 ; 9 uses
  br i1 %1, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206
  store ptr %i.b, ptr %3, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2048, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i16, ptr %i.e, align 4, !tbaa !195
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = zext i16 %2 to i64
  %i.i = add nuw nsw i64 %i.g, %i.h
  invoke void @_ZN6duckdb7roaring15SetInvalidRangeERNS_12ValidityMaskEmm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !114
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !115
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !2
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26, !inline_history !2
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !116
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !117

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState8FinalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) initializes((920, 921)) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !195  ; 3 uses
  %.not = icmp ne i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !184
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !188  ; 4 uses
  %i.h = icmp ult i16 %i.g, 124
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i16 %i.g, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.l = zext nneg i16 %i.g to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !204
  %i.o = sub i16 %i.b, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.o, ptr %i.p, align 2, !tbaa !205
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = trunc i16 %i.b to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !193
  %i.t = shl nuw nsw i16 %i.g, 1
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.q, ptr %i.w, align 1, !tbaa !116
  %i.x = load i16, ptr %i.a, align 4, !tbaa !195  ; 2 uses
  %.not4 = icmp eq i16 %i.x, 2048
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !194
  %i.aa = lshr i16 %i.x, 8
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !116
  %i.ae = add i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !116
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = load i16, ptr %i.f, align 8, !tbaa !188
  %i.ag = add i16 %i.af, 1
  store i16 %i.ag, ptr %i.f, align 8, !tbaa !188
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 1, ptr %i.ah, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 1, -65277) i32 @_ZN6duckdb7roaring25ContainerCompressionState9GetResultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !195  ; 4 uses
  br i1 %.not, label %bb.b, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = load i16, ptr %i.f, align 4, !tbaa !189  ; 6 uses
  %i.h = load i16, ptr %i.e, align 2, !tbaa !189  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i16, ptr %i.i, align 8, !tbaa !188  ; 5 uses
  %i.k = icmp ult i16 %i.g, 248
  %i.l = icmp ult i16 %i.h, 248
  %i.m = icmp ult i16 %i.j, 124
  %i.n = or i1 %i.k, %i.l
  %or.cond.i = or i1 %i.n, %i.m
  br i1 %or.cond.i, label %bb.c, label %_ZN6duckdb7roaring17ContainerMetadata14CreateMetadataEtttt.exit

end_hunk_0
