Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/weighted_prediction?download=true
inline.NumInlined: 13
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 36
begin_hunk_0_@test_wp_P_slice:bb.a
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i32 32, ptr %i.io, align 4, !tbaa !7
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i32 32, ptr %i.ip, align 4, !tbaa !7
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge161.split, label %bb.k, !llvm.loop !110

._crit_edge161.split:                             ; preds = %._crit_edge157.split
  store ptr %i.gw, ptr @ref_pic_sub, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge161.split, %.preheader136
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count
  br i1 %exitcond227.not, label %.preheader133, label %.preheader136, !llvm.loop !111

.preheader132:                                    ; preds = %.preheader133, %.critedge
  %indvars.iv292 = phi i64 [ 0, %.preheader133 ], [ %indvars.iv.next293, %.critedge ] ; 4 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv292
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !7  ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.preheader132
  %i.it = load i32, ptr %i.gq, align 8, !tbaa !116
  %.not127 = icmp eq i32 %i.it, 0
  %i.iu = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv292 ; 3 uses
  %i.iv = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv292 ; 3 uses
  br i1 %.not127, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count290 = zext nneg i32 %i.ir to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.critedge131.us
  %indvars.iv287 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next288, %.critedge131.us ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %i.iu, i64 %indvars.iv287 ; 3 uses
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %indvars.iv287 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !7
  %i.iz = icmp ne i32 %i.iy, 0
  %i.ja = load i32, ptr %i.iw, align 4, !tbaa !7
  %i.jb = icmp ne i32 %i.ja, 32
  %or.cond.us.us = select i1 %i.jb, i1 true, i1 %i.iz
  br i1 %or.cond.us.us, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.preheader.us
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !7
  %i.je = icmp ne i32 %i.jd, 0
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !7
  %i.jh = icmp ne i32 %i.jg, 32
  %or.cond.us.us.1 = select i1 %i.jh, i1 true, i1 %i.je
  br i1 %or.cond.us.us.1, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !7
  %i.jk = icmp ne i32 %i.jj, 0
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !7
  %i.jn = icmp ne i32 %i.jm, 32
  %or.cond.us.us.2 = select i1 %i.jn, i1 true, i1 %i.jk
  br i1 %or.cond.us.us.2, label %.loopexit, label %.critedge131.us

.critedge131.us:                                  ; preds = %bb.o
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count290
  br i1 %exitcond291.not, label %.critedge, label %.preheader.us, !llvm.loop !113

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.jo = load i32, ptr %i.gs, align 4, !tbaa !120
  %.not128 = icmp eq i32 %i.jo, 66
  %wide.trip.count281 = zext nneg i32 %i.ir to i64 ; 2 uses
  br i1 %.not128, label %.preheader.us172, label %.preheader

.preheader.us172:                                 ; preds = %.preheader.lr.ph.split, %.critedge131.us174
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %.critedge131.us174 ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [12 x i8], ptr %i.iu, i64 %indvars.iv278 ; 3 uses
  %i.jq = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %indvars.iv278 ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !7
  %i.js = icmp ne i32 %i.jr, 0
  %i.jt = load i32, ptr %i.jp, align 4, !tbaa !7
  %i.ju = icmp ne i32 %i.jt, 32
  %or.cond.us170.us = select i1 %i.ju, i1 true, i1 %i.js
  br i1 %or.cond.us170.us, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.preheader.us172
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !7
  %i.jx = icmp ne i32 %i.jw, 0
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !7
  %i.ka = icmp ne i32 %i.jz, 32
  %or.cond.us170.us.1 = select i1 %i.ka, i1 true, i1 %i.jx
  br i1 %or.cond.us170.us.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !7
  %i.kd = icmp ne i32 %i.kc, 0
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !7
  %i.kg = icmp ne i32 %i.kf, 32
  %or.cond.us170.us.2 = select i1 %i.kg, i1 true, i1 %i.kd
  br i1 %or.cond.us170.us.2, label %.loopexit, label %.critedge131.us174

.critedge131.us174:                               ; preds = %bb.q
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %.critedge, label %.preheader.us172, !llvm.loop !113

.preheader:                                       ; preds = %.preheader.lr.ph.split, %.critedge131
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %.critedge131 ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [12 x i8], ptr %i.iu, i64 %indvars.iv269 ; 3 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %indvars.iv269 ; 3 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !7
  %i.kk = add i32 %i.kj, -3
  %i.kl = icmp ult i32 %i.kk, -5
  %i.km = load i32, ptr %i.kh, align 4, !tbaa !7
  %i.kn = icmp ne i32 %i.km, 32
  %or.cond = select i1 %i.kn, i1 true, i1 %i.kl
  br i1 %or.cond, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !7
  %i.kq = add i32 %i.kp, -3
  %i.kr = icmp ult i32 %i.kq, -5
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !7
  %i.ku = icmp ne i32 %i.kt, 32
  %or.cond.1 = select i1 %i.ku, i1 true, i1 %i.kr
  br i1 %or.cond.1, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !7
  %i.kx = add i32 %i.kw, -3
  %i.ky = icmp ult i32 %i.kx, -5
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !7
  %i.lb = icmp ne i32 %i.la, 32
  %or.cond.2 = select i1 %i.lb, i1 true, i1 %i.ky
  br i1 %or.cond.2, label %.loopexit, label %.critedge131

