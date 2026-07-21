inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 47
begin_hunk_0_@qtm_init:bb.a
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 1652 ; 3 uses
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.fh, i32 36) ; 4 uses
  store i32 4, ptr %i.fi, align 8, !tbaa !207
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 452
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !208
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  store ptr %i.fj, ptr %i.fm, align 8, !tbaa !209
  %i.fn = or disjoint i32 %i.fk, 1
  %wide.trip.count.i = zext nneg i32 %i.fn to i64 ; 2 uses
  %n.vec = and i64 %wide.trip.count.i, 56         ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 1668
  %i.fp = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %i.fq = add nsw <4 x i16> %i.fp, <i16 0, i16 -1, i16 -2, i16 -3>
  %i.fr = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %i.fs = add nsw <4 x i16> %i.fr, <i16 -4, i16 -5, i16 -6, i16 -7>
  %interleaved.vec185 = shufflevector <4 x i16> <i16 0, i16 1, i16 2, i16 3>, <4 x i16> %i.fq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec185, ptr %i.fj, align 4, !tbaa !51
  %interleaved.vec186 = shufflevector <4 x i16> <i16 4, i16 5, i16 6, i16 7>, <4 x i16> %i.fs, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec186, ptr %i.fo, align 4, !tbaa !51
  %i.ft = icmp eq i64 %n.vec, 8
  br i1 %i.ft, label %scalar.ph177.preheader, label %vector.body179.1

vector.body179.1:                                 ; preds = %vector.ph
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 1684
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 1700
  %i.fw = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %i.fx = add nsw <4 x i16> %i.fw, <i16 -8, i16 -9, i16 -10, i16 -11>
  %i.fy = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %i.fz = add nsw <4 x i16> %i.fy, <i16 -12, i16 -13, i16 -14, i16 -15>
  %interleaved.vec185.1 = shufflevector <4 x i16> <i16 8, i16 9, i16 10, i16 11>, <4 x i16> %i.fx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec185.1, ptr %i.fu, align 4, !tbaa !51
  %interleaved.vec186.1 = shufflevector <4 x i16> <i16 12, i16 13, i16 14, i16 15>, <4 x i16> %i.fz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec186.1, ptr %i.fv, align 4, !tbaa !51
  %i.ga = icmp eq i64 %n.vec, 16
  br i1 %i.ga, label %scalar.ph177.preheader, label %vector.body179.2

vector.body179.2:                                 ; preds = %vector.body179.1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 1716
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 1732
  %i.gd = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %i.ge = add nsw <4 x i16> %i.gd, <i16 -16, i16 -17, i16 -18, i16 -19>
  %i.gf = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %i.gg = add nsw <4 x i16> %i.gf, <i16 -20, i16 -21, i16 -22, i16 -23>
  %interleaved.vec185.2 = shufflevector <4 x i16> <i16 16, i16 17, i16 18, i16 19>, <4 x i16> %i.ge, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec185.2, ptr %i.gb, align 4, !tbaa !51
  %interleaved.vec186.2 = shufflevector <4 x i16> <i16 20, i16 21, i16 22, i16 23>, <4 x i16> %i.gg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec186.2, ptr %i.gc, align 4, !tbaa !51
  %i.gh = icmp eq i64 %n.vec, 24
  br i1 %i.gh, label %scalar.ph177.preheader, label %vector.body179.3

vector.body179.3:                                 ; preds = %vector.body179.2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 1748
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 1764
  %i.gk = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %i.gl = add nsw <4 x i16> %i.gk, <i16 -24, i16 -25, i16 -26, i16 -27>
  %i.gm = trunc nuw nsw <4 x i32> %broadcast.splat to <4 x i16>
  %i.gn = add nsw <4 x i16> %i.gm, <i16 -28, i16 -29, i16 -30, i16 -31>
  %interleaved.vec185.3 = shufflevector <4 x i16> <i16 24, i16 25, i16 26, i16 27>, <4 x i16> %i.gl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec185.3, ptr %i.gi, align 4, !tbaa !51
  %interleaved.vec186.3 = shufflevector <4 x i16> <i16 28, i16 29, i16 30, i16 31>, <4 x i16> %i.gn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec186.3, ptr %i.gj, align 4, !tbaa !51
  br label %scalar.ph177.preheader

scalar.ph177.preheader:                           ; preds = %vector.body179.3, %vector.body179.2, %vector.body179.1, %vector.ph
  br label %scalar.ph177

scalar.ph177:                                     ; preds = %scalar.ph177.preheader, %scalar.ph177
  %indvars.iv.i115 = phi i64 [ %indvars.iv.next.i116, %scalar.ph177 ], [ %n.vec, %scalar.ph177.preheader ] ; 4 uses
  %i.go = trunc i64 %indvars.iv.i115 to i32
  %i.gp = trunc i64 %indvars.iv.i115 to i16
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.i115 ; 2 uses
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !210
  %i.gr = sub i32 %i.fk, %i.go
  %i.gs = trunc nuw nsw i32 %i.gr to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !212
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %exitcond.not.i117 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i
  br i1 %exitcond.not.i117, label %qtm_init_model.exit118, label %scalar.ph177, !llvm.loop !213

