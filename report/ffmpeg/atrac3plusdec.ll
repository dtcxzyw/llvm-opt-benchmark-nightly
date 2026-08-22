Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac3plusdec?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@atrac3p_decode_frame:bb.a
  %i.pw = load <2 x ptr>, ptr %i.pv, align 8, !tbaa !107
  %i.px = shufflevector <2 x ptr> %i.pw, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.px, ptr %i.pv, align 8, !tbaa !107
  %exitcond22.not.i.3 = icmp eq i64 %wide.trip.count.i78.pre-phi, 4
  br i1 %exitcond22.not.i.3, label %reconstruct_frame.exit, label %.preheader.i84.4

.preheader.i84.4:                                 ; preds = %.preheader.i84.3
  %i.py = getelementptr inbounds nuw i8, ptr %i.le, i64 35816 ; 2 uses
  %i.pz = load <2 x ptr>, ptr %i.py, align 8, !tbaa !105
  %i.qa = shufflevector <2 x ptr> %i.pz, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qa, ptr %i.py, align 8, !tbaa !105
  %i.qb = getelementptr inbounds nuw i8, ptr %i.le, i64 37752 ; 2 uses
  %i.qc = load <2 x ptr>, ptr %i.qb, align 8, !tbaa !106
  %i.qd = shufflevector <2 x ptr> %i.qc, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qd, ptr %i.qb, align 8, !tbaa !106
  %i.qe = getelementptr inbounds nuw i8, ptr %i.le, i64 39056 ; 2 uses
  %i.qf = load <2 x ptr>, ptr %i.qe, align 8, !tbaa !107
  %i.qg = shufflevector <2 x ptr> %i.qf, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qg, ptr %i.qe, align 8, !tbaa !107
  %exitcond22.not.i.4 = icmp eq i64 %wide.trip.count.i78.pre-phi, 5
  br i1 %exitcond22.not.i.4, label %reconstruct_frame.exit, label %.preheader.i84.5

.preheader.i84.5:                                 ; preds = %.preheader.i84.4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.le, i64 43616 ; 2 uses
  %i.qi = load <2 x ptr>, ptr %i.qh, align 8, !tbaa !105
  %i.qj = shufflevector <2 x ptr> %i.qi, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qj, ptr %i.qh, align 8, !tbaa !105
  %i.qk = getelementptr inbounds nuw i8, ptr %i.le, i64 45552 ; 2 uses
  %i.ql = load <2 x ptr>, ptr %i.qk, align 8, !tbaa !106
  %i.qm = shufflevector <2 x ptr> %i.ql, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qm, ptr %i.qk, align 8, !tbaa !106
  %i.qn = getelementptr inbounds nuw i8, ptr %i.le, i64 46856 ; 2 uses
  %i.qo = load <2 x ptr>, ptr %i.qn, align 8, !tbaa !107
  %i.qp = shufflevector <2 x ptr> %i.qo, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qp, ptr %i.qn, align 8, !tbaa !107
  %exitcond22.not.i.5 = icmp eq i64 %wide.trip.count.i78.pre-phi, 6
  br i1 %exitcond22.not.i.5, label %reconstruct_frame.exit, label %.preheader.i84.6

.preheader.i84.6:                                 ; preds = %.preheader.i84.5
  %i.qq = getelementptr inbounds nuw i8, ptr %i.le, i64 51416 ; 2 uses
  %i.qr = load <2 x ptr>, ptr %i.qq, align 8, !tbaa !105
  %i.qs = shufflevector <2 x ptr> %i.qr, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qs, ptr %i.qq, align 8, !tbaa !105
  %i.qt = getelementptr inbounds nuw i8, ptr %i.le, i64 53352 ; 2 uses
  %i.qu = load <2 x ptr>, ptr %i.qt, align 8, !tbaa !106
  %i.qv = shufflevector <2 x ptr> %i.qu, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qv, ptr %i.qt, align 8, !tbaa !106
  %i.qw = getelementptr inbounds nuw i8, ptr %i.le, i64 54656 ; 2 uses
  %i.qx = load <2 x ptr>, ptr %i.qw, align 8, !tbaa !107
  %i.qy = shufflevector <2 x ptr> %i.qx, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qy, ptr %i.qw, align 8, !tbaa !107
  br label %reconstruct_frame.exit

