inline.NumInlined: 1873
inline.NumDeleted: 1202
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6duckdb7roaring13AppendToArrayILb1EEEvRNS0_25ContainerCompressionStateEbt:bb.a
vector.body.3:                                    ; preds = %vector.body.2
  %i.an = add <16 x i8> %broadcast.splat, <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>
  %i.ao = add <16 x i8> %broadcast.splat, <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !177
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !177
  %i.ar = icmp eq i64 %n.vec, 128
  br i1 %i.ar, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.as = add <16 x i8> %broadcast.splat, <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>
  %i.at = add <16 x i8> %broadcast.splat, <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>
  %i.au = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  store <16 x i8> %i.as, ptr %i.au, align 1, !tbaa !177
  store <16 x i8> %i.at, ptr %i.av, align 1, !tbaa !177
  %i.aw = icmp eq i64 %n.vec, 160
  br i1 %i.aw, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ax = add <16 x i8> %broadcast.splat, <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>
  %i.ay = add <16 x i8> %broadcast.splat, <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>
  %i.az = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 160
  %i.ba = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 176
  store <16 x i8> %i.ax, ptr %i.az, align 1, !tbaa !177
  store <16 x i8> %i.ay, ptr %i.ba, align 1, !tbaa !177
  %i.bb = icmp eq i64 %n.vec, 192
  br i1 %i.bb, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bc = add <16 x i8> %broadcast.splat, <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>
  %i.bd = add <16 x i8> %broadcast.splat, <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>
  %i.be = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 208
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !177
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !177
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !336

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec85 = and i64 %wide.trip.count, 252        ; 3 uses
  %broadcast.splatinsert86 = insertelement <4 x i8> poison, i8 %i.x, i64 0
  %broadcast.splat87 = shufflevector <4 x i8> %broadcast.splatinsert86, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bg = trunc nuw i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert88 = insertelement <4 x i8> poison, i8 %i.bg, i64 0
  %broadcast.splat89 = shufflevector <4 x i8> %broadcast.splatinsert88, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat89, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind91 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bh = add <4 x i8> %vec.ind91, %broadcast.splat87
  %i.bi = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index90
  store <4 x i8> %i.bh, ptr %i.bi, align 1, !tbaa !177
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %vec.ind.next93 = add <4 x i8> %vec.ind91, splat (i8 4)
  %i.bj = icmp eq i64 %index.next92, %n.vec85
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !337

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %n.vec85, %wide.trip.count
  br i1 %cmp.n94, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv69.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec85, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %i.bk = lshr i32 %i.p, 8
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !177
  %i.bo = trunc i16 %i.u to i8
  %i.bp = add i8 %i.bn, %i.bo
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !177
  %i.bq = add i16 %i.v, %.05059                   ; 3 uses
  %i.br = zext i16 %i.bq to i32
  %i.bs = icmp ult i16 %i.bq, %2
  br i1 %i.bs, label %bb.d, label %._crit_edge62, !llvm.loop !338

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %vec.epilog.scalar.ph ], [ %indvars.iv69.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bt = trunc i64 %indvars.iv69 to i8
  %i.bu = add i8 %i.bt, %i.x
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv69
  store i8 %i.bu, ptr %gep, align 1, !tbaa !177
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !339

._crit_edge62:                                    ; preds = %._crit_edge
  %i.bv = icmp samesign ugt i32 %i.e, 7
  br i1 %i.bv, label %.loopexit, label %iter.check112

iter.check112:                                    ; preds = %._crit_edge62
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !326
  %i.by = zext i16 %i.b to i64
  %wide.trip.count75 = zext i16 %2 to i64         ; 6 uses
  %invariant.gep80 = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.by ; 3 uses
  %min.iters.check95 = icmp ult i16 %2, 4
  br i1 %min.iters.check95, label %vec.epilog.scalar.ph113.preheader, label %vector.main.loop.iter.check96

vector.main.loop.iter.check96:                    ; preds = %iter.check112
  %min.iters.check97 = icmp ult i16 %2, 16
  br i1 %min.iters.check97, label %vec.epilog.ph116, label %vector.ph98

vector.ph98:                                      ; preds = %vector.main.loop.iter.check96
  %n.mod.vf99 = and i64 %wide.trip.count75, 12
  %n.vec100 = and i64 %wide.trip.count75, 65520   ; 4 uses
  %broadcast.splatinsert101 = insertelement <8 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat102 = shufflevector <8 x i16> %broadcast.splatinsert101, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <8 x i16> splat (i16 8), %broadcast.splat102
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph98
  %index104 = phi i64 [ 0, %vector.ph98 ], [ %index.next107, %vector.body103 ] ; 2 uses
  %vec.ind105 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph98 ], [ %vec.ind.next108, %vector.body103 ] ; 3 uses
  %i.bz = add <8 x i16> %broadcast.splat102, %vec.ind105
  %.reass = add <8 x i16> %vec.ind105, %invariant.op
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %index104 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <8 x i16> %i.bz, ptr %i.ca, align 2, !tbaa !325
  store <8 x i16> %.reass, ptr %i.cb, align 2, !tbaa !325
  %index.next107 = add nuw i64 %index104, 16      ; 2 uses
  %vec.ind.next108 = add <8 x i16> %vec.ind105, splat (i16 16)
  %i.cc = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.cc, label %middle.block109, label %vector.body103, !llvm.loop !340

