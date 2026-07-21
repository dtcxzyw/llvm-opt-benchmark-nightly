inline.NumInlined: 13
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 36
begin_hunk_0_@test_wp_P_slice:bb.a
._crit_edge161.split:                             ; preds = %._crit_edge157.split
  store ptr %i.gx, ptr @ref_pic_sub, align 8, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge161.split, %.preheader136
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count
  br i1 %exitcond225.not, label %.preheader133, label %.preheader136, !llvm.loop !107

.preheader132:                                    ; preds = %.preheader133, %.critedge
  %indvars.iv290 = phi i64 [ 0, %.preheader133 ], [ %indvars.iv.next291, %.critedge ] ; 4 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv290
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4  ; 3 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.preheader132
  %i.iu = load i32, ptr %i.gr, align 8, !tbaa !113
  %.not127 = icmp eq i32 %i.iu, 0
  %i.iv = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv290 ; 3 uses
  %i.iw = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv290 ; 3 uses
  br i1 %.not127, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count288 = zext nneg i32 %i.is to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.critedge131.loopexit.split.us.us
  %indvars.iv285 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next286, %.critedge131.loopexit.split.us.us ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %indvars.iv285 ; 3 uses
  %i.iy = getelementptr inbounds nuw [12 x i8], ptr %i.iw, i64 %indvars.iv285 ; 3 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !4
  %i.ja = icmp ne i32 %i.iz, 0
  %i.jb = load i32, ptr %i.ix, align 4, !tbaa !4
  %i.jc = icmp ne i32 %i.jb, 32
  %or.cond.us.us = select i1 %i.jc, i1 true, i1 %i.ja
  br i1 %or.cond.us.us, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.preheader.us
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4
  %i.jf = icmp ne i32 %i.je, 0
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = icmp ne i32 %i.jh, 32
  %or.cond.us.us.1 = select i1 %i.ji, i1 true, i1 %i.jf
  br i1 %or.cond.us.us.1, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !4
  %i.jl = icmp ne i32 %i.jk, 0
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !4
  %i.jo = icmp ne i32 %i.jn, 32
  %or.cond.us.us.2 = select i1 %i.jo, i1 true, i1 %i.jl
  br i1 %or.cond.us.us.2, label %.loopexit, label %.critedge131.loopexit.split.us.us

.critedge131.loopexit.split.us.us:                ; preds = %bb.o
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count288
  br i1 %exitcond289.not, label %.critedge, label %.preheader.us, !llvm.loop !115

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.jp = load i32, ptr %i.gt, align 4, !tbaa !116
  %.not128 = icmp eq i32 %i.jp, 66
  %wide.trip.count279 = zext nneg i32 %i.is to i64 ; 2 uses
  br i1 %.not128, label %.preheader.us172, label %.preheader

.preheader.us172:                                 ; preds = %.preheader.lr.ph.split, %.critedge131.loopexit.split.split.us.us
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %.critedge131.loopexit.split.split.us.us ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %indvars.iv276 ; 3 uses
  %i.jr = getelementptr inbounds nuw [12 x i8], ptr %i.iw, i64 %indvars.iv276 ; 3 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4
  %i.jt = icmp ne i32 %i.js, 0
  %i.ju = load i32, ptr %i.jq, align 4, !tbaa !4
  %i.jv = icmp ne i32 %i.ju, 32
  %or.cond.us170.us = select i1 %i.jv, i1 true, i1 %i.jt
  br i1 %or.cond.us170.us, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.preheader.us172
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4
  %i.jy = icmp ne i32 %i.jx, 0
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4
  %i.kb = icmp ne i32 %i.ka, 32
  %or.cond.us170.us.1 = select i1 %i.kb, i1 true, i1 %i.jy
  br i1 %or.cond.us170.us.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4
  %i.ke = icmp ne i32 %i.kd, 0
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !4
  %i.kh = icmp ne i32 %i.kg, 32
  %or.cond.us170.us.2 = select i1 %i.kh, i1 true, i1 %i.ke
  br i1 %or.cond.us170.us.2, label %.loopexit, label %.critedge131.loopexit.split.split.us.us

.critedge131.loopexit.split.split.us.us:          ; preds = %bb.q
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count279
  br i1 %exitcond280.not, label %.critedge, label %.preheader.us172, !llvm.loop !115

.preheader:                                       ; preds = %.preheader.lr.ph.split, %.critedge131
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %.critedge131 ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %indvars.iv267 ; 3 uses
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.iw, i64 %indvars.iv267 ; 3 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !4
  %i.kl = add i32 %i.kk, -3
  %i.km = icmp ult i32 %i.kl, -5
  %i.kn = load i32, ptr %i.ki, align 4, !tbaa !4
  %i.ko = icmp ne i32 %i.kn, 32
  %or.cond = select i1 %i.ko, i1 true, i1 %i.km
  br i1 %or.cond, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !4
  %i.kr = add i32 %i.kq, -3
  %i.ks = icmp ult i32 %i.kr, -5
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !4
  %i.kv = icmp ne i32 %i.ku, 32
  %or.cond.1 = select i1 %i.kv, i1 true, i1 %i.ks
  br i1 %or.cond.1, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !4
  %i.ky = add i32 %i.kx, -3
  %i.kz = icmp ult i32 %i.ky, -5
  %i.la = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !4
  %i.lc = icmp ne i32 %i.lb, 32
  %or.cond.2 = select i1 %i.lc, i1 true, i1 %i.kz
  br i1 %or.cond.2, label %.loopexit, label %.critedge131