.critedge131:                                     ; preds = %bb.s
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count281
  br i1 %exitcond273.not, label %.critedge, label %.preheader, !llvm.loop !113

.critedge:                                        ; preds = %.critedge131, %.critedge131.us174, %.critedge131.us, %.preheader132
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count
  br i1 %exitcond296.not, label %.loopexit, label %.preheader132, !llvm.loop !114

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
  %i.c = alloca [6 x [32 x [32 x [3 x i32]]]], align 16 ; 7 uses
  %i.d = alloca [2 x i32], align 8                ; 4 uses
  %i.e = load ptr, ptr @img, align 8, !tbaa !9    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15268
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
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
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33
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
  store i32 %., ptr @luma_log_weight_denom, align 4, !tbaa !7
  store i32 %., ptr @chroma_log_weight_denom, align 4, !tbaa !7
  %1 = add nsw i32 %., -1
  %2 = shl nuw nsw i32 1, %1                      ; 2 uses
  store i32 %2, ptr @wp_luma_round, align 4, !tbaa !7
  store i32 %2, ptr @wp_chroma_round, align 4, !tbaa !7
  %i.s = shl nuw nsw i32 1, %.                    ; 25 uses
  %i.t = load ptr, ptr @wp_weight, align 8
  %i.u = load ptr, ptr @wp_offset, align 8
  %i.v = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader303

.preheader303:                                    ; preds = %bb.d, %._crit_edge
  %indvars.iv370 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next371, %._crit_edge ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv370 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.preheader302.lr.ph, label %._crit_edge

.preheader302.lr.ph:                              ; preds = %.preheader303
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv370
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv370
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv370
  %i.af = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv370
  br label %.preheader302

.preheader301:                                    ; preds = %._crit_edge
  %i.ag = load i32, ptr @listXsize, align 16, !tbaa !7 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.preheader300.lr.ph, label %._crit_edge313.split.thread

.preheader300.lr.ph:                              ; preds = %.preheader301
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !7 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8
  %i.al = load ptr, ptr @listX, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 12288 ; 2 uses
  br i1 %i.aj, label %.preheader300.lr.ph.split, label %._crit_edge313.split.thread516

.preheader300.lr.ph.split:                        ; preds = %.preheader300.lr.ph
  %i.an = load ptr, ptr @enc_picture, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !62
  %wide.trip.count389 = zext nneg i32 %i.ag to i64
  %wide.trip.count384 = zext nneg i32 %i.ai to i64
  %i.aq = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.ar = shufflevector <2 x i32> %i.aq, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader300

.preheader302:                                    ; preds = %.preheader302.lr.ph, %.preheader302
  %indvars.iv = phi i64 [ 0, %.preheader302.lr.ph ], [ %indvars.iv.next, %.preheader302 ] ; 5 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !43 ; 3 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aw, i8 0, i64 12, i1 false), !tbaa !7
  store <2 x i32> %i.w, ptr %i.ax, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.s, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !7
  store i32 %i.s, ptr %i.at, align 4, !tbaa !7
  store i32 0, ptr %i.av, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.s, ptr %i.ay, align 4, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.s, ptr %i.ba, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 0, ptr %i.bb, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %i.x, align 4, !tbaa !7
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %.preheader302, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %.preheader302, %.preheader303
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count
  br i1 %exitcond.not, label %.preheader301, label %.preheader303, !llvm.loop !122

.preheader300:                                    ; preds = %.preheader300.lr.ph.split, %._crit_edge311
  %indvars.iv386 = phi i64 [ 0, %.preheader300.lr.ph.split ], [ %indvars.iv.next387, %._crit_edge311 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv386
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !62 ; 3 uses
  %i.bj = sub nsw i32 %i.ap, %i.bi
  %i.bk = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.bj, i32 range(i32 -1024, -127) -128)
  %i.bl = tail call noundef i32 @llvm.smin.i32(i32 %i.bk, i32 127)
  %i.bm = getelementptr inbounds nuw [384 x i8], ptr %i.am, i64 %indvars.iv386
  %i.bn = getelementptr [384 x i8], ptr %i.c, i64 %indvars.iv386
  br label %bb.e

