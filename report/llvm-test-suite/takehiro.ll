inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 21
begin_hunk_0_@choose_table_short:bb.a
  %.1.lcssa118 = phi i32 [ 32, %bb.t ], [ %.1.lcssa.ph, %._crit_edge.loopexit.split.loop.exit ], [ %.1.lcssa.ph, %.lr.ph.7 ], [ %.1.lcssa.ph, %bb.aa ], [ %.1.lcssa.ph, %bb.z ], [ %.1.lcssa.ph, %bb.y ], [ %.1.lcssa.ph, %bb.x ], [ %.1.lcssa.ph, %bb.w ], [ %.1.lcssa.ph, %bb.v ], [ %.1.lcssa.ph, %bb.u ]
  %.pre-phi = phi i64 [ 32, %bb.t ], [ %i.dy, %._crit_edge.loopexit.split.loop.exit ], [ %i.dy, %.lr.ph.7 ], [ %i.dy, %bb.aa ], [ %i.dy, %bb.z ], [ %i.dy, %bb.y ], [ %i.dy, %bb.x ], [ %i.dy, %bb.w ], [ %i.dy, %bb.v ], [ %i.dy, %bb.u ]
  %.2.lcssa = phi i32 [ 24, %bb.t ], [ %i.ey, %._crit_edge.loopexit.split.loop.exit ], [ 24, %.lr.ph.7 ], [ 24, %bb.aa ], [ 24, %bb.z ], [ 24, %bb.y ], [ 24, %bb.x ], [ 24, %bb.w ], [ 24, %bb.v ], [ 24, %bb.u ] ; 2 uses
  %i.ez = zext nneg i32 %.2.lcssa to i64
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !48 ; 6 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %.pre-phi
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !48 ; 6 uses
  %i.fe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 400), align 16, !tbaa !41 ; 3 uses
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 592), align 16, !tbaa !41 ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.an, %._crit_edge
  %.052.i = phi ptr [ %0, %._crit_edge ], [ %i.hz, %bb.an ] ; 7 uses
  %.048.i = phi i32 [ 0, %._crit_edge ], [ %.351.2.i, %bb.an ] ; 2 uses
  %.042.i = phi i32 [ 0, %._crit_edge ], [ %i.hu, %bb.an ] ; 2 uses
  %.039.i = phi i32 [ 0, %._crit_edge ], [ %i.hy, %bb.an ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.052.i, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.052.i, i64 4
  %i.fj = load i32, ptr %.052.i, align 4, !tbaa !4 ; 3 uses
  %.not.i73 = icmp eq i32 %i.fj, 0
  br i1 %.not.i73, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = add nsw i32 %.048.i, 1
  %i.fl = icmp sgt i32 %i.fj, 14                  ; 2 uses
  %i.fm = select i1 %i.fl, i32 %i.fb, i32 0
  %.244.i = add nsw i32 %i.fm, %.042.i
  %i.fn = select i1 %i.fl, i32 %i.fd, i32 0
  %.241.i = add nsw i32 %i.fn, %.039.i
  %i.fo = tail call i32 @llvm.smin.i32(i32 %i.fj, i32 15)
  %i.fp = shl i32 %i.fo, 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.250.i = phi i32 [ %i.fk, %bb.ac ], [ %.048.i, %bb.ab ] ; 2 uses
  %.345.i = phi i32 [ %.244.i, %bb.ac ], [ %.042.i, %bb.ab ] ; 2 uses
  %.3.i74 = phi i32 [ %.241.i, %bb.ac ], [ %.039.i, %bb.ab ] ; 2 uses
  %.1.i = phi i32 [ %i.fp, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.not59.i = icmp eq i32 %i.fh, 0
  br i1 %.not59.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = add nsw i32 %.250.i, 1
  %i.fr = icmp sgt i32 %i.fh, 14                  ; 3 uses
  %i.fs = select i1 %i.fr, i32 %i.fb, i32 0
  %.446.i = add nsw i32 %.345.i, %i.fs
  %i.ft = select i1 %i.fr, i32 %i.fd, i32 0
  %.4.i = add nsw i32 %.3.i74, %i.ft
  %.037.i = select i1 %i.fr, i32 15, i32 %i.fh
  %i.fu = add nsw i32 %.1.i, %.037.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.351.i = phi i32 [ %i.fq, %bb.ae ], [ %.250.i, %bb.ad ] ; 2 uses
  %.547.i = phi i32 [ %.446.i, %bb.ae ], [ %.345.i, %bb.ad ]
  %.5.i = phi i32 [ %.4.i, %bb.ae ], [ %.3.i74, %bb.ad ]
  %.2.i75 = phi i32 [ %i.fu, %bb.ae ], [ %.1.i, %bb.ad ]
  %i.fv = sext i32 %.2.i75 to i64                 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fe, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !25
  %i.fy = zext i8 %i.fx to i32
  %i.fz = add nsw i32 %.547.i, %i.fy              ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.ff, i64 %i.fv
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !25
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %.5.i, %i.gc                ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.052.i, i64 16
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4  ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.052.i, i64 8
  %i.gh = load i32, ptr %i.fi, align 4, !tbaa !4  ; 3 uses
  %.not.1.i76 = icmp eq i32 %i.gh, 0
  br i1 %.not.1.i76, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = add nsw i32 %.351.i, 1
  %i.gj = icmp sgt i32 %i.gh, 14                  ; 2 uses
  %i.gk = select i1 %i.gj, i32 %i.fb, i32 0
  %.244.1.i = add nsw i32 %i.gk, %i.fz
  %i.gl = select i1 %i.gj, i32 %i.fd, i32 0
  %.241.1.i = add nsw i32 %i.gl, %i.gd
  %i.gm = tail call i32 @llvm.smin.i32(i32 %i.gh, i32 15)
  %i.gn = shl i32 %i.gm, 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.250.1.i = phi i32 [ %i.gi, %bb.ag ], [ %.351.i, %bb.af ] ; 2 uses
  %.345.1.i = phi i32 [ %.244.1.i, %bb.ag ], [ %i.fz, %bb.af ] ; 2 uses
  %.3.1.i77 = phi i32 [ %.241.1.i, %bb.ag ], [ %i.gd, %bb.af ] ; 2 uses
  %.1.1.i = phi i32 [ %i.gn, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %.not59.1.i = icmp eq i32 %i.gf, 0
  br i1 %.not59.1.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.go = add nsw i32 %.250.1.i, 1
  %i.gp = icmp sgt i32 %i.gf, 14                  ; 3 uses
  %i.gq = select i1 %i.gp, i32 %i.fb, i32 0
  %.446.1.i = add nsw i32 %.345.1.i, %i.gq
  %i.gr = select i1 %i.gp, i32 %i.fd, i32 0
  %.4.1.i = add nsw i32 %.3.1.i77, %i.gr
  %.037.1.i = select i1 %i.gp, i32 15, i32 %i.gf
  %i.gs = add nsw i32 %.1.1.i, %.037.1.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.351.1.i = phi i32 [ %i.go, %bb.ai ], [ %.250.1.i, %bb.ah ] ; 2 uses
  %.547.1.i = phi i32 [ %.446.1.i, %bb.ai ], [ %.345.1.i, %bb.ah ]
  %.5.1.i = phi i32 [ %.4.1.i, %bb.ai ], [ %.3.1.i77, %bb.ah ]
  %.2.1.i78 = phi i32 [ %i.gs, %bb.ai ], [ %.1.1.i, %bb.ah ]
  %i.gt = sext i32 %.2.1.i78 to i64               ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.fe, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !25
  %i.gw = zext i8 %i.gv to i32
  %i.gx = add nsw i32 %.547.1.i, %i.gw            ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.ff, i64 %i.gt
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !25
  %i.ha = zext i8 %i.gz to i32
  %i.hb = add nsw i32 %.5.1.i, %i.ha              ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.052.i, i64 20
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4  ; 3 uses
  %i.he = load i32, ptr %i.gg, align 4, !tbaa !4  ; 3 uses
  %.not.2.i79 = icmp eq i32 %i.he, 0
  br i1 %.not.2.i79, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hf = add nsw i32 %.351.1.i, 1
  %i.hg = icmp sgt i32 %i.he, 14                  ; 2 uses
  %i.hh = select i1 %i.hg, i32 %i.fb, i32 0
  %.244.2.i = add nsw i32 %i.hh, %i.gx
  %i.hi = select i1 %i.hg, i32 %i.fd, i32 0
  %.241.2.i = add nsw i32 %i.hi, %i.hb
  %i.hj = tail call i32 @llvm.smin.i32(i32 %i.he, i32 15)
  %i.hk = shl i32 %i.hj, 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.250.2.i = phi i32 [ %i.hf, %bb.ak ], [ %.351.1.i, %bb.aj ] ; 2 uses
  %.345.2.i = phi i32 [ %.244.2.i, %bb.ak ], [ %i.gx, %bb.aj ] ; 2 uses
  %.3.2.i80 = phi i32 [ %.241.2.i, %bb.ak ], [ %i.hb, %bb.aj ] ; 2 uses
  %.1.2.i = phi i32 [ %i.hk, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %.not59.2.i = icmp eq i32 %i.hd, 0
  br i1 %.not59.2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hl = add nsw i32 %.250.2.i, 1
  %i.hm = icmp sgt i32 %i.hd, 14                  ; 3 uses
  %i.hn = select i1 %i.hm, i32 %i.fb, i32 0
  %.446.2.i = add nsw i32 %.345.2.i, %i.hn
  %i.ho = select i1 %i.hm, i32 %i.fd, i32 0
  %.4.2.i = add nsw i32 %.3.2.i80, %i.ho
  %.037.2.i = select i1 %i.hm, i32 15, i32 %i.hd
  %i.hp = add nsw i32 %.1.2.i, %.037.2.i
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.351.2.i = phi i32 [ %i.hl, %bb.am ], [ %.250.2.i, %bb.al ] ; 2 uses
  %.547.2.i = phi i32 [ %.446.2.i, %bb.am ], [ %.345.2.i, %bb.al ]
  %.5.2.i = phi i32 [ %.4.2.i, %bb.am ], [ %.3.2.i80, %bb.al ]
  %.2.2.i81 = phi i32 [ %i.hp, %bb.am ], [ %.1.2.i, %bb.al ]
  %i.hq = sext i32 %.2.2.i81 to i64               ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %i.fe, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !25
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nsw i32 %.547.2.i, %i.ht            ; 3 uses
  %i.hv = getelementptr inbounds i8, ptr %i.ff, i64 %i.hq
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !25
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nsw i32 %.5.2.i, %i.hx              ; 3 uses
  %i.hz = getelementptr i8, ptr %.052.i, i64 24   ; 2 uses
  %i.ia = icmp ult ptr %i.hz, %1
  br i1 %i.ia, label %bb.ab, label %count_bit_short_ESC.exit, !llvm.loop !49

count_bit_short_ESC.exit:                         ; preds = %bb.an
  %i.ib = icmp sgt i32 %i.hu, %i.hy
  %spec.select.i82 = select i1 %i.ib, i32 %.1.lcssa118, i32 %.2.lcssa
  %spec.select60.i = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 %i.hy)
  %i.ic = add nsw i32 %spec.select60.i, %.351.2.i
  %i.id = load i32, ptr %2, align 4, !tbaa !4
  %i.ie = add nsw i32 %i.ic, %i.id
  br label %.thread87.sink.split

.thread87.sink.split:                             ; preds = %ix_max.exit, %count_bit_short_ESC.exit, %bb.l
  %.sink = phi i32 [ %i.do, %bb.l ], [ %i.ie, %count_bit_short_ESC.exit ], [ 100000, %ix_max.exit ]
  %.052.ph = phi i32 [ %.151, %bb.l ], [ %spec.select.i82, %count_bit_short_ESC.exit ], [ -1, %ix_max.exit ]
  store i32 %.sink, ptr %2, align 4, !tbaa !4
  br label %.thread87

.thread87:                                        ; preds = %.thread87.sink.split, %bb.a, %bb.c
  %.052 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %.052.ph, %.thread87.sink.split ]
  ret i32 %.052
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @best_huffman_divide(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [25 x i32], align 16              ; 54 uses
  %i.c = alloca [25 x i32], align 16              ; 31 uses
  %4 = alloca %struct.gr_info, align 8            ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %i.f = shl i32 %i.e, 1                          ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, %i.h                       ; 21 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %3, i64 %i.l ; 21 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 8), align 4, !tbaa !4 ; 2 uses
  %i.o = icmp sgt i32 %i.n, %i.f
  %.0.lcssa.sroa.gep.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.lcssa.sroa.gep108.a = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %.0.lcssa.sroa.gep110.a = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.0.lcssa.sroa.gep111.a = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.lcssa.sroa.gep112.a = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.0.lcssa.sroa.gep113.a = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.0.lcssa.sroa.gep114.a = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %.0.lcssa.sroa.gep115.a = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.0.lcssa.sroa.gep116.a = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.0.lcssa.sroa.gep117.a = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.0.lcssa.sroa.gep118.a = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.0.lcssa.sroa.gep119.a = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.0.lcssa.sroa.gep120.a = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.0.lcssa.sroa.gep121.a = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.0.lcssa.sroa.gep122.a = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.0.lcssa.sroa.gep123.a = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.0.lcssa.sroa.gep124.a = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.0.lcssa.sroa.gep125.a = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.0.lcssa.sroa.gep126.a = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.0.lcssa.sroa.gep127.a = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.0.lcssa.sroa.gep128.a = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  br i1 %i.o, label %.lr.ph.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.lcssa.sroa.gep109 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.k, ptr %i.p, align 8, !tbaa !4
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %3, i64 %i.q
  %i.s = call fastcc i32 @choose_table(ptr noundef %i.r, ptr noundef %i.m, ptr noundef %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.s, ptr %i.t, align 8, !tbaa !4
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 12), align 4, !tbaa !4 ; 2 uses
  %i.v = icmp sgt i32 %i.u, %i.f
  br i1 %i.v, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  store i32 %i.k, ptr %i.w, align 4, !tbaa !4
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %3, i64 %i.x
  %i.z = call fastcc i32 @choose_table(ptr noundef %i.y, ptr noundef %i.m, ptr noundef %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 16), align 4, !tbaa !4 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %i.f
  br i1 %i.ac, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 %i.k, ptr %i.ad, align 16, !tbaa !4
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ae
  %i.ag = call fastcc i32 @choose_table(ptr noundef %i.af, ptr noundef %i.m, ptr noundef %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.ag, ptr %i.ah, align 16, !tbaa !4
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 20), align 4, !tbaa !4 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, %i.f
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i32 %i.k, ptr %i.ak, align 4, !tbaa !4
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %3, i64 %i.al
  %i.an = call fastcc i32 @choose_table(ptr noundef %i.am, ptr noundef %i.m, ptr noundef %i.ak)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !4
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 24), align 4, !tbaa !4 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %i.f
  br i1 %i.aq, label %.lr.ph.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i32 %i.k, ptr %i.ar, align 8, !tbaa !4
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %3, i64 %i.as
  %i.au = call fastcc i32 @choose_table(ptr noundef %i.at, ptr noundef %i.m, ptr noundef %i.ar)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.au, ptr %i.av, align 8, !tbaa !4
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 28), align 4, !tbaa !4 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, %i.f
  br i1 %i.ax, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  store i32 %i.k, ptr %i.ay, align 4, !tbaa !4
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.az
  %i.bb = call fastcc i32 @choose_table(ptr noundef %i.ba, ptr noundef %i.m, ptr noundef %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !4
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 32), align 4, !tbaa !4 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %i.f
  br i1 %i.be, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i32 %i.k, ptr %i.bf, align 16, !tbaa !4
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bg
  %i.bi = call fastcc i32 @choose_table(ptr noundef %i.bh, ptr noundef %i.m, ptr noundef %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.bi, ptr %i.bj, align 16, !tbaa !4
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 36), align 4, !tbaa !4 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, %i.f
  br i1 %i.bl, label %.lr.ph.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store i32 %i.k, ptr %i.bm, align 4, !tbaa !4
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bn
  %i.bp = call fastcc i32 @choose_table(ptr noundef %i.bo, ptr noundef %i.m, ptr noundef %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !4
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 40), align 4, !tbaa !4 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, %i.f
  br i1 %i.bs, label %.lr.ph.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i32 %i.k, ptr %i.bt, align 8, !tbaa !4
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bu
  %i.bw = call fastcc i32 @choose_table(ptr noundef %i.bv, ptr noundef %i.m, ptr noundef %i.bt)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !4
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 44), align 4, !tbaa !4 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, %i.f
  br i1 %i.bz, label %.lr.ph.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  store i32 %i.k, ptr %i.ca, align 4, !tbaa !4
  %i.cb = sext i32 %i.by to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cb
  %i.cd = call fastcc i32 @choose_table(ptr noundef %i.cc, ptr noundef %i.m, ptr noundef %i.ca)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !4
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 48), align 4, !tbaa !4 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, %i.f
  br i1 %i.cg, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i32 %i.k, ptr %i.ch, align 16, !tbaa !4
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ci
  %i.ck = call fastcc i32 @choose_table(ptr noundef %i.cj, ptr noundef %i.m, ptr noundef %i.ch)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.ck, ptr %i.cl, align 16, !tbaa !4
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 52), align 4, !tbaa !4 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, %i.f
  br i1 %i.cn, label %.lr.ph.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  store i32 %i.k, ptr %i.co, align 4, !tbaa !4
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cp
  %i.cr = call fastcc i32 @choose_table(ptr noundef %i.cq, ptr noundef %i.m, ptr noundef %i.co)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !4
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 56), align 4, !tbaa !4 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, %i.f
  br i1 %i.cu, label %.lr.ph.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store i32 %i.k, ptr %i.cv, align 8, !tbaa !4
  %i.cw = sext i32 %i.ct to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cw
  %i.cy = call fastcc i32 @choose_table(ptr noundef %i.cx, ptr noundef %i.m, ptr noundef %i.cv)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !4
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 60), align 4, !tbaa !4 ; 2 uses
  %i.db = icmp sgt i32 %i.da, %i.f
  br i1 %i.db, label %.lr.ph.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  store i32 %i.k, ptr %i.dc, align 4, !tbaa !4
  %i.dd = sext i32 %i.da to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dd
  %i.df = call fastcc i32 @choose_table(ptr noundef %i.de, ptr noundef %i.m, ptr noundef %i.dc)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !4
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 64), align 4, !tbaa !4 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, %i.f
  br i1 %i.di, label %.lr.ph.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i32 %i.k, ptr %i.dj, align 16, !tbaa !4
  %i.dk = sext i32 %i.dh to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dk
  %i.dm = call fastcc i32 @choose_table(ptr noundef %i.dl, ptr noundef %i.m, ptr noundef %i.dj)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.dm, ptr %i.dn, align 16, !tbaa !4
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 68), align 4, !tbaa !4 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, %i.f
  br i1 %i.dp, label %.lr.ph.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  store i32 %i.k, ptr %i.dq, align 4, !tbaa !4
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dr
  %i.dt = call fastcc i32 @choose_table(ptr noundef %i.ds, ptr noundef %i.m, ptr noundef %i.dq)
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !4
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 72), align 4, !tbaa !4 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, %i.f
  br i1 %i.dw, label %.lr.ph.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store i32 %i.k, ptr %i.dx, align 8, !tbaa !4
  %i.dy = sext i32 %i.dv to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dy
  %i.ea = call fastcc i32 @choose_table(ptr noundef %i.dz, ptr noundef %i.m, ptr noundef %i.dx)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !4
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 76), align 4, !tbaa !4 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, %i.f
  br i1 %i.ed, label %.lr.ph.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  store i32 %i.k, ptr %i.ee, align 4, !tbaa !4
  %i.ef = sext i32 %i.ec to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ef
  %i.eh = call fastcc i32 @choose_table(ptr noundef %i.eg, ptr noundef %i.m, ptr noundef %i.ee)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !4
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 80), align 4, !tbaa !4 ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, %i.f
  br i1 %i.ek, label %.lr.ph.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store i32 %i.k, ptr %i.el, align 16, !tbaa !4
  %i.em = sext i32 %i.ej to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %3, i64 %i.em
  %i.eo = call fastcc i32 @choose_table(ptr noundef %i.en, ptr noundef %i.m, ptr noundef %i.el)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %i.eo, ptr %i.ep, align 16, !tbaa !4
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 84), align 4, !tbaa !4 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, %i.f
  br i1 %i.er, label %.lr.ph.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  store i32 %i.k, ptr %i.es, align 4, !tbaa !4
  %i.et = sext i32 %i.eq to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.et
  %i.ev = call fastcc i32 @choose_table(ptr noundef %i.eu, ptr noundef %i.m, ptr noundef %i.es)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !4
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 88), align 4, !tbaa !4 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, %i.f
  br i1 %i.ey, label %.lr.ph.preheader, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store i32 %i.k, ptr %i.ez, align 8, !tbaa !4
  %i.fa = sext i32 %i.ex to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fa
  %i.fc = call fastcc i32 @choose_table(ptr noundef %i.fb, ptr noundef %i.m, ptr noundef %i.ez)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.fc, ptr %i.fd, align 8, !tbaa !4
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.lcssa.sroa.phi.a = phi ptr [ %.0.lcssa.sroa.gep.a, %bb.a ], [ %.0.lcssa.sroa.gep108.a, %bb.v ], [ %.0.lcssa.sroa.gep109, %bb.b ], [ %.0.lcssa.sroa.gep110.a, %bb.u ], [ %.0.lcssa.sroa.gep111.a, %bb.c ], [ %.0.lcssa.sroa.gep112.a, %bb.l ], [ %.0.lcssa.sroa.gep113.a, %bb.d ], [ %.0.lcssa.sroa.gep114.a, %bb.t ], [ %.0.lcssa.sroa.gep115.a, %bb.e ], [ %.0.lcssa.sroa.gep116.a, %bb.p ], [ %.0.lcssa.sroa.gep117.a, %bb.f ], [ %.0.lcssa.sroa.gep118.a, %bb.s ], [ %.0.lcssa.sroa.gep119.a, %bb.g ], [ %.0.lcssa.sroa.gep120.a, %bb.m ], [ %.0.lcssa.sroa.gep121.a, %bb.h ], [ %.0.lcssa.sroa.gep122.a, %bb.r ], [ %.0.lcssa.sroa.gep123.a, %bb.i ], [ %.0.lcssa.sroa.gep124.a, %bb.o ], [ %.0.lcssa.sroa.gep125.a, %bb.j ], [ %.0.lcssa.sroa.gep126.a, %bb.q ], [ %.0.lcssa.sroa.gep127.a, %bb.k ], [ %.0.lcssa.sroa.gep128.a, %bb.n ]
  %.0.lcssa = phi i64 [ 2, %bb.a ], [ 23, %bb.v ], [ 3, %bb.b ], [ 22, %bb.u ], [ 4, %bb.c ], [ 13, %bb.l ], [ 5, %bb.d ], [ 21, %bb.t ], [ 6, %bb.e ], [ 17, %bb.p ], [ 7, %bb.f ], [ 20, %bb.s ], [ 8, %bb.g ], [ 14, %bb.m ], [ 9, %bb.h ], [ 19, %bb.r ], [ 10, %bb.i ], [ 16, %bb.o ], [ 11, %bb.j ], [ 18, %bb.q ], [ 12, %bb.k ], [ 15, %bb.n ] ; 3 uses
  %i.fe = sub nsw i64 25, %.0.lcssa               ; 3 uses
  %min.iters.check = icmp ult i64 %i.fe, 8
  br i1 %min.iters.check, label %.lr.ph.preheader107, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.fe, -8                      ; 3 uses
  %i.ff = add nsw i64 %.0.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.sroa.phi.a, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> splat (i32 100000), ptr %5, align 4, !tbaa !4
  store <4 x i32> splat (i32 100000), ptr %i.fg, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %.preheader49, label %.lr.ph.preheader107

