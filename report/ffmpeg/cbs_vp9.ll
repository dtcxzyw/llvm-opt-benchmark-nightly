Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_vp9?download=true
inline.NumInlined: 55
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@cbs_vp9_write_segmentation_params:bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 75 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !69
  %i.en = zext i8 %i.em to i32
  %i.eo = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.75, i32 noundef %i.en) #9 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %.loopexit163
  %i.eq = load i8, ptr %i.el, align 1, !tbaa !69
  %.not149 = icmp eq i8 %i.eq, 0
  br i1 %.not149, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.es = load i8, ptr %i.er, align 2, !tbaa !113
  %i.et = zext i8 %i.es to i32
  %i.eu = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef %i.et) #9 ; 2 uses
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %.loopexit, label %.preheader160

.preheader160:                                    ; preds = %bb.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 77
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 109
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 141
  br label %.preheader

.preheader:                                       ; preds = %.preheader160, %bb.bb
  %indvars.iv181 = phi i64 [ 0, %.preheader160 ], [ %indvars.iv.next182, %bb.bb ] ; 5 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv181
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv181 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv181 ; 3 uses
  %i.fi = trunc nuw nsw i64 %indvars.iv181 to i32 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %bb.ba
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ba ] ; 10 uses
  store i32 2, ptr %i.e, align 4, !tbaa !24
  store i32 %i.fi, ptr %i.ew, align 4, !tbaa !24
  %i.fk = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.fk, ptr %i.ex, align 4, !tbaa !24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %indvars.iv ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !18
  %i.fn = zext i8 %i.fm to i32
  %i.fo = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.77, ptr noundef nonnull %i.e, i32 noundef %i.fn, i32 noundef 0, i32 noundef 1) #9 ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = load i8, ptr %i.fl, align 1, !tbaa !18
  %.not150 = icmp eq i8 %i.fq, 0
  %.not151 = icmp eq i64 %indvars.iv, 3
  %or.cond = or i1 %.not151, %.not150
  br i1 %or.cond, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fr = getelementptr inbounds nuw i8, ptr @cbs_vp9_write_segmentation_params.segmentation_feature_bits, i64 %indvars.iv
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !18
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  store i32 2, ptr %i.f, align 4, !tbaa !24
  store i32 %i.fi, ptr %i.ez, align 4, !tbaa !24
  store i32 %i.fk, ptr %i.fa, align 4, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !18
  %i.fw = zext i8 %i.fv to i32
  %notmask = shl nsw i32 -1, %i.ft
  %i.fx = xor i32 %notmask, -1
  %i.fy = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef %i.ft, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.f, i32 noundef %i.fw, i32 noundef 0, i32 noundef %i.fx) #9 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ga = icmp eq i64 %indvars.iv, 2
  br i1 %i.ga, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 2, ptr %i.g, align 4, !tbaa !24
  store i32 %i.fi, ptr %i.fc, align 4, !tbaa !24
  store i32 %i.fk, ptr %i.fd, align 4, !tbaa !24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !18
  %i.gd = zext i8 %i.gc to i32
  %i.ge = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.g, i32 noundef %i.gd, i32 noundef 0, i32 noundef 1) #9 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %.loopexit, label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.gg = load i8, ptr %i.fj, align 1, !tbaa !18  ; 2 uses
  %.not155 = icmp eq i8 %i.gg, 0
  br i1 %.not155, label %bb.ba, label %.sink.split

bb.ax:                                            ; preds = %bb.as
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !18  ; 2 uses
  %.not152 = icmp eq i8 %i.gi, 0
  br i1 %.not152, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gj = load ptr, ptr %0, align 8, !tbaa !31
  %i.gk = zext i8 %i.gi to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gj, i32 noundef 24, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.78, i64 noundef %i.gk, i64 noundef 0) #9
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18  ; 2 uses
  %.not153 = icmp eq i8 %i.gm, 0
  br i1 %.not153, label %bb.ba, label %.sink.split

.sink.split:                                      ; preds = %bb.az, %bb.aw
  %.sink232 = phi i8 [ %i.gg, %bb.aw ], [ %i.gm, %bb.az ]
  %i.gn = load ptr, ptr %0, align 8, !tbaa !31
  %i.go = zext i8 %.sink232 to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gn, i32 noundef 24, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.79, i64 noundef %i.go, i64 noundef 0) #9
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %bb.aw, %bb.av, %bb.az
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.bb, label %bb.ar, !llvm.loop !135

bb.bb:                                            ; preds = %bb.ba
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next182, 8
  br i1 %exitcond184.not, label %.loopexit, label %.preheader, !llvm.loop !136