reconstruct_frame.exit:                           ; preds = %.preheader.i84.6, %.preheader.i84.5, %.preheader.i84.4, %.preheader.i84.3, %.preheader.i84.2, %.preheader.i84.1, %.preheader.i84
  %i.qz = load <2 x ptr>, ptr %i.li, align 8, !tbaa !108
  %i.ra = shufflevector <2 x ptr> %i.qz, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ra, ptr %i.li, align 8, !tbaa !108
  %i.rb = zext nneg i32 %.098 to i64              ; 7 uses
  %i.rc = load ptr, ptr %i.ai, align 16, !tbaa !109
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rb
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !72
  %i.rf = zext i8 %i.re to i64
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.rf
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.rh, ptr noundef nonnull align 16 dereferenceable(8192) %i.ah, i64 8192, i1 false)
  %exitcond.not = icmp eq i64 %wide.trip.count.i78.pre-phi, 1
  br i1 %exitcond.not, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %reconstruct_frame.exit
  %i.ri = load ptr, ptr %i.ai, align 16, !tbaa !109
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 1
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rb
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !72
  %i.rm = zext i8 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.rm
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.ro, ptr noundef nonnull align 16 dereferenceable(8192) %i.aj, i64 8192, i1 false)
  %exitcond.not.1 = icmp eq i64 %wide.trip.count.i78.pre-phi, 2
  br i1 %exitcond.not.1, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.rp = load ptr, ptr %i.ai, align 16, !tbaa !109
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 2
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rb
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !72
  %i.rt = zext i8 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.rt
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.rv, ptr noundef nonnull align 16 dereferenceable(8192) %i.ak, i64 8192, i1 false)
  %exitcond.not.2 = icmp eq i64 %wide.trip.count.i78.pre-phi, 3
  br i1 %exitcond.not.2, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.rw = load ptr, ptr %i.ai, align 16, !tbaa !109
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 3
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rb
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !72
  %i.sa = zext i8 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.sa
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.sc, ptr noundef nonnull align 16 dereferenceable(8192) %i.al, i64 8192, i1 false)
  %exitcond.not.3 = icmp eq i64 %wide.trip.count.i78.pre-phi, 4
  br i1 %exitcond.not.3, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.sd = load ptr, ptr %i.ai, align 16, !tbaa !109
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.rb
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !72
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.sh
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.sj, ptr noundef nonnull align 16 dereferenceable(8192) %i.am, i64 8192, i1 false)
  %exitcond.not.4 = icmp eq i64 %wide.trip.count.i78.pre-phi, 5
  br i1 %exitcond.not.4, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.sk = load ptr, ptr %i.ai, align 16, !tbaa !109
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 5
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.rb
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !72
  %i.so = zext i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.so
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.sq, ptr noundef nonnull align 16 dereferenceable(8192) %i.an, i64 8192, i1 false)
  %exitcond.not.5 = icmp eq i64 %wide.trip.count.i78.pre-phi, 6
  br i1 %exitcond.not.5, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sr = load ptr, ptr %i.ai, align 16, !tbaa !109
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 6
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.rb
  %i.su = load i8, ptr %i.st, align 1, !tbaa !72
  %i.sv = zext i8 %i.su to i64
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.sv
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.sx, ptr noundef nonnull align 16 dereferenceable(8192) %i.ao, i64 8192, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %reconstruct_frame.exit
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %i.sy = add nuw nsw i32 %i.bi, %.098
  %.val = load i32, ptr %i.s, align 8, !tbaa !71  ; 2 uses
  %.val76 = load i32, ptr %i.p, align 4, !tbaa !69
  %i.sz = sub nsw i32 %.val76, %.val
  %i.ta = icmp sgt i32 %i.sz, 1
  br i1 %i.ta, label %bb.e, label %.critedge, !llvm.loop !112

.critedge:                                        ; preds = %bb.ad, %bb.e, %.preheader
  store i32 1, ptr %2, align 4, !tbaa !76
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !113
  %i.td = icmp eq i32 %i.tc, 86055
  br i1 %i.td, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.critedge
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !29
  %i.tg = load i32, ptr %i.k, align 8, !tbaa !67
  %. = tail call i32 @llvm.smin.i32(i32 %i.tf, i32 %i.tg)
  br label %.loopexit