.lr.ph.preheader107:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %.0.lcssa, %.lr.ph.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph

.preheader49:                                     ; preds = %.lr.ph, %middle.block
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 8 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 8 uses
  br label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.preheader107, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader107 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 100000, ptr %i.fm, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.preheader49, label %.lr.ph, !llvm.loop !51

bb.w:                                             ; preds = %.preheader49, %.loopexit
  %indvars.iv60 = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next61, %.loopexit ] ; 10 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv.next61
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4  ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, %i.f
  br i1 %i.fp, label %bb.av, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fq = trunc nuw nsw i64 %indvars.iv60 to i32
  store i32 %i.fq, ptr %i.fh, align 8, !tbaa !33
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.fr = sext i32 %i.fo to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fr ; 9 uses
  %i.ft = call fastcc i32 @choose_table(ptr noundef %3, ptr noundef %i.fs, ptr noundef %i.a)
  store i32 %i.ft, ptr %i.fi, align 8, !tbaa !4
  %i.fu = load i32, ptr %2, align 8, !tbaa !52    ; 3 uses
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !4   ; 9 uses
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.av, label %.preheader

.preheader:                                       ; preds = %bb.x
  %i.fx = add nuw nsw i64 %indvars.iv60, 2        ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = add nsw i32 %i.fz, %i.fv                ; 2 uses
  store i32 %i.ga, ptr %4, align 8, !tbaa !4
  %i.gb = icmp slt i32 %i.fu, %i.ga
  br i1 %i.gb, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.preheader
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.fx
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ge
  %i.gg = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.gf, ptr noundef %4)
  store i32 %i.gg, ptr %i.fj, align 4, !tbaa !4
  %i.gh = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.gi = load i32, ptr %4, align 8, !tbaa !4
  %i.gj = icmp slt i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.fk, align 4, !tbaa !36
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fx
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  store i32 %i.gl, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %.preheader, %bb.z
  %i.gm = phi i32 [ %i.gh, %bb.y ], [ %i.fu, %.preheader ], [ %.pre, %bb.z ] ; 2 uses
  %i.gn = add nuw nsw i64 %indvars.iv60, 3        ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4
  %i.gq = add nsw i32 %i.gp, %i.fv                ; 2 uses
  store i32 %i.gq, ptr %4, align 8, !tbaa !4
  %i.gr = icmp slt i32 %i.gm, %i.gq
  br i1 %i.gr, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.gn
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gu
  %i.gw = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.gv, ptr noundef %4)
  store i32 %i.gw, ptr %i.fj, align 4, !tbaa !4
  %i.gx = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.gy = load i32, ptr %4, align 8, !tbaa !4
  %i.gz = icmp slt i32 %i.gx, %i.gy
  br i1 %i.gz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 1, ptr %i.fk, align 4, !tbaa !36
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gn
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  store i32 %i.hb, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre64 = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.hc = phi i32 [ %.pre64, %bb.ac ], [ %i.gx, %bb.ab ], [ %i.gm, %bb.aa ] ; 2 uses
  %i.hd = add nuw nsw i64 %indvars.iv60, 4        ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = add nsw i32 %i.hf, %i.fv                ; 2 uses
  store i32 %i.hg, ptr %4, align 8, !tbaa !4
  %i.hh = icmp slt i32 %i.hc, %i.hg
  br i1 %i.hh, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.hd
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !4
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hk
  %i.hm = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.hl, ptr noundef %4)
  store i32 %i.hm, ptr %i.fj, align 4, !tbaa !4
  %i.hn = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.ho = load i32, ptr %4, align 8, !tbaa !4
  %i.hp = icmp slt i32 %i.hn, %i.ho
  br i1 %i.hp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %i.fk, align 4, !tbaa !36
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hd
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4
  store i32 %i.hr, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre65 = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.hs = phi i32 [ %.pre65, %bb.af ], [ %i.hn, %bb.ae ], [ %i.hc, %bb.ad ] ; 2 uses
  %i.ht = add nuw nsw i64 %indvars.iv60, 5        ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !4
  %i.hw = add nsw i32 %i.hv, %i.fv                ; 2 uses
  store i32 %i.hw, ptr %4, align 8, !tbaa !4
  %i.hx = icmp slt i32 %i.hs, %i.hw
  br i1 %i.hx, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.ht
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !4
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ia
  %i.ic = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.ib, ptr noundef %4)
  store i32 %i.ic, ptr %i.fj, align 4, !tbaa !4
  %i.id = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.ie = load i32, ptr %4, align 8, !tbaa !4
  %i.if = icmp slt i32 %i.id, %i.ie
  br i1 %i.if, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 3, ptr %i.fk, align 4, !tbaa !36
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ht
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !4
  store i32 %i.ih, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre66 = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ii = phi i32 [ %.pre66, %bb.ai ], [ %i.id, %bb.ah ], [ %i.hs, %bb.ag ] ; 2 uses
  %i.ij = add nuw nsw i64 %indvars.iv60, 6        ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !4
  %i.im = add nsw i32 %i.il, %i.fv                ; 2 uses
  store i32 %i.im, ptr %4, align 8, !tbaa !4
  %i.in = icmp slt i32 %i.ii, %i.im
  br i1 %i.in, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.ij
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !4
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %3, i64 %i.iq
  %i.is = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.ir, ptr noundef %4)
  store i32 %i.is, ptr %i.fj, align 4, !tbaa !4
  %i.it = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.iu = load i32, ptr %4, align 8, !tbaa !4
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 4, ptr %i.fk, align 4, !tbaa !36
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ij
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  store i32 %i.ix, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre67 = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.iy = phi i32 [ %.pre67, %bb.al ], [ %i.it, %bb.ak ], [ %i.ii, %bb.aj ] ; 2 uses
  %i.iz = add nuw nsw i64 %indvars.iv60, 7        ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !4
  %i.jc = add nsw i32 %i.jb, %i.fv                ; 2 uses
  store i32 %i.jc, ptr %4, align 8, !tbaa !4
  %i.jd = icmp slt i32 %i.iy, %i.jc
  br i1 %i.jd, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.je = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.iz
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !4
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.jg
  %i.ji = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.jh, ptr noundef %4)
  store i32 %i.ji, ptr %i.fj, align 4, !tbaa !4
  %i.jj = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.jk = load i32, ptr %4, align 8, !tbaa !4
  %i.jl = icmp slt i32 %i.jj, %i.jk
  br i1 %i.jl, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 5, ptr %i.fk, align 4, !tbaa !36
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iz
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !4
  store i32 %i.jn, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre68 = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.jo = phi i32 [ %.pre68, %bb.ao ], [ %i.jj, %bb.an ], [ %i.iy, %bb.am ] ; 2 uses
  %i.jp = add nuw nsw i64 %indvars.iv60, 8        ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !4
  %i.js = add nsw i32 %i.jr, %i.fv                ; 2 uses
  store i32 %i.js, ptr %4, align 8, !tbaa !4
  %i.jt = icmp slt i32 %i.jo, %i.js
  br i1 %i.jt, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.jp
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !4
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.jw
  %i.jy = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.jx, ptr noundef %4)
  store i32 %i.jy, ptr %i.fj, align 4, !tbaa !4
  %i.jz = load i32, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.ka = load i32, ptr %4, align 8, !tbaa !4
  %i.kb = icmp slt i32 %i.jz, %i.ka
  br i1 %i.kb, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 6, ptr %i.fk, align 4, !tbaa !36
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jp
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4
  store i32 %i.kd, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre69 = load i32, ptr %2, align 8, !tbaa !52
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ke = phi i32 [ %.pre69, %bb.ar ], [ %i.jz, %bb.aq ], [ %i.jo, %bb.ap ]
  %i.kf = add nuw nsw i64 %indvars.iv60, 9        ; 3 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !4
  %i.ki = add nsw i32 %i.kh, %i.fv                ; 2 uses
  store i32 %i.ki, ptr %4, align 8, !tbaa !4
  %i.kj = icmp slt i32 %i.ke, %i.ki
  br i1 %i.kj, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.kf
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !4
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %3, i64 %i.km
  %i.ko = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.kn, ptr noundef %4)
  store i32 %i.ko, ptr %i.fj, align 4, !tbaa !4
  %i.kp = load i32, ptr %2, align 8, !tbaa !52
  %i.kq = load i32, ptr %4, align 8, !tbaa !4
  %i.kr = icmp slt i32 %i.kp, %i.kq
  br i1 %i.kr, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 7, ptr %i.fk, align 4, !tbaa !36
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kf
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4
  store i32 %i.kt, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.au, %bb.at, %bb.as
  %exitcond63.not = icmp eq i64 %indvars.iv.next61, 16
  br i1 %exitcond63.not, label %bb.av, label %bb.w, !llvm.loop !53