.critedge131:                                     ; preds = %bb.s
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count279
  br i1 %exitcond271.not, label %.critedge, label %.preheader, !llvm.loop !115

.critedge:                                        ; preds = %.critedge131, %.critedge131.loopexit.split.split.us.us, %.critedge131.loopexit.split.us.us, %.preheader132
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count
  br i1 %exitcond294.not, label %.loopexit, label %.preheader132, !llvm.loop !120

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.r, %bb.s, %.preheader.us172, %bb.p, %bb.q, %.preheader.us, %bb.n, %bb.o
  %.6 = phi i32 [ 1, %.preheader.us ], [ 1, %.preheader ], [ 1, %.preheader.us172 ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.s ], [ 1, %bb.r ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @test_wp_B_slice(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x [32 x [3 x i32]]], align 16  ; 5 uses
  %i.b = alloca [6 x [32 x [3 x i32]]], align 16  ; 5 uses
  %i.c = alloca [6 x [32 x [32 x [3 x i32]]]], align 16 ; 6 uses
  %i.d = alloca [2 x i32], align 8                ; 4 uses
  %i.e = load ptr, ptr @img, align 8, !tbaa !8    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15268
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 14224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [536 x i8], ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31
  %.not270 = icmp eq i32 %i.o, 0
  br i1 %.not270, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = and i32 %i.k, 1
  %.not271 = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not271, i64 4, i64 6
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %wide.trip.count = phi i64 [ %i.q, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.r = icmp eq i32 %0, 1                        ; 4 uses
  %. = select i1 %i.r, i32 5, i32 6               ; 4 uses
  store i32 %., ptr @luma_log_weight_denom, align 4, !tbaa !4
  store i32 %., ptr @chroma_log_weight_denom, align 4, !tbaa !4
  %i.s = add nsw i32 %., -1
  %i.t = shl nuw nsw i32 1, %i.s                  ; 2 uses
  store i32 %i.t, ptr @wp_luma_round, align 4, !tbaa !4
  store i32 %i.t, ptr @wp_chroma_round, align 4, !tbaa !4
  %i.u = shl nuw nsw i32 1, %.                    ; 22 uses
  %i.v = load ptr, ptr @wp_weight, align 8
  %i.w = load ptr, ptr @wp_offset, align 8
  %1 = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %2 = shufflevector <2 x i32> %1, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader303

.preheader303:                                    ; preds = %bb.d, %._crit_edge
  %indvar = phi i64 [ 0, %bb.d ], [ %indvar.next, %._crit_edge ] ; 5 uses
  %i.x = mul nuw nsw i64 %indvar, 384
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvar ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.preheader302.lr.ph, label %._crit_edge

.preheader302.lr.ph:                              ; preds = %.preheader303
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvar
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvar
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34
  br label %.preheader302

.preheader301:                                    ; preds = %._crit_edge
  %i.af = load i32, ptr @listXsize, align 16, !tbaa !4 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader300.lr.ph, label %._crit_edge313.split.thread

.preheader300.lr.ph:                              ; preds = %.preheader301
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8
  %i.ak = load ptr, ptr @listX, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 12288
  br i1 %i.ai, label %.preheader300.lr.ph.split, label %._crit_edge313.split.thread520

.preheader300.lr.ph.split:                        ; preds = %.preheader300.lr.ph
  %i.am = load ptr, ptr @enc_picture, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75
  %wide.trip.count394 = zext nneg i32 %i.af to i64
  %wide.trip.count389 = zext nneg i32 %i.ah to i64
  br label %.preheader300

.preheader302:                                    ; preds = %.preheader302.lr.ph, %.preheader302
  %indvar368 = phi i64 [ 0, %.preheader302.lr.ph ], [ %indvar.next369, %.preheader302 ] ; 4 uses
  %i.ap = mul nuw nsw i64 %indvar368, 12
  %i.aq = add nuw nsw i64 %i.x, %i.ap             ; 2 uses
  %scevgep370 = getelementptr nuw i8, ptr %i.a, i64 %i.aq ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.b, i64 %i.aq
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvar368
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvar368
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 0, i64 12, i1 false), !tbaa !4
  store <2 x i32> %2, ptr %scevgep370, align 4, !tbaa !4
  %.sroa.11.0.scevgep370.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep370, i64 8
  store i32 %i.u, ptr %.sroa.11.0.scevgep370.sroa_idx, align 4, !tbaa !4
  store i32 %i.u, ptr %i.as, align 4, !tbaa !4
  store i32 0, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.u, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.u, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 0, ptr %i.ay, align 4, !tbaa !4
  %indvar.next369 = add nuw nsw i64 %indvar368, 1 ; 2 uses
  %i.az = load i32, ptr %i.y, align 4, !tbaa !4
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvar.next369, %i.ba
  br i1 %i.bb, label %.preheader302, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %.preheader302, %.preheader303
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader301, label %.preheader303, !llvm.loop !122

.preheader300:                                    ; preds = %.preheader300.lr.ph.split, %._crit_edge311
  %indvars.iv391 = phi i64 [ 0, %.preheader300.lr.ph.split ], [ %indvars.iv.next392, %._crit_edge311 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv391
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !75 ; 3 uses
  %i.bg = sub nsw i32 %i.ao, %i.bf
  %i.bh = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.bg, i32 range(i32 -1024, -127) -128)
  %i.bi = tail call noundef i32 @llvm.smin.i32(i32 %i.bh, i32 127)
  %i.bj = getelementptr inbounds nuw [384 x i8], ptr %i.al, i64 %indvars.iv391
  %i.bk = getelementptr inbounds nuw [384 x i8], ptr %i.c, i64 %indvars.iv391
  br label %bb.e

bb.e:                                             ; preds = %.preheader300, %.split309.us
  %indvars.iv = phi i64 [ 0, %.preheader300 ], [ %indvars.iv.next, %.split309.us ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !75 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, %i.bf
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %indvars.iv ; 3 uses
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.bk, i64 %indvars.iv ; 3 uses
  br i1 %i.bp, label %.split309.us, label %.split

.split:                                           ; preds = %bb.e
  %i.bs = sub nsw i32 %i.bo, %i.bf
  %i.bt = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.bs, i32 range(i32 -1024, -127) -128)
  %i.bu = tail call noundef i32 @llvm.smin.i32(i32 %i.bt, i32 127) ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.bu to i8
  %i.bv = sdiv i8 %.lhs.trunc, 2
  %i.bw = tail call i8 @llvm.abs.i8(i8 %i.bv, i1 false)
  %i.bx = zext i8 %i.bw to i16
  %.lhs.trunc522 = or disjoint i16 %i.bx, 16384
  %.rhs.trunc = trunc nsw i32 %i.bu to i16
  %i.by = sdiv i16 %.lhs.trunc522, %.rhs.trunc
  %.sext523 = sext i16 %i.by to i32
  %i.bz = mul nsw i32 %i.bi, %.sext523
  %i.ca = add nsw i32 %i.bz, 32
  %i.cb = ashr i32 %i.ca, 6
  %i.cc = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.cb, i32 range(i32 -1024, -127) -1024)
  %i.cd = tail call noundef i32 @llvm.smin.i32(i32 %i.cc, i32 1023)
  %i.ce = ashr i32 %i.cd, 2                       ; 2 uses
  %i.cf = add nsw i32 %i.ce, -129
  %or.cond274 = icmp ult i32 %i.cf, -193
  %spec.store.select = select i1 %or.cond274, i32 32, i32 %i.ce ; 2 uses
  %i.cg = sub nsw i32 64, %spec.store.select
  br label %.split309.us

