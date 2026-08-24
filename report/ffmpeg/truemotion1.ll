Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/truemotion1?download=true
inline.NumInlined: 12
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@truemotion1_decode_frame:bb.a
  %i.blb = add i32 %i.bla, %i.bkh                 ; 2 uses
  %i.blc = and i32 %i.bky, 1
  %.not840.i98 = icmp eq i32 %i.blc, 0
  br i1 %.not840.i98, label %bb.vg, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  %.not841.i99 = icmp slt i32 %i.bkq, %i.bkj
  br i1 %.not841.i99, label %bb.vf, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alm, i32 noundef 32, ptr noundef nonnull @.str.17) #6
  br label %truemotion1_decode_24bit.exit

bb.vf:                                            ; preds = %bb.vd
  %i.bld = add nsw i32 %.18697.i, 3
  %i.ble = sext i32 %i.bkq to i64
  %i.blf = getelementptr inbounds i8, ptr %i.all, i64 %i.ble
  %i.blg = load i8, ptr %i.blf, align 1, !tbaa !41
  %i.blh = zext i8 %i.blg to i32
  %i.bli = shl nuw nsw i32 %i.blh, 2
  br label %bb.vk

bb.vg:                                            ; preds = %bb.vc
  %i.blj = or disjoint i32 %i.bkv, 1
  br label %bb.vk

bb.vh:                                            ; preds = %bb.uw
  %i.blk = icmp sgt i32 %.18.i92, 1022
  br i1 %i.blk, label %bb.vi, label %bb.vj

bb.vi:                                            ; preds = %bb.vh
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.alm, i32 noundef 16, ptr noundef nonnull @.str.18) #6
  br label %truemotion1_decode_24bit.exit

bb.vj:                                            ; preds = %bb.vh
  %i.bll = add nuw nsw i32 %.18.i92, 1
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %bb.vg, %bb.vf, %bb.uz
  %.18734.i = phi i32 [ %i.bkh, %bb.uz ], [ %i.blb, %bb.vf ], [ %i.blb, %bb.vg ], [ %i.bkh, %bb.vj ] ; 2 uses
  %.19698.i = phi i32 [ %i.bkk, %bb.uz ], [ %i.bld, %bb.vf ], [ %i.bkq, %bb.vg ], [ %.18697.i, %bb.vj ]
  %.19.i96 = phi i32 [ %i.bkp, %bb.uz ], [ %i.bli, %bb.vf ], [ %i.blj, %bb.vg ], [ %i.bll, %bb.vj ]
  %i.blm = load i32, ptr %i.bkc, align 4, !tbaa !57
  %i.bln = add i32 %i.blm, %.18734.i              ; 2 uses
  store i32 %i.bln, ptr %i.bkb, align 4, !tbaa !57
  store i32 %i.bln, ptr %i.bkc, align 4, !tbaa !57
  br label %bb.vl

.thread.i36:                                      ; preds = %bb.lj
  %i.blo = getelementptr inbounds nuw i8, ptr %.07121250.i, i64 4
  %i.blp = load i32, ptr %.07121250.i, align 4, !tbaa !57
  %i.blq = getelementptr inbounds nuw i8, ptr %.07141249.i, i64 4 ; 2 uses
  store i32 %i.blp, ptr %.07141249.i, align 4, !tbaa !57
  %i.blr = load i32, ptr %i.blo, align 4, !tbaa !57 ; 2 uses
  %i.bls = load i32, ptr %i.blq, align 4, !tbaa !57
  %i.blt = sub i32 %i.blr, %i.bls
  store i32 %i.blr, ptr %i.blq, align 4, !tbaa !57
  %.1713943.i = getelementptr inbounds nuw i8, ptr %.07121250.i, i64 8
  %.1715944.i = getelementptr inbounds nuw i8, ptr %.07141249.i, i64 8
  br label %bb.vm