bb.av:                                            ; preds = %bb.x, %bb.w, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @choose_table(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %.thread83

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 8
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.d)
  %i.f = xor i64 %i.c, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 56
  br i1 %min.iters.check, label %.lr.ph.i.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.i, 4611686018427387896      ; 3 uses
  %i.j = shl i64 %n.vec, 3
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi127 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.l = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.l
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %next.gep128 = getelementptr i8, ptr %i.m, i64 32
  %wide.vec = load <8 x i32>, ptr %next.gep, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec129 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec130 = load <8 x i32>, ptr %next.gep128, align 4, !tbaa !4 ; 2 uses
  %strided.vec131 = shufflevector <8 x i32> %wide.vec130, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec132 = shufflevector <8 x i32> %wide.vec130, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.n = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %strided.vec)
  %i.o = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi127, <4 x i32> %strided.vec131)
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %strided.vec129) ; 2 uses
  %i.q = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.o, <4 x i32> %strided.vec132) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.q)
  %i.s = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %ix_max.exit, label %.lr.ph.i.preheader140

.lr.ph.i.preheader140:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.014.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.01013.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader140, %.lr.ph.i
  %.014.i = phi i32 [ %.2.i, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader140 ]
  %.01013.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.01013.i.ph, %.lr.ph.i.preheader140 ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01013.i, i64 4
  %i.u = load i32, ptr %.01013.i, align 4, !tbaa !4
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.014.i, i32 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.01013.i, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !4
  %.2.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.w) ; 2 uses
  %i.x = icmp ult ptr %i.v, %1
  br i1 %i.x, label %.lr.ph.i, label %ix_max.exit, !llvm.loop !55

ix_max.exit:                                      ; preds = %.lr.ph.i, %middle.block
  %.2.i.lcssa = phi i32 [ %i.s, %middle.block ], [ %.2.i, %.lr.ph.i ] ; 5 uses
  %i.y = icmp samesign ugt i32 %.2.i.lcssa, 8206
  br i1 %i.y, label %.thread83.sink.split, label %bb.b

bb.b:                                             ; preds = %ix_max.exit
  %i.z = icmp samesign ult i32 %.2.i.lcssa, 16
  br i1 %i.z, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i32 %.2.i.lcssa, 0
  br i1 %i.aa, label %.thread83, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = zext nneg i32 %.2.i.lcssa to i64
  %i.ac = getelementptr [4 x i8], ptr @huf_tbl_noESC, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 9 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.023.i = phi i32 [ 0, %bb.d ], [ %.2.i66, %bb.e ]
  %.022.i = phi i32 [ 0, %bb.d ], [ %i.aw, %bb.e ]
  %.021.i = phi ptr [ @cb_esc_buf, %bb.d ], [ %i.ar, %bb.e ] ; 5 uses
  %.0.i = phi ptr [ %0, %bb.d ], [ %i.al, %bb.e ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ak = load i32, ptr %.0.i, align 4, !tbaa !4  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %.not.i = icmp ne i32 %i.ak, 0
  %i.an = shl i32 %i.ak, 4
  %i.ao = zext i1 %.not.i to i32
  %.124.i = add nsw i32 %.023.i, %i.ao
  %.not29.i = icmp ne i32 %i.am, 0
  %i.ap = add nsw i32 %i.an, %i.am                ; 2 uses
  %i.aq = zext i1 %.not29.i to i32
  %.2.i66 = add nsw i32 %.124.i, %i.aq            ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 2 uses
  store i32 %i.ap, ptr %.021.i, align 4, !tbaa !4
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds i8, ptr %i.ai, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %.022.i, %i.av          ; 2 uses
  %i.ax = icmp ult ptr %i.al, %1
  br i1 %i.ax, label %bb.e, label %count_bit_noESC.exit, !llvm.loop !56

count_bit_noESC.exit:                             ; preds = %bb.e
  store ptr %i.ar, ptr @cb_esc_end, align 8, !tbaa !45
  %i.ay = add nsw i32 %i.aw, %.2.i66              ; 7 uses
  switch i32 %i.ae, label %bb.l [
    i32 7, label %bb.f
    i32 10, label %bb.f
    i32 2, label %bb.h
    i32 5, label %bb.h
    i32 13, label %bb.j
  ]

bb.f:                                             ; preds = %count_bit_noESC.exit, %count_bit_noESC.exit
  %i.az = add nuw nsw i32 %i.ae, 1                ; 3 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.04.i = phi i32 [ %.2.i66, %bb.f ], [ %i.bk, %bb.g ]
  %.0.i67 = phi ptr [ @cb_esc_buf, %bb.f ], [ %i.be, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i67, i64 4
  %i.bf = load i32, ptr %.0.i67, align 4, !tbaa !4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %.04.i, %i.bj               ; 3 uses
  %i.bl = icmp ult ptr %.0.i67, %.021.i
  br i1 %i.bl, label %bb.g, label %count_bit_noESC2.exit, !llvm.loop !46

count_bit_noESC2.exit:                            ; preds = %bb.g
  %i.bm = icmp sgt i32 %i.ay, %i.bk
  %spec.select = select i1 %i.bm, i32 %i.az, i32 %i.ae
  %spec.select61 = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bk)
  br label %bb.h

bb.h:                                             ; preds = %count_bit_noESC2.exit, %count_bit_noESC.exit, %count_bit_noESC.exit
  %.050 = phi i32 [ %i.ae, %count_bit_noESC.exit ], [ %spec.select, %count_bit_noESC2.exit ], [ %i.ae, %count_bit_noESC.exit ]
  %.048 = phi i32 [ %i.ay, %count_bit_noESC.exit ], [ %spec.select61, %count_bit_noESC2.exit ], [ %i.ay, %count_bit_noESC.exit ] ; 2 uses
  %.0 = phi i32 [ %i.ae, %count_bit_noESC.exit ], [ %i.az, %count_bit_noESC2.exit ], [ %i.ae, %count_bit_noESC.exit ]
  %i.bn = add nuw nsw i32 %.0, 1                  ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.04.i68 = phi i32 [ %.2.i66, %bb.h ], [ %i.by, %bb.i ]
  %.0.i69 = phi ptr [ @cb_esc_buf, %bb.h ], [ %i.bs, %bb.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i69, i64 4
  %i.bt = load i32, ptr %.0.i69, align 4, !tbaa !4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !25
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %.04.i68, %i.bx             ; 3 uses
  %i.bz = icmp ult ptr %.0.i69, %.021.i
  br i1 %i.bz, label %bb.i, label %count_bit_noESC2.exit70, !llvm.loop !46

count_bit_noESC2.exit70:                          ; preds = %bb.i
  %i.ca = icmp sgt i32 %.048, %i.by
  %spec.select62 = select i1 %i.ca, i32 %i.bn, i32 %.050
  %spec.select63 = tail call i32 @llvm.smin.i32(i32 %.048, i32 %i.by)
  br label %bb.l

bb.j:                                             ; preds = %count_bit_noESC.exit
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 376), align 8, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.04.i71 = phi i32 [ %.2.i66, %bb.j ], [ %i.ci, %bb.k ]
  %.0.i72 = phi ptr [ @cb_esc_buf, %bb.j ], [ %i.cc, %bb.k ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i72, i64 4
  %i.cd = load i32, ptr %.0.i72, align 4, !tbaa !4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !25
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nsw i32 %.04.i71, %i.ch             ; 3 uses
  %i.cj = icmp ult ptr %.0.i72, %.021.i
  br i1 %i.cj, label %bb.k, label %count_bit_noESC2.exit73, !llvm.loop !46

count_bit_noESC2.exit73:                          ; preds = %bb.k
  %i.ck = icmp sgt i32 %i.ay, %i.ci
  %spec.select64 = select i1 %i.ck, i32 15, i32 13
  %spec.select65 = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.ci)
  br label %bb.l

bb.l:                                             ; preds = %count_bit_noESC2.exit73, %count_bit_noESC2.exit70, %count_bit_noESC.exit
  %.151 = phi i32 [ %i.ae, %count_bit_noESC.exit ], [ %spec.select62, %count_bit_noESC2.exit70 ], [ %spec.select64, %count_bit_noESC2.exit73 ]
  %.149 = phi i32 [ %i.ay, %count_bit_noESC.exit ], [ %spec.select63, %count_bit_noESC2.exit70 ], [ %spec.select65, %count_bit_noESC2.exit73 ]
  %i.cl = load i32, ptr %2, align 4, !tbaa !4
  %i.cm = add nsw i32 %i.cl, %.149
  br label %.thread83.sink.split

bb.m:                                             ; preds = %bb.b
  %i.cn = add nsw i32 %.2.i.lcssa, -15            ; 16 uses
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 580), align 4, !tbaa !47
  %.not = icmp slt i32 %i.co, %i.cn
  br i1 %.not, label %bb.n, label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.m
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 604), align 4, !tbaa !47
  %.not.1 = icmp slt i32 %i.cp, %i.cn
  br i1 %.not.1, label %bb.o, label %.lr.ph.preheader