qtm_init_model.exit118:                           ; preds = %scalar.ph177
  %i.gu = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 1800 ; 4 uses
  store i32 4, ptr %i.gu, align 8, !tbaa !207
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 468
  store i32 %i.fh, ptr %i.gw, align 4, !tbaa !208
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  store ptr %i.gv, ptr %i.gx, align 8, !tbaa !209
  %i.gy = or disjoint i32 %i.fh, 1
  %wide.trip.count.i119 = zext nneg i32 %i.gy to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %scalar.ph191.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %qtm_init_model.exit118
  %n.vec194 = and i64 %wide.trip.count.i119, 56   ; 2 uses
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph192
  %index198 = phi i64 [ 0, %vector.ph192 ], [ %index.next205, %vector.body197 ] ; 3 uses
  %vec.ind199 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph192 ], [ %vec.ind.next206, %vector.body197 ] ; 3 uses
  %vec.ind200 = phi <4 x i16> [ <i16 0, i16 1, i16 2, i16 3>, %vector.ph192 ], [ %vec.ind.next207, %vector.body197 ] ; 3 uses
  %step.add201 = add <4 x i32> %vec.ind199, splat (i32 4)
  %step.add202 = add <4 x i16> %vec.ind200, splat (i16 4)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index198
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index198
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = sub <4 x i32> %broadcast.splat196, %vec.ind199
  %i.hd = sub <4 x i32> %broadcast.splat196, %step.add201
  %i.he = trunc nuw nsw <4 x i32> %i.hc to <4 x i16>
  %i.hf = trunc nuw nsw <4 x i32> %i.hd to <4 x i16>
  %interleaved.vec203 = shufflevector <4 x i16> %vec.ind200, <4 x i16> %i.he, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec203, ptr %i.gz, align 2, !tbaa !51
  %interleaved.vec204 = shufflevector <4 x i16> %step.add202, <4 x i16> %i.hf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec204, ptr %i.hb, align 2, !tbaa !51
  %index.next205 = add nuw i64 %index198, 8       ; 2 uses
  %vec.ind.next206 = add <4 x i32> %vec.ind199, splat (i32 8)
  %vec.ind.next207 = add <4 x i16> %vec.ind200, splat (i16 8)
  %i.hg = icmp eq i64 %index.next205, %n.vec194
  br i1 %i.hg, label %scalar.ph191.preheader, label %vector.body197, !llvm.loop !214

scalar.ph191.preheader:                           ; preds = %vector.body197, %qtm_init_model.exit118
  %indvars.iv.i120.ph = phi i64 [ 0, %qtm_init_model.exit118 ], [ %n.vec194, %vector.body197 ]
  br label %scalar.ph191

scalar.ph191:                                     ; preds = %scalar.ph191.preheader, %scalar.ph191
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i121, %scalar.ph191 ], [ %indvars.iv.i120.ph, %scalar.ph191.preheader ] ; 4 uses
  %i.hh = trunc i64 %indvars.iv.i120 to i32
  %i.hi = trunc i64 %indvars.iv.i120 to i16
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i120 ; 2 uses
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !210
  %i.hk = sub i32 %i.fh, %i.hh
  %i.hl = trunc nuw nsw i32 %i.hk to i16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !212
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i119
  br i1 %exitcond.not.i122, label %qtm_init_model.exit123, label %scalar.ph191, !llvm.loop !215

qtm_init_model.exit123:                           ; preds = %scalar.ph191
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 1972 ; 2 uses
  store i32 4, ptr %i.hn, align 8, !tbaa !207
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 484
  store i32 27, ptr %i.hp, align 4, !tbaa !208
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  store ptr %i.ho, ptr %i.hq, align 8, !tbaa !209
  store <8 x i16> <i16 0, i16 27, i16 1, i16 26, i16 2, i16 25, i16 3, i16 24>, ptr %i.ho, align 4, !tbaa !51
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 1988
  store <8 x i16> <i16 4, i16 23, i16 5, i16 22, i16 6, i16 21, i16 7, i16 20>, ptr %i.hr, align 4, !tbaa !51
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 2004
  store <8 x i16> <i16 8, i16 19, i16 9, i16 18, i16 10, i16 17, i16 11, i16 16>, ptr %i.hs, align 4, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 2020
  store <8 x i16> <i16 12, i16 15, i16 13, i16 14, i16 14, i16 13, i16 15, i16 12>, ptr %i.ht, align 4, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 2036
  store <8 x i16> <i16 16, i16 11, i16 17, i16 10, i16 18, i16 9, i16 19, i16 8>, ptr %i.hu, align 4, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %i.f, i64 2052
  store <8 x i16> <i16 20, i16 7, i16 21, i16 6, i16 22, i16 5, i16 23, i16 4>, ptr %i.hv, align 4, !tbaa !51
  %i.hw = getelementptr inbounds nuw i8, ptr %i.f, i64 2068
  store <8 x i16> <i16 24, i16 3, i16 25, i16 2, i16 26, i16 1, i16 27, i16 0>, ptr %i.hw, align 4, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 2084 ; 2 uses
  store i32 4, ptr %i.hx, align 8, !tbaa !207
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 500
  store i32 7, ptr %i.hz, align 4, !tbaa !208
  %i.ia = getelementptr inbounds nuw i8, ptr %i.f, i64 504
  store ptr %i.hy, ptr %i.ia, align 8, !tbaa !209
  store <8 x i16> <i16 0, i16 7, i16 1, i16 6, i16 2, i16 5, i16 3, i16 4>, ptr %i.hy, align 4, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 2100
  store <8 x i16> <i16 4, i16 3, i16 5, i16 2, i16 6, i16 1, i16 7, i16 0>, ptr %i.ib, align 4, !tbaa !51
  %i.ic = getelementptr inbounds nuw i8, ptr %i.f, i64 2120
  store ptr %4, ptr %i.ic, align 8, !tbaa !216
  %i.id = getelementptr inbounds nuw i8, ptr %i.f, i64 2128
  store ptr %5, ptr %i.id, align 8, !tbaa !217
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %qtm_init_model.exit123, %bb.i, %bb.g
  %.093 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.f, %qtm_init_model.exit123 ], [ null, %bb.i ], [ null, %bb.g ], [ null, %bb.c ]
  ret ptr %.093
}