bb.bc:                                            ; preds = %bb.b
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 75
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !69  ; 2 uses
  %.not147 = icmp eq i8 %i.gq, 0
  br i1 %.not147, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gr = load ptr, ptr %0, align 8, !tbaa !31
  %i.gs = zext i8 %i.gq to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gr, i32 noundef 24, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.75, i64 noundef %i.gs, i64 noundef 0) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bb, %bb.av, %bb.at, %bb.ar, %bb.f, %.preheader166, %bb.g, %bb.i, %bb.j, %bb.l, %bb.m, %bb.o, %bb.p, %bb.r, %bb.s, %bb.u, %bb.v, %bb.x, %bb.ab, %bb.z, %bb.af, %bb.ah, %bb.ak, %bb.am, %bb.ap, %bb.bd, %bb.bc, %bb.aq, %.loopexit163, %bb.y, %bb.c, %bb.a
  %.0133 = phi i32 [ 0, %bb.bd ], [ %i.k, %bb.a ], [ %i.q, %bb.c ], [ %i.ge, %bb.av ], [ %i.ef, %bb.am ], [ %i.cq, %bb.y ], [ 0, %bb.bc ], [ %i.cb, %bb.u ], [ %i.eo, %.loopexit163 ], [ %i.eu, %bb.aq ], [ 0, %bb.ap ], [ %i.ch, %bb.v ], [ %i.cl, %bb.x ], [ %i.dd, %bb.ab ], [ %i.cz, %bb.z ], [ %i.dm, %bb.af ], [ %i.dq, %bb.ah ], [ %i.eb, %bb.ak ], [ %i.ad, %bb.f ], [ %i.z, %.preheader166 ], [ %i.aj, %bb.g ], [ %i.an, %bb.i ], [ %i.at, %bb.j ], [ %i.ax, %bb.l ], [ %i.bd, %bb.m ], [ %i.bh, %bb.o ], [ %i.bn, %bb.p ], [ %i.br, %bb.r ], [ %i.bx, %bb.s ], [ %i.fy, %bb.at ], [ %i.fo, %bb.ar ], [ 0, %bb.bb ]
  ret i32 %.0133
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_vp9_write_tile_info(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 4, !tbaa !92
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.019 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]   ; 3 uses
  %i.f = shl i32 64, %.019
  %i.g = icmp slt i32 %i.f, %i.e
  %i.h = add nuw nsw i32 %.019, 1
  br i1 %i.g, label %bb.b, label %.preheader, !llvm.loop !137

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0 = phi i32 [ %i.i, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %i.i = add nuw nsw i32 %.0, 1                   ; 2 uses
  %i.j = lshr i32 %i.e, %i.i
  %i.k = icmp samesign ugt i32 %i.j, 3
  br i1 %i.k, label %.preheader, label %bb.c, !llvm.loop !138

bb.c:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 173
  %i.m = load i8, ptr %i.l, align 1, !tbaa !73
  %i.n = zext i8 %i.m to i32
  %i.o = tail call fastcc i32 @cbs_vp9_write_increment(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.019, i32 noundef %.0, ptr noundef nonnull @.str.80, i32 noundef %i.n) ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 174
  %i.r = load i8, ptr %i.q, align 2, !tbaa !74
  %i.s = zext i8 %i.r to i32
  %i.t = tail call fastcc i32 @cbs_vp9_write_increment(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.020 = phi i32 [ %i.o, %bb.c ], [ %i.t, %bb.d ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -28, 1) i32 @cbs_vp9_write_s(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 4, 7) %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 -128, 128) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %.not = icmp eq i32 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !81 ; 3 uses
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre41 = load i32, ptr %.phi.trans.insert40, align 4, !tbaa !80
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  %6 = ptrtoint ptr %.pre to i64
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %6, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !80   ; 2 uses
  %.tr.i = trunc i64 %i.f to i32
  %i.i = shl i32 %.tr.i, 3
  %reass.sub = sub i32 %i.i, %i.h
  %i.j = add i32 %reass.sub, 32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.h, %bb.b ], [ %.pre41, %._crit_edge ] ; 6 uses
  %.0 = phi i32 [ %i.j, %bb.b ], [ undef, %._crit_edge ] ; 2 uses
  %.pre-phi = ptrtoint ptr %.pre to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %.pre-phi                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.tr.i30 = trunc i64 %i.p to i32
  %i.r = shl i32 %.tr.i30, 3
  %i.s = add i32 %i.k, -32
  %i.t = add i32 %i.s, %i.r
  %.not27 = icmp sgt i32 %i.t, %2
  br i1 %.not27, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %.lobit = lshr i32 %5, 31                       ; 4 uses
  %i.u = tail call i32 @llvm.abs.i32(i32 %5, i1 true) ; 3 uses
  %i.v = load i32, ptr %1, align 8, !tbaa !83     ; 2 uses
  %i.w = icmp slt i32 %2, %i.k
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = shl i32 %i.v, %2
  %i.y = or i32 %i.x, %i.u
  %i.z = sub nuw nsw i32 %i.k, %2
  br label %put_bits.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp ugt i64 %i.p, 3
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = shl i32 %i.v, %i.k
  %i.ac = sub nsw i32 %2, %i.k
  %i.ad = lshr i32 %i.u, %i.ac
  %i.ae = or i32 %i.ab, %i.ad
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  store i32 %i.af, ptr %.pre, align 1, !tbaa !18
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !81
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.87) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %reass.sub39 = sub i32 %i.k, %2
  %i.ai = add i32 %reass.sub39, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.e, %bb.i
  %.026.i.i = phi i32 [ %i.y, %bb.e ], [ %i.u, %bb.i ] ; 3 uses
  %.0.i.i = phi i32 [ %i.z, %bb.e ], [ %i.ai, %bb.i ] ; 5 uses
  store i32 %.026.i.i, ptr %1, align 8, !tbaa !83
  store i32 %.0.i.i, ptr %i.q, align 4, !tbaa !80
  %i.aj = icmp sgt i32 %.0.i.i, 1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %put_bits.exit
  %i.ak = shl i32 %.026.i.i, 1
  %i.al = or disjoint i32 %i.ak, %.lobit
  br label %put_bits.exit35