bb.o:                                             ; preds = %bb.n
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 628), align 4, !tbaa !47
  %.not.2 = icmp slt i32 %i.cq, %i.cn
  br i1 %.not.2, label %bb.p, label %.lr.ph.preheader

bb.p:                                             ; preds = %bb.o
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 652), align 4, !tbaa !47
  %.not.3 = icmp slt i32 %i.cr, %i.cn
  br i1 %.not.3, label %bb.q, label %.lr.ph.preheader

bb.q:                                             ; preds = %bb.p
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 676), align 4, !tbaa !47
  %.not.4 = icmp slt i32 %i.cs, %i.cn
  br i1 %.not.4, label %bb.r, label %.lr.ph.preheader

bb.r:                                             ; preds = %bb.q
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 700), align 4, !tbaa !47
  %.not.5 = icmp slt i32 %i.ct, %i.cn
  br i1 %.not.5, label %bb.s, label %.lr.ph.preheader

bb.s:                                             ; preds = %bb.r
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 724), align 4, !tbaa !47
  %.not.6 = icmp slt i32 %i.cu, %i.cn
  br i1 %.not.6, label %bb.t, label %.lr.ph.preheader

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 748), align 4, !tbaa !47
  %.not.7 = icmp slt i32 %i.cv, %i.cn
  br i1 %.not.7, label %.lr.ph.i75, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %bb.n, %bb.t, %bb.o, %bb.r, %bb.p, %bb.s, %bb.q
  %.1.lcssa.ph = phi i32 [ 28, %bb.q ], [ 30, %bb.s ], [ 27, %bb.p ], [ 29, %bb.r ], [ 26, %bb.o ], [ 31, %bb.t ], [ 25, %bb.n ], [ 24, %bb.m ] ; 10 uses
  %i.cw = zext nneg i32 %.1.lcssa.ph to i64       ; 17 uses
  %i.cx = add nsw i64 %i.cw, -8                   ; 2 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !47
  %.not60 = icmp slt i32 %i.da, %i.cn
  br i1 %.not60, label %bb.u, label %.lr.ph.i75.loopexit.split.loop.exit

bb.u:                                             ; preds = %.lr.ph.preheader
  %indvars.iv.next = add nsw i64 %i.cw, -7        ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %.lr.ph.i75, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.u
  %i.db = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !47
  %.not60.1 = icmp slt i32 %i.dd, %i.cn
  br i1 %.not60.1, label %bb.v, label %.lr.ph.i75.loopexit.split.loop.exit

bb.v:                                             ; preds = %.lr.ph.1
  %indvars.iv.next.1 = add nsw i64 %i.cw, -6      ; 3 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 24
  br i1 %exitcond.not.1, label %.lr.ph.i75, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.v
  %i.de = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.1
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !47
  %.not60.2 = icmp slt i32 %i.dg, %i.cn
  br i1 %.not60.2, label %bb.w, label %.lr.ph.i75.loopexit.split.loop.exit

bb.w:                                             ; preds = %.lr.ph.2
  %indvars.iv.next.2 = add nsw i64 %i.cw, -5      ; 3 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 24
  br i1 %exitcond.not.2, label %.lr.ph.i75, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !47
  %.not60.3 = icmp slt i32 %i.dj, %i.cn
  br i1 %.not60.3, label %bb.x, label %.lr.ph.i75.loopexit.split.loop.exit

bb.x:                                             ; preds = %.lr.ph.3
  %indvars.iv.next.3 = add nsw i64 %i.cw, -4      ; 3 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 24
  br i1 %exitcond.not.3, label %.lr.ph.i75, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !47
  %.not60.4 = icmp slt i32 %i.dm, %i.cn
  br i1 %.not60.4, label %bb.y, label %.lr.ph.i75.loopexit.split.loop.exit

bb.y:                                             ; preds = %.lr.ph.4
  %indvars.iv.next.4 = add nsw i64 %i.cw, -3      ; 3 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 24
  br i1 %exitcond.not.4, label %.lr.ph.i75, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !47
  %.not60.5 = icmp slt i32 %i.dp, %i.cn
  br i1 %.not60.5, label %bb.z, label %.lr.ph.i75.loopexit.split.loop.exit

bb.z:                                             ; preds = %.lr.ph.5
  %indvars.iv.next.5 = add nsw i64 %i.cw, -2      ; 3 uses
  %exitcond.not.5 = icmp eq i64 %indvars.iv.next.5, 24
  br i1 %exitcond.not.5, label %.lr.ph.i75, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.5
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !47
  %.not60.6 = icmp slt i32 %i.ds, %i.cn
  br i1 %.not60.6, label %bb.aa, label %.lr.ph.i75.loopexit.split.loop.exit

bb.aa:                                            ; preds = %.lr.ph.6
  %indvars.iv.next.6 = add nsw i64 %i.cw, -1      ; 3 uses
  %exitcond.not.6 = icmp eq i64 %indvars.iv.next.6, 24
  br i1 %exitcond.not.6, label %.lr.ph.i75, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.6
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !47
  %.not60.7 = icmp slt i32 %i.dv, %i.cn
  br i1 %.not60.7, label %.lr.ph.i75, label %.lr.ph.i75.loopexit.split.loop.exit

.lr.ph.i75.loopexit.split.loop.exit:              ; preds = %.lr.ph.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.cx, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ], [ %indvars.iv.next.3, %.lr.ph.4 ], [ %indvars.iv.next.4, %.lr.ph.5 ], [ %indvars.iv.next.5, %.lr.ph.6 ], [ %indvars.iv.next.6, %.lr.ph.7 ]
  %i.dw = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %.lr.ph.7, %.lr.ph.i75.loopexit.split.loop.exit, %bb.t
  %.1.lcssa110 = phi i32 [ 32, %bb.t ], [ %.1.lcssa.ph, %.lr.ph.i75.loopexit.split.loop.exit ], [ %.1.lcssa.ph, %.lr.ph.7 ], [ %.1.lcssa.ph, %bb.aa ], [ %.1.lcssa.ph, %bb.z ], [ %.1.lcssa.ph, %bb.y ], [ %.1.lcssa.ph, %bb.x ], [ %.1.lcssa.ph, %bb.w ], [ %.1.lcssa.ph, %bb.v ], [ %.1.lcssa.ph, %bb.u ]
  %.pre-phi = phi i64 [ 32, %bb.t ], [ %i.cw, %.lr.ph.i75.loopexit.split.loop.exit ], [ %i.cw, %.lr.ph.7 ], [ %i.cw, %bb.aa ], [ %i.cw, %bb.z ], [ %i.cw, %bb.y ], [ %i.cw, %bb.x ], [ %i.cw, %bb.w ], [ %i.cw, %bb.v ], [ %i.cw, %bb.u ]
  %.2.lcssa = phi i32 [ 24, %bb.t ], [ %i.dw, %.lr.ph.i75.loopexit.split.loop.exit ], [ 24, %.lr.ph.7 ], [ 24, %bb.aa ], [ 24, %bb.z ], [ 24, %bb.y ], [ 24, %bb.x ], [ 24, %bb.w ], [ 24, %bb.v ], [ 24, %bb.u ] ; 2 uses
  %i.dx = zext nneg i32 %.2.lcssa to i64
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !48 ; 2 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %.pre-phi
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !48 ; 2 uses
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 400), align 16, !tbaa !41
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 592), align 16, !tbaa !41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.lr.ph.i75
  %.03556.i = phi i32 [ 0, %.lr.ph.i75 ], [ %i.fb, %bb.af ] ; 2 uses
  %.03855.i = phi i32 [ 0, %.lr.ph.i75 ], [ %i.ex, %bb.af ] ; 2 uses
  %.04354.i = phi i32 [ 0, %.lr.ph.i75 ], [ %.245.i, %bb.af ] ; 2 uses
  %.04653.i = phi ptr [ %0, %.lr.ph.i75 ], [ %i.eg, %bb.af ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.04653.i, i64 4
  %i.ef = load i32, ptr %.04653.i, align 4, !tbaa !4 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.04653.i, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !4  ; 3 uses
  %.not.i76 = icmp eq i32 %i.ef, 0
  br i1 %.not.i76, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ei = add nsw i32 %.04354.i, 1
  %i.ej = icmp sgt i32 %i.ef, 14                  ; 2 uses
  %i.ek = select i1 %i.ej, i32 %i.dz, i32 0
  %.139.i = add nsw i32 %i.ek, %.03855.i
  %i.el = select i1 %i.ej, i32 %i.eb, i32 0
  %.136.i = add nsw i32 %i.el, %.03556.i
  %i.em = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 15)
  %i.en = shl i32 %i.em, 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.144.i = phi i32 [ %i.ei, %bb.ac ], [ %.04354.i, %bb.ab ] ; 2 uses
  %.240.i = phi i32 [ %.139.i, %bb.ac ], [ %.03855.i, %bb.ab ] ; 2 uses
  %.237.i = phi i32 [ %.136.i, %bb.ac ], [ %.03556.i, %bb.ab ] ; 2 uses
  %.1.i = phi i32 [ %i.en, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.not51.i = icmp eq i32 %i.eh, 0
  br i1 %.not51.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eo = add nsw i32 %.144.i, 1
  %i.ep = icmp sgt i32 %i.eh, 14                  ; 3 uses
  %i.eq = select i1 %i.ep, i32 %i.dz, i32 0
  %.341.i = add nsw i32 %.240.i, %i.eq
  %i.er = select i1 %i.ep, i32 %i.eb, i32 0
  %.3.i = add nsw i32 %.237.i, %i.er
  %.0.i77 = select i1 %i.ep, i32 15, i32 %i.eh
  %i.es = add nsw i32 %.1.i, %.0.i77
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.245.i = phi i32 [ %i.eo, %bb.ae ], [ %.144.i, %bb.ad ] ; 2 uses
  %.442.i = phi i32 [ %.341.i, %bb.ae ], [ %.240.i, %bb.ad ]
  %.4.i = phi i32 [ %.3.i, %bb.ae ], [ %.237.i, %bb.ad ]
  %.2.i78 = phi i32 [ %i.es, %bb.ae ], [ %.1.i, %bb.ad ]
  %i.et = sext i32 %.2.i78 to i64                 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.ec, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !25
  %i.ew = zext i8 %i.ev to i32
  %i.ex = add nsw i32 %.442.i, %i.ew              ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ed, i64 %i.et
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !25
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nsw i32 %.4.i, %i.fa                ; 3 uses
  %i.fc = icmp ult ptr %i.eg, %1
  br i1 %i.fc, label %bb.ab, label %count_bit_ESC.exit, !llvm.loop !57

count_bit_ESC.exit:                               ; preds = %bb.af
  %i.fd = icmp sgt i32 %i.ex, %i.fb
  %spec.select.i74 = select i1 %i.fd, i32 %.1.lcssa110, i32 %.2.lcssa
  %spec.select52.i = tail call i32 @llvm.smin.i32(i32 %i.ex, i32 %i.fb)
  %i.fe = add nsw i32 %spec.select52.i, %.245.i
  %i.ff = load i32, ptr %2, align 4, !tbaa !4
  %i.fg = add nsw i32 %i.fe, %i.ff
  br label %.thread83.sink.split

.thread83.sink.split:                             ; preds = %ix_max.exit, %count_bit_ESC.exit, %bb.l
  %.sink = phi i32 [ %i.cm, %bb.l ], [ %i.fg, %count_bit_ESC.exit ], [ 100000, %ix_max.exit ]
  %.052.ph = phi i32 [ %.151, %bb.l ], [ %spec.select.i74, %count_bit_ESC.exit ], [ -1, %ix_max.exit ]
  store i32 %.sink, ptr %2, align 4, !tbaa !4
  br label %.thread83

.thread83:                                        ; preds = %.thread83.sink.split, %bb.a, %bb.c
  %.052 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %.052.ph, %.thread83.sink.split ]
  ret i32 %.052
}