; Function Attrs: nounwind uwtable
define dso_local i32 @qtm_decompress(ptr nofree noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.hc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 19 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !200  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.hc

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !204  ; 4 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %sext = shl i64 %i.k, 32
  %i.l = ashr exact i64 %sext, 32
  %i.m = icmp sgt i64 %i.l, %1
  %spec.select = select i1 %i.m, i64 %1, i64 %i.k ; 2 uses
  %.0796 = trunc i64 %spec.select to i32          ; 3 uses
  %.not935 = icmp eq i32 %.0796, 0
  br i1 %.not935, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !194
  %.not936 = icmp eq i8 %i.o, 0
  br i1 %.not936, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !193
  %i.r = tail call i32 @cli_writen(i32 noundef %i.q, ptr noundef %i.h, i32 noundef %.0796) #11
  %.not937 = icmp eq i32 %i.r, %.0796
  br i1 %.not937, label %._crit_edge1736, label %bb.f

._crit_edge1736:                                  ; preds = %bb.e
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !204
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.g:                                             ; preds = %._crit_edge1736, %bb.d
  %i.s = phi ptr [ %.pre, %._crit_edge1736 ], [ %i.h, %bb.d ]
  %sext938 = shl i64 %spec.select, 32
  %i.t = ashr exact i64 %sext938, 32              ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t ; 2 uses
  store ptr %i.u, ptr %i.g, align 8, !tbaa !204
  %i.v = sub nsw i64 %1, %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.w = phi ptr [ %i.u, %bb.g ], [ %i.h, %bb.c ] ; 3 uses
  %.0791 = phi i64 [ %i.v, %bb.g ], [ %1, %bb.c ] ; 4 uses
  %i.x = icmp eq i64 %.0791, 0
  br i1 %i.x, label %bb.hc, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 14 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !202  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 14 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !201 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !206 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !205 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !197 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !198 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.an = load i16, ptr %i.am, align 4, !tbaa !218 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !219 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !220 ; 2 uses
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !203 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.w to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp slt i64 %i.av, %.0791
  br i1 %i.aw, label %.lr.ph1597, label %._crit_edge1598

.lr.ph1597:                                       ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 12 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 24 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 12 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 310
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph1597, %bb.gw
  %i.ca = phi ptr [ %i.w, %.lr.ph1597 ], [ %i.ajr, %bb.gw ]
  %i.cb = phi ptr [ %i.as, %.lr.ph1597 ], [ %i.ajs, %bb.gw ]
  %.06931595 = phi i8 [ %i.af, %.lr.ph1597 ], [ %.31, %bb.gw ] ; 2 uses
  %.06991594 = phi i32 [ %i.ad, %.lr.ph1597 ], [ %.31730, %bb.gw ] ; 2 uses
  %.07311593 = phi i16 [ %i.ar, %.lr.ph1597 ], [ %.3734.lcssa, %bb.gw ]
  %.07501592 = phi i16 [ %i.ap, %.lr.ph1597 ], [ %.2752.lcssa, %bb.gw ]
  %.07681591 = phi i16 [ %i.an, %.lr.ph1597 ], [ %.2770.lcssa, %bb.gw ]
  %.17921590 = phi i64 [ %.0791, %.lr.ph1597 ], [ %.3794, %bb.gw ] ; 4 uses
  %.08211589 = phi ptr [ %i.ab, %.lr.ph1597 ], [ %.42, %bb.gw ] ; 2 uses
  %.08531588 = phi ptr [ %i.z, %.lr.ph1597 ], [ %.42895, %bb.gw ] ; 2 uses
  %.08961587 = phi i32 [ %i.al, %.lr.ph1597 ], [ %.1897, %bb.gw ] ; 3 uses
  %.08991586 = phi i32 [ %i.aj, %.lr.ph1597 ], [ %.5904, %bb.gw ] ; 4 uses
  %i.cc = load i8, ptr %i.ax, align 2, !tbaa !199
  %.not943 = icmp eq i8 %i.cc, 0
  br i1 %.not943, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.j, %bb.s
  %i.cd = phi i32 [ %i.dm, %bb.s ], [ 16, %bb.j ] ; 2 uses
  %.16941446 = phi i8 [ %i.dk, %bb.s ], [ %.06931595, %bb.j ] ; 4 uses
  %.17001445 = phi i32 [ %i.di, %bb.s ], [ %.06991594, %bb.j ] ; 2 uses
  %.17321444 = phi i32 [ %i.dh, %bb.s ], [ 0, %bb.j ]
  %.18221443 = phi ptr [ %.3824, %bb.s ], [ %.08211589, %bb.j ] ; 3 uses
  %.18541442 = phi ptr [ %.3856, %bb.s ], [ %.08531588, %bb.j ] ; 3 uses
  %i.ce = zext i8 %.16941446 to i32               ; 2 uses
  %i.cf = icmp ult i8 %.16941446, 17
  br i1 %i.cf, label %bb.k, label %bb.s

bb.k:                                             ; preds = %.preheader
  %.not945 = icmp ult ptr %.18541442, %.18221443
  br i1 %.not945, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i = icmp eq ptr %i.cg, null
  %i.ch = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.ci = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.ck = tail call i32 %i.cg(ptr noundef %i.cj, ptr noundef %i.ch, i32 noundef %i.ci) #11, !inline_history !221
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %0, align 8, !tbaa !192
  %i.cm = tail call i32 @cli_readn(i32 noundef %i.cl, ptr noundef %i.ch, i32 noundef %i.ci) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cn = phi i32 [ %i.ck, %bb.m ], [ %i.cm, %bb.n ] ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.q:                                             ; preds = %bb.o
  %i.cp = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.cp, ptr %i.y, align 8, !tbaa !202
  %i.cq = zext nneg i32 %i.cn to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq ; 2 uses
  store ptr %i.cr, ptr %i.aa, align 8, !tbaa !201
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.2855 = phi ptr [ %i.cp, %bb.q ], [ %.18541442, %bb.k ] ; 3 uses
  %.2823 = phi ptr [ %i.cr, %bb.q ], [ %.18221443, %bb.k ]
  %i.cs = load i8, ptr %.2855, align 1, !tbaa !31
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.2855, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !31
  %i.cx = zext i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx
  %i.cz = sub nuw nsw i32 16, %i.ce
  %i.da = shl nuw i32 %i.cy, %i.cz
  %i.db = or i32 %i.da, %.17001445
  %narrow = add nuw nsw i8 %.16941446, 16         ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.2855, i64 2
  %.pre1744 = zext nneg i8 %narrow to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader
  %.pre-phi = phi i32 [ %.pre1744, %bb.r ], [ %i.ce, %.preheader ]
  %.3856 = phi ptr [ %i.dc, %bb.r ], [ %.18541442, %.preheader ] ; 2 uses
  %.3824 = phi ptr [ %.2823, %bb.r ], [ %.18221443, %.preheader ] ; 2 uses
  %.2701 = phi i32 [ %i.db, %bb.r ], [ %.17001445, %.preheader ] ; 2 uses
  %.2695 = phi i8 [ %narrow, %bb.r ], [ %.16941446, %.preheader ]
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 %.pre-phi) ; 5 uses
  %i.de = shl i32 %.17321444, %i.dd
  %i.df = sub nsw i32 32, %i.dd
  %i.dg = lshr i32 %.2701, %i.df
  %i.dh = or disjoint i32 %i.dg, %i.de            ; 2 uses
  %i.di = shl i32 %.2701, %i.dd                   ; 2 uses
  %i.dj = trunc nuw i32 %i.dd to i8
  %i.dk = sub i8 %.2695, %i.dj                    ; 2 uses
  %i.dl = sub nsw i32 %i.cd, %i.dd
  %i.dm = and i32 %i.dl, 255                      ; 2 uses
  %.not944 = icmp eq i32 %i.dm, 0
  br i1 %.not944, label %bb.t, label %.preheader, !llvm.loop !222