middle.block109:                                  ; preds = %vector.body103
  %cmp.n110 = icmp eq i64 %n.vec100, %wide.trip.count75
  br i1 %cmp.n110, label %.loopexit, label %vec.epilog.iter.check114

vec.epilog.iter.check114:                         ; preds = %middle.block109
  %min.epilog.iters.check115 = icmp eq i64 %n.mod.vf99, 0
  br i1 %min.epilog.iters.check115, label %vec.epilog.scalar.ph113.preheader, label %vec.epilog.ph116, !prof !341

vec.epilog.ph116:                                 ; preds = %vector.main.loop.iter.check96, %vec.epilog.iter.check114
  %vec.epilog.resume.val111 = phi i64 [ %n.vec100, %vec.epilog.iter.check114 ], [ 0, %vector.main.loop.iter.check96 ] ; 2 uses
  %n.vec118 = and i64 %wide.trip.count75, 65532   ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat120 = shufflevector <4 x i16> %broadcast.splatinsert119, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cd = trunc nuw i64 %vec.epilog.resume.val111 to i16
  %broadcast.splatinsert121 = insertelement <4 x i16> poison, i16 %i.cd, i64 0
  %broadcast.splat122 = shufflevector <4 x i16> %broadcast.splatinsert121, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction123 = or disjoint <4 x i16> %broadcast.splat122, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph116
  %index125 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph116 ], [ %index.next127, %vec.epilog.vector.body124 ] ; 2 uses
  %vec.ind126 = phi <4 x i16> [ %induction123, %vec.epilog.ph116 ], [ %vec.ind.next128, %vec.epilog.vector.body124 ] ; 2 uses
  %i.ce = add <4 x i16> %broadcast.splat120, %vec.ind126
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %index125
  store <4 x i16> %i.ce, ptr %i.cf, align 2, !tbaa !325
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %vec.ind.next128 = add <4 x i16> %vec.ind126, splat (i16 4)
  %i.cg = icmp eq i64 %index.next127, %n.vec118
  br i1 %i.cg, label %vec.epilog.middle.block129, label %vec.epilog.vector.body124, !llvm.loop !342

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body124
  %cmp.n130 = icmp eq i64 %n.vec118, %wide.trip.count75
  br i1 %cmp.n130, label %.loopexit, label %vec.epilog.scalar.ph113.preheader

vec.epilog.scalar.ph113.preheader:                ; preds = %iter.check112, %vec.epilog.iter.check114, %vec.epilog.middle.block129
  %indvars.iv72.ph = phi i64 [ 0, %iter.check112 ], [ %n.vec100, %vec.epilog.iter.check114 ], [ %n.vec118, %vec.epilog.middle.block129 ]
  br label %vec.epilog.scalar.ph113