; Function Attrs: nounwind uwtable
define dso_local void @best_scalefac_store(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 5 uses
  %i.c = getelementptr inbounds [240 x i8], ptr %i.a, i64 %i.b
  %i.d = sext i32 %2 to i64                       ; 11 uses
  %i.e = getelementptr inbounds [120 x i8], ptr %i.c, i64 %i.d ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %.not192 = icmp eq i32 %i.g, 0
  br i1 %.not192, label %.preheader156, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds [488 x i8], ptr %5, i64 %i.b
  %i.i = getelementptr inbounds [244 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds [4608 x i8], ptr %3, i64 %i.b
  %i.k = getelementptr inbounds [2304 x i8], ptr %i.j, i64 %i.d
  br label %bb.b

.preheader156:                                    ; preds = %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 84 ; 5 uses
  %i.m = getelementptr inbounds [488 x i8], ptr %5, i64 %i.b
  %i.n = getelementptr inbounds [244 x i8], ptr %i.m, i64 %i.d ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 3 uses
  %i.p = getelementptr inbounds [4608 x i8], ptr %3, i64 %i.b
  %i.q = getelementptr inbounds [2304 x i8], ptr %i.p, i64 %i.d ; 3 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !59   ; 2 uses
  %i.s = icmp slt i32 %i.r, 12
  br i1 %i.s, label %.lr.ph172, label %.split.us

bb.b:                                             ; preds = %.lr.ph162, %bb.e
  %i.t = phi i32 [ %i.g, %.lr.ph162 ], [ %i.ah, %bb.e ] ; 2 uses
  %indvars.iv198 = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next199, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv198 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv198 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4   ; 3 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ac = sext i32 %i.y to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %.not142 = icmp eq i32 %i.ae, 0
  br i1 %.not142, label %bb.d, label %._crit_edge.loopexit

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !60

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.af = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0133.lcssa = phi i32 [ %i.y, %bb.c ], [ %i.af, %._crit_edge.loopexit ]
  %i.ag = icmp eq i32 %.0133.lcssa, %i.aa
  br i1 %i.ag, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  store i32 0, ptr %i.u, align 4, !tbaa !4
  %.pre = load i32, ptr %i.f, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %._crit_edge.thread, %._crit_edge
  %i.ah = phi i32 [ %i.t, %bb.b ], [ %.pre, %._crit_edge.thread ], [ %i.t, %._crit_edge ] ; 2 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv.next199, %i.ai
  br i1 %i.aj, label %bb.b, label %.preheader156, !llvm.loop !61

.lr.ph172:                                        ; preds = %.preheader156
  %i.ak = sext i32 %i.r to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph172, %bb.i
  %indvars.iv206 = phi i64 [ %i.ak, %.lr.ph172 ], [ %indvars.iv.next207, %bb.i ] ; 3 uses
  %gep = getelementptr [12 x i8], ptr %i.o, i64 %indvars.iv206 ; 2 uses
  %i.al = load i32, ptr %gep, align 4, !tbaa !4
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv206 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 3 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 3 uses
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph165.preheader, label %._crit_edge166

.lr.ph165.preheader:                              ; preds = %bb.g
  %i.as = sext i32 %i.ao to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.h
  %indvars.iv201 = phi i64 [ %i.as, %.lr.ph165.preheader ], [ %indvars.iv.next202, %bb.h ] ; 3 uses
  %.idx = mul nsw i64 %indvars.iv201, 12
  %i.at = getelementptr inbounds i8, ptr %i.q, i64 %.idx
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %.not141 = icmp eq i32 %i.au, 0
  br i1 %.not141, label %bb.h, label %._crit_edge166.loopexit

bb.h:                                             ; preds = %.lr.ph165
  %indvars.iv.next202 = add nsw i64 %indvars.iv201, 1 ; 2 uses
  %lftr.wideiv204 = trunc i64 %indvars.iv.next202 to i32
  %exitcond205.not = icmp eq i32 %i.aq, %lftr.wideiv204
  br i1 %exitcond205.not, label %._crit_edge166.thread, label %.lr.ph165, !llvm.loop !62

._crit_edge166.loopexit:                          ; preds = %.lr.ph165
  %i.av = trunc nsw i64 %indvars.iv201 to i32
  br label %._crit_edge166

._crit_edge166:                                   ; preds = %._crit_edge166.loopexit, %bb.g
  %.1134.lcssa = phi i32 [ %i.ao, %bb.g ], [ %i.av, %._crit_edge166.loopexit ]
  %i.aw = icmp eq i32 %.1134.lcssa, %i.aq
  br i1 %i.aw, label %._crit_edge166.thread, label %bb.i

._crit_edge166.thread:                            ; preds = %bb.h, %._crit_edge166
  store i32 0, ptr %gep, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %._crit_edge166.thread, %._crit_edge166
  %indvars.iv.next207 = add nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ax = and i64 %indvars.iv.next207, 4294967295
  %exitcond210.not = icmp eq i64 %i.ax, 12
  br i1 %exitcond210.not, label %._crit_edge173, label %bb.f, !llvm.loop !63

._crit_edge173:                                   ; preds = %bb.i
  %.pre240 = load i32, ptr %i.l, align 4, !tbaa !59 ; 2 uses
  %i.ay = icmp slt i32 %.pre240, 12
  br i1 %i.ay, label %.lr.ph172.1, label %.split.us

.lr.ph172.1:                                      ; preds = %._crit_edge173
  %invariant.gep.1 = getelementptr i8, ptr %i.n, i64 92
  %i.az = sext i32 %.pre240 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph172.1
  %indvars.iv206.1 = phi i64 [ %i.az, %.lr.ph172.1 ], [ %indvars.iv.next207.1, %bb.m ] ; 3 uses
  %gep.1 = getelementptr [12 x i8], ptr %invariant.gep.1, i64 %indvars.iv206.1 ; 2 uses
  %i.ba = load i32, ptr %gep.1, align 4, !tbaa !4
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv206.1 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4  ; 3 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4  ; 3 uses
  %i.bg = icmp slt i32 %i.bd, %i.bf
  br i1 %i.bg, label %.lr.ph165.preheader.1, label %._crit_edge166.1

.lr.ph165.preheader.1:                            ; preds = %bb.k
  %i.bh = sext i32 %i.bd to i64
  br label %.lr.ph165.1

.lr.ph165.1:                                      ; preds = %bb.l, %.lr.ph165.preheader.1
  %indvars.iv201.1 = phi i64 [ %i.bh, %.lr.ph165.preheader.1 ], [ %indvars.iv.next202.1, %bb.l ] ; 3 uses
  %.idx296 = mul i64 %indvars.iv201.1, 12
  %i.bi = getelementptr i8, ptr %i.q, i64 %.idx296
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %.not141.1 = icmp eq i32 %i.bk, 0
  br i1 %.not141.1, label %bb.l, label %._crit_edge166.1.loopexit

bb.l:                                             ; preds = %.lr.ph165.1
  %indvars.iv.next202.1 = add nsw i64 %indvars.iv201.1, 1 ; 2 uses
  %lftr.wideiv204.1 = trunc i64 %indvars.iv.next202.1 to i32
  %exitcond205.1.not = icmp eq i32 %i.bf, %lftr.wideiv204.1
  br i1 %exitcond205.1.not, label %._crit_edge166.1.thread, label %.lr.ph165.1, !llvm.loop !62

._crit_edge166.1.loopexit:                        ; preds = %.lr.ph165.1
  %i.bl = trunc nsw i64 %indvars.iv201.1 to i32
  br label %._crit_edge166.1

._crit_edge166.1:                                 ; preds = %._crit_edge166.1.loopexit, %bb.k
  %.1134.lcssa.1 = phi i32 [ %i.bd, %bb.k ], [ %i.bl, %._crit_edge166.1.loopexit ]
  %i.bm = icmp eq i32 %.1134.lcssa.1, %i.bf
  br i1 %i.bm, label %._crit_edge166.1.thread, label %bb.m

._crit_edge166.1.thread:                          ; preds = %bb.l, %._crit_edge166.1
  store i32 0, ptr %gep.1, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge166.1.thread, %._crit_edge166.1, %bb.j
  %indvars.iv.next207.1 = add nsw i64 %indvars.iv206.1, 1 ; 2 uses
  %i.bn = and i64 %indvars.iv.next207.1, 4294967295
  %exitcond210.1.not = icmp eq i64 %i.bn, 12
  br i1 %exitcond210.1.not, label %._crit_edge173.1, label %bb.j, !llvm.loop !63

._crit_edge173.1:                                 ; preds = %bb.m
  %.pre241 = load i32, ptr %i.l, align 4, !tbaa !59 ; 2 uses
  %i.bo = icmp slt i32 %.pre241, 12
  br i1 %i.bo, label %.lr.ph172.2, label %.split.us

.lr.ph172.2:                                      ; preds = %._crit_edge173.1
  %invariant.gep.2 = getelementptr i8, ptr %i.n, i64 96
  %i.bp = sext i32 %.pre241 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph172.2
  %indvars.iv206.2 = phi i64 [ %i.bp, %.lr.ph172.2 ], [ %indvars.iv.next207.2, %bb.q ] ; 3 uses
  %gep.2 = getelementptr [12 x i8], ptr %invariant.gep.2, i64 %indvars.iv206.2 ; 2 uses
  %i.bq = load i32, ptr %gep.2, align 4, !tbaa !4
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv206.2 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4  ; 3 uses
  %i.bw = icmp slt i32 %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph165.preheader.2, label %._crit_edge166.2

.lr.ph165.preheader.2:                            ; preds = %bb.o
  %i.bx = sext i32 %i.bt to i64
  br label %.lr.ph165.2

.lr.ph165.2:                                      ; preds = %bb.p, %.lr.ph165.preheader.2
  %indvars.iv201.2 = phi i64 [ %i.bx, %.lr.ph165.preheader.2 ], [ %indvars.iv.next202.2, %bb.p ] ; 3 uses
  %.idx297 = mul i64 %indvars.iv201.2, 12
  %i.by = getelementptr i8, ptr %i.q, i64 %.idx297
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %.not141.2 = icmp eq i32 %i.ca, 0
  br i1 %.not141.2, label %bb.p, label %._crit_edge166.2.loopexit

bb.p:                                             ; preds = %.lr.ph165.2
  %indvars.iv.next202.2 = add nsw i64 %indvars.iv201.2, 1 ; 2 uses
  %lftr.wideiv204.2 = trunc i64 %indvars.iv.next202.2 to i32
  %exitcond205.2.not = icmp eq i32 %i.bv, %lftr.wideiv204.2
  br i1 %exitcond205.2.not, label %._crit_edge166.2.thread, label %.lr.ph165.2, !llvm.loop !62

._crit_edge166.2.loopexit:                        ; preds = %.lr.ph165.2
  %i.cb = trunc nsw i64 %indvars.iv201.2 to i32
  br label %._crit_edge166.2

._crit_edge166.2:                                 ; preds = %._crit_edge166.2.loopexit, %bb.o
  %.1134.lcssa.2 = phi i32 [ %i.bt, %bb.o ], [ %i.cb, %._crit_edge166.2.loopexit ]
  %i.cc = icmp eq i32 %.1134.lcssa.2, %i.bv
  br i1 %i.cc, label %._crit_edge166.2.thread, label %bb.q

._crit_edge166.2.thread:                          ; preds = %bb.p, %._crit_edge166.2
  store i32 0, ptr %gep.2, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge166.2.thread, %._crit_edge166.2, %bb.n
  %indvars.iv.next207.2 = add nsw i64 %indvars.iv206.2, 1 ; 2 uses
  %i.cd = and i64 %indvars.iv.next207.2, 4294967295
  %exitcond210.2.not = icmp eq i64 %i.cd, 12
  br i1 %exitcond210.2.not, label %.split.us, label %bb.n, !llvm.loop !63

.split.us:                                        ; preds = %bb.q, %._crit_edge173, %._crit_edge173.1, %.preheader156
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !64
  %i.cg = load i32, ptr %i.e, align 8, !tbaa !52
  %i.ch = sub i32 %i.cg, %i.cf
  store i32 %i.ch, ptr %i.e, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !65
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.split.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !66
  %.not138 = icmp eq i32 %i.cl, 0
  br i1 %.not138, label %.preheader155, label %bb.u

.preheader155:                                    ; preds = %bb.r
  %i.cm = load i32, ptr %i.f, align 8, !tbaa !58  ; 3 uses
  %.not193 = icmp eq i32 %i.cm, 0                 ; 2 uses
  br i1 %.not193, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %.preheader155
  %wide.trip.count = zext i32 %i.cm to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.cm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph177
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi316 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <4 x i32>, ptr %i.cn, align 4, !tbaa !4
  %wide.load317 = load <4 x i32>, ptr %i.co, align 4, !tbaa !4
  %i.cp = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.cq = or <4 x i32> %wide.load317, %vec.phi316 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge178, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph177, %middle.block
  %indvars.iv215.ph = phi i64 [ 0, %.lr.ph177 ], [ %n.vec, %middle.block ]
  %.0176.ph = phi i32 [ 0, %.lr.ph177 ], [ %i.cs, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %scalar.ph ], [ %indvars.iv215.ph, %scalar.ph.preheader ] ; 2 uses
  %.0176 = phi i32 [ %i.cv, %scalar.ph ], [ %.0176.ph, %scalar.ph.preheader ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv215
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = or i32 %i.cu, %.0176                    ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count
  br i1 %exitcond218.not, label %._crit_edge178, label %scalar.ph, !llvm.loop !68

._crit_edge178:                                   ; preds = %scalar.ph, %middle.block, %.preheader155
  %.0.lcssa = phi i32 [ 0, %.preheader155 ], [ %i.cs, %middle.block ], [ %i.cv, %scalar.ph ] ; 2 uses
  %i.cw = load i32, ptr %i.l, align 4, !tbaa !59  ; 3 uses
  %i.cx = icmp ult i32 %i.cw, 12
  br i1 %i.cx, label %.preheader154.lr.ph, label %._crit_edge184

.preheader154.lr.ph:                              ; preds = %._crit_edge178
  %i.cy = zext nneg i32 %i.cw to i64
  br label %.preheader154

.preheader154:                                    ; preds = %.preheader154.lr.ph, %.preheader154
  %indvars.iv223 = phi i64 [ %i.cy, %.preheader154.lr.ph ], [ %indvars.iv.next224, %.preheader154 ] ; 2 uses
  %.1183 = phi i32 [ %.0.lcssa, %.preheader154.lr.ph ], [ %i.dh, %.preheader154 ]
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %indvars.iv223 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = or i32 %i.da, %.1183
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = or i32 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = or i32 %i.dg, %i.de                     ; 2 uses
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.di = and i64 %indvars.iv.next224, 4294967295
  %exitcond227.not = icmp eq i64 %i.di, 12
  br i1 %exitcond227.not, label %._crit_edge184, label %.preheader154, !llvm.loop !69

._crit_edge184:                                   ; preds = %.preheader154, %._crit_edge178
  %.1.lcssa = phi i32 [ %.0.lcssa, %._crit_edge178 ], [ %i.dh, %.preheader154 ] ; 2 uses
  %i.dj = and i32 %.1.lcssa, 1
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = icmp ne i32 %.1.lcssa, 0
  %or.cond = and i1 %i.dl, %i.dk
  br i1 %or.cond, label %.preheader153, label %bb.u

.preheader153:                                    ; preds = %._crit_edge184
  br i1 %.not193, label %._crit_edge188, label %.lr.ph187

.lr.ph187:                                        ; preds = %.preheader153, %.lr.ph187
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %.lr.ph187 ], [ 0, %.preheader153 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv228 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = sdiv i32 %i.dn, 2
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !4
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.dp = load i32, ptr %i.f, align 8, !tbaa !58
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next229, %i.dq
  br i1 %i.dr, label %.lr.ph187, label %._crit_edge188.loopexit, !llvm.loop !70

._crit_edge188.loopexit:                          ; preds = %.lr.ph187
  %.pre242 = load i32, ptr %i.l, align 4, !tbaa !59
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %.preheader153
  %i.ds = phi i32 [ %.pre242, %._crit_edge188.loopexit ], [ %i.cw, %.preheader153 ] ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 12
  br i1 %i.dt, label %.preheader.lr.ph, label %._crit_edge191

.preheader.lr.ph:                                 ; preds = %._crit_edge188
  %i.du = zext nneg i32 %i.ds to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv235 = phi i64 [ %i.du, %.preheader.lr.ph ], [ %indvars.iv.next236, %.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %indvars.iv235 ; 3 uses
  %i.dw = load <2 x i32>, ptr %i.dv, align 4, !tbaa !4
  %i.dx = sdiv <2 x i32> %i.dw, splat (i32 2)
  store <2 x i32> %i.dx, ptr %i.dv, align 4, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = sdiv i32 %i.dz, 2
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !4
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.eb = and i64 %indvars.iv.next236, 4294967295
  %exitcond239.not = icmp eq i64 %i.eb, 12
  br i1 %exitcond239.not, label %._crit_edge191, label %.preheader, !llvm.loop !71

._crit_edge191:                                   ; preds = %.preheader, %._crit_edge188
  store i32 1, ptr %i.ci, align 4, !tbaa !65
  store i32 99999999, ptr %i.ce, align 4, !tbaa !64
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !72
  %i.ee = icmp eq i32 %i.ed, 2
  br i1 %i.ee, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge191
  %i.ef = tail call i32 @scale_bitcount(ptr noundef %i.n, ptr noundef nonnull %i.e) #6 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge191
  %i.eg = tail call i32 @scale_bitcount_lsf(ptr noundef %i.n, ptr noundef nonnull %i.e) #6 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge184, %bb.t, %bb.s, %bb.r, %.split.us
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !72
  %i.ej = icmp eq i32 %i.ei, 2
  %i.ek = icmp eq i32 %1, 1
  %or.cond3 = and i1 %i.ek, %i.ej
  br i1 %or.cond3, label %bb.v, label %scfsi_calc.exit

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds [120 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load i32, ptr %i.em, align 8, !tbaa !73
  %.not139 = icmp eq i32 %i.en, 2
  br i1 %.not139, label %scfsi_calc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.ep = getelementptr inbounds [120 x i8], ptr %i.eo, i64 %i.d ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !73
  %.not140 = icmp eq i32 %i.er, 2
  br i1 %.not140, label %scfsi_calc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 68
  %i.et = load i32, ptr %i.es, align 4, !tbaa !75
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 68
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !75
  %i.ew = icmp eq i32 %i.et, %i.ev
  br i1 %i.ew, label %bb.y, label %scfsi_calc.exit

bb.y:                                             ; preds = %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !76
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !76
  %i.fb = icmp eq i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.z, label %scfsi_calc.exit

bb.z:                                             ; preds = %bb.y
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.fc, i64 %i.d ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fd, i8 0, i64 16, i1 false), !tbaa !4
  %i.fe = getelementptr inbounds [244 x i8], ptr %5, i64 %i.d ; 21 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 488
  %i.fg = getelementptr inbounds [244 x i8], ptr %i.ff, i64 %i.d ; 39 uses
  %i.fh = mul nsw i64 %i.d, 244
  %i.fi = getelementptr i8, ptr %5, i64 %i.fh     ; 4 uses
  %scevgep.i = getelementptr i8, ptr %i.fi, i64 488
  %i.fj = load i32, ptr %i.fe, align 4, !tbaa !4
  %i.fk = load i32, ptr %i.fg, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.fj, %i.fk
  br i1 %.not.i, label %.lr.ph.1125.i, label %.lr.ph.preheader.1.i

.lr.ph.1125.i:                                    ; preds = %bb.z
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %.not.1124.i = icmp eq i32 %i.fm, %i.fo
  br i1 %.not.1124.i, label %.lr.ph.2127.i, label %.lr.ph.preheader.1.i

.lr.ph.2127.i:                                    ; preds = %.lr.ph.1125.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4
  %.not.2126.i = icmp eq i32 %i.fq, %i.fs
  br i1 %.not.2126.i, label %.lr.ph.3129.i, label %.lr.ph.preheader.1.i

.lr.ph.3129.i:                                    ; preds = %.lr.ph.2127.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !4
  %.not.3128.i = icmp eq i32 %i.fu, %i.fw
  br i1 %.not.3128.i, label %.lr.ph.4.i, label %.lr.ph.preheader.1.i

.lr.ph.4.i:                                       ; preds = %.lr.ph.3129.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %.not.4.i = icmp eq i32 %i.fy, %i.ga
  br i1 %.not.4.i, label %.lr.ph.5.i, label %.lr.ph.preheader.1.i

.lr.ph.5.i:                                       ; preds = %.lr.ph.4.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  %.not.5.i = icmp eq i32 %i.gc, %i.ge
  br i1 %.not.5.i, label %._crit_edge102.i, label %.lr.ph.preheader.1.i

._crit_edge102.i:                                 ; preds = %.lr.ph.5.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %scevgep.i, i8 -1, i64 24, i1 false), !tbaa !4
  store i32 1, ptr %i.fd, align 4, !tbaa !4
  br label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %._crit_edge102.i, %.lr.ph.5.i, %.lr.ph.4.i, %.lr.ph.3129.i, %.lr.ph.2127.i, %.lr.ph.1125.i, %bb.z
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4
  %.not.1.i = icmp eq i32 %i.gg, %i.gi
  br i1 %.not.1.i, label %.lr.ph.1.1.i, label %.lr.ph.preheader.2.i

.lr.ph.1.1.i:                                     ; preds = %.lr.ph.preheader.1.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fe, i64 28
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !4
  %.not.1.1.i = icmp eq i32 %i.gk, %i.gm
  br i1 %.not.1.1.i, label %.lr.ph.1.2.i, label %.lr.ph.preheader.2.i

.lr.ph.1.2.i:                                     ; preds = %.lr.ph.1.1.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4
  %.not.1.2.i = icmp eq i32 %i.go, %i.gq
  br i1 %.not.1.2.i, label %.lr.ph.1.3.i, label %.lr.ph.preheader.2.i

.lr.ph.1.3.i:                                     ; preds = %.lr.ph.1.2.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fe, i64 36
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4
  %.not.1.3.i = icmp eq i32 %i.gs, %i.gu
  br i1 %.not.1.3.i, label %.lr.ph.1.4.i, label %.lr.ph.preheader.2.i

.lr.ph.1.4.i:                                     ; preds = %.lr.ph.1.3.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %.not.1.4.i = icmp eq i32 %i.gw, %i.gy
  br i1 %.not.1.4.i, label %._crit_edge102.1.i, label %.lr.ph.preheader.2.i

._crit_edge102.1.i:                               ; preds = %.lr.ph.1.4.i
  %scevgep116.1.i = getelementptr i8, ptr %i.fi, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep116.1.i, i8 -1, i64 20, i1 false), !tbaa !4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 1, ptr %i.gz, align 4, !tbaa !4
  br label %.lr.ph.preheader.2.i

.lr.ph.preheader.2.i:                             ; preds = %._crit_edge102.1.i, %.lr.ph.1.4.i, %.lr.ph.1.3.i, %.lr.ph.1.2.i, %.lr.ph.1.1.i, %.lr.ph.preheader.1.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fe, i64 44
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fg, i64 44 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4
  %.not.2.i = icmp eq i32 %i.hb, %i.hd
  br i1 %.not.2.i, label %.lr.ph.2.1.i, label %.lr.ph.preheader.3.i

.lr.ph.2.1.i:                                     ; preds = %.lr.ph.preheader.2.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !4
  %.not.2.1.i = icmp eq i32 %i.hf, %i.hh
  br i1 %.not.2.1.i, label %.lr.ph.2.2.i, label %.lr.ph.preheader.3.i

.lr.ph.2.2.i:                                     ; preds = %.lr.ph.2.1.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fe, i64 52
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fg, i64 52
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %.not.2.2.i = icmp eq i32 %i.hj, %i.hl
  br i1 %.not.2.2.i, label %.lr.ph.2.3.i, label %.lr.ph.preheader.3.i

.lr.ph.2.3.i:                                     ; preds = %.lr.ph.2.2.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4
  %.not.2.3.i = icmp eq i32 %i.hn, %i.hp
  br i1 %.not.2.3.i, label %.lr.ph.2.4.i, label %.lr.ph.preheader.3.i

.lr.ph.2.4.i:                                     ; preds = %.lr.ph.2.3.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fe, i64 60
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fg, i64 60
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !4
  %.not.2.4.i = icmp eq i32 %i.hr, %i.ht
  br i1 %.not.2.4.i, label %._crit_edge102.2.i, label %.lr.ph.preheader.3.i

._crit_edge102.2.i:                               ; preds = %.lr.ph.2.4.i
  %scevgep116.2.i = getelementptr i8, ptr %i.fi, i64 532
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep116.2.i, i8 -1, i64 20, i1 false), !tbaa !4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 1, ptr %i.hu, align 4, !tbaa !4
  br label %.lr.ph.preheader.3.i

.lr.ph.preheader.3.i:                             ; preds = %._crit_edge102.2.i, %.lr.ph.2.4.i, %.lr.ph.2.3.i, %.lr.ph.2.2.i, %.lr.ph.2.1.i, %.lr.ph.preheader.2.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fg, i64 64 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !4
  %.not.3.i = icmp eq i32 %i.hw, %i.hy
  br i1 %.not.3.i, label %.lr.ph.3.1.i, label %._crit_edge.3.thread.i

.lr.ph.3.1.i:                                     ; preds = %.lr.ph.preheader.3.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fe, i64 68
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fg, i64 68
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4
  %.not.3.1.i = icmp eq i32 %i.ia, %i.ic
  br i1 %.not.3.1.i, label %.lr.ph.3.2.i, label %._crit_edge.3.thread.i

.lr.ph.3.2.i:                                     ; preds = %.lr.ph.3.1.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.fe, i64 72
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !4
  %.not.3.2.i = icmp eq i32 %i.ie, %i.ig
  br i1 %.not.3.2.i, label %.lr.ph.3.3.i, label %._crit_edge.3.thread.i

.lr.ph.3.3.i:                                     ; preds = %.lr.ph.3.2.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fe, i64 76
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fg, i64 76
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4
  %.not.3.3.i = icmp eq i32 %i.ii, %i.ik
  br i1 %.not.3.3.i, label %.lr.ph.3.4.i, label %._crit_edge.3.thread.i

.lr.ph.3.4.i:                                     ; preds = %.lr.ph.3.3.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  %i.im = load i32, ptr %i.il, align 4, !tbaa !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4
  %.not.3.4.i = icmp eq i32 %i.im, %i.io
  br i1 %.not.3.4.i, label %._crit_edge102.3.i, label %._crit_edge.3.thread.i

._crit_edge102.3.i:                               ; preds = %.lr.ph.3.4.i
  %scevgep116.3.i = getelementptr i8, ptr %i.fi, i64 552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep116.3.i, i8 -1, i64 20, i1 false), !tbaa !4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 1, ptr %i.ip, align 4, !tbaa !4
  br label %._crit_edge.3.thread.i