bb.t:                                             ; preds = %bb.s
  %i.dn = trunc i32 %i.dh to i16
  store i8 1, ptr %i.ax, align 2, !tbaa !199
  %.pre1737 = load ptr, ptr %i.e, align 8, !tbaa !203
  %.pre1738 = load ptr, ptr %i.g, align 8, !tbaa !204
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.j
  %i.do = phi ptr [ %i.ca, %bb.j ], [ %.pre1738, %bb.t ]
  %i.dp = phi ptr [ %i.cb, %bb.j ], [ %.pre1737, %bb.t ]
  %.4857 = phi ptr [ %.08531588, %bb.j ], [ %.3856, %bb.t ] ; 2 uses
  %.4825 = phi ptr [ %.08211589, %bb.j ], [ %.3824, %bb.t ] ; 2 uses
  %.1769 = phi i16 [ %.07681591, %bb.j ], [ -1, %bb.t ] ; 2 uses
  %.1751 = phi i16 [ %.07501592, %bb.j ], [ 0, %bb.t ] ; 2 uses
  %.2733 = phi i16 [ %.07311593, %bb.j ], [ %i.dn, %bb.t ] ; 2 uses
  %.3702 = phi i32 [ %.06991594, %bb.j ], [ %i.di, %bb.t ] ; 2 uses
  %.3696 = phi i8 [ %.06931595, %bb.j ], [ %i.dk, %bb.t ] ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %.neg = sub i64 %.17921590, %i.dq
  %i.ds = add i64 %.neg, %i.dr
  %i.dt = trunc i64 %i.ds to i32
  %i.du = add i32 %.08991586, %i.dt
  %i.dv = add i32 %.08961587, 32768
  %spec.select1015 = tail call i32 @llvm.umin.i32(i32 %i.dv, i32 %i.du) ; 2 uses
  %i.dw = icmp ult i32 %.08991586, %spec.select1015
  br i1 %i.dw, label %.lr.ph1571, label %._crit_edge1572

.lr.ph1571:                                       ; preds = %bb.u, %bb.gc
  %.46971569 = phi i8 [ %.26, %bb.gc ], [ %.3696, %bb.u ]
  %.47031568 = phi i32 [ %.26725, %bb.gc ], [ %.3702, %bb.u ]
  %.37341567 = phi i16 [ %.18749, %bb.gc ], [ %.2733, %bb.u ] ; 2 uses
  %.27521566 = phi i16 [ %.17767, %bb.gc ], [ %.1751, %bb.u ] ; 3 uses
  %.27701565 = phi i16 [ %.17785, %bb.gc ], [ %.1769, %bb.u ]
  %.58261564 = phi ptr [ %.37, %bb.gc ], [ %.4825, %bb.u ]
  %.58581563 = phi ptr [ %.37890, %bb.gc ], [ %.4857, %bb.u ]
  %.19001562 = phi i32 [ %.3902, %bb.gc ], [ %.08991586, %bb.u ] ; 6 uses
  %i.dx = zext i16 %.27701565 to i32
  %i.dy = zext i16 %.27521566 to i32              ; 2 uses
  %i.dz = sub nsw i32 %i.dx, %i.dy                ; 2 uses
  %i.ea = load ptr, ptr %i.bd, align 8, !tbaa !223 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !212
  %i.ed = zext i16 %i.ec to i32                   ; 3 uses
  %i.ee = load i32, ptr %i.be, align 4, !tbaa !224 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph1571
  %i.eg = zext i16 %.37341567 to i32
  %reass.sub = sub nsw i32 %i.eg, %i.dy
  %i.eh = add nsw i32 %reass.sub, 1
  %i.ei = mul nsw i32 %i.eh, %i.ed
  %i.ej = add nsw i32 %i.ei, -1
  %i.ek = and i32 %i.dz, 65535
  %i.el = add nuw nsw i32 %i.ek, 1
  %i.em = udiv i32 %i.ej, %i.el
  %i.en = trunc i32 %i.em to i16
  %wide.trip.count = zext nneg i32 %i.ee to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !212
  %.not957 = icmp ugt i16 %i.eq, %i.en
  br i1 %.not957, label %bb.w, label %._crit_edge.loopexit.split.loop.exit

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !225

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.v
  %i.er = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %._crit_edge.loopexit.split.loop.exit, %.lr.ph1571
  %.1797.lcssa = phi i32 [ 1, %.lr.ph1571 ], [ %i.er, %._crit_edge.loopexit.split.loop.exit ], [ %i.ee, %bb.w ] ; 2 uses
  %i.es = zext nneg i32 %.1797.lcssa to i64
  %i.et = getelementptr [4 x i8], ptr %i.ea, i64 %i.es ; 3 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 -4
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !210 ; 4 uses
  %i.ew = getelementptr i8, ptr %i.et, i64 -2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !212
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !212
  %i.fa = sext i32 %.1797.lcssa to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %._crit_edge
  %indvars.iv1693 = phi i64 [ %indvars.iv.next1694, %bb.x ], [ %i.fa, %._crit_edge ] ; 2 uses
  %indvars.iv.next1694 = add nsw i64 %indvars.iv1693, -1 ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %indvars.iv.next1694