.split309.us:                                     ; preds = %bb.e, %.split
  %spec.store.select.sink540 = phi i32 [ %spec.store.select, %.split ], [ %i.u, %bb.e ] ; 3 uses
  %.sink539 = phi i32 [ %i.cg, %.split ], [ %i.u, %bb.e ] ; 3 uses
  store i32 %spec.store.select.sink540, ptr %i.bq, align 4
  store i32 %.sink539, ptr %i.br, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %spec.store.select.sink540, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %.sink539, ptr %i.ci, align 4, !tbaa !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %spec.store.select.sink540, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %.sink539, ptr %i.ck, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next, %wide.trip.count389
  br i1 %exitcond390.not, label %._crit_edge311, label %bb.e, !llvm.loop !123

._crit_edge311:                                   ; preds = %.split309.us
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %._crit_edge313.split, label %.preheader300, !llvm.loop !124

._crit_edge313.split:                             ; preds = %._crit_edge311
  br i1 %i.r, label %.preheader283.lr.ph, label %.preheader299

._crit_edge313.split.thread520:                   ; preds = %.preheader300.lr.ph
  br i1 %i.r, label %.preheader283.lr.ph, label %.preheader299

._crit_edge313.split.thread:                      ; preds = %.preheader301
  br i1 %i.r, label %.preheader280, label %.preheader299

.preheader299:                                    ; preds = %._crit_edge313.split.thread520, %._crit_edge313.split.thread, %._crit_edge313.split
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !36 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 0                   ; 2 uses
  br i1 %i.cn, label %.preheader298.lr.ph, label %.preheader297

.preheader298.lr.ph:                              ; preds = %.preheader299
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !37 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  %i.cr = load ptr, ptr @imgY_org, align 8
  br i1 %i.cq, label %.preheader298.us.preheader, label %.preheader297

.preheader298.us.preheader:                       ; preds = %.preheader298.lr.ph
  %wide.trip.count404 = zext nneg i32 %i.cm to i64
  %wide.trip.count399 = zext nneg i32 %i.cp to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count399, 3      ; 3 uses
  %i.cs = icmp ult i32 %i.cp, 4
  %unroll_iter = and i64 %wide.trip.count399, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod560 = icmp ne i64 %xtraiter, 0
  br label %.preheader298.us