bb.vl:                                            ; preds = %bb.vk, %bb.uh, %bb.sq, %bb.qk, %bb.ph, %bb.nq
  %.19735.i = phi i32 [ %.4720.i, %bb.nq ], [ %.7723.i, %bb.ph ], [ %.9725.i, %bb.qk ], [ %.13729.i, %bb.sq ], [ %.16732.i, %bb.uh ], [ %.18734.i, %bb.vk ] ; 2 uses
  %.20699.i = phi i32 [ %.5684.i, %bb.nq ], [ %.8687.i, %bb.ph ], [ %.10689.i, %bb.qk ], [ %.14693.i, %bb.sq ], [ %.17696.i, %bb.uh ], [ %.19698.i, %bb.vk ] ; 2 uses
  %.20.i50 = phi i32 [ %.5.i151, %bb.nq ], [ %.8.i127, %bb.ph ], [ %.10.i109, %bb.qk ], [ %.14.i76, %bb.sq ], [ %.17.i49, %bb.uh ], [ %.19.i96, %bb.vk ] ; 2 uses
  %.1713.i51 = getelementptr inbounds nuw i8, ptr %.07121250.i, i64 8 ; 2 uses
  %.1715.i = getelementptr inbounds nuw i8, ptr %.07141249.i, i64 8 ; 2 uses
  br i1 %.not.i30, label %bb.vo, label %bb.vm

bb.vm:                                            ; preds = %bb.vl, %.thread.i36
  %.1715954.i = phi ptr [ %.1715944.i, %.thread.i36 ], [ %.1715.i, %bb.vl ] ; 2 uses
  %.1713952.i = phi ptr [ %.1713943.i, %.thread.i36 ], [ %.1713.i51, %bb.vl ] ; 2 uses
  %.20950.i = phi i32 [ %.11255.i, %.thread.i36 ], [ %.20.i50, %bb.vl ] ; 2 uses
  %.20699948.i = phi i32 [ %.16801254.i, %.thread.i36 ], [ %.20699.i, %bb.vl ] ; 2 uses
  %.19735946.i = phi i32 [ %i.blt, %.thread.i36 ], [ %.19735.i, %bb.vl ] ; 2 uses
  %i.blu = shl i8 %.07031252.i, 1                 ; 2 uses
  %.not938.i = icmp eq i8 %i.blu, 0
  br i1 %.not938.i, label %bb.vn, label %bb.vo

bb.vn:                                            ; preds = %bb.vm
  %i.blv = add nsw i32 %.17011253.i, 1
  %i.blw = sext i32 %.17011253.i to i64
  %i.blx = getelementptr inbounds i8, ptr %.07091260.i, i64 %i.blw
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !41
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vn, %bb.vm, %bb.vl
  %.1715953.i = phi ptr [ %.1715.i, %bb.vl ], [ %.1715954.i, %bb.vm ], [ %.1715954.i, %bb.vn ]
  %.1713951.i = phi ptr [ %.1713.i51, %bb.vl ], [ %.1713952.i, %bb.vm ], [ %.1713952.i, %bb.vn ]
  %.20949.i = phi i32 [ %.20.i50, %bb.vl ], [ %.20950.i, %bb.vm ], [ %.20950.i, %bb.vn ] ; 2 uses
  %.20699947.i = phi i32 [ %.20699.i, %bb.vl ], [ %.20699948.i, %bb.vm ], [ %.20699948.i, %bb.vn ] ; 2 uses
  %.19735945.i = phi i32 [ %.19735.i, %bb.vl ], [ %.19735946.i, %bb.vm ], [ %.19735946.i, %bb.vn ]
  %.3708.i = phi i8 [ %.27071251.i, %bb.vl ], [ %.27071251.i, %bb.vm ], [ %i.bly, %bb.vn ] ; 2 uses
  %.1704.i37 = phi i8 [ %.07031252.i, %bb.vl ], [ %i.blu, %bb.vm ], [ 1, %bb.vn ]
  %.2702.i = phi i32 [ %.17011253.i, %bb.vl ], [ %.17011253.i, %bb.vm ], [ %i.blv, %bb.vn ]
  %i.blz = add nsw i32 %.07361247.i, -4
  %i.bma = icmp sgt i32 %.07361247.i, 4
  br i1 %i.bma, label %bb.lj, label %._crit_edge.i32, !llvm.loop !74

