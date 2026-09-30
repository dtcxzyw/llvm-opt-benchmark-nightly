Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/asvenc?download=true
inline.NumInlined: 26
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@encode_mb:bb.a
  %i.rl = and i32 %.2.i16, 2
  %.not84.i = icmp eq i32 %i.rl, 0
  br i1 %.not84.i, label %bb.dk, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rm = load i16, ptr %i.mi, align 2, !tbaa !40 ; 2 uses
  %i.rn = sext i16 %i.rm to i32                   ; 4 uses
  %i.ro = add nsw i32 %i.rn, 31                   ; 2 uses
  %i.rp = icmp ult i32 %i.ro, 63
  br i1 %i.rp, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.rq = zext nneg i32 %i.ro to i64
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr @ff_asv2_level_tab, i64 %i.rq ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 2
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !40
  %i.ru = zext i16 %i.rt to i32
  %i.rv = load i16, ptr %i.rr, align 4, !tbaa !40
  %i.rw = zext i16 %i.rv to i32
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.rx = add nsw i32 %i.rn, -128
  %or.cond.i103.i = icmp ult i32 %i.rx, -256
  br i1 %or.cond.i103.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ry = load ptr, ptr %0, align 16, !tbaa !48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ry, i32 noundef 24, ptr noundef nonnull @.str.9, i32 noundef range(i32 -32768, 32768) %i.rn) #9
  %i.rz = icmp sgt i16 %i.rm, -1
  %i.sa = select i1 %i.rz, i32 127, i32 -128
  %.pre127.pre.i = load i32, ptr %i.a, align 8, !tbaa !46
  %.pre128.pre.i = load i32, ptr %i.h, align 4, !tbaa !45
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pre128.i = phi i32 [ %.pre128.pre.i, %bb.dd ], [ %i.rj, %bb.dc ]
  %.pre127.i = phi i32 [ %.pre127.pre.i, %bb.dd ], [ %i.rk, %bb.dc ]
  %.014.i104.i = phi i32 [ %i.sa, %bb.dd ], [ %i.rn, %bb.dc ]
  %i.sb = shl nsw i32 %.014.i104.i, 5
  %i.sc = and i32 %i.sb, 8160
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.db
  %i.sd = phi i32 [ %i.rj, %bb.db ], [ %.pre128.i, %bb.de ] ; 5 uses
  %i.se = phi i32 [ %i.rk, %bb.db ], [ %.pre127.i, %bb.de ]
  %.013.i105.i = phi i32 [ %i.ru, %bb.db ], [ 13, %bb.de ] ; 2 uses
  %.0.i106.i = phi i32 [ %i.rw, %bb.db ], [ %i.sc, %bb.de ] ; 2 uses
  %i.sf = sub nsw i32 32, %i.sd
  %i.sg = shl i32 %.0.i106.i, %i.sf
  %i.sh = or i32 %i.sg, %i.se                     ; 2 uses
  %.not.i.i107.i = icmp slt i32 %.013.i105.i, %i.sd
  br i1 %.not.i.i107.i, label %asv2_put_level.exit110.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.si = load ptr, ptr %i.b, align 16, !tbaa !43
  %i.sj = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = ptrtoint ptr %i.sj to i64
  %i.sm = sub i64 %i.sk, %i.sl
  %i.sn = icmp ugt i64 %i.sm, 3
  br i1 %i.sn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 %i.sh, ptr %i.sj, align 1, !tbaa !30
  %i.so = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  store ptr %i.sp, ptr %i.d, align 8, !tbaa !44
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.8) #9
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.sq = lshr i32 %.0.i106.i, %i.sd
  %i.sr = add nsw i32 %i.sd, 32
  br label %asv2_put_level.exit110.i

asv2_put_level.exit110.i:                         ; preds = %bb.dj, %bb.df
  %.020.i.i108.i = phi i32 [ %i.sq, %bb.dj ], [ %i.sh, %bb.df ] ; 2 uses
  %.0.i17.i109.i = phi i32 [ %i.sr, %bb.dj ], [ %i.sd, %bb.df ]
  %i.ss = sub nsw i32 %.0.i17.i109.i, %.013.i105.i ; 2 uses
  store i32 %.020.i.i108.i, ptr %i.a, align 8, !tbaa !46
  store i32 %i.ss, ptr %i.h, align 4, !tbaa !45
  br label %bb.dk