._crit_edge.3.thread.i:                           ; preds = %._crit_edge102.3.i, %.lr.ph.3.4.i, %.lr.ph.3.3.i, %.lr.ph.3.2.i, %.lr.ph.3.1.i, %.lr.ph.preheader.3.i
  %i.iq = load i32, ptr %i.fg, align 4, !tbaa !4  ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, -1
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.iq, i32 0) ; 2 uses
  %i.is = zext i1 %i.ir to i32
  %i.it = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4  ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, -1                  ; 2 uses
  %spec.select.1.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.iu)
  %i.iw = zext i1 %i.iv to i32
  %.180.1.i = add nuw nsw i32 %i.iw, %i.is
  %.173.1.i = select i1 %i.iv, i32 %spec.select.1.i, i32 %spec.select.i ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4  ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, -1                  ; 2 uses
  %spec.select.2.i = tail call i32 @llvm.smax.i32(i32 %.173.1.i, i32 %i.iy)
  %i.ja = zext i1 %i.iz to i32
  %.180.2.i = add nuw nsw i32 %.180.1.i, %i.ja
  %.173.2.i = select i1 %i.iz, i32 %spec.select.2.i, i32 %.173.1.i ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4  ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, -1                  ; 2 uses
  %spec.select.3.i = tail call i32 @llvm.smax.i32(i32 %.173.2.i, i32 %i.jc)
  %i.je = zext i1 %i.jd to i32
  %.180.3.i = add nuw nsw i32 %.180.2.i, %i.je
  %.173.3.i = select i1 %i.jd, i32 %spec.select.3.i, i32 %.173.2.i ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !4  ; 2 uses
  %i.jh = icmp sgt i32 %i.jg, -1                  ; 2 uses
  %spec.select.4.i = tail call i32 @llvm.smax.i32(i32 %.173.3.i, i32 %i.jg)
  %i.ji = zext i1 %i.jh to i32
  %.180.4.i = add nuw nsw i32 %.180.3.i, %i.ji
  %.173.4.i = select i1 %i.jh, i32 %spec.select.4.i, i32 %.173.3.i ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !4  ; 2 uses
  %i.jl = icmp sgt i32 %i.jk, -1                  ; 2 uses
  %spec.select.5.i = tail call i32 @llvm.smax.i32(i32 %.173.4.i, i32 %i.jk)
  %i.jm = zext i1 %i.jl to i32
  %.180.5.i = add nuw nsw i32 %.180.4.i, %i.jm
  %.173.5.i = select i1 %i.jl, i32 %spec.select.5.i, i32 %.173.4.i ; 2 uses
  %i.jn = load i32, ptr %i.gh, align 4, !tbaa !4  ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, -1                  ; 2 uses
  %spec.select.6.i = tail call i32 @llvm.smax.i32(i32 %.173.5.i, i32 %i.jn)
  %i.jp = zext i1 %i.jo to i32
  %.180.6.i = add nuw nsw i32 %.180.5.i, %i.jp
  %.173.6.i = select i1 %i.jo, i32 %spec.select.6.i, i32 %.173.5.i ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !4  ; 2 uses
  %i.js = icmp sgt i32 %i.jr, -1                  ; 2 uses
  %spec.select.7.i = tail call i32 @llvm.smax.i32(i32 %.173.6.i, i32 %i.jr)
  %i.jt = zext i1 %i.js to i32
  %.180.7.i = add nuw nsw i32 %.180.6.i, %i.jt
  %.173.7.i = select i1 %i.js, i32 %spec.select.7.i, i32 %.173.6.i ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !4  ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, -1                  ; 2 uses
  %spec.select.8.i = tail call i32 @llvm.smax.i32(i32 %.173.7.i, i32 %i.jv)
  %i.jx = zext i1 %i.jw to i32
  %.180.8.i = add nuw nsw i32 %.180.7.i, %i.jx
  %.173.8.i = select i1 %i.jw, i32 %spec.select.8.i, i32 %.173.7.i ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !4  ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, -1                  ; 2 uses
  %spec.select.9.i = tail call i32 @llvm.smax.i32(i32 %.173.8.i, i32 %i.jz)
  %i.kb = zext i1 %i.ka to i32
  %.180.9.i = add nuw nsw i32 %.180.8.i, %i.kb
  %.173.9.i = select i1 %i.ka, i32 %spec.select.9.i, i32 %.173.8.i ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4  ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, -1                  ; 2 uses
  %spec.select.10.i = tail call i32 @llvm.smax.i32(i32 %.173.9.i, i32 %i.kd)
  %i.kf = zext i1 %i.ke to i32
  %.180.10.i = add nuw nsw i32 %.180.9.i, %i.kf   ; 12 uses
  %.173.10.i = select i1 %i.ke, i32 %spec.select.10.i, i32 %.173.9.i ; 5 uses
  %i.kg = load i32, ptr %i.hc, align 4, !tbaa !4  ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, -1
  %spec.select86.i = tail call i32 @llvm.smax.i32(i32 %i.kg, i32 0) ; 2 uses
  %i.ki = zext i1 %i.kh to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !4  ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, -1                  ; 2 uses
  %spec.select86.1.i = tail call i32 @llvm.smax.i32(i32 %spec.select86.i, i32 %i.kk)
  %.182.1.i = select i1 %i.kl, i32 %spec.select86.1.i, i32 %spec.select86.i ; 2 uses
  %i.km = zext i1 %i.kl to i32
  %.178.1.i = add nuw nsw i32 %i.km, %i.ki
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fg, i64 52
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !4  ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, -1                  ; 2 uses
  %spec.select86.2.i = tail call i32 @llvm.smax.i32(i32 %.182.1.i, i32 %i.ko)
  %.182.2.i = select i1 %i.kp, i32 %spec.select86.2.i, i32 %.182.1.i ; 2 uses
  %i.kq = zext i1 %i.kp to i32
  %.178.2.i = add nuw nsw i32 %.178.1.i, %i.kq
  %i.kr = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !4  ; 2 uses
  %i.kt = icmp sgt i32 %i.ks, -1                  ; 2 uses
  %spec.select86.3.i = tail call i32 @llvm.smax.i32(i32 %.182.2.i, i32 %i.ks)
  %.182.3.i = select i1 %i.kt, i32 %spec.select86.3.i, i32 %.182.2.i ; 2 uses
  %i.ku = zext i1 %i.kt to i32
  %.178.3.i = add nuw nsw i32 %.178.2.i, %i.ku
  %i.kv = getelementptr inbounds nuw i8, ptr %i.fg, i64 60
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !4  ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, -1                  ; 2 uses
  %spec.select86.4.i = tail call i32 @llvm.smax.i32(i32 %.182.3.i, i32 %i.kw)
  %.182.4.i = select i1 %i.kx, i32 %spec.select86.4.i, i32 %.182.3.i ; 2 uses
  %i.ky = zext i1 %i.kx to i32
  %.178.4.i = add nuw nsw i32 %.178.3.i, %i.ky
  %i.kz = load i32, ptr %i.hx, align 4, !tbaa !4  ; 2 uses
  %i.la = icmp sgt i32 %i.kz, -1                  ; 2 uses
  %spec.select86.5.i = tail call i32 @llvm.smax.i32(i32 %.182.4.i, i32 %i.kz)
  %.182.5.i = select i1 %i.la, i32 %spec.select86.5.i, i32 %.182.4.i ; 2 uses
  %i.lb = zext i1 %i.la to i32
  %.178.5.i = add nuw nsw i32 %.178.4.i, %i.lb
  %i.lc = getelementptr inbounds nuw i8, ptr %i.fg, i64 68
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !4  ; 2 uses
  %i.le = icmp sgt i32 %i.ld, -1                  ; 2 uses
  %spec.select86.6.i = tail call i32 @llvm.smax.i32(i32 %.182.5.i, i32 %i.ld)
  %.182.6.i = select i1 %i.le, i32 %spec.select86.6.i, i32 %.182.5.i ; 2 uses
  %i.lf = zext i1 %i.le to i32
  %.178.6.i = add nuw nsw i32 %.178.5.i, %i.lf
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !4  ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1                  ; 2 uses
  %spec.select86.7.i = tail call i32 @llvm.smax.i32(i32 %.182.6.i, i32 %i.lh)
  %.182.7.i = select i1 %i.li, i32 %spec.select86.7.i, i32 %.182.6.i ; 2 uses
  %i.lj = zext i1 %i.li to i32
  %.178.7.i = add nuw nsw i32 %.178.6.i, %i.lj
  %i.lk = getelementptr inbounds nuw i8, ptr %i.fg, i64 76
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !4  ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, -1                  ; 2 uses
  %spec.select86.8.i = tail call i32 @llvm.smax.i32(i32 %.182.7.i, i32 %i.ll)
  %.182.8.i = select i1 %i.lm, i32 %spec.select86.8.i, i32 %.182.7.i ; 2 uses
  %i.ln = zext i1 %i.lm to i32
  %.178.8.i = add nuw nsw i32 %.178.7.i, %i.ln
  %i.lo = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !4  ; 2 uses
  %i.lq = icmp sgt i32 %i.lp, -1                  ; 2 uses
  %spec.select86.9.i = tail call i32 @llvm.smax.i32(i32 %.182.8.i, i32 %i.lp)
  %.182.9.i = select i1 %i.lq, i32 %spec.select86.9.i, i32 %.182.8.i ; 15 uses
  %i.lr = zext i1 %i.lq to i32
  %.178.9.i = add nuw nsw i32 %.178.8.i, %i.lr    ; 16 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ep, i64 76 ; 30 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 15 uses
  %i.lu = icmp eq i32 %.173.10.i, 0
  br i1 %i.lu, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %._crit_edge.3.thread.i
  %i.lv = icmp samesign ult i32 %.182.9.i, 2
  br i1 %i.lv, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.lw = load i32, ptr %i.ls, align 4, !tbaa !64 ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, %.178.9.i
  br i1 %i.lx, label %bb.ac, label %.thread147.i