bb.k:                                             ; preds = %put_bits.exit
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !82
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !81  ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ugt i64 %i.aq, 3
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = shl i32 %.026.i.i, %.0.i.i
  %i.at = sub nsw i32 1, %.0.i.i
  %i.au = lshr i32 %.lobit, %i.at
  %i.av = or i32 %i.au, %i.as
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  store i32 %i.aw, ptr %i.an, align 1, !tbaa !18
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !81
  br label %put_bits.exit35

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.87) #9
  br label %put_bits.exit35

put_bits.exit35:                                  ; preds = %bb.l, %bb.m, %bb.j
  %.sink = phi i32 [ -1, %bb.j ], [ 31, %bb.m ], [ 31, %bb.l ]
  %.026.i.i33 = phi i32 [ %i.al, %bb.j ], [ %.lobit, %bb.m ], [ %.lobit, %bb.l ]
  %i.az = add nsw i32 %.0.i.i, %.sink             ; 2 uses
  store i32 %.026.i.i33, ptr %1, align 8, !tbaa !83
  store i32 %i.az, ptr %i.q, align 4, !tbaa !80
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !28
  %.not28 = icmp eq i32 %i.ba, 0
  br i1 %.not28, label %bb.q, label %bb.n

bb.n:                                             ; preds = %put_bits.exit35
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !84
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.tr.i36 = trunc i64 %i.bg to i32
  %i.bh = shl i32 %.tr.i36, 3
  %reass.sub.i37 = sub i32 %i.bh, %i.az
  %i.bi = add i32 %reass.sub.i37, 32              ; 2 uses
  %.not29 = icmp sgt i32 %.0, %i.bi
  br i1 %.not29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 70) #9
  tail call void @abort() #10
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !34
  %i.bn = sub nsw i32 %i.bi, %.0
  %i.bo = sext i32 %5 to i64
  tail call void %i.bk(ptr noundef %i.bm, ptr noundef nonnull %1, i32 noundef %i.bn, ptr noundef %3, ptr noundef %4, i64 noundef %i.bo) #9
  br label %bb.q

bb.q:                                             ; preds = %put_bits.exit35, %bb.p, %bb.c
  %.025 = phi i32 [ -28, %bb.c ], [ 0, %bb.p ], [ 0, %put_bits.exit35 ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @cbs_vp9_write_increment(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !80
  %.tr.i = trunc i64 %i.i to i32
  %i.l = shl i32 %.tr.i, 3
  %reass.sub = sub i32 %i.l, %i.k
  %i.m = add i32 %reass.sub, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %.not48 = icmp ugt i32 %2, %3
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sub nuw i32 %3, %2                       ; 2 uses
  %i.o = icmp ult i32 %i.n, 8
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.10, i32 noundef 111) #9
  tail call void @abort() #10
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = icmp ult i32 %5, %2
  %i.q = icmp ugt i32 %5, %3
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !31
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.r, i32 noundef 16, ptr noundef nonnull @.str.90, ptr noundef %4, i32 noundef %5, i32 noundef %2, i32 noundef %3) #9
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.s = icmp ne i32 %5, %3                       ; 2 uses
  %reass.sub57 = sub nuw nsw i32 %5, %2
  %i.t = add nuw nsw i32 %reass.sub57, 1
  %.041 = select i1 %i.s, i32 %i.t, i32 %i.n      ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !80 ; 7 uses
  %.tr.i51 = trunc i64 %i.aa to i32
  %i.ad = shl i32 %.tr.i51, 3
  %i.ae = add i32 %i.ac, -32
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = icmp slt i32 %i.af, %.041
  br i1 %i.ag, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_0