bb.dk:                                            ; preds = %asv2_put_level.exit110.i, %bb.cz
  %i.st = phi i32 [ %i.ss, %asv2_put_level.exit110.i ], [ %i.rj, %bb.cz ] ; 3 uses
  %i.su = phi i32 [ %.020.i.i108.i, %asv2_put_level.exit110.i ], [ %i.rk, %bb.cz ] ; 3 uses
  %i.sv = and i32 %.3.i17, 1
  %.not85.i = icmp eq i32 %i.sv, 0
  br i1 %.not85.i, label %bb.dv, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sw = load i16, ptr %i.mu, align 2, !tbaa !40 ; 2 uses
  %i.sx = sext i16 %i.sw to i32                   ; 4 uses
  %i.sy = add nsw i32 %i.sx, 31                   ; 2 uses
  %i.sz = icmp ult i32 %i.sy, 63
  br i1 %i.sz, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ta = zext nneg i32 %i.sy to i64
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr @ff_asv2_level_tab, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 2
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !40
  %i.te = zext i16 %i.td to i32
  %i.tf = load i16, ptr %i.tb, align 4, !tbaa !40
  %i.tg = zext i16 %i.tf to i32
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dl
  %i.th = add nsw i32 %i.sx, -128
  %or.cond.i111.i = icmp ult i32 %i.th, -256
  br i1 %or.cond.i111.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ti = load ptr, ptr %0, align 16, !tbaa !48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ti, i32 noundef 24, ptr noundef nonnull @.str.9, i32 noundef range(i32 -32768, 32768) %i.sx) #9
  %i.tj = icmp sgt i16 %i.sw, -1
  %i.tk = select i1 %i.tj, i32 127, i32 -128
  %.pre129.pre.i = load i32, ptr %i.a, align 8, !tbaa !46
  %.pre130.pre.i = load i32, ptr %i.h, align 4, !tbaa !45
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pre130.i = phi i32 [ %.pre130.pre.i, %bb.do ], [ %i.st, %bb.dn ]
  %.pre129.i = phi i32 [ %.pre129.pre.i, %bb.do ], [ %i.su, %bb.dn ]
  %.014.i112.i = phi i32 [ %i.tk, %bb.do ], [ %i.sx, %bb.dn ]
  %i.tl = shl nsw i32 %.014.i112.i, 5
  %i.tm = and i32 %i.tl, 8160
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dm
  %i.tn = phi i32 [ %i.st, %bb.dm ], [ %.pre130.i, %bb.dp ] ; 5 uses
  %i.to = phi i32 [ %i.su, %bb.dm ], [ %.pre129.i, %bb.dp ]
  %.013.i113.i = phi i32 [ %i.te, %bb.dm ], [ 13, %bb.dp ] ; 2 uses
  %.0.i114.i = phi i32 [ %i.tg, %bb.dm ], [ %i.tm, %bb.dp ] ; 2 uses
  %i.tp = sub nsw i32 32, %i.tn
  %i.tq = shl i32 %.0.i114.i, %i.tp
  %i.tr = or i32 %i.tq, %i.to                     ; 2 uses
  %.not.i.i115.i = icmp slt i32 %.013.i113.i, %i.tn
  br i1 %.not.i.i115.i, label %asv2_put_level.exit118.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ts = load ptr, ptr %i.b, align 16, !tbaa !43
  %i.tt = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = sub i64 %i.tu, %i.tv
  %i.tx = icmp ugt i64 %i.tw, 3
  br i1 %i.tx, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.tr, ptr %i.tt, align 1, !tbaa !30
  %i.ty = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  store ptr %i.tz, ptr %i.d, align 8, !tbaa !44
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.8) #9
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.ua = lshr i32 %.0.i114.i, %i.tn
  %i.ub = add nsw i32 %i.tn, 32
  br label %asv2_put_level.exit118.i

asv2_put_level.exit118.i:                         ; preds = %bb.du, %bb.dq
  %.020.i.i116.i = phi i32 [ %i.ua, %bb.du ], [ %i.tr, %bb.dq ] ; 2 uses
  %.0.i17.i117.i = phi i32 [ %i.ub, %bb.du ], [ %i.tn, %bb.dq ]
  %i.uc = sub nsw i32 %.0.i17.i117.i, %.013.i113.i ; 2 uses
  store i32 %.020.i.i116.i, ptr %i.a, align 8, !tbaa !46
  store i32 %i.uc, ptr %i.h, align 4, !tbaa !45
  br label %bb.dv