.preheader298.us:                                 ; preds = %.preheader298.us.preheader, %._crit_edge316.us
  %indvars.iv401 = phi i64 [ 0, %.preheader298.us.preheader ], [ %indvars.iv.next402, %._crit_edge316.us ] ; 2 uses
  %.0246317.us = phi double [ 0.000000e+00, %.preheader298.us.preheader ], [ %.lcssa558, %._crit_edge316.us ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv401
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !38 ; 5 uses
  br i1 %i.cs, label %.epil.preheader, label %.preheader298.us.new

.preheader298.us.new:                             ; preds = %.preheader298.us, %.preheader298.us.new
  %indvars.iv396 = phi i64 [ %indvars.iv.next397.3, %.preheader298.us.new ], [ 0, %.preheader298.us ] ; 5 uses
  %.1247314.us = phi double [ %i.dn, %.preheader298.us.new ], [ %.0246317.us, %.preheader298.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader298.us.new ], [ 0, %.preheader298.us ]
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !40
  %i.cx = uitofp i16 %i.cw to double
  %i.cy = fadd double %.1247314.us, %i.cx
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !40
  %i.dc = uitofp i16 %i.db to double
  %i.dd = fadd double %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !40
  %i.dh = uitofp i16 %i.dg to double
  %i.di = fadd double %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !40
  %i.dm = uitofp i16 %i.dl to double
  %i.dn = fadd double %i.di, %i.dm                ; 3 uses
  %indvars.iv.next397.3 = add nuw nsw i64 %indvars.iv396, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge316.us.unr-lcssa, label %.preheader298.us.new, !llvm.loop !125

._crit_edge316.us.unr-lcssa:                      ; preds = %.preheader298.us.new
  br i1 %lcmp.mod.not, label %._crit_edge316.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge316.us.unr-lcssa, %.preheader298.us
  %indvars.iv396.epil.init = phi i64 [ 0, %.preheader298.us ], [ %indvars.iv.next397.3, %._crit_edge316.us.unr-lcssa ]
  %.1247314.us.epil.init = phi double [ %.0246317.us, %.preheader298.us ], [ %i.dn, %._crit_edge316.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod560)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv396.epil = phi i64 [ %indvars.iv396.epil.init, %.epil.preheader ], [ %indvars.iv.next397.epil, %bb.f ] ; 2 uses
  %.1247314.us.epil = phi double [ %.1247314.us.epil.init, %.epil.preheader ], [ %i.dr, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396.epil
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !40
  %i.dq = uitofp i16 %i.dp to double
  %i.dr = fadd double %.1247314.us.epil, %i.dq    ; 2 uses
  %indvars.iv.next397.epil = add nuw nsw i64 %indvars.iv396.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge316.us, label %bb.f, !llvm.loop !126

._crit_edge316.us:                                ; preds = %bb.f, %._crit_edge316.us.unr-lcssa
  %.lcssa558 = phi double [ %i.dn, %._crit_edge316.us.unr-lcssa ], [ %i.dr, %bb.f ] ; 2 uses
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count404
  br i1 %exitcond405.not, label %.preheader297, label %.preheader298.us, !llvm.loop !127

.preheader283.lr.ph:                              ; preds = %._crit_edge313.split, %._crit_edge313.split.thread520
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 12288
  %i.dt = load ptr, ptr @wbp_weight, align 8      ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.preheader283, label %.preheader280

.preheader283:                                    ; preds = %.preheader283.lr.ph, %._crit_edge348
  %i.dx = phi i32 [ %i.fh, %._crit_edge348 ], [ %i.af, %.preheader283.lr.ph ]
  %i.dy = phi i32 [ %i.fi, %._crit_edge348 ], [ %i.dv, %.preheader283.lr.ph ] ; 2 uses
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %._crit_edge348 ], [ 0, %.preheader283.lr.ph ] ; 5 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.preheader282.lr.ph, label %._crit_edge348

.preheader282.lr.ph:                              ; preds = %.preheader283
  %i.ea = getelementptr inbounds nuw [384 x i8], ptr %i.ds, i64 %indvars.iv473
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !85
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv473
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !34
  %i.ee = getelementptr inbounds nuw [384 x i8], ptr %i.c, i64 %indvars.iv473
  %i.ef = load ptr, ptr %i.dt, align 8, !tbaa !85
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv473
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !34
  br label %.preheader282

.preheader280:                                    ; preds = %._crit_edge348, %._crit_edge313.split.thread, %.preheader283.lr.ph
  %i.ei = load ptr, ptr @wp_weight, align 8
  %i.ej = load ptr, ptr @wp_offset, align 8
  %3 = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %4 = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader279

.preheader282:                                    ; preds = %.preheader282.lr.ph, %.preheader282
  %indvars.iv470 = phi i64 [ 0, %.preheader282.lr.ph ], [ %indvars.iv.next471, %.preheader282 ] ; 5 uses
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %indvars.iv470 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv470
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !46 ; 3 uses
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %indvars.iv470 ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv470
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !46 ; 3 uses
  %i.eq = load i32, ptr %i.ek, align 4, !tbaa !4
  store i32 %i.eq, ptr %i.em, align 4, !tbaa !4
  %i.er = load i32, ptr %i.en, align 4, !tbaa !4
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !4
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1 ; 2 uses
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next471, %i.ff
  br i1 %i.fg, label %.preheader282, label %._crit_edge348.loopexit, !llvm.loop !128

._crit_edge348.loopexit:                          ; preds = %.preheader282
  %.pre504 = load i32, ptr @listXsize, align 16, !tbaa !4
  br label %._crit_edge348

._crit_edge348:                                   ; preds = %._crit_edge348.loopexit, %.preheader283
  %i.fh = phi i32 [ %.pre504, %._crit_edge348.loopexit ], [ %i.dx, %.preheader283 ] ; 2 uses
  %i.fi = phi i32 [ %i.fe, %._crit_edge348.loopexit ], [ %i.dy, %.preheader283 ]
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %i.fj = sext i32 %i.fh to i64
  %i.fk = icmp slt i64 %indvars.iv.next474, %i.fj
  br i1 %i.fk, label %.preheader283, label %.preheader280, !llvm.loop !129

.preheader279:                                    ; preds = %.preheader280, %._crit_edge352
  %indvars.iv479 = phi i64 [ 0, %.preheader280 ], [ %indvars.iv.next480, %._crit_edge352 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv479 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph351, label %._crit_edge352

.lr.ph351:                                        ; preds = %.preheader279
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv479
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !34
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv479
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph351, %bb.g
  %indvars.iv476 = phi i64 [ 0, %.lr.ph351 ], [ %indvars.iv.next477, %bb.g ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv476
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !46 ; 2 uses
  store <2 x i32> %4, ptr %i.ft, align 4, !tbaa !4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i32 %i.u, ptr %i.fu, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv476
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !46 ; 3 uses
  store i32 0, ptr %i.fw, align 4, !tbaa !4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i32 0, ptr %i.fx, align 4, !tbaa !4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i32 0, ptr %i.fy, align 4, !tbaa !4
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.fz = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp slt i64 %indvars.iv.next477, %i.ga
  br i1 %i.gb, label %bb.g, label %._crit_edge352, !llvm.loop !130

._crit_edge352:                                   ; preds = %bb.g, %.preheader279
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond483.not = icmp eq i64 %indvars.iv.next480, %wide.trip.count
  br i1 %exitcond483.not, label %.loopexit281, label %.preheader279, !llvm.loop !131

.preheader297:                                    ; preds = %._crit_edge316.us, %.preheader298.lr.ph, %.preheader299
  %.0246.lcssa = phi double [ 0.000000e+00, %.preheader299 ], [ 0.000000e+00, %.preheader298.lr.ph ], [ %.lcssa558, %._crit_edge316.us ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.gd = uitofp nneg i32 %i.u to double
  %i.ge = fmul double %.0246.lcssa, %i.gd
  %i.gf = add i32 %i.cm, 19
  %smax423 = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 20)
  %i.gg = add nuw i32 %smax423, 1
  %wide.trip.count424 = zext i32 %i.gg to i64
  %5 = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %7 = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader296

.preheader296:                                    ; preds = %.preheader297, %bb.i
  %indvar406 = phi i64 [ 0, %.preheader297 ], [ %indvar.next407, %bb.i ] ; 5 uses
  %i.gh = mul nuw nsw i64 %indvar406, 384
  %scevgep427 = getelementptr nuw i8, ptr %i.b, i64 %i.gh ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvar406
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !4  ; 5 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph, label %bb.i

.lr.ph:                                           ; preds = %.preheader296
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr @listX, i64 %indvar406
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !50 ; 3 uses
  %i.gn = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvar406 ; 4 uses
  br i1 %i.cn, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.go = zext nneg i32 %i.gj to i64              ; 3 uses
  %i.gp = mul nuw nsw i64 %i.go, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %scevgep427, i8 0, i64 %i.gp, i1 false), !tbaa !4
  %xtraiter561 = and i64 %i.go, 1
  %i.gq = icmp eq i32 %i.gj, 1
  br i1 %i.gq, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter566 = and i64 %i.go, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.gr = load i32, ptr %i.gc, align 4, !tbaa !37 ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  %i.gt = add i32 %i.gr, 19                       ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gt, i32 20)
  %i.gu = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gv = mul nuw nsw i64 %i.gu, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %scevgep427, i8 0, i64 %i.gv, i1 false), !tbaa !4
  %i.gw = zext nneg i32 %smax to i64
  %i.gx = add nsw i64 %i.gw, -19                  ; 2 uses
  %xtraiter569 = and i64 %i.gx, 3                 ; 3 uses
  %i.gy = icmp slt i32 %i.gt, 23
  %unroll_iter574 = and i64 %i.gx, -4
  %lcmp.mod571.not = icmp eq i64 %xtraiter569, 0
  %lcmp.mod573 = icmp ne i64 %xtraiter569, 0
  br label %.preheader295.lr.ph.us