end_hunk_0
begin_hunk_1_@qtm_decompress:bb.a
vec.epilog.middle.block2057:                      ; preds = %vec.epilog.vector.body2051
  %cmp.n2058 = icmp eq i64 %n.vec2050, %i.agu
  br i1 %cmp.n2058, label %.loopexit, label %.lr.ph1543.preheader

.lr.ph1543.preheader:                             ; preds = %iter.check2044, %vec.epilog.iter.check2046, %vec.epilog.middle.block2057
  %.158111541.ph = phi i32 [ %.0786, %iter.check2044 ], [ %i.agw, %vec.epilog.iter.check2046 ], [ %i.ahd, %vec.epilog.middle.block2057 ]
  %.38161540.ph = phi ptr [ %i.aes, %iter.check2044 ], [ %i.agx, %vec.epilog.iter.check2046 ], [ %i.ahe, %vec.epilog.middle.block2057 ]
  %.38201539.ph = phi ptr [ %i.agt, %iter.check2044 ], [ %i.agy, %vec.epilog.iter.check2046 ], [ %i.ahf, %vec.epilog.middle.block2057 ]
  br label %.lr.ph1543

.lr.ph1543:                                       ; preds = %.lr.ph1543.preheader, %.lr.ph1543
  %.158111541 = phi i32 [ %i.ahh, %.lr.ph1543 ], [ %.158111541.ph, %.lr.ph1543.preheader ] ; 2 uses
  %.38161540 = phi ptr [ %i.ahk, %.lr.ph1543 ], [ %.38161540.ph, %.lr.ph1543.preheader ] ; 2 uses
  %.38201539 = phi ptr [ %i.ahi, %.lr.ph1543 ], [ %.38201539.ph, %.lr.ph1543.preheader ] ; 2 uses
  %i.ahh = add nsw i32 %.158111541, -1
  %i.ahi = getelementptr inbounds nuw i8, ptr %.38201539, i64 1
  %i.ahj = load i8, ptr %.38201539, align 1, !tbaa !31
  %i.ahk = getelementptr inbounds nuw i8, ptr %.38161540, i64 1
  store i8 %i.ahj, ptr %.38161540, align 1, !tbaa !31
  %i.ahl = icmp samesign ugt i32 %.158111541, 1
  br i1 %i.ahl, label %.lr.ph1543, label %.loopexit, !llvm.loop !257

.loopexit:                                        ; preds = %.lr.ph1543, %.lr.ph1554, %middle.block2039, %vec.epilog.middle.block2057, %middle.block, %vec.epilog.middle.block, %bb.gb, %.loopexit1089
  %i.ahm = add i32 %.0786, %.19001562
  br label %bb.gc

bb.gc:                                            ; preds = %.thread, %.loopexit
  %.3902 = phi i32 [ %i.la, %.thread ], [ %i.ahm, %.loopexit ] ; 3 uses
  %.37890 = phi ptr [ %.9862, %.thread ], [ %.36889, %.loopexit ] ; 2 uses
  %.37 = phi ptr [ %.9830, %.thread ], [ %.36, %.loopexit ] ; 2 uses
  %.17785 = phi i16 [ %.5773, %.thread ], [ %.16784, %.loopexit ] ; 2 uses
  %.17767 = phi i16 [ %.5755, %.thread ], [ %.16766, %.loopexit ] ; 2 uses
  %.18749 = phi i16 [ %.6737, %.thread ], [ %.17748, %.loopexit ] ; 2 uses
  %.26725 = phi i32 [ %.7706, %.thread ], [ %.25724, %.loopexit ] ; 2 uses
  %.26 = phi i8 [ %.7, %.thread ], [ %.25, %.loopexit ] ; 2 uses
  %i.ahn = icmp ult i32 %.3902, %spec.select1015
  br i1 %i.ahn, label %.lr.ph1571, label %._crit_edge1572, !llvm.loop !258

._crit_edge1572:                                  ; preds = %bb.gc, %bb.u
  %.1900.lcssa = phi i32 [ %.08991586, %bb.u ], [ %.3902, %bb.gc ] ; 6 uses
  %.5858.lcssa = phi ptr [ %.4857, %bb.u ], [ %.37890, %bb.gc ] ; 2 uses
  %.5826.lcssa = phi ptr [ %.4825, %bb.u ], [ %.37, %bb.gc ] ; 2 uses
  %.2770.lcssa = phi i16 [ %.1769, %bb.u ], [ %.17785, %bb.gc ] ; 2 uses
  %.2752.lcssa = phi i16 [ %.1751, %bb.u ], [ %.17767, %bb.gc ] ; 2 uses
  %.3734.lcssa = phi i16 [ %.2733, %bb.u ], [ %.18749, %bb.gc ] ; 2 uses
  %.4703.lcssa = phi i32 [ %.3702, %bb.u ], [ %.26725, %bb.gc ] ; 2 uses
  %.4697.lcssa = phi i8 [ %.3696, %bb.u ], [ %.26, %bb.gc ] ; 3 uses
  %i.aho = zext i32 %.1900.lcssa to i64
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aho ; 2 uses
  store ptr %i.ahp, ptr %i.e, align 8, !tbaa !203
  %i.ahq = sub i32 %.1900.lcssa, %.08961587       ; 2 uses
  %i.ahr = icmp ugt i32 %i.ahq, 32767
  br i1 %i.ahr, label %bb.gd, label %._crit_edge1572._crit_edge

._crit_edge1572._crit_edge:                       ; preds = %._crit_edge1572
  %.pre1740 = load ptr, ptr %i.g, align 8, !tbaa !204
  br label %bb.gw