bb.dv:                                            ; preds = %asv2_put_level.exit118.i, %bb.dk, %bb.cc
  %i.ud = phi i32 [ %i.st, %bb.dk ], [ %i.uc, %asv2_put_level.exit118.i ], [ %storemerge.i, %bb.cc ] ; 2 uses
  %i.ue = phi i32 [ %i.su, %bb.dk ], [ %.020.i.i116.i, %asv2_put_level.exit118.i ], [ %storemerge119.i, %bb.cc ]
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i13, 1 ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i20, %wide.trip.count.i
  br i1 %exitcond.not.i21, label %asv2_encode_block.exit, label %bb.br, !llvm.loop !77

asv2_encode_block.exit:                           ; preds = %bb.dv, %put_bits_le.exit.i
  %i.uf = phi i32 [ %i.lc, %put_bits_le.exit.i ], [ %i.ud, %bb.dv ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit, label %.preheader25, !llvm.loop !78

.loopexit:                                        ; preds = %asv2_encode_block.exit, %asv1_encode_block.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @handle_partial_mb(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 17) %4) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49
  %5 = and i32 %i.c, 8192
  %.not = icmp eq i32 %5, 0
  %wide.trip.count120 = select i1 %.not, i64 6, i64 4
  %i.d = sub nsw i32 0, %3
  %i.e = sub nsw i32 0, %4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.c

bb.b:                                             ; preds = %bb.q
  tail call fastcc void @encode_mb(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  ret void

bb.c:                                             ; preds = %bb.a, %bb.q
  %indvars.iv117 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next118, %bb.q ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @handle_partial_mb.block_descriptor, i64 %indvars.iv117 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !87    ; 2 uses
  %i.k = zext nneg i8 %i.j to i32
  %i.l = ashr i32 %i.d, %i.k                      ; 2 uses
  %i.m = load i8, ptr %i.h, align 4, !tbaa !88    ; 2 uses
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add i32 %i.l, %i.n
  %i.p = sub i32 0, %i.o                          ; 4 uses
  %i.q = zext nneg i8 %i.j to i32
  %i.r = ashr i32 %i.e, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !89    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.r, %i.u                   ; 9 uses
  %i.w = sub nsw i32 0, %i.v                      ; 2 uses
  %i.x = icmp slt i32 %i.p, 1
  %i.y = icmp sgt i32 %i.v, -1
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %bb.d, label %.split.us

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %indvars.iv117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 128, i1 false)
  br label %bb.q