vec.epilog.scalar.ph113:                          ; preds = %vec.epilog.scalar.ph113.preheader, %vec.epilog.scalar.ph113
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %vec.epilog.scalar.ph113 ], [ %indvars.iv72.ph, %vec.epilog.scalar.ph113.preheader ] ; 3 uses
  %i.ch = trunc i64 %indvars.iv72 to i16
  %i.ci = add i16 %i.h, %i.ch
  %gep81 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %indvars.iv72
  store i16 %i.ci, ptr %gep81, align 2, !tbaa !325
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit, label %vec.epilog.scalar.ph113, !llvm.loop !343

.loopexit:                                        ; preds = %vec.epilog.scalar.ph113, %middle.block109, %vec.epilog.middle.block129, %._crit_edge62, %bb.c
  %i.cj = load i16, ptr %i.a, align 4, !tbaa !325
  %i.ck = add i16 %i.cj, %2
  store i16 %i.ck, ptr %i.a, align 4, !tbaa !325
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring13AppendToArrayILb0EEEvRNS0_25ContainerCompressionStateEbt(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) #7 comdat {
bb.a:
  br i1 %1, label %bb.e, label %bb.b, !prof !296

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !325  ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = zext i16 %2 to i32
  %i.e = add nuw nsw i32 %i.c, %i.d               ; 2 uses
  %i.f = icmp samesign ugt i32 %i.e, 248
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !331  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !229
  %.not66 = icmp eq i16 %2, 0
  br i1 %.not66, label %.loopexit, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.c
  %i.m = zext i16 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph61, %._crit_edge
  %i.n = phi i32 [ 0, %.lr.ph61 ], [ %i.br, %._crit_edge ] ; 2 uses
  %.05059 = phi i16 [ 0, %.lr.ph61 ], [ %i.bq, %._crit_edge ] ; 3 uses
  %i.o = sub nuw i16 %2, %.05059
  %.not = icmp eq i16 %.05059, 0
  %i.p = add nuw nsw i32 %i.n, %i.m               ; 2 uses
  %i.q = and i32 %i.p, 255
  %i.r = select i1 %.not, i32 %i.q, i32 0         ; 2 uses
  %i.s = trunc nuw nsw i32 %i.r to i16
  %i.t = sub nuw nsw i16 256, %i.s
  %i.u = tail call noundef i16 @llvm.umin.i16(i16 %i.o, i16 %i.t) ; 2 uses
  %i.v = and i16 %i.u, 255                        ; 5 uses
  %.not67 = icmp eq i16 %i.v, 0
  br i1 %.not67, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.w = add nuw nsw i32 %i.n, %i.c
  %i.x = trunc nuw i32 %i.r to i8                 ; 3 uses
  %i.y = zext nneg i32 %i.w to i64
  %wide.trip.count = zext nneg i16 %i.v to i64    ; 6 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y ; 16 uses
  %min.iters.check = icmp samesign ult i16 %i.v, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check83 = icmp samesign ult i16 %i.v, 32
  br i1 %min.iters.check83, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 224          ; 9 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 14 uses
  %i.z = add <16 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %i.aa = add <16 x i8> %broadcast.splat, <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>
  %i.ab = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  store <16 x i8> %i.z, ptr %invariant.gep, align 1, !tbaa !177
  store <16 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !177
  %i.ac = icmp eq i64 %n.vec, 32
  br i1 %i.ac, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ad = add <16 x i8> %broadcast.splat, <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>
  %i.ae = add <16 x i8> %broadcast.splat, <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>
  %i.af = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  store <16 x i8> %i.ad, ptr %i.af, align 1, !tbaa !177
  store <16 x i8> %i.ae, ptr %i.ag, align 1, !tbaa !177
  %i.ah = icmp eq i64 %n.vec, 64
  br i1 %i.ah, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ai = add <16 x i8> %broadcast.splat, <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>
  %i.aj = add <16 x i8> %broadcast.splat, <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>
  %i.ak = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  store <16 x i8> %i.ai, ptr %i.ak, align 1, !tbaa !177
  store <16 x i8> %i.aj, ptr %i.al, align 1, !tbaa !177
  %i.am = icmp eq i64 %n.vec, 96
  br i1 %i.am, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.an = add <16 x i8> %broadcast.splat, <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>
  %i.ao = add <16 x i8> %broadcast.splat, <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !177
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !177
  %i.ar = icmp eq i64 %n.vec, 128
  br i1 %i.ar, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.as = add <16 x i8> %broadcast.splat, <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>
  %i.at = add <16 x i8> %broadcast.splat, <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>
  %i.au = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  store <16 x i8> %i.as, ptr %i.au, align 1, !tbaa !177
  store <16 x i8> %i.at, ptr %i.av, align 1, !tbaa !177
  %i.aw = icmp eq i64 %n.vec, 160
  br i1 %i.aw, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ax = add <16 x i8> %broadcast.splat, <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>
  %i.ay = add <16 x i8> %broadcast.splat, <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>
  %i.az = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 160
  %i.ba = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 176
  store <16 x i8> %i.ax, ptr %i.az, align 1, !tbaa !177
  store <16 x i8> %i.ay, ptr %i.ba, align 1, !tbaa !177
  %i.bb = icmp eq i64 %n.vec, 192
  br i1 %i.bb, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bc = add <16 x i8> %broadcast.splat, <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>
  %i.bd = add <16 x i8> %broadcast.splat, <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>
  %i.be = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 208
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !177
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !177
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !336

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec85 = and i64 %wide.trip.count, 252        ; 3 uses
  %broadcast.splatinsert86 = insertelement <4 x i8> poison, i8 %i.x, i64 0
  %broadcast.splat87 = shufflevector <4 x i8> %broadcast.splatinsert86, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bg = trunc nuw i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert88 = insertelement <4 x i8> poison, i8 %i.bg, i64 0
  %broadcast.splat89 = shufflevector <4 x i8> %broadcast.splatinsert88, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat89, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind91 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bh = add <4 x i8> %vec.ind91, %broadcast.splat87
  %i.bi = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index90
  store <4 x i8> %i.bh, ptr %i.bi, align 1, !tbaa !177
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %vec.ind.next93 = add <4 x i8> %vec.ind91, splat (i8 4)
  %i.bj = icmp eq i64 %index.next92, %n.vec85
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !344

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %n.vec85, %wide.trip.count
  br i1 %cmp.n94, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv69.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec85, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %i.bk = lshr i32 %i.p, 8
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !177
  %i.bo = trunc i16 %i.u to i8
  %i.bp = add i8 %i.bn, %i.bo
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !177
  %i.bq = add i16 %i.v, %.05059                   ; 3 uses
  %i.br = zext i16 %i.bq to i32
  %i.bs = icmp ult i16 %i.bq, %2
  br i1 %i.bs, label %bb.d, label %._crit_edge62, !llvm.loop !345

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %vec.epilog.scalar.ph ], [ %indvars.iv69.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bt = trunc i64 %indvars.iv69 to i8
  %i.bu = add i8 %i.bt, %i.x
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv69
  store i8 %i.bu, ptr %gep, align 1, !tbaa !177
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !346

._crit_edge62:                                    ; preds = %._crit_edge
  %i.bv = icmp samesign ugt i32 %i.e, 7
  br i1 %i.bv, label %.loopexit, label %iter.check112

iter.check112:                                    ; preds = %._crit_edge62
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !326
  %i.by = zext i16 %i.b to i64
  %wide.trip.count75 = zext i16 %2 to i64         ; 6 uses
  %invariant.gep80 = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.by ; 3 uses
  %min.iters.check95 = icmp ult i16 %2, 4
  br i1 %min.iters.check95, label %vec.epilog.scalar.ph113.preheader, label %vector.main.loop.iter.check96

vector.main.loop.iter.check96:                    ; preds = %iter.check112
  %min.iters.check97 = icmp ult i16 %2, 16
  br i1 %min.iters.check97, label %vec.epilog.ph116, label %vector.ph98

vector.ph98:                                      ; preds = %vector.main.loop.iter.check96
  %n.mod.vf99 = and i64 %wide.trip.count75, 12
  %n.vec100 = and i64 %wide.trip.count75, 65520   ; 4 uses
  %broadcast.splatinsert101 = insertelement <8 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat102 = shufflevector <8 x i16> %broadcast.splatinsert101, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <8 x i16> splat (i16 8), %broadcast.splat102
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph98
  %index104 = phi i64 [ 0, %vector.ph98 ], [ %index.next107, %vector.body103 ] ; 2 uses
  %vec.ind105 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph98 ], [ %vec.ind.next108, %vector.body103 ] ; 3 uses
  %i.bz = add <8 x i16> %broadcast.splat102, %vec.ind105
  %.reass = add <8 x i16> %vec.ind105, %invariant.op
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %index104 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <8 x i16> %i.bz, ptr %i.ca, align 2, !tbaa !325
  store <8 x i16> %.reass, ptr %i.cb, align 2, !tbaa !325
  %index.next107 = add nuw i64 %index104, 16      ; 2 uses
  %vec.ind.next108 = add <8 x i16> %vec.ind105, splat (i16 16)
  %i.cc = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.cc, label %middle.block109, label %vector.body103, !llvm.loop !347