bb.ac:                                            ; preds = %bb.ab
  store i32 %.178.9.i, ptr %i.ls, align 4, !tbaa !64
  store i32 1, ptr %i.lt, align 8, !tbaa !77
  br label %.thread147.i

bb.ad:                                            ; preds = %bb.aa
  %i.ly = icmp samesign ult i32 %.182.9.i, 4
  br i1 %i.ly, label %..thread147.i_crit_edge, label %bb.af

..thread147.i_crit_edge:                          ; preds = %bb.ad
  %.pre243 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread147.i

.thread147.i:                                     ; preds = %..thread147.i_crit_edge, %bb.ac, %bb.ab
  %i.lz = phi i32 [ %.pre243, %..thread147.i_crit_edge ], [ %.178.9.i, %bb.ac ], [ %i.lw, %bb.ab ] ; 2 uses
  %i.ma = shl nuw nsw i32 %.178.9.i, 1            ; 3 uses
  %i.mb = icmp sgt i32 %i.lz, %i.ma
  br i1 %i.mb, label %bb.ae, label %.thread151.i

bb.ae:                                            ; preds = %.thread147.i
  store i32 %i.ma, ptr %i.ls, align 4, !tbaa !64
  store i32 2, ptr %i.lt, align 8, !tbaa !77
  br label %.thread151.i

bb.af:                                            ; preds = %bb.ad
  %i.mc = icmp samesign ult i32 %.182.9.i, 8
  br i1 %i.mc, label %..thread151.i_crit_edge, label %scfsi_calc.exit

..thread151.i_crit_edge:                          ; preds = %bb.af
  %.pre244 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread151.i

.thread151.i:                                     ; preds = %..thread151.i_crit_edge, %bb.ae, %.thread147.i
  %i.md = phi i32 [ %.pre244, %..thread151.i_crit_edge ], [ %i.ma, %bb.ae ], [ %i.lz, %.thread147.i ]
  %i.me = mul nuw nsw i32 %.178.9.i, 3            ; 2 uses
  %i.mf = icmp sgt i32 %i.md, %i.me
  br i1 %i.mf, label %bb.ag, label %.thread153.i

bb.ag:                                            ; preds = %.thread151.i
  store i32 %i.me, ptr %i.ls, align 4, !tbaa !64
  store i32 3, ptr %i.lt, align 8, !tbaa !77
  br label %.thread153.i

bb.ah:                                            ; preds = %._crit_edge.3.thread.i
  %i.mg = icmp samesign ult i32 %.173.10.i, 8
  br i1 %i.mg, label %.thread153.i, label %.thread170.thread.i

.thread153.i:                                     ; preds = %bb.ah, %bb.ag, %.thread151.i
  %i.mh = icmp eq i32 %.182.9.i, 0
  br i1 %i.mh, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.thread153.i
  %i.mi = mul nuw nsw i32 %.180.10.i, 3           ; 2 uses
  %i.mj = load i32, ptr %i.ls, align 4, !tbaa !64
  %i.mk = icmp sgt i32 %i.mj, %i.mi
  br i1 %i.mk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.mi, ptr %i.ls, align 4, !tbaa !64
  store i32 4, ptr %i.lt, align 8, !tbaa !77
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.thread153.i
  %i.ml = icmp samesign ult i32 %.173.10.i, 2
  br i1 %i.ml, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.mm = icmp samesign ult i32 %.182.9.i, 2
  br i1 %i.mm, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.mn = add nuw nsw i32 %.178.9.i, %.180.10.i   ; 3 uses
  %i.mo = load i32, ptr %i.ls, align 4, !tbaa !64 ; 2 uses
  %i.mp = icmp sgt i32 %i.mo, %i.mn
  br i1 %i.mp, label %bb.an, label %.thread158.i

bb.an:                                            ; preds = %bb.am
  store i32 %i.mn, ptr %i.ls, align 4, !tbaa !64
  store i32 5, ptr %i.lt, align 8, !tbaa !77
  br label %.thread158.i

bb.ao:                                            ; preds = %bb.al
  %i.mq = icmp samesign ult i32 %.182.9.i, 4
  br i1 %i.mq, label %..thread158.i_crit_edge, label %bb.aq

..thread158.i_crit_edge:                          ; preds = %bb.ao
  %.pre245 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread158.i

.thread158.i:                                     ; preds = %..thread158.i_crit_edge, %bb.an, %bb.am
  %i.mr = phi i32 [ %.pre245, %..thread158.i_crit_edge ], [ %i.mn, %bb.an ], [ %i.mo, %bb.am ] ; 2 uses
  %i.ms = shl nuw nsw i32 %.178.9.i, 1
  %i.mt = add nuw nsw i32 %i.ms, %.180.10.i       ; 3 uses
  %i.mu = icmp sgt i32 %i.mr, %i.mt
  br i1 %i.mu, label %bb.ap, label %.thread162.i