.split.us:                                        ; preds = %bb.c
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.p, i32 8) ; 5 uses
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !90
  %i.ae = zext i8 %i.ad to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %indvars.iv117 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ae
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = zext i8 %i.t to i64
  %i.am = mul nsw i64 %i.ah, %i.al
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am
  %i.ao = zext i8 %i.m to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = icmp samesign ult i32 %i.p, 8
  br i1 %i.aq, label %.lr.ph.us.us.preheader, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.split.us
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 12
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us.us.preheader:                           ; preds = %.split.us
  %i.ar = or disjoint i32 %i.p, 8
  %i.as = sub nuw nsw i32 %i.ar, %i.aa
  %wide.trip.count110 = zext nneg i32 %i.aa to i64 ; 8 uses
  %wide.trip.count114 = zext nneg i32 %i.as to i64
  %i.at = add i32 %i.l, %i.aa
  %i.au = add i32 %i.at, %i.n
  %i.av = sub i32 8, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = sub nsw i64 %i.aw, %wide.trip.count110  ; 7 uses
  %xtraiter138 = and i64 %wide.trip.count110, 3   ; 3 uses
  %i.ay = add nsw i32 %i.aa, -1
  %i.az = icmp ult i32 %i.ay, 3
  %unroll_iter143 = and i64 %wide.trip.count110, 4
  %lcmp.mod140.not = icmp eq i64 %xtraiter138, 0
  %lcmp.mod142 = icmp ne i64 %xtraiter138, 0
  %min.iters.check = icmp ult i64 %i.ax, 4
  %min.iters.check127 = icmp ult i64 %i.ax, 16
  %i.ba = and i64 %i.ax, 12
  %n.vec = and i64 %i.ax, -16                     ; 4 uses
  %i.bb = or disjoint i64 %n.vec, %wide.trip.count110
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  %n.vec128 = and i64 %i.ax, -4                   ; 3 uses
  %i.bc = add nsw i64 %n.vec128, %wide.trip.count110
  %cmp.n133 = icmp eq i64 %i.ax, %n.vec128
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %bb.f
  %.074.us.us = phi ptr [ %i.cd, %bb.f ], [ %i.ap, %.lr.ph.us.us.preheader ] ; 6 uses
  %.073.us.us = phi ptr [ %i.cc, %bb.f ], [ %i.ai, %.lr.ph.us.us.preheader ] ; 10 uses
  %.072.us.us = phi i32 [ %i.cb, %bb.f ], [ 0, %.lr.ph.us.us.preheader ]
  br i1 %i.az, label %.epil.preheader137, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv107 = phi i64 [ %indvars.iv.next108.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 6 uses
  %niter144 = phi i64 [ %niter144.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.074.us.us, i64 %indvars.iv107
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !30
  %i.bf = zext i8 %i.be to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.073.us.us, i64 %indvars.iv107
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !40
  %indvars.iv.next108 = or disjoint i64 %indvars.iv107, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.074.us.us, i64 %indvars.iv.next108
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bj = zext i8 %i.bi to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.073.us.us, i64 %indvars.iv.next108
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !40
  %indvars.iv.next108.1 = or disjoint i64 %indvars.iv107, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.074.us.us, i64 %indvars.iv.next108.1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !30
  %i.bn = zext i8 %i.bm to i16
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.073.us.us, i64 %indvars.iv.next108.1
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !40
  %indvars.iv.next108.2 = or disjoint i64 %indvars.iv107, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.074.us.us, i64 %indvars.iv.next108.2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !30
  %i.br = zext i8 %i.bq to i16                    ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.073.us.us, i64 %indvars.iv.next108.2
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !40
  %indvars.iv.next108.3 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %niter144.next.3 = add i64 %niter144, 4         ; 2 uses
  %niter144.ncmp.3 = icmp eq i64 %niter144.next.3, %unroll_iter143
  br i1 %niter144.ncmp.3, label %iter.check.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !79

iter.check.unr-lcssa:                             ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod140.not, label %iter.check, label %.epil.preheader137

.epil.preheader137:                               ; preds = %iter.check.unr-lcssa, %.lr.ph.us.us
  %indvars.iv107.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next108.3, %iter.check.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader137
  %indvars.iv107.epil = phi i64 [ %indvars.iv.next108.epil, %bb.e ], [ %indvars.iv107.epil.init, %.epil.preheader137 ] ; 3 uses
  %epil.iter139 = phi i64 [ %epil.iter139.next, %bb.e ], [ 0, %.epil.preheader137 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.074.us.us, i64 %indvars.iv107.epil
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !30
  %i.bv = zext i8 %i.bu to i16                    ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.073.us.us, i64 %indvars.iv107.epil
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !40
  %indvars.iv.next108.epil = add nuw nsw i64 %indvars.iv107.epil, 1
  %epil.iter139.next = add i64 %epil.iter139, 1   ; 2 uses
  %epil.iter139.cmp.not = icmp eq i64 %epil.iter139.next, %xtraiter138
  br i1 %epil.iter139.cmp.not, label %iter.check, label %bb.e, !llvm.loop !80

iter.check:                                       ; preds = %bb.e, %iter.check.unr-lcssa
  %.lcssa = phi i16 [ %i.br, %iter.check.unr-lcssa ], [ %i.bv, %bb.e ] ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.lcssa, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.073.us.us, i64 %wide.trip.count110
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !40
  store <8 x i16> %broadcast.splat, ptr %i.bx, align 2, !tbaa !40
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert129 = insertelement <4 x i16> poison, i16 %.lcssa, i64 0
  %broadcast.splat130 = shufflevector <4 x i16> %broadcast.splatinsert129, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep147 = getelementptr [2 x i8], ptr %.073.us.us, i64 %wide.trip.count110
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next132, %vec.epilog.vector.body ] ; 2 uses
  %gep148 = getelementptr [2 x i8], ptr %invariant.gep147, i64 %index131
  store <4 x i16> %broadcast.splat130, ptr %gep148, align 2, !tbaa !40
  %index.next132 = add nuw i64 %index131, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n133, label %._crit_edge.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv112.ph = phi i64 [ %wide.trip.count110, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %vec.epilog.scalar.ph ], [ %indvars.iv112.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.073.us.us, i64 %indvars.iv112
  store i16 %.lcssa, ptr %i.ca, align 2, !tbaa !40
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge.us.us, label %vec.epilog.scalar.ph, !llvm.loop !83

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cb = add nuw nsw i32 %.072.us.us, 1          ; 2 uses
  %.not80.us.us = icmp eq i32 %i.cb, %i.ab
  br i1 %.not80.us.us, label %.preheader81, label %bb.f

bb.f:                                             ; preds = %._crit_edge.us.us
  %i.cc = getelementptr inbounds nuw i8, ptr %.073.us.us, i64 16
  %i.cd = getelementptr inbounds i8, ptr %.074.us.us, i64 %i.ah
  br label %.lr.ph.us.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.h
  %.074.us = phi ptr [ %i.cv, %bb.h ], [ %i.ap, %.lr.ph.us.preheader ] ; 6 uses
  %.073.us = phi ptr [ %i.cu, %bb.h ], [ %i.ai, %.lr.ph.us.preheader ] ; 7 uses
  %.072.us = phi i32 [ %i.da, %bb.h ], [ 0, %.lr.ph.us.preheader ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.us ], [ %niter.next.3, %bb.g ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.074.us, i64 %indvars.iv
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !30
  %i.cg = zext i8 %i.cf to i16
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.073.us, i64 %indvars.iv
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !40
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.074.us, i64 %indvars.iv.next
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !30
  %i.ck = zext i8 %i.cj to i16
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.073.us, i64 %indvars.iv.next
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !40
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.074.us, i64 %indvars.iv.next.1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !30
  %i.co = zext i8 %i.cn to i16
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.073.us, i64 %indvars.iv.next.1
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !40
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.074.us, i64 %indvars.iv.next.2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !30
  %i.cs = zext i8 %i.cr to i16
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.073.us, i64 %indvars.iv.next.2
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !40
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.unr-lcssa, label %bb.g, !llvm.loop !79

bb.h:                                             ; preds = %..preheader_crit_edge.us
  %i.cu = getelementptr inbounds nuw i8, ptr %.073.us, i64 16
  %i.cv = getelementptr inbounds i8, ptr %.074.us, i64 %i.ah
  br label %.lr.ph.us

..preheader_crit_edge.us.unr-lcssa:               ; preds = %bb.g
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.074.us, i64 %indvars.iv.epil
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !30
  %i.cy = zext i8 %i.cx to i16
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.073.us, i64 %indvars.iv.epil
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !40
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us, label %bb.i, !llvm.loop !84

..preheader_crit_edge.us:                         ; preds = %bb.i, %..preheader_crit_edge.us.unr-lcssa
  %i.da = add nuw nsw i32 %.072.us, 1             ; 2 uses
  %.not80.us = icmp eq i32 %i.da, %i.ab
  br i1 %.not80.us, label %.preheader81, label %bb.h

.preheader81:                                     ; preds = %..preheader_crit_edge.us, %._crit_edge.us.us
  %.us-phi = phi ptr [ %.073.us.us, %._crit_edge.us.us ], [ %.073.us, %..preheader_crit_edge.us ] ; 25 uses
  %i.db = icmp ult i32 %i.w, 8
  br i1 %i.db, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %.preheader81
  %i.dc = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.us-phi, i64 16
  %i.de = load i64, ptr %.us-phi, align 8, !tbaa !30
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !30
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %.us-phi, i64 24
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !30
  %exitcond116.not = icmp eq i32 %i.v, -7
  br i1 %exitcond116.not, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %.lr.ph101, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %.preheader81
  %i.dh = load ptr, ptr %i.g, align 16, !tbaa !38
  tail call void %i.dh(ptr noundef nonnull %i.ai) #9
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph101
  %i.di = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %i.dj = load i64, ptr %.us-phi, align 8, !tbaa !30
  store i64 %i.dj, ptr %i.di, align 8, !tbaa !30
  %i.dk = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.dl = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !30
  %exitcond116.not.1 = icmp eq i32 %i.v, -6
  br i1 %exitcond116.not.1, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %.us-phi, i64 48
  %i.dn = load i64, ptr %.us-phi, align 8, !tbaa !30
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !30
  %i.do = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %.us-phi, i64 56
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !30
  %exitcond116.not.2 = icmp eq i32 %i.v, -5
  br i1 %exitcond116.not.2, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %.us-phi, i64 64
  %i.dr = load i64, ptr %.us-phi, align 8, !tbaa !30
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !30
  %i.ds = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.dt = getelementptr inbounds nuw i8, ptr %.us-phi, i64 72
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !30
  %exitcond116.not.3 = icmp eq i32 %i.v, -4
  br i1 %exitcond116.not.3, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = getelementptr inbounds nuw i8, ptr %.us-phi, i64 80
  %i.dv = load i64, ptr %.us-phi, align 8, !tbaa !30
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !30
  %i.dw = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.dx = getelementptr inbounds nuw i8, ptr %.us-phi, i64 88
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !30
  %exitcond116.not.4 = icmp eq i32 %i.v, -3
  br i1 %exitcond116.not.4, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw i8, ptr %.us-phi, i64 96
  %i.dz = load i64, ptr %.us-phi, align 8, !tbaa !30
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !30
  %i.ea = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %.us-phi, i64 104
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !30
  %exitcond116.not.5 = icmp eq i32 %i.v, -2
  br i1 %exitcond116.not.5, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %.us-phi, i64 112
  %i.ed = load i64, ptr %.us-phi, align 8, !tbaa !30
  store i64 %i.ed, ptr %i.ec, align 8, !tbaa !30
  %i.ee = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %.us-phi, i64 120
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !30
  %exitcond116.not.6 = icmp eq i32 %i.v, -1
  br i1 %exitcond116.not.6, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = getelementptr inbounds nuw i8, ptr %.us-phi, i64 128
  %i.eh = load i64, ptr %.us-phi, align 8, !tbaa !30
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !30
  %i.ei = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %.us-phi, i64 136
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !30
  br label %._crit_edge

bb.q:                                             ; preds = %._crit_edge, %bb.d
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %bb.b, label %bb.c, !llvm.loop !85
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 24}
!30 = !{!5, !5, i64 0}
!31 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!32 = !{!"BswapDSPContext", !9, i64 0, !9, i64 8}
!33 = !{!"ASVCommonContext", !31, i64 0, !32, i64 8, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!34 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 16, !14, i64 24}
!35 = !{!"PixblockDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!36 = !{!"FDCTDSPContext", !9, i64 0, !9, i64 8}
!37 = !{!"ASVEncContext", !33, i64 0, !34, i64 40, !9, i64 72, !35, i64 80, !36, i64 112, !5, i64 128, !5, i64 896}
!38 = !{!37, !9, i64 112}
!39 = !{!"short", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!6, !6, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!34, !14, i64 24}
!44 = !{!34, !14, i64 16}
!45 = !{!34, !6, i64 4}
!46 = !{!34, !6, i64 0}
!47 = !{!14, !14, i64 0}
!48 = !{!37, !31, i64 0}
!49 = !{!27, !6, i64 64}
!50 = distinct !{!50, !42}
!51 = !{!27, !6, i64 420}
!52 = !{!27, !14, i64 72}
!53 = !{!27, !6, i64 80}
!54 = distinct !{!54, !42, !71}
!55 = distinct !{null}
!56 = distinct !{!56, !42}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = distinct !{!59, !42}
!60 = !{!33, !6, i64 28}
!61 = !{!33, !6, i64 24}
!62 = !{!37, !9, i64 80}
!63 = !{!37, !9, i64 72}
!64 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!65 = !{!64, !14, i64 24}
!66 = !{!64, !6, i64 32}
!67 = !{!34, !14, i64 8}
!68 = !{!33, !6, i64 36}
!69 = !{!33, !6, i64 32}
!70 = !{!27, !6, i64 112}
!71 = !{!"llvm.loop.unswitch.partial.disable"}
!72 = !{!27, !6, i64 116}
!73 = !{!33, !9, i64 8}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !42}
!77 = distinct !{!77, !42}
!78 = distinct !{!78, !42}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !91}
!81 = distinct !{!81, !42, !92, !93}
!82 = distinct !{!82, !42, !92, !93}
!83 = distinct !{!83, !42, !93, !92}
!84 = distinct !{!84, !91}
!85 = distinct !{!85, !42}
!86 = !{!"Descriptor", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!87 = !{!86, !5, i64 3}
!88 = !{!86, !5, i64 0}
!89 = !{!86, !5, i64 1}
!90 = !{!86, !5, i64 2}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