.preheader295.lr.ph.us:                           ; preds = %._crit_edge326.split.us, %.lr.ph.split.us
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %._crit_edge326.split.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv428
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !52
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 6448
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !54 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !63
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !64
  br i1 %i.gs, label %.preheader295.us, label %._crit_edge326.split.us

.preheader295.us.new:                             ; preds = %.preheader295.us, %.preheader295.us.new
  %indvars.iv415 = phi i64 [ %indvars.iv.next416.3, %.preheader295.us.new ], [ 20, %.preheader295.us ] ; 5 uses
  %i.hf = phi double [ %i.hy, %.preheader295.us.new ], [ %.lcssa324328.us, %.preheader295.us ]
  %niter575 = phi i64 [ %niter575.next.3, %.preheader295.us.new ], [ 0, %.preheader295.us ]
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %indvars.iv415
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !40
  %i.hi = uitofp i16 %i.hh to double
  %i.hj = fadd double %i.hf, %i.hi
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %indvars.iv415
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !40
  %i.hn = uitofp i16 %i.hm to double
  %i.ho = fadd double %i.hj, %i.hn
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %indvars.iv415
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !40
  %i.hs = uitofp i16 %i.hr to double
  %i.ht = fadd double %i.ho, %i.hs
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %indvars.iv415
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 6
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !40
  %i.hx = uitofp i16 %i.hw to double
  %i.hy = fadd double %i.ht, %i.hx                ; 3 uses
  %indvars.iv.next416.3 = add nuw nsw i64 %indvars.iv415, 4 ; 2 uses
  %niter575.next.3 = add i64 %niter575, 4         ; 2 uses
  %niter575.ncmp.3 = icmp eq i64 %niter575.next.3, %unroll_iter574
  br i1 %niter575.ncmp.3, label %._crit_edge323.us.unr-lcssa, label %.preheader295.us.new, !llvm.loop !132