bb.gd:                                            ; preds = %._crit_edge1572
  %.not947 = icmp eq i32 %i.ahq, 32768
  br i1 %.not947, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #11
  store i32 -124, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.gf:                                            ; preds = %bb.gd
  %i.ahs = and i8 %.4697.lcssa, 7
  %i.aht = zext nneg i8 %i.ahs to i32
  %i.ahu = shl i32 %.4703.lcssa, %i.aht
  %i.ahv = and i8 %.4697.lcssa, -8
  br label %bb.gg

bb.gg:                                            ; preds = %.backedge, %bb.gf
  %i.ahw = phi i32 [ 8, %bb.gf ], [ %.be, %.backedge ] ; 2 uses
  %.291585 = phi i8 [ %i.ahv, %bb.gf ], [ %i.ajd, %.backedge ] ; 4 uses
  %.297281584 = phi i32 [ %i.ahu, %bb.gf ], [ %i.ajb, %.backedge ] ; 2 uses
  %.168121583 = phi i32 [ 0, %bb.gf ], [ %.168121583.be, %.backedge ]
  %.391582 = phi ptr [ %.5826.lcssa, %bb.gf ], [ %.41, %.backedge ] ; 3 uses
  %.398921581 = phi ptr [ %.5858.lcssa, %bb.gf ], [ %.41894, %.backedge ] ; 3 uses
  %i.ahx = zext i8 %.291585 to i32                ; 2 uses
  %i.ahy = icmp ult i8 %.291585, 17
  br i1 %i.ahy, label %bb.gh, label %bb.gp

bb.gh:                                            ; preds = %bb.gg
  %.not954 = icmp ult ptr %.398921581, %.391582
  br i1 %.not954, label %bb.go, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ahz = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1052 = icmp eq ptr %i.ahz, null
  %i.aia = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.aib = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1052, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aic = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.aid = tail call i32 %i.ahz(ptr noundef %i.aic, ptr noundef %i.aia, i32 noundef %i.aib) #11, !inline_history !221
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  %i.aie = load i32, ptr %0, align 8, !tbaa !192
  %i.aif = tail call i32 @cli_readn(i32 noundef %i.aie, ptr noundef %i.aia, i32 noundef %i.aib) #11
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.aig = phi i32 [ %i.aid, %bb.gj ], [ %i.aif, %bb.gk ] ; 2 uses
  %i.aih = icmp slt i32 %i.aig, 0
  br i1 %i.aih, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.gn:                                            ; preds = %bb.gl
  %i.aii = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.aii, ptr %i.y, align 8, !tbaa !202
  %i.aij = zext nneg i32 %i.aig to i64
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.aij ; 2 uses
  store ptr %i.aik, ptr %i.aa, align 8, !tbaa !201
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gh
  %.40893 = phi ptr [ %i.aii, %bb.gn ], [ %.398921581, %bb.gh ] ; 3 uses
  %.40 = phi ptr [ %i.aik, %bb.gn ], [ %.391582, %bb.gh ]
  %i.ail = load i8, ptr %.40893, align 1, !tbaa !31
  %i.aim = zext i8 %i.ail to i32
  %i.ain = shl nuw nsw i32 %i.aim, 8
  %i.aio = getelementptr inbounds nuw i8, ptr %.40893, i64 1
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !31
  %i.aiq = zext i8 %i.aip to i32
  %i.air = or disjoint i32 %i.ain, %i.aiq
  %i.ais = sub nuw nsw i32 16, %i.ahx
  %i.ait = shl nuw i32 %i.air, %i.ais
  %i.aiu = or i32 %i.ait, %.297281584
  %narrow956 = add nuw nsw i8 %.291585, 16        ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.40893, i64 2
  %.pre1745 = zext nneg i8 %narrow956 to i32
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gg
  %.pre-phi1746 = phi i32 [ %.pre1745, %bb.go ], [ %i.ahx, %bb.gg ]
  %.41894 = phi ptr [ %i.aiv, %bb.go ], [ %.398921581, %bb.gg ] ; 3 uses
  %.41 = phi ptr [ %.40, %bb.go ], [ %.391582, %bb.gg ] ; 3 uses
  %.30729 = phi i32 [ %i.aiu, %bb.go ], [ %.297281584, %bb.gg ] ; 2 uses
  %.30 = phi i8 [ %narrow956, %bb.go ], [ %.291585, %bb.gg ]
  %i.aiw = tail call i32 @llvm.umin.i32(i32 %i.ahw, i32 %.pre-phi1746) ; 5 uses
  %i.aix = shl i32 %.168121583, %i.aiw
  %i.aiy = sub nsw i32 32, %i.aiw
  %i.aiz = lshr i32 %.30729, %i.aiy
  %i.aja = or disjoint i32 %i.aiz, %i.aix         ; 2 uses
  %i.ajb = shl i32 %.30729, %i.aiw                ; 3 uses
  %i.ajc = trunc nuw i32 %i.aiw to i8
  %i.ajd = sub i8 %.30, %i.ajc                    ; 3 uses
  %i.aje = sub nsw i32 %i.ahw, %i.aiw
  %i.ajf = and i32 %i.aje, 255                    ; 2 uses
  %.not949 = icmp eq i32 %i.ajf, 0
  br i1 %.not949, label %bb.gq, label %.backedge

.backedge:                                        ; preds = %bb.gp, %bb.gq
  %.be = phi i32 [ %i.ajf, %bb.gp ], [ 8, %bb.gq ]
  %.168121583.be = phi i32 [ %i.aja, %bb.gp ], [ 0, %bb.gq ]
  br label %bb.gg, !llvm.loop !259

bb.gq:                                            ; preds = %bb.gp
  %.not950 = icmp eq i32 %i.aja, 255
  br i1 %.not950, label %bb.gr, label %.backedge