bb.af:                                            ; preds = %.critedge
  %i.th = load i32, ptr %i.k, align 8, !tbaa !67
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.af, %bb.ae, %bb.b, %bb.a, %bb.i, %bb.f, %bb.d
  %.064 = phi i32 [ %., %bb.ae ], [ %i.g, %bb.a ], [ -1094995529, %bb.d ], [ -1163346256, %bb.f ], [ -1094995529, %bb.i ], [ -1094995529, %bb.b ], [ %i.th, %bb.af ], [ %i.bj, %bb.j ]
  ret i32 %.064
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @atrac3p_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 65800
  tail call void @av_freep(ptr noundef nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 65768
  tail call void @av_tx_uninit(ptr noundef nonnull %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 65784
  tail call void @av_tx_uninit(ptr noundef nonnull %i.f) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ff_atrac_init_gain_compensation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @set_channel_params(ptr nofree noundef writeonly captures(none) initializes((65812, 65817)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.c = load i32, ptr %i.b, align 4, !tbaa !114  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 65812 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.d, i8 0, i64 5, i1 false)
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.a) #6
  switch i32 %i.c, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  store <2 x i32> splat (i32 1), ptr %i.a, align 8, !tbaa !76
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 4, ptr %.sroa.323.0..sroa_idx, align 8, !tbaa !72
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.424.0..sroa_idx, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 1, ptr %i.e, align 16, !tbaa !31
  store i8 0, ptr %i.d, align 4, !tbaa !72
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 2>, ptr %i.a, align 8, !tbaa !76
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 3, ptr %.sroa.319.0..sroa_idx, align 8, !tbaa !72
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 1, ptr %i.f, align 16, !tbaa !31
  store i8 1, ptr %i.d, align 4, !tbaa !72
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 3>, ptr %i.a, align 8, !tbaa !76
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 7, ptr %.sroa.315.0..sroa_idx, align 8, !tbaa !72
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 2, ptr %i.g, align 16, !tbaa !31
  store i8 1, ptr %i.d, align 4, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 65813
  store i8 0, ptr %i.h, align 1, !tbaa !72
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 4>, ptr %i.a, align 8, !tbaa !76
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 263, ptr %.sroa.311.0..sroa_idx, align 8, !tbaa !72
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 3, ptr %i.i, align 16, !tbaa !31
  store i8 1, ptr %i.d, align 4, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 65813
  store i8 0, ptr %i.j, align 1, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65814
  store i8 0, ptr %i.k, align 2, !tbaa !72
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 6>, ptr %i.a, align 8, !tbaa !76
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 63, ptr %.sroa.37.0..sroa_idx, align 8, !tbaa !72
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 4, ptr %i.l, align 16, !tbaa !31
  store <4 x i8> <i8 1, i8 0, i8 1, i8 0>, ptr %i.d, align 4, !tbaa !72
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 7>, ptr %i.a, align 8, !tbaa !76
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 319, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !72
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 5, ptr %i.m, align 16, !tbaa !31
  store <4 x i8> <i8 1, i8 0, i8 1, i8 0>, ptr %i.d, align 4, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 65816
  store i8 0, ptr %i.n, align 8, !tbaa !72
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 8>, ptr %i.a, align 8, !tbaa !76
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 1599, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !72
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 5, ptr %i.o, align 16, !tbaa !31
  store <4 x i8> <i8 1, i8 0, i8 1, i8 1>, ptr %i.d, align 4, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65816
  store i8 0, ptr %i.p, align 8, !tbaa !72
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %1, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.c) #6
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.q = zext nneg i32 %i.c to i64
  %i.r = getelementptr [8 x i8], ptr @channel_map, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 65824
  store ptr %i.s, ptr %i.t, align 16, !tbaa !109
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ -1094995529, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #3

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal void @atrac3p_init_static() #0 {
bb.a:
  tail call void @ff_atrac3p_init_vlcs() #6
  tail call void @ff_atrac3p_init_dsp_static() #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ff_atrac3p_init_vlcs() local_unnamed_addr #3

declare void @ff_atrac3p_init_dsp_static() local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_atrac3p_decode_channel_unit(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_atrac3p_power_compensation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_atrac3p_imdct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_atrac_gain_compensation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_atrac3p_generate_tones(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_atrac3p_ipqf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 380}
!30 = !{!18, !18, i64 0}
!31 = !{!32, !6, i64 65808}
!32 = !{!"ATRAC3PContext", !33, i64 0, !34, i64 24, !7, i64 32, !7, i64 16416, !7, i64 32800, !7, i64 49184, !35, i64 65568, !36, i64 65768, !12, i64 65776, !36, i64 65784, !12, i64 65792, !37, i64 65800, !6, i64 65808, !7, i64 65812, !16, i64 65824}
!33 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!34 = !{!"p1 _ZTS17AVFloatDSPContext", !12, i64 0}
!35 = !{!"AtracGCContext", !7, i64 0, !7, i64 64, !6, i64 188, !6, i64 192, !6, i64 196}
!36 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!37 = !{!"p1 _ZTS18Atrac3pChanUnitCtx", !12, i64 0}
!38 = !{!32, !37, i64 65800}
!39 = !{!10, !6, i64 64}
!40 = !{!32, !34, i64 24}
!41 = !{!42, !6, i64 0}
!42 = !{!"Atrac3pChanParams", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !7, i64 4500, !7, i64 4505, !16, i64 4544, !16, i64 4552, !7, i64 4560, !43, i64 6480, !43, i64 6488, !6, i64 6496, !7, i64 6500, !44, i64 7784, !44, i64 7792}
!43 = !{!"p1 _ZTS13AtracGainInfo", !12, i64 0}
!44 = !{!"p1 _ZTS16Atrac3pWavesData", !12, i64 0}
!45 = !{!42, !16, i64 4544}
!46 = !{!42, !16, i64 4552}
!47 = !{!42, !43, i64 6480}
!48 = !{!42, !43, i64 6488}
!49 = !{!42, !44, i64 7784}
!50 = !{!42, !44, i64 7792}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!54, !55, i64 17336}
!54 = !{!"Atrac3pChanUnitCtx", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !7, i64 40, !7, i64 56, !7, i64 72, !7, i64 15672, !55, i64 17336, !55, i64 17344, !7, i64 17360, !7, i64 20464}
!55 = !{!"p1 _ZTS22Atrac3pWaveSynthParams", !12, i64 0}
!56 = !{!54, !55, i64 17344}
!57 = distinct !{!57, !52}
!58 = !{!10, !6, i64 348}
!59 = !{!60, !61, i64 96}
!60 = !{!"AVFrame", !7, i64 0, !7, i64 64, !61, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !62, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !63, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!61 = !{!"p2 omnipotent char", !28, i64 0}
!62 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!63 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!64 = !{!60, !6, i64 112}
!65 = !{!66, !16, i64 24}
!66 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!67 = !{!66, !6, i64 32}
!68 = !{!33, !16, i64 0}
!69 = !{!33, !6, i64 12}
!70 = !{!33, !6, i64 16}
!71 = !{!33, !6, i64 8}
!72 = !{!7, !7, i64 0}
!73 = !{!54, !6, i64 0}
!74 = !{!54, !6, i64 20}
!75 = !{!54, !6, i64 12}
!76 = !{!6, !6, i64 0}
!77 = distinct !{!77, !52, !78, !79}
!78 = !{!"llvm.loop.isvectorized", i32 1}
!79 = !{!"llvm.loop.unroll.runtime.disable"}
!80 = !{!54, !6, i64 16}
!81 = distinct !{!81, !52, !78, !79}
!82 = distinct !{!82, !52, !79, !78}
!83 = distinct !{!83, !52, !79, !78}
!84 = !{!85, !85, i64 0}
!85 = !{!"short", !7, i64 0}
!86 = distinct !{!86, !52, !78, !79}
!87 = distinct !{!87, !52, !79, !78}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !52}
!91 = distinct !{!91, !52}
!92 = !{!54, !6, i64 8}
!93 = !{!32, !36, i64 65768}
!94 = !{!32, !12, i64 65776}
!95 = distinct !{!95, !52}
!96 = !{!97, !6, i64 0}
!97 = !{!"Atrac3pWaveSynthParams", !6, i64 0, !6, i64 4, !6, i64 8, !7, i64 12, !7, i64 28, !7, i64 44, !6, i64 60, !7, i64 64}
end_hunk_0