.preheader295.us:                                 ; preds = %.preheader295.lr.ph.us, %._crit_edge323.us
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %._crit_edge323.us ], [ 20, %.preheader295.lr.ph.us ] ; 2 uses
  %.lcssa324328.us = phi double [ %.lcssa556, %._crit_edge323.us ], [ 0.000000e+00, %.preheader295.lr.ph.us ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv420
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !38 ; 5 uses
  br i1 %i.gy, label %.epil.preheader568, label %.preheader295.us.new

._crit_edge323.us.unr-lcssa:                      ; preds = %.preheader295.us.new
  br i1 %lcmp.mod571.not, label %._crit_edge323.us, label %.epil.preheader568

.epil.preheader568:                               ; preds = %._crit_edge323.us.unr-lcssa, %.preheader295.us
  %indvars.iv415.epil.init = phi i64 [ 20, %.preheader295.us ], [ %indvars.iv.next416.3, %._crit_edge323.us.unr-lcssa ]
  %.epil.init = phi double [ %.lcssa324328.us, %.preheader295.us ], [ %i.hy, %._crit_edge323.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod573)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader568
  %indvars.iv415.epil = phi i64 [ %indvars.iv415.epil.init, %.epil.preheader568 ], [ %indvars.iv.next416.epil, %bb.h ] ; 2 uses
  %i.ib = phi double [ %.epil.init, %.epil.preheader568 ], [ %i.if, %bb.h ]
  %epil.iter570 = phi i64 [ 0, %.epil.preheader568 ], [ %epil.iter570.next, %bb.h ]
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %indvars.iv415.epil
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !40
  %i.ie = uitofp i16 %i.id to double
  %i.if = fadd double %i.ib, %i.ie                ; 2 uses
  %indvars.iv.next416.epil = add nuw nsw i64 %indvars.iv415.epil, 1
  %epil.iter570.next = add i64 %epil.iter570, 1   ; 2 uses
  %epil.iter570.cmp.not = icmp eq i64 %epil.iter570.next, %xtraiter569
  br i1 %epil.iter570.cmp.not, label %._crit_edge323.us, label %bb.h, !llvm.loop !133

._crit_edge323.us:                                ; preds = %bb.h, %._crit_edge323.us.unr-lcssa
  %.lcssa556 = phi double [ %i.hy, %._crit_edge323.us.unr-lcssa ], [ %i.if, %bb.h ] ; 2 uses
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next421, %wide.trip.count424
  br i1 %exitcond425.not, label %._crit_edge326.split.us, label %.preheader295.us, !llvm.loop !134

._crit_edge326.split.us:                          ; preds = %._crit_edge323.us, %.preheader295.lr.ph.us
  %i.ig = phi double [ 0.000000e+00, %.preheader295.lr.ph.us ], [ %.lcssa556, %._crit_edge323.us ] ; 2 uses
  %i.ih = fcmp une double %i.ig, 0.000000e+00
  %i.ii = fdiv double %i.ge, %i.ig
  %i.ij = fadd double %i.ii, 5.000000e-01
  %i.ik = fptosi double %i.ij to i32
  %.0248.us = select i1 %i.ih, i32 %i.ik, i32 %i.u ; 2 uses
  %i.il = add i32 %.0248.us, -128
  %or.cond.us = icmp ult i32 %i.il, -192
  %spec.select.us = select i1 %or.cond.us, i32 %i.u, i32 %.0248.us
  %i.im = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %indvars.iv428 ; 2 uses
  store i32 %spec.select.us, ptr %i.im, align 4, !tbaa !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store <2 x i32> %8, ptr %i.in, align 4, !tbaa !4
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %i.gu
  br i1 %exitcond432.not, label %._crit_edge330, label %.preheader295.lr.ph.us, !llvm.loop !135

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv410 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next411.1, %.lr.ph.split ] ; 3 uses
  %niter567 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter567.next.1, %.lr.ph.split ]
  %i.io = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %indvars.iv410 ; 2 uses
  store <2 x i32> %6, ptr %i.io, align 8, !tbaa !4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store i32 %i.u, ptr %i.ip, align 8, !tbaa !4
  %indvars.iv.next411 = or disjoint i64 %indvars.iv410, 1 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next411
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !52
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 6448
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !54
  %i.iu = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %indvars.iv.next411 ; 2 uses
  store <2 x i32> %6, ptr %i.iu, align 4, !tbaa !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i32 %i.u, ptr %i.iv, align 4, !tbaa !4
  %indvars.iv.next411.1 = add nuw nsw i64 %indvars.iv410, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge330.loopexit554.unr-lcssa, label %.lr.ph.split, !llvm.loop !135