._crit_edge.i32:                                  ; preds = %bb.vo, %bb.li
  %.2707.lcssa.i = phi i8 [ %.1706.i31, %bb.li ], [ %.3708.i, %bb.vo ]
  %.1680.lcssa.i = phi i32 [ %.06791262.i, %bb.li ], [ %.20699947.i, %bb.vo ]
  %.1.lcssa.i33 = phi i32 [ %.01263.i, %bb.li ], [ %.20949.i, %bb.vo ]
  %i.bmb = add nuw nsw i32 %.07371258.i, 1        ; 3 uses
  %i.bmc = and i32 %i.bmb, 3
  %i.bmd = icmp eq i32 %i.bmc, 0
  br i1 %i.bmd, label %bb.vp, label %bb.vq

bb.vp:                                            ; preds = %._crit_edge.i32
  %i.bme = load i32, ptr %i.gu, align 8, !tbaa !58
  %i.bmf = sext i32 %i.bme to i64
  %i.bmg = getelementptr inbounds i8, ptr %.07091260.i, i64 %i.bmf
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vp, %._crit_edge.i32
  %.1710.i = phi ptr [ %i.bmg, %bb.vp ], [ %.07091260.i, %._crit_edge.i32 ]
  %i.bmh = load ptr, ptr %i.jf, align 8, !tbaa !33
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 64
  %i.bmj = load i32, ptr %i.bmi, align 8, !tbaa !57
  %i.bmk = sext i32 %i.bmj to i64
  %i.bml = getelementptr inbounds i8, ptr %.07111259.i, i64 %i.bmk
  %i.bmm = load i32, ptr %i.aln, align 4, !tbaa !55
  %i.bmn = icmp slt i32 %i.bmb, %i.bmm
  br i1 %i.bmn, label %bb.lg, label %truemotion1_decode_24bit.exit, !llvm.loop !75

truemotion1_decode_24bit.exit:                    ; preds = %bb.lb, %bb.vq, %bb.vi, %bb.ve, %bb.vb, %bb.uy, %bb.uu, %bb.uq, %bb.un, %bb.uk, %bb.uf, %bb.ub, %bb.ty, %bb.tv, %bb.tr, %bb.tn, %bb.tk, %bb.th, %bb.td, %bb.sz, %bb.sw, %bb.st, %bb.so, %bb.sk, %bb.sh, %bb.se, %bb.sa, %bb.rw, %bb.rt, %bb.rq, %bb.rm, %bb.ri, %bb.rf, %bb.rc, %bb.qy, %bb.qu, %bb.qr, %bb.qo, %bb.qi, %bb.qe, %bb.qb, %bb.py, %bb.pu, %bb.pq, %bb.pn, %bb.pk, %bb.pf, %bb.pb, %bb.oy, %bb.ov, %bb.or, %bb.on, %bb.ok, %bb.oh, %bb.od, %bb.nz, %bb.nw, %bb.nt, %bb.no, %bb.nk, %bb.nh, %bb.ne, %bb.na, %bb.mw, %bb.mt, %bb.mq, %bb.mm, %bb.mi, %bb.mf, %bb.mc, %bb.ly, %bb.lu, %bb.lr, %bb.lo, %bb.lf, %bb.le, %bb.kt, %bb.kp, %bb.km, %bb.kj, %bb.kf, %bb.kb, %bb.jy, %bb.jv, %bb.jq, %bb.jm, %bb.jj, %bb.jg, %bb.jc, %bb.iy, %bb.iv, %bb.is, %bb.io, %bb.ik, %bb.ih, %bb.ie, %bb.hz, %bb.hv, %bb.hs, %bb.hp, %bb.hl, %bb.hh, %bb.he, %bb.hb, %bb.gx, %bb.gt, %bb.gq, %bb.gn, %bb.gj, %bb.gf, %bb.gc, %bb.fz, %bb.ft, %bb.fp, %bb.fm, %bb.fj, %bb.ff, %bb.fb, %bb.ey, %bb.ev, %bb.eq, %bb.em, %bb.ej, %bb.eg, %bb.ec, %bb.dy, %bb.dv, %bb.ds, %bb.do, %bb.dk, %bb.dh, %bb.de, %bb.cz, %bb.cv, %bb.cs, %bb.cp, %bb.cl, %bb.ch, %bb.ce, %bb.cb, %bb.bx, %bb.bt, %bb.bq, %bb.bn, %bb.bj, %bb.bf, %bb.bc, %bb.az, %.lr.ph1186.i, %bb.at, %bb.as, %bb.lc
  %i.bmo = load ptr, ptr %i.jf, align 8, !tbaa !33
  %i.bmp = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.bmo) #6 ; 2 uses
  %i.bmq = icmp slt i32 %i.bmp, 0
  br i1 %i.bmq, label %bb.vs, label %bb.vr