bb.ap:                                            ; preds = %.thread158.i
  store i32 %i.mt, ptr %i.ls, align 4, !tbaa !64
  store i32 6, ptr %i.lt, align 8, !tbaa !77
  br label %.thread162.i

bb.aq:                                            ; preds = %bb.ao
  %i.mv = icmp samesign ult i32 %.182.9.i, 8
  br i1 %i.mv, label %..thread162.i_crit_edge, label %scfsi_calc.exit

..thread162.i_crit_edge:                          ; preds = %bb.aq
  %.pre246 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread162.i

.thread162.i:                                     ; preds = %..thread162.i_crit_edge, %bb.ap, %.thread158.i
  %i.mw = phi i32 [ %.pre246, %..thread162.i_crit_edge ], [ %i.mt, %bb.ap ], [ %i.mr, %.thread158.i ]
  %i.mx = mul nuw nsw i32 %.178.9.i, 3
  %i.my = add nuw nsw i32 %i.mx, %.180.10.i       ; 2 uses
  %i.mz = icmp sgt i32 %i.mw, %i.my
  br i1 %i.mz, label %bb.ar, label %.thread164.i

bb.ar:                                            ; preds = %.thread162.i
  store i32 %i.my, ptr %i.ls, align 4, !tbaa !64
  store i32 7, ptr %i.lt, align 8, !tbaa !77
  br label %.thread164.i

bb.as:                                            ; preds = %bb.ak
  %i.na = icmp samesign ult i32 %.173.10.i, 4
  br i1 %i.na, label %.thread164.i, label %.thread170.i

.thread164.i:                                     ; preds = %bb.as, %bb.ar, %.thread162.i
  %i.nb = icmp samesign ult i32 %.182.9.i, 2
  br i1 %i.nb, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.thread164.i
  %i.nc = shl nuw nsw i32 %.180.10.i, 1
  %i.nd = add nuw nsw i32 %.178.9.i, %i.nc        ; 3 uses
  %i.ne = load i32, ptr %i.ls, align 4, !tbaa !64 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, %i.nd
  br i1 %i.nf, label %bb.au, label %.thread167.i

bb.au:                                            ; preds = %bb.at
  store i32 %i.nd, ptr %i.ls, align 4, !tbaa !64
  store i32 8, ptr %i.lt, align 8, !tbaa !77
  br label %.thread167.i

bb.av:                                            ; preds = %.thread164.i
  %i.ng = icmp samesign ult i32 %.182.9.i, 4
  br i1 %i.ng, label %..thread167.i_crit_edge, label %bb.ax

..thread167.i_crit_edge:                          ; preds = %bb.av
  %.pre247 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread167.i

.thread167.i:                                     ; preds = %..thread167.i_crit_edge, %bb.at, %bb.au
  %i.nh = phi i32 [ %.pre247, %..thread167.i_crit_edge ], [ %i.ne, %bb.at ], [ %i.nd, %bb.au ] ; 2 uses
  %i.ni = add nuw nsw i32 %.178.9.i, %.180.10.i
  %i.nj = shl nuw nsw i32 %i.ni, 1                ; 3 uses
  %i.nk = icmp sgt i32 %i.nh, %i.nj
  br i1 %i.nk, label %bb.aw, label %.thread172.i

bb.aw:                                            ; preds = %.thread167.i
  store i32 %i.nj, ptr %i.ls, align 4, !tbaa !64
  store i32 9, ptr %i.lt, align 8, !tbaa !77
  br label %.thread172.i

bb.ax:                                            ; preds = %bb.av
  %i.nl = icmp samesign ult i32 %.182.9.i, 8
  br i1 %i.nl, label %..thread172.i_crit_edge, label %scfsi_calc.exit

..thread172.i_crit_edge:                          ; preds = %bb.ax
  %.pre248 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread172.i

.thread172.i:                                     ; preds = %..thread172.i_crit_edge, %bb.aw, %.thread167.i
  %i.nm = phi i32 [ %.pre248, %..thread172.i_crit_edge ], [ %i.nj, %bb.aw ], [ %i.nh, %.thread167.i ]
  %i.nn = shl nuw nsw i32 %.180.10.i, 1
  %i.no = mul nuw nsw i32 %.178.9.i, 3
  %i.np = add nuw nsw i32 %i.no, %i.nn            ; 2 uses
  %i.nq = icmp sgt i32 %i.nm, %i.np
  br i1 %i.nq, label %bb.ay, label %.thread170.i

bb.ay:                                            ; preds = %.thread172.i
  store i32 %i.np, ptr %i.ls, align 4, !tbaa !64
  store i32 10, ptr %i.lt, align 8, !tbaa !77
  br label %.thread170.i

.thread170.i:                                     ; preds = %.thread172.i, %bb.ay, %bb.as
  %i.nr = icmp samesign ult i32 %.182.9.i, 2
  br i1 %i.nr, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %.thread170.i
  %i.ns = mul nuw nsw i32 %.180.10.i, 3           ; 3 uses
  %i.nt = add nuw nsw i32 %.178.9.i, %i.ns        ; 3 uses
  %i.nu = load i32, ptr %i.ls, align 4, !tbaa !64 ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, %i.nt
  br i1 %i.nv, label %bb.ba, label %.thread176.i

bb.ba:                                            ; preds = %bb.az
  store i32 %i.nt, ptr %i.ls, align 4, !tbaa !64
  store i32 11, ptr %i.lt, align 8, !tbaa !77
  br label %.thread176.i

bb.bb:                                            ; preds = %.thread170.i
  %i.nw = icmp samesign ult i32 %.182.9.i, 4
  br i1 %i.nw, label %..thread176.i_crit_edge, label %bb.bd

..thread176.i_crit_edge:                          ; preds = %bb.bb
  %.pre249 = load i32, ptr %i.ls, align 4, !tbaa !64
  %.pre252 = mul nuw nsw i32 %.180.10.i, 3
  br label %.thread176.i

.thread176.i:                                     ; preds = %..thread176.i_crit_edge, %bb.ba, %bb.az
  %.pre-phi = phi i32 [ %.pre252, %..thread176.i_crit_edge ], [ %i.ns, %bb.ba ], [ %i.ns, %bb.az ]
  %i.nx = phi i32 [ %.pre249, %..thread176.i_crit_edge ], [ %i.nt, %bb.ba ], [ %i.nu, %bb.az ] ; 2 uses
  %i.ny = shl nuw nsw i32 %.178.9.i, 1
  %i.nz = add nuw nsw i32 %i.ny, %.pre-phi        ; 3 uses
  %i.oa = icmp sgt i32 %i.nx, %i.nz
  br i1 %i.oa, label %bb.bc, label %.thread180.i

bb.bc:                                            ; preds = %.thread176.i
  store i32 %i.nz, ptr %i.ls, align 4, !tbaa !64
  store i32 12, ptr %i.lt, align 8, !tbaa !77
  br label %.thread180.i

bb.bd:                                            ; preds = %bb.bb
  %i.ob = icmp samesign ult i32 %.182.9.i, 8
  br i1 %i.ob, label %..thread180.i_crit_edge, label %scfsi_calc.exit

..thread180.i_crit_edge:                          ; preds = %bb.bd
  %.pre250 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread180.i

.thread180.i:                                     ; preds = %..thread180.i_crit_edge, %bb.bc, %.thread176.i
  %i.oc = phi i32 [ %.pre250, %..thread180.i_crit_edge ], [ %i.nz, %bb.bc ], [ %i.nx, %.thread176.i ]
  %i.od = add nuw nsw i32 %.178.9.i, %.180.10.i
  %i.oe = mul nuw nsw i32 %i.od, 3                ; 2 uses
  %i.of = icmp sgt i32 %i.oc, %i.oe
  br i1 %i.of, label %bb.be, label %.thread182.i

bb.be:                                            ; preds = %.thread180.i
  store i32 %i.oe, ptr %i.ls, align 4, !tbaa !64
  store i32 13, ptr %i.lt, align 8, !tbaa !77
  br label %.thread182.i

.thread170.thread.i:                              ; preds = %bb.ah
  %i.og = icmp samesign ult i32 %.173.10.i, 16
  br i1 %i.og, label %.thread182.i, label %scfsi_calc.exit

.thread182.i:                                     ; preds = %.thread180.i, %bb.be, %.thread170.thread.i
  %i.oh = icmp samesign ult i32 %.182.9.i, 4
  br i1 %i.oh, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.thread182.i
  %i.oi = shl nuw nsw i32 %.180.10.i, 2           ; 3 uses
  %i.oj = shl nuw nsw i32 %.178.9.i, 1
  %i.ok = add nuw nsw i32 %i.oj, %i.oi            ; 3 uses
  %i.ol = load i32, ptr %i.ls, align 4, !tbaa !64 ; 2 uses
  %i.om = icmp sgt i32 %i.ol, %i.ok
  br i1 %i.om, label %bb.bg, label %.thread184.i

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.ok, ptr %i.ls, align 4, !tbaa !64
  store i32 14, ptr %i.lt, align 8, !tbaa !77
  br label %.thread184.i

bb.bh:                                            ; preds = %.thread182.i
  %i.on = icmp samesign ult i32 %.182.9.i, 8
  br i1 %i.on, label %..thread184.i_crit_edge, label %scfsi_calc.exit

..thread184.i_crit_edge:                          ; preds = %bb.bh
  %.pre251 = load i32, ptr %i.ls, align 4, !tbaa !64
  %.pre253 = shl nuw nsw i32 %.180.10.i, 2
  br label %.thread184.i

.thread184.i:                                     ; preds = %..thread184.i_crit_edge, %bb.bf, %bb.bg
  %.pre-phi254 = phi i32 [ %.pre253, %..thread184.i_crit_edge ], [ %i.oi, %bb.bf ], [ %i.oi, %bb.bg ]
  %i.oo = phi i32 [ %.pre251, %..thread184.i_crit_edge ], [ %i.ol, %bb.bf ], [ %i.ok, %bb.bg ]
  %i.op = mul nuw nsw i32 %.178.9.i, 3
  %i.oq = add nuw nsw i32 %i.op, %.pre-phi254     ; 2 uses
  %i.or = icmp sgt i32 %i.oo, %i.oq
  br i1 %i.or, label %bb.bi, label %scfsi_calc.exit

bb.bi:                                            ; preds = %.thread184.i
  store i32 %i.oq, ptr %i.ls, align 4, !tbaa !64
  store i32 15, ptr %i.lt, align 8, !tbaa !77
  br label %scfsi_calc.exit

scfsi_calc.exit:                                  ; preds = %bb.af, %bb.aq, %bb.ax, %bb.bd, %bb.bi, %.thread184.i, %bb.bh, %.thread170.thread.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.os = load i32, ptr %i.ce, align 4, !tbaa !64
  %i.ot = load i32, ptr %i.e, align 8, !tbaa !52
  %i.ou = add i32 %i.ot, %i.os
  store i32 %i.ou, ptr %i.e, align 8, !tbaa !52
  ret void
}

declare i32 @scale_bitcount(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32, !6, i64 44, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !10, i64 96, !6, i64 104}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !5, i64 260}
!17 = !{!"", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !19, i64 128, !19, i64 136, !5, i64 144, !5, i64 148, !20, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !18, i64 168, !18, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !20, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !20, i64 232, !20, i64 236, !20, i64 240, !20, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"float", !6, i64 0}
!21 = !{!9, !5, i64 24}
!22 = !{!9, !5, i64 4}
!23 = distinct !{!23, !15}
!24 = !{!9, !5, i64 8}
!25 = !{!6, !6, i64 0}
!26 = distinct !{!26, !15}
!27 = !{!9, !5, i64 72}
!28 = !{!9, !5, i64 88}
!29 = distinct !{!29, !15}
!30 = !{!31, !5, i64 0}
!31 = !{!"", !5, i64 0, !5, i64 4}
!32 = distinct !{!32, !15}
!33 = !{!9, !5, i64 56}
!34 = !{!31, !5, i64 4}
!35 = distinct !{!35, !15}
!36 = !{!9, !5, i64 60}
!37 = distinct !{!37, !15, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !15, !39, !38}
!41 = !{!42, !19, i64 16}
!42 = !{!"huffcodetab", !5, i64 0, !5, i64 4, !43, i64 8, !19, i64 16}
!43 = !{!"p1 long", !11, i64 0}
!44 = distinct !{!44, !15}
!45 = !{!10, !10, i64 0}
!46 = distinct !{!46, !15}
!47 = !{!42, !5, i64 4}
!48 = !{!42, !5, i64 0}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15, !38, !39}
!51 = distinct !{!51, !15, !39, !38}
!52 = !{!9, !5, i64 0}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15, !38, !39}
!55 = distinct !{!55, !15, !39, !38}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = !{!9, !5, i64 80}
!59 = !{!9, !5, i64 84}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = !{!9, !5, i64 76}
!65 = !{!9, !5, i64 68}
!66 = !{!9, !5, i64 64}
!67 = distinct !{!67, !15, !38, !39}
!68 = distinct !{!68, !15, !39, !38}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = !{!17, !5, i64 200}
!73 = !{!74, !5, i64 24}
!74 = !{!"gr_info_ss", !9, i64 0}
!75 = !{!74, !5, i64 68}
!76 = !{!74, !5, i64 64}
!77 = !{!9, !5, i64 16}
end_hunk_0