._crit_edge330.loopexit554.unr-lcssa:             ; preds = %.lr.ph.split
  %lcmp.mod563.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod563.not, label %._crit_edge330, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge330.loopexit554.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv410.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next411.1, %._crit_edge330.loopexit554.unr-lcssa ] ; 2 uses
  %lcmp.mod565 = trunc i32 %i.gj to i1
  tail call void @llvm.assume(i1 %lcmp.mod565)
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv410.epil.init
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !52
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 6448
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !54
  %i.ja = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %indvars.iv410.epil.init ; 2 uses
  store <2 x i32> %6, ptr %i.ja, align 4, !tbaa !4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i32 %i.u, ptr %i.jb, align 4, !tbaa !4
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %.lr.ph.split.epil.preheader, %._crit_edge330.loopexit554.unr-lcssa, %._crit_edge326.split.us
  %.us-phi332 = phi ptr [ %i.hc, %._crit_edge326.split.us ], [ %i.it, %._crit_edge330.loopexit554.unr-lcssa ], [ %i.iz, %.lr.ph.split.epil.preheader ]
  store ptr %.us-phi332, ptr @ref_pic_sub, align 8, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge330, %.preheader296
  %indvar.next407 = add nuw nsw i64 %indvar406, 1 ; 2 uses
  %exitcond435.not = icmp eq i64 %indvar.next407, %wide.trip.count
  br i1 %exitcond435.not, label %bb.j, label %.preheader296, !llvm.loop !136

bb.j:                                             ; preds = %bb.i
  %i.jc = icmp eq i32 %0, 0
  %i.jd = load ptr, ptr @wp_weight, align 8       ; 2 uses
  %i.je = load ptr, ptr @wp_offset, align 8       ; 2 uses
  br i1 %i.jc, label %.preheader289, label %.preheader292.preheader

.preheader292.preheader:                          ; preds = %bb.j
  %9 = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader292

.preheader289:                                    ; preds = %bb.j, %._crit_edge340
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %._crit_edge340 ], [ 0, %bb.j ] ; 6 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv451 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !4
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.preheader288.lr.ph, label %._crit_edge340

.preheader288.lr.ph:                              ; preds = %.preheader289
  %i.ji = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv451
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv451
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !34
  %i.jl = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv451
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv451
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !34
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.lr.ph, %.preheader288
  %indvars.iv448 = phi i64 [ 0, %.preheader288.lr.ph ], [ %indvars.iv.next449, %.preheader288 ] ; 5 uses
  %i.jo = getelementptr inbounds nuw [12 x i8], ptr %i.ji, i64 %indvars.iv448 ; 3 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv448
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !46 ; 3 uses
  %i.jr = getelementptr inbounds nuw [12 x i8], ptr %i.jl, i64 %indvars.iv448 ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv448
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !46 ; 3 uses
  %i.ju = load i32, ptr %i.jo, align 4, !tbaa !4
  store i32 %i.ju, ptr %i.jq, align 4, !tbaa !4
  %i.jv = load i32, ptr %i.jr, align 4, !tbaa !4
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !4
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %i.ki = load i32, ptr %i.jf, align 4, !tbaa !4
  %i.kj = sext i32 %i.ki to i64
  %i.kk = icmp slt i64 %indvars.iv.next449, %i.kj
  br i1 %i.kk, label %.preheader288, label %._crit_edge340, !llvm.loop !137

._crit_edge340:                                   ; preds = %.preheader288, %.preheader289
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next452, %wide.trip.count
  br i1 %exitcond455.not, label %.loopexit291, label %.preheader289, !llvm.loop !138

.preheader292:                                    ; preds = %.preheader292.preheader, %._crit_edge336
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %._crit_edge336 ], [ 0, %.preheader292.preheader ] ; 4 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv439 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !4
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %.lr.ph335, label %._crit_edge336