bb.gr:                                            ; preds = %bb.gq
  store i8 0, ptr %i.ax, align 2, !tbaa !199
  %i.ajg = load i32, ptr %i.bv, align 8, !tbaa !196
  %i.ajh = icmp eq i32 %.1900.lcssa, %i.ajg
  %.pre1739 = load ptr, ptr %i.e, align 8, !tbaa !203 ; 2 uses
  %.pre1741 = load ptr, ptr %i.g, align 8, !tbaa !204 ; 3 uses
  br i1 %i.ajh, label %bb.gs, label %bb.gw

bb.gs:                                            ; preds = %bb.gr
  %i.aji = ptrtoint ptr %.pre1739 to i64
  %i.ajj = ptrtoint ptr %.pre1741 to i64
  %i.ajk = sub i64 %i.aji, %i.ajj                 ; 2 uses
  %i.ajl = load i8, ptr %i.by, align 8, !tbaa !194
  %.not951 = icmp eq i8 %i.ajl, 0
  br i1 %.not951, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ajm = trunc i64 %i.ajk to i32                ; 2 uses
  %i.ajn = load i32, ptr %i.bz, align 4, !tbaa !193
  %i.ajo = tail call i32 @cli_writen(i32 noundef %i.ajn, ptr noundef %.pre1741, i32 noundef %i.ajm) #11
  %.not952 = icmp eq i32 %i.ajo, %i.ajm
  br i1 %.not952, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.gv:                                            ; preds = %bb.gt, %bb.gs
  %sext953 = shl i64 %i.ajk, 32
  %i.ajp = ashr exact i64 %sext953, 32
  %i.ajq = sub nsw i64 %.17921590, %i.ajp
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !204
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !203
  br label %bb.gw

bb.gw:                                            ; preds = %._crit_edge1572._crit_edge, %bb.gr, %bb.gv
  %i.ajr = phi ptr [ %.pre1740, %._crit_edge1572._crit_edge ], [ %i.ah, %bb.gv ], [ %.pre1741, %bb.gr ] ; 3 uses
  %i.ajs = phi ptr [ %i.ahp, %._crit_edge1572._crit_edge ], [ %i.ah, %bb.gv ], [ %.pre1739, %bb.gr ] ; 2 uses
  %.5904 = phi i32 [ %.1900.lcssa, %._crit_edge1572._crit_edge ], [ 0, %bb.gv ], [ %.1900.lcssa, %bb.gr ] ; 2 uses
  %.1897 = phi i32 [ %.08961587, %._crit_edge1572._crit_edge ], [ 0, %bb.gv ], [ %.1900.lcssa, %bb.gr ] ; 2 uses
  %.42895 = phi ptr [ %.5858.lcssa, %._crit_edge1572._crit_edge ], [ %.41894, %bb.gv ], [ %.41894, %bb.gr ] ; 2 uses
  %.42 = phi ptr [ %.5826.lcssa, %._crit_edge1572._crit_edge ], [ %.41, %bb.gv ], [ %.41, %bb.gr ] ; 2 uses
  %.3794 = phi i64 [ %.17921590, %._crit_edge1572._crit_edge ], [ %i.ajq, %bb.gv ], [ %.17921590, %bb.gr ] ; 3 uses
  %.31730 = phi i32 [ %.4703.lcssa, %._crit_edge1572._crit_edge ], [ %i.ajb, %bb.gv ], [ %i.ajb, %bb.gr ] ; 2 uses
  %.31 = phi i8 [ %.4697.lcssa, %._crit_edge1572._crit_edge ], [ %i.ajd, %bb.gv ], [ %i.ajd, %bb.gr ] ; 2 uses
  %i.ajt = ptrtoint ptr %i.ajs to i64
  %i.aju = ptrtoint ptr %i.ajr to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  %i.ajw = icmp slt i64 %i.ajv, %.3794
  br i1 %i.ajw, label %bb.j, label %._crit_edge1598, !llvm.loop !260

._crit_edge1598:                                  ; preds = %bb.gw, %bb.i
  %.0899.lcssa = phi i32 [ %i.aj, %bb.i ], [ %.5904, %bb.gw ]
  %.0896.lcssa = phi i32 [ %i.al, %bb.i ], [ %.1897, %bb.gw ]
  %.0853.lcssa = phi ptr [ %i.z, %bb.i ], [ %.42895, %bb.gw ]
  %.0821.lcssa = phi ptr [ %i.ab, %bb.i ], [ %.42, %bb.gw ]
  %.1792.lcssa = phi i64 [ %.0791, %bb.i ], [ %.3794, %bb.gw ] ; 3 uses
  %.0768.lcssa = phi i16 [ %i.an, %bb.i ], [ %.2770.lcssa, %bb.gw ]
  %.0750.lcssa = phi i16 [ %i.ap, %bb.i ], [ %.2752.lcssa, %bb.gw ]
  %.0731.lcssa = phi i16 [ %i.ar, %bb.i ], [ %.3734.lcssa, %bb.gw ]
  %.0699.lcssa = phi i32 [ %i.ad, %bb.i ], [ %.31730, %bb.gw ]
  %.0693.lcssa = phi i8 [ %i.af, %bb.i ], [ %.31, %bb.gw ]
  %.lcssa1265 = phi ptr [ %i.w, %bb.i ], [ %i.ajr, %bb.gw ] ; 2 uses
  %.not939 = icmp eq i64 %.1792.lcssa, 0
  br i1 %.not939, label %bb.hb, label %bb.gx

bb.gx:                                            ; preds = %._crit_edge1598
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ajy = load i8, ptr %i.ajx, align 8, !tbaa !194
  %.not940 = icmp eq i8 %i.ajy, 0
  br i1 %.not940, label %bb.ha, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ajz = trunc i64 %.1792.lcssa to i32          ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !193
  %i.akc = tail call i32 @cli_writen(i32 noundef %i.akb, ptr noundef %.lcssa1265, i32 noundef %i.ajz) #11
  %.not941 = icmp eq i32 %i.akc, %i.ajz
  br i1 %.not941, label %._crit_edge1742, label %bb.gz