middle.block109:                                  ; preds = %vector.body103
  %cmp.n110 = icmp eq i64 %n.vec100, %wide.trip.count75
  br i1 %cmp.n110, label %.loopexit, label %vec.epilog.iter.check114

vec.epilog.iter.check114:                         ; preds = %middle.block109
  %min.epilog.iters.check115 = icmp eq i64 %n.mod.vf99, 0
  br i1 %min.epilog.iters.check115, label %vec.epilog.scalar.ph113.preheader, label %vec.epilog.ph116, !prof !341

vec.epilog.ph116:                                 ; preds = %vector.main.loop.iter.check96, %vec.epilog.iter.check114
  %vec.epilog.resume.val111 = phi i64 [ %n.vec100, %vec.epilog.iter.check114 ], [ 0, %vector.main.loop.iter.check96 ] ; 2 uses
  %n.vec118 = and i64 %wide.trip.count75, 65532   ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i16> poison, i16 %i.h, i64 0
  %broadcast.splat120 = shufflevector <4 x i16> %broadcast.splatinsert119, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cd = trunc nuw i64 %vec.epilog.resume.val111 to i16
  %broadcast.splatinsert121 = insertelement <4 x i16> poison, i16 %i.cd, i64 0
  %broadcast.splat122 = shufflevector <4 x i16> %broadcast.splatinsert121, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction123 = or disjoint <4 x i16> %broadcast.splat122, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph116
  %index125 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph116 ], [ %index.next127, %vec.epilog.vector.body124 ] ; 2 uses
  %vec.ind126 = phi <4 x i16> [ %induction123, %vec.epilog.ph116 ], [ %vec.ind.next128, %vec.epilog.vector.body124 ] ; 2 uses
  %i.ce = add <4 x i16> %broadcast.splat120, %vec.ind126
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %index125
  store <4 x i16> %i.ce, ptr %i.cf, align 2, !tbaa !325
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %vec.ind.next128 = add <4 x i16> %vec.ind126, splat (i16 4)
  %i.cg = icmp eq i64 %index.next127, %n.vec118
  br i1 %i.cg, label %vec.epilog.middle.block129, label %vec.epilog.vector.body124, !llvm.loop !348

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body124
  %cmp.n130 = icmp eq i64 %n.vec118, %wide.trip.count75
  br i1 %cmp.n130, label %.loopexit, label %vec.epilog.scalar.ph113.preheader