.lr.ph335:                                        ; preds = %.preheader292
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv439
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !34
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv439
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph335, %bb.k
  %indvars.iv436 = phi i64 [ 0, %.lr.ph335 ], [ %indvars.iv.next437, %bb.k ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv436
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !46 ; 2 uses
  store <2 x i32> %10, ptr %i.kt, align 4, !tbaa !4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i32 %i.u, ptr %i.ku, align 4, !tbaa !4
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv436
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !46 ; 3 uses
  store i32 0, ptr %i.kw, align 4, !tbaa !4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store i32 0, ptr %i.kx, align 4, !tbaa !4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i32 0, ptr %i.ky, align 4, !tbaa !4
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 2 uses
  %i.kz = load i32, ptr %i.kl, align 4, !tbaa !4
  %i.la = sext i32 %i.kz to i64
  %i.lb = icmp slt i64 %indvars.iv.next437, %i.la
  br i1 %i.lb, label %bb.k, label %._crit_edge336, !llvm.loop !139

._crit_edge336:                                   ; preds = %bb.k, %.preheader292
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count
  br i1 %exitcond443.not, label %.loopexit291, label %.preheader292, !llvm.loop !140

.loopexit291:                                     ; preds = %._crit_edge336, %._crit_edge340
  %i.lc = load i32, ptr @listXsize, align 16, !tbaa !4 ; 2 uses
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %.preheader286.lr.ph, label %.loopexit281

.preheader286.lr.ph:                              ; preds = %.loopexit291
  %i.le = load ptr, ptr @wp_weight, align 8       ; 2 uses
  %i.lf = load ptr, ptr @wbp_weight, align 8      ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.li = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %.preheader286, label %.loopexit281

.preheader286:                                    ; preds = %.preheader286.lr.ph, %._crit_edge344
  %i.lk = phi i32 [ %i.mu, %._crit_edge344 ], [ %i.lc, %.preheader286.lr.ph ]
  %i.ll = phi i32 [ %i.mv, %._crit_edge344 ], [ %i.li, %.preheader286.lr.ph ] ; 2 uses
  %indvars.iv463 = phi i64 [ %indvars.iv.next464, %._crit_edge344 ], [ 0, %.preheader286.lr.ph ] ; 4 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.preheader285.lr.ph, label %._crit_edge344

.preheader285.lr.ph:                              ; preds = %.preheader286
  %i.ln = load ptr, ptr %i.le, align 8, !tbaa !34
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv463
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !46 ; 3 uses
  %i.lq = load ptr, ptr %i.lf, align 8, !tbaa !85
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv463
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !34
  %i.lt = load ptr, ptr %i.lg, align 8, !tbaa !34
  %i.lu = load ptr, ptr %i.lh, align 8, !tbaa !85
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %indvars.iv463
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !34
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  br label %.preheader285

.preheader285:                                    ; preds = %.preheader285.lr.ph, %.preheader285
  %indvars.iv460 = phi i64 [ 0, %.preheader285.lr.ph ], [ %indvars.iv.next461, %.preheader285 ] ; 4 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %indvars.iv460
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !46 ; 3 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv460
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !46 ; 3 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv460
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !46 ; 3 uses
  %i.mf = load i32, ptr %i.lp, align 4, !tbaa !4
  store i32 %i.mf, ptr %i.ma, align 4, !tbaa !4
  %i.mg = load i32, ptr %i.mc, align 4, !tbaa !4
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !4
  %i.mh = load i32, ptr %i.lx, align 4, !tbaa !4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !4
  %i.mm = load i32, ptr %i.ly, align 4, !tbaa !4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !4
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %i.mr = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.ms = sext i32 %i.mr to i64
  %i.mt = icmp slt i64 %indvars.iv.next461, %i.ms
  br i1 %i.mt, label %.preheader285, label %._crit_edge344.loopexit, !llvm.loop !141

._crit_edge344.loopexit:                          ; preds = %.preheader285
  %.pre = load i32, ptr @listXsize, align 16, !tbaa !4
  br label %._crit_edge344

._crit_edge344:                                   ; preds = %._crit_edge344.loopexit, %.preheader286
  %i.mu = phi i32 [ %.pre, %._crit_edge344.loopexit ], [ %i.lk, %.preheader286 ] ; 2 uses
  %i.mv = phi i32 [ %i.mr, %._crit_edge344.loopexit ], [ %i.ll, %.preheader286 ]
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %i.mw = sext i32 %i.mu to i64
  %i.mx = icmp slt i64 %indvars.iv.next464, %i.mw
  br i1 %i.mx, label %.preheader286, label %.loopexit281, !llvm.loop !142

.loopexit281:                                     ; preds = %._crit_edge344, %._crit_edge352, %.preheader286.lr.ph, %.loopexit291
  %i.my = icmp eq i32 %0, 0
  br i1 %i.my, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.loopexit281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.mz = load ptr, ptr @input, align 8, !tbaa !8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 40
  %i.nb = load <2 x i32>, ptr %i.na, align 8, !tbaa !4 ; 2 uses
  %i.nc = icmp eq <2 x i32> %i.nb, zeroinitializer
  %i.nd = load <2 x i32>, ptr @listXsize, align 16, !tbaa !4 ; 2 uses
  %i.ne = shufflevector <2 x i32> %i.nb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.nf = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ne, <2 x i32> %i.nd)
  %i.ng = select <2 x i1> %i.nc, <2 x i32> %i.nd, <2 x i32> %i.nf
  store <2 x i32> %i.ng, ptr %i.d, align 8, !tbaa !4
  %i.nh = load ptr, ptr @wp_weight, align 8
  br label %.preheader277

.preheader277:                                    ; preds = %bb.l, %.critedge276
  %indvars.iv493 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next494, %.critedge276 ] ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv493
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !4  ; 2 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  br i1 %i.nk, label %.preheader.lr.ph, label %.critedge276

.preheader.lr.ph:                                 ; preds = %.preheader277
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv493
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !34
  %wide.trip.count491 = zext nneg i32 %i.nj to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv488 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next489, %.critedge ] ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %indvars.iv488
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !46 ; 3 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !4
  %.not273 = icmp eq i32 %i.np, %i.u
  br i1 %.not273, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.preheader
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !4
  %.not273.1 = icmp eq i32 %i.nr, %i.u
  br i1 %.not273.1, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !4
  %.not273.2 = icmp eq i32 %i.nt, %i.u
  br i1 %.not273.2, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.n
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %.critedge276, label %.preheader, !llvm.loop !143

.critedge276:                                     ; preds = %.critedge, %.preheader277
  %indvars.iv.next494 = add nuw nsw i64 %indvars.iv493, 1 ; 2 uses
  %exitcond497.not = icmp eq i64 %indvars.iv.next494, %wide.trip.count
  br i1 %exitcond497.not, label %.loopexit, label %.preheader277, !llvm.loop !144

.loopexit:                                        ; preds = %.critedge276, %.preheader, %bb.m, %bb.n
  %.4244 = phi i32 [ 1, %.preheader ], [ 1, %bb.n ], [ 1, %bb.m ], [ 0, %.critedge276 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.loopexit281
  %.5245 = phi i32 [ %.4244, %.loopexit ], [ 0, %.loopexit281 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.5245
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptosi.sat.i8.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_0