bb.e:                                             ; preds = %.preheader300, %.split309.us
  %indvars.iv381 = phi i64 [ 0, %.preheader300 ], [ %indvars.iv.next382, %.split309.us ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv381
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !62 ; 2 uses
  %i.bs = icmp eq i32 %i.br, %i.bi
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %indvars.iv381 ; 4 uses
  %i.bu = getelementptr [12 x i8], ptr %i.bn, i64 %indvars.iv381 ; 4 uses
  br i1 %i.bs, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  store <2 x i32> %i.ar, ptr %i.bu, align 4, !tbaa !7
  %.sroa.12.0..sroa_idx496 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %i.s, ptr %.sroa.12.0..sroa_idx496, align 4, !tbaa !7
  store i32 %i.s, ptr %i.bt, align 4, !tbaa !7
  br label %.split309.us

.split:                                           ; preds = %bb.e
  %i.bv = sub nsw i32 %i.br, %i.bi
  %i.bw = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.bv, i32 range(i32 -1024, -127) -128)
  %i.bx = tail call noundef i32 @llvm.smin.i32(i32 %i.bw, i32 127) ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.bx to i8
  %i.by = sdiv i8 %.lhs.trunc, 2
  %i.bz = tail call i8 @llvm.abs.i8(i8 %i.by, i1 false)
  %i.ca = zext i8 %i.bz to i16
  %.lhs.trunc518 = or disjoint i16 %i.ca, 16384
  %.rhs.trunc = trunc nsw i32 %i.bx to i16
  %i.cb = sdiv i16 %.lhs.trunc518, %.rhs.trunc
  %.sext519 = sext i16 %i.cb to i32
  %i.cc = mul nsw i32 %i.bl, %.sext519
  %i.cd = add nsw i32 %i.cc, 32
  %i.ce = ashr i32 %i.cd, 6
  %i.cf = tail call range(i32 -1024, -2147483648) i32 @llvm.smax.i32(i32 %i.ce, i32 range(i32 -1024, -127) -1024)
  %i.cg = tail call noundef i32 @llvm.smin.i32(i32 %i.cf, i32 1023)
  %i.ch = ashr i32 %i.cg, 2                       ; 2 uses
  %i.ci = add nsw i32 %i.ch, -129
  %or.cond274 = icmp ult i32 %i.ci, -193
  %spec.store.select = select i1 %or.cond274, i32 32, i32 %i.ch ; 4 uses
  %i.cj = sub nsw i32 64, %spec.store.select      ; 3 uses
  store i32 %spec.store.select, ptr %i.bt, align 4, !tbaa !7
  store i32 %i.cj, ptr %i.bu, align 4, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %spec.store.select, ptr %i.ck, align 4, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !7
  br label %.split309.us

.split309.us:                                     ; preds = %.split, %.split.us.preheader
  %.sink532 = phi i64 [ 8, %.split ], [ 4, %.split.us.preheader ]
  %spec.store.select.sink = phi i32 [ %spec.store.select, %.split ], [ %i.s, %.split.us.preheader ]
  %i.cm = phi ptr [ %i.c, %.split ], [ %i.am, %.split.us.preheader ]
  %.sink = phi i32 [ %i.cj, %.split ], [ %i.s, %.split.us.preheader ]
  %i.cn = getelementptr [384 x i8], ptr %i.cm, i64 %indvars.iv386
  %i.co = getelementptr [12 x i8], ptr %i.cn, i64 %indvars.iv381
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sink532
  store i32 %spec.store.select.sink, ptr %i.cp, align 4, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %.sink, ptr %i.cq, align 4, !tbaa !7
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge311, label %bb.e, !llvm.loop !123

._crit_edge311:                                   ; preds = %.split309.us
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %._crit_edge313.split, label %.preheader300, !llvm.loop !124

._crit_edge313.split:                             ; preds = %._crit_edge311
  br i1 %i.r, label %.preheader283.lr.ph, label %.preheader299

._crit_edge313.split.thread516:                   ; preds = %.preheader300.lr.ph
  br i1 %i.r, label %.preheader283.lr.ph, label %.preheader299

._crit_edge313.split.thread:                      ; preds = %.preheader301
  br i1 %i.r, label %.preheader280, label %.preheader299

.preheader299:                                    ; preds = %._crit_edge313.split.thread516, %._crit_edge313.split.thread, %._crit_edge313.split
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !36 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 0                   ; 2 uses
  br i1 %i.ct, label %.preheader298.lr.ph, label %.preheader297

.preheader298.lr.ph:                              ; preds = %.preheader299
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !37 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  %i.cx = load ptr, ptr @imgY_org, align 8
  br i1 %i.cw, label %.preheader298.us.preheader, label %.preheader297

.preheader298.us.preheader:                       ; preds = %.preheader298.lr.ph
  %wide.trip.count399 = zext nneg i32 %i.cs to i64
  %wide.trip.count394 = zext nneg i32 %i.cv to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count394, 3      ; 3 uses
  %i.cy = icmp ult i32 %i.cv, 4
  %unroll_iter = and i64 %wide.trip.count394, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod552 = icmp ne i64 %xtraiter, 0
  br label %.preheader298.us

.preheader298.us:                                 ; preds = %.preheader298.us.preheader, %._crit_edge316.us
  %indvars.iv396 = phi i64 [ 0, %.preheader298.us.preheader ], [ %indvars.iv.next397, %._crit_edge316.us ] ; 2 uses
  %.0248318.us = phi double [ 0.000000e+00, %.preheader298.us.preheader ], [ %.lcssa550, %._crit_edge316.us ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv396
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !39 ; 5 uses
  br i1 %i.cy, label %.epil.preheader, label %.preheader298.us.new

.preheader298.us.new:                             ; preds = %.preheader298.us, %.preheader298.us.new
end_hunk_0