bb.vr:                                            ; preds = %truemotion1_decode_24bit.exit
  store i32 1, ptr %2, align 4, !tbaa !57
  br label %bb.vs

bb.vs:                                            ; preds = %truemotion1_decode_header.exit.thread, %truemotion1_decode_24bit.exit, %bb.ap, %bb.vr
  %.0 = phi i32 [ %i.e, %bb.vr ], [ %.0.i.ph, %truemotion1_decode_header.exit.thread ], [ %i.jh, %bb.ap ], [ %i.bmp, %truemotion1_decode_24bit.exit ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @truemotion1_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16552
  tail call void @av_freep(ptr noundef nonnull %i.d) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_set_sar(ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @gen_vector_table24(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8272 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12368 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16480 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16512 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16528 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv53 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next54, %._crit_edge ] ; 4 uses
  %.04349 = phi ptr [ %1, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.i = load i8, ptr %.04349, align 1, !tbaa !41
  %i.j = lshr i8 %i.i, 1                          ; 3 uses
  %2 = zext nneg i8 %i.j to i64
  %.145 = getelementptr inbounds nuw i8, ptr %.04349, i64 1 ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i8 %i.j to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.147 = phi ptr [ %.145, %.lr.ph.preheader ], [ %.1, %.lr.ph ] ; 2 uses
  %i.k = load i8, ptr %.147, align 1, !tbaa !41
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = and i32 %i.l, 15
  %i.o = zext nneg i32 %i.m to i64                ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !52
  %i.r = sext i16 %i.q to i32
  %i.s = zext nneg i32 %i.n to i64                ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !52
  %i.v = sext i16 %i.u to i32
  %i.w = shl nsw i32 %i.r, 1
  %reass.mul.i = mul i32 %i.v, 131584
  %i.x = add i32 %reass.mul.i, %i.w
  %i.y = add nuw nsw i64 %indvars.iv, %indvars.iv53 ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y
  store i32 %i.x, ptr %i.z, align 4, !tbaa !57
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.s
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !52
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.o
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !52
  %i.af = zext i16 %i.ae to i32
  %i.ag = shl i32 %i.af, 17
  %i.ah = shl nsw i32 %i.ac, 1
  %i.ai = add i32 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.y
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !57
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.o
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !52
  %i.am = sext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.s
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !52
  %i.ap = sext i16 %i.ao to i32
  %i.aq = shl nsw i32 %i.am, 1
  %reass.mul.i44 = mul i32 %i.ap, 131584
  %i.ar = add i32 %reass.mul.i44, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !57
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.s
  %i.au = load i16, ptr %i.at, align 2, !tbaa !52
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.o
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !52
  %i.ay = zext i16 %i.ax to i32
  %i.az = shl i32 %i.ay, 17
  %i.ba = shl nsw i32 %i.av, 1
  %i.bb = add i32 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.147, i64 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %2, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.145, %bb.b ], [ %.1, %.lr.ph ]
  %i.bd = add nuw i64 %indvars.iv53, 4294967295
  %i.be = add i64 %i.bd, %.0.lcssa
  %sext = shl i64 %i.be, 32
  %3 = ashr exact i64 %sext, 32                   ; 4 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.a, i64 %3 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57
  %i.bh = or i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !57
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %3 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !57
  %i.bk = or i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !57
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %3 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !57
  %i.bn = or i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !57
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.d, i64 %3 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !57
  %i.bq = or i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !57
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 4
  %i.br = icmp samesign ult i64 %indvars.iv53, 1020
  br i1 %i.br, label %bb.b, label %bb.c, !llvm.loop !77

bb.c:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @gen_vector_table15(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16480 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv34 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next35, %._crit_edge ] ; 4 uses
  %.02530 = phi ptr [ %1, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.e = load i8, ptr %.02530, align 1, !tbaa !41
  %i.f = lshr i8 %i.e, 1                          ; 3 uses
  %2 = zext nneg i8 %i.f to i64
  %.126 = getelementptr inbounds nuw i8, ptr %.02530, i64 1 ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i8 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.128 = phi ptr [ %.126, %.lr.ph.preheader ], [ %.1, %.lr.ph ] ; 2 uses
  %i.g = load i8, ptr %.128, align 1, !tbaa !41
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = and i32 %i.h, 15
  %i.k = zext nneg i32 %i.i to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !52
  %i.n = sext i16 %i.m to i32
  %i.o = mul nsw i32 %i.n, 1057
  %i.p = zext nneg i32 %i.j to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !52
  %i.s = sext i16 %i.r to i32
  %i.t = mul i32 %i.s, 69271552
  %i.u = add i32 %i.t, %i.o
  %i.v = shl i32 %i.u, 1
  %i.w = add nuw nsw i64 %indvars.iv, %indvars.iv34 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.w
  store i32 %i.v, ptr %i.x, align 4, !tbaa !57
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.p
  %i.z = load i16, ptr %i.y, align 2, !tbaa !52
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.k
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !52
  %i.ad = sext i16 %i.ac to i32
  %i.ae = shl nsw i32 %i.ad, 10
  %i.af = add nsw i32 %i.ae, %i.aa
  %i.ag = mul i32 %i.af, 131074
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.w
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.128, i64 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %2, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.126, %bb.b ], [ %.1, %.lr.ph ]
  %i.ai = add nuw i64 %indvars.iv34, 4294967295
  %i.aj = add i64 %i.ai, %.0.lcssa
  %sext = shl i64 %i.aj, 32
  %3 = ashr exact i64 %sext, 32                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.a, i64 %3 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !57
  %i.am = or i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !57
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %3 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !57
  %i.ap = or i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !57
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 4
  %i.aq = icmp samesign ult i64 %indvars.iv34, 1020
  br i1 %i.aq, label %bb.b, label %bb.c, !llvm.loop !79

bb.c:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @gen_vector_table16(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16480 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv34 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next35, %._crit_edge ] ; 4 uses
  %.02530 = phi ptr [ %1, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.e = load i8, ptr %.02530, align 1, !tbaa !41
  %i.f = lshr i8 %i.e, 1                          ; 3 uses
  %2 = zext nneg i8 %i.f to i64
  %.126 = getelementptr inbounds nuw i8, ptr %.02530, i64 1 ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i8 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.128 = phi ptr [ %.126, %.lr.ph.preheader ], [ %.1, %.lr.ph ] ; 2 uses
  %i.g = load i8, ptr %.128, align 1, !tbaa !41
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = and i32 %i.h, 15
  %i.k = zext nneg i32 %i.i to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !52
  %i.n = sext i16 %i.m to i32
  %i.o = mul nsw i32 %i.n, 2113
  %i.p = zext nneg i32 %i.j to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !52
  %i.s = zext i16 %i.r to i32
  %i.t = mul i32 %i.s, 138477568
  %i.u = add nsw i32 %i.t, %i.o
  %i.v = shl i32 %i.u, 1
  %i.w = add nuw nsw i64 %indvars.iv, %indvars.iv34 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.w
  store i32 %i.v, ptr %i.x, align 4, !tbaa !57
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.p
  %i.z = load i16, ptr %i.y, align 2, !tbaa !52
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.k
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !52
  %i.ad = sext i16 %i.ac to i32
  %i.ae = shl nsw i32 %i.ad, 11
  %i.af = add nsw i32 %i.ae, %i.aa
  %i.ag = mul nsw i32 %i.af, 131074
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.w
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.128, i64 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %2, %.lr.ph ]
  %.1.lcssa = phi ptr [ %.126, %bb.b ], [ %.1, %.lr.ph ]
  %i.ai = add nuw i64 %indvars.iv34, 4294967295
  %i.aj = add i64 %i.ai, %.0.lcssa
  %sext = shl i64 %i.aj, 32
  %3 = ashr exact i64 %sext, 32                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.a, i64 %3 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !57
  %i.am = or i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !57
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %3 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !57
  %i.ap = or i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !57
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 4
  %i.aq = icmp samesign ult i64 %indvars.iv34, 1020
  br i1 %i.aq, label %bb.b, label %bb.c, !llvm.loop !81

bb.c:                                             ; preds = %._crit_edge
  ret void
}

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!29 = !{!30, !31, i64 0}
!30 = !{!"TrueMotion1Context", !31, i64 0, !32, i64 8, !16, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !16, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !7, i64 80, !7, i64 4176, !7, i64 8272, !7, i64 12368, !6, i64 16464, !6, i64 16468, !6, i64 16472, !6, i64 16476, !7, i64 16480, !7, i64 16496, !7, i64 16512, !7, i64 16528, !6, i64 16544, !6, i64 16548, !26, i64 16552, !6, i64 16560}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!33 = !{!30, !32, i64 8}
!34 = !{!10, !6, i64 112}
!35 = !{!30, !26, i64 16552}
!36 = !{!37, !16, i64 24}
!37 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!38 = !{!37, !6, i64 32}
!39 = !{!30, !16, i64 16}
!40 = !{!30, !6, i64 24}
!41 = !{!7, !7, i64 0}
!42 = distinct !{!42, !43, !44, !45}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!30, !6, i64 60}
!47 = !{!30, !6, i64 72}
!48 = !{!30, !6, i64 76}
!49 = !{!30, !6, i64 16544}
!50 = !{!30, !6, i64 16548}
!51 = !{!19, !19, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !7, i64 0}
!54 = !{!16, !16, i64 0}
!55 = !{!10, !6, i64 116}
!56 = !{!10, !6, i64 136}
!57 = !{!6, !6, i64 0}
!58 = !{!30, !6, i64 40}
!59 = !{!30, !16, i64 32}
!60 = !{!30, !16, i64 48}
!61 = !{!30, !6, i64 56}
!62 = !{!30, !6, i64 16464}
!63 = !{!64, !6, i64 4}
!64 = !{!"comp_types", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!65 = !{!30, !6, i64 16472}
!66 = !{!64, !6, i64 8}
!67 = !{!30, !6, i64 16476}
!68 = !{!64, !6, i64 12}
!69 = !{!30, !6, i64 16468}
!70 = !{!10, !6, i64 524}
!71 = distinct !{!71, !43}
!72 = distinct !{!72, !43, !73}
!73 = !{!"llvm.loop.unswitch.partial.disable"}
!74 = distinct !{!74, !43}
!75 = distinct !{!75, !43}
!76 = distinct !{!76, !43}
!77 = distinct !{!77, !43}
!78 = distinct !{!78, !43}
!79 = distinct !{!79, !43}
!80 = distinct !{!80, !43}
!81 = distinct !{!81, !43}
end_hunk_0