._crit_edge1742:                                  ; preds = %bb.gy
  %.pre1743 = load ptr, ptr %i.g, align 8, !tbaa !204
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.ha:                                            ; preds = %._crit_edge1742, %bb.gx
  %i.akd = phi ptr [ %.pre1743, %._crit_edge1742 ], [ %.lcssa1265, %bb.gx ]
  %sext942 = shl i64 %.1792.lcssa, 32
  %i.ake = ashr exact i64 %sext942, 32
  %i.akf = getelementptr inbounds i8, ptr %i.akd, i64 %i.ake
  store ptr %i.akf, ptr %i.g, align 8, !tbaa !204
  br label %bb.hb

bb.hb:                                            ; preds = %._crit_edge1598, %bb.ha
  store ptr %.0853.lcssa, ptr %i.y, align 8, !tbaa !202
  store ptr %.0821.lcssa, ptr %i.aa, align 8, !tbaa !201
  store i32 %.0699.lcssa, ptr %i.ac, align 8, !tbaa !206
  store i8 %.0693.lcssa, ptr %i.ae, align 8, !tbaa !205
  store i32 %.0899.lcssa, ptr %i.ai, align 4, !tbaa !197
  store i32 %.0896.lcssa, ptr %i.ak, align 8, !tbaa !198
  store i16 %.0768.lcssa, ptr %i.am, align 4, !tbaa !218
  store i16 %.0750.lcssa, ptr %i.ao, align 2, !tbaa !219
  store i16 %.0731.lcssa, ptr %i.aq, align 8, !tbaa !220
  br label %bb.hc

bb.hc:                                            ; preds = %bb.bj, %bb.h, %bb.b, %bb.a, %bb.hb, %bb.gz, %bb.gu, %bb.gm, %bb.ge, %bb.fy, %bb.fw, %bb.fs, %bb.fi, %bb.eq, %bb.eg, %bb.dn, %bb.dd, %bb.ck, %bb.ca, %bb.aj, %bb.p, %bb.f
  %.4 = phi i32 [ 0, %bb.hb ], [ -111, %bb.a ], [ -123, %bb.f ], [ %i.d, %bb.b ], [ -123, %bb.bj ], [ -124, %bb.fw ], [ -123, %bb.ck ], [ -124, %bb.fy ], [ -123, %bb.ca ], [ -123, %bb.dn ], [ -123, %bb.dd ], [ -123, %bb.eq ], [ -123, %bb.fs ], [ -123, %bb.fi ], [ -123, %bb.eg ], [ -123, %bb.aj ], [ -124, %bb.ge ], [ -123, %bb.gm ], [ -123, %bb.gu ], [ -123, %bb.p ], [ -123, %bb.gz ], [ 0, %bb.h ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @qtm_update_model(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !207
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !207
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !208  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !209  ; 4 uses
  %i.h = zext nneg i32 %i.d to i64                ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 2
  %.pre = load i16, ptr %.phi.trans.insert87, align 2, !tbaa !212 ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.h, -1    ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.prol
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !212
  %i.l = lshr i16 %i.k, 1                         ; 2 uses
  %.not54.prol = icmp ugt i16 %i.l, %.pre
  %i.m = add i16 %.pre, 1
  %spec.select.prol = select i1 %.not54.prol, i16 %i.l, i16 %i.m ; 2 uses
  store i16 %spec.select.prol, ptr %i.j, align 2, !tbaa !212
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.unr = phi i16 [ %.pre, %.lr.ph ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.n = icmp eq i32 %i.d, 1
  br i1 %i.n, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %i.o = phi i16 [ %spec.select.1, %.lr.ph.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.p = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 -2       ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !212
  %i.s = lshr i16 %i.r, 1                         ; 2 uses
  %.not54 = icmp ugt i16 %i.s, %i.o
  %i.t = add i16 %i.o, 1
  %spec.select = select i1 %.not54, i16 %i.s, i16 %i.t ; 3 uses
  store i16 %spec.select, ptr %i.q, align 2, !tbaa !212
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !212
  %i.x = lshr i16 %i.w, 1                         ; 2 uses
  %.not54.1 = icmp ugt i16 %i.x, %spec.select
  %i.y = add i16 %spec.select, 1
  %spec.select.1 = select i1 %.not54.1, i16 %i.x, i16 %i.y ; 2 uses
  store i16 %spec.select.1, ptr %i.v, align 2, !tbaa !212
  %i.z = icmp sgt i64 %indvars.iv, 2
  br i1 %i.z, label %.lr.ph.new, label %.loopexit, !llvm.loop !261

bb.c:                                             ; preds = %bb.a
  store i32 50, ptr %0, align 8, !tbaa !207
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !208 ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !209 ; 11 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 2 uses
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %.pre89 = load i16, ptr %.phi.trans.insert88, align 2, !tbaa !212 ; 2 uses
  %xtraiter108 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.af = icmp ult i32 %i.ab, 4
  br i1 %i.af, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

.preheader56.unr-lcssa:                           ; preds = %bb.e
  %lcmp.mod110.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %.preheader56, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader56.unr-lcssa, %.lr.ph63
  %.epil.init = phi i16 [ %.pre89, %.lr.ph63 ], [ %i.bn, %.preheader56.unr-lcssa ]
  %indvars.iv73.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next74.3, %.preheader56.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter108, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ag = phi i16 [ %.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ]
  %indvars.iv73.epil = phi i64 [ %indvars.iv73.epil.init, %.epil.preheader ], [ %indvars.iv.next74.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %indvars.iv.next74.epil = add nuw nsw i64 %indvars.iv73.epil, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.epil
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !212 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv73.epil
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %reass.sub.epil = sub i16 %i.ag, %i.aj
  %i.am = add i16 %reass.sub.epil, 1
  %i.an = lshr i16 %i.am, 1
  store i16 %i.an, ptr %i.al, align 2, !tbaa !212
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter108
  br i1 %epil.iter.cmp.not, label %.preheader56, label %bb.d, !llvm.loop !262

.preheader56:                                     ; preds = %bb.d, %.preheader56.unr-lcssa
  %.not100 = icmp eq i32 %i.ab, 1
  br i1 %.not100, label %.lr.ph69, label %.lr.ph67
end_hunk_1