vec.epilog.scalar.ph113.preheader:                ; preds = %iter.check112, %vec.epilog.iter.check114, %vec.epilog.middle.block129
  %indvars.iv72.ph = phi i64 [ 0, %iter.check112 ], [ %n.vec100, %vec.epilog.iter.check114 ], [ %n.vec118, %vec.epilog.middle.block129 ]
  br label %vec.epilog.scalar.ph113

vec.epilog.scalar.ph113:                          ; preds = %vec.epilog.scalar.ph113.preheader, %vec.epilog.scalar.ph113
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %vec.epilog.scalar.ph113 ], [ %indvars.iv72.ph, %vec.epilog.scalar.ph113.preheader ] ; 3 uses
  %i.ch = trunc i64 %indvars.iv72 to i16
  %i.ci = add i16 %i.h, %i.ch
  %gep81 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep80, i64 %indvars.iv72
  store i16 %i.ci, ptr %gep81, align 2, !tbaa !325
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit, label %vec.epilog.scalar.ph113, !llvm.loop !349

.loopexit:                                        ; preds = %vec.epilog.scalar.ph113, %middle.block109, %vec.epilog.middle.block129, %._crit_edge62, %bb.c
  %i.cj = load i16, ptr %i.a, align 2, !tbaa !325
  %i.ck = add i16 %i.cj, %2
  store i16 %i.ck, ptr %i.a, align 2, !tbaa !325
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState11OverrideRunERPhm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) initializes((928, 936)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr @_ZN6duckdb7roaring9AppendRunERNS0_25ContainerCompressionStateEbt, ptr %i.a, align 8, !tbaa !335
  %i.b = icmp ugt i64 %2, 3
  %i.c = load ptr, ptr %1, align 8, !tbaa !229    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.c, align 1
  %i.d = load ptr, ptr %1, align 8, !tbaa !229    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %i.e, align 8, !tbaa !330
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = add i64 %i.g, 3
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !229
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink9 = phi i64 [ 16, %bb.c ], [ 24, %bb.b ]
  %.sink = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store ptr %.sink, ptr %i.k, align 8, !tbaa !350
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb7roaring9AppendRunERNS0_25ContainerCompressionStateEbt(ptr noundef nonnull align 8 dereferenceable(936) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) #7 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !324  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 4, !tbaa !331  ; 7 uses
  %.not = xor i1 %1, true
  %i.e = zext i16 %i.b to i32                     ; 2 uses
  %i.f = icmp ult i16 %i.b, 124                   ; 2 uses
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  %i.g = icmp ne i16 %i.d, 0                      ; 2 uses
  %or.cond4 = select i1 %or.cond, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !312
  %.not42 = icmp ne i8 %i.i, 0
  %or.cond46.not = select i1 %or.cond4, i1 %.not42, i1 false
  br i1 %or.cond46.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i16 %i.b, 4
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !328
  %i.m = zext nneg i16 %i.b to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !351
  %i.p = xor i16 %i.o, -1
  %i.q = add i16 %i.d, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i16 %i.q, ptr %i.r, align 2, !tbaa !353
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = trunc i16 %i.d to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !329
  %i.v = shl nuw nsw i32 %i.e, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.s, ptr %i.y, align 1, !tbaa !177
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !330
  %i.ab = lshr i16 %i.d, 8
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !177
  %i.af = add i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !177
  %i.ag = load i16, ptr %i.a, align 8, !tbaa !324
  %i.ah = add i16 %i.ag, 1
  store i16 %i.ah, ptr %i.a, align 8, !tbaa !324
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %or.cond7 = select i1 %1, i1 %i.f, i1 false
  br i1 %or.cond7, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !312
  %.not43.not = icmp ne i8 %i.aj, 0
  %or.cond49.not = select i1 %i.g, i1 %.not43.not, i1 false
  br i1 %or.cond49.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i16 %i.b, 4
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !328
  %i.an = zext nneg i16 %i.b to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  store i16 %i.d, ptr %i.ao, align 2, !tbaa !351
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = trunc i16 %i.d to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !329
  %i.as = shl nuw nsw i32 %i.e, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  store i8 %i.ap, ptr %i.au, align 1, !tbaa !177
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !330
  %i.ax = lshr i16 %i.d, 8
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !177
  %i.bb = add i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !177
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb7roaring25ContainerCompressionState20OverrideUncompressedERPh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) initializes((912, 920), (928, 936)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr @_ZN6duckdb7roaring12AppendBitsetERNS0_25ContainerCompressionStateEbt, ptr %i.a, align 8, !tbaa !335
  %i.b = load ptr, ptr %1, align 8, !tbaa !229
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 7
  %i.e = and i64 %i.d, -8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !229
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 912
  store ptr %i.f, ptr %i.g, align 8, !tbaa !354
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354
  store ptr %i.b, ptr %3, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2048, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i16, ptr %i.e, align 4, !tbaa !331
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = zext i16 %2 to i64
  %i.i = add nuw nsw i64 %i.g, %i.h
  invoke void @_ZN6duckdb7roaring15SetInvalidRangeERNS_12ValidityMaskEmm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !173
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !175
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !149
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
end_hunk_0
