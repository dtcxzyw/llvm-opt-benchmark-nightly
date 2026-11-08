Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/localtime?download=true
inline.NumInlined: 55
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@tzparse:bb.a

increment_overflow_time.exit287.thread.peel:      ; preds = %bb.as, %bb.ar, %bb.aq, %bb.al, %bb.ak
  %.1216.peel = phi i32 [ %i.da, %bb.ak ], [ %i.el, %bb.as ], [ %i.da, %bb.al ], [ %i.da, %bb.aq ], [ %i.da, %bb.ar ] ; 2 uses
  %.2213.peel = phi i32 [ 0, %bb.ak ], [ %i.ej, %bb.as ], [ 0, %bb.al ], [ %.1212.peel, %bb.aq ], [ %.1212.peel, %bb.ar ] ; 4 uses
  %i.em = add nsw i64 %i.do, %i.cz                ; 4 uses
  %i.en = icmp slt i64 %i.em, 0
  br i1 %i.en, label %bb.au, label %bb.at

bb.at:                                            ; preds = %increment_overflow_time.exit287.thread.peel
  %i.eo = sub nuw nsw i64 9223372036854775807, %i.em
  %.not.i288.peel = icmp sgt i64 %.3300304312, %i.eo
  br i1 %.not.i288.peel, label %.thread328, label %bb.av

bb.au:                                            ; preds = %increment_overflow_time.exit287.thread.peel
  %i.ep = sub nsw i64 -9223372036854775808, %i.em
  %.not8.i290.peel = icmp sgt i64 %i.ep, %.3300304312
  br i1 %.not8.i290.peel, label %.thread328, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.eq = add nuw nsw i32 %.lcssa, 1              ; 3 uses
  %i.er = icmp slt i32 %i.eq, %.1216.peel
  br i1 %i.er, label %.peel.next, label %.thread328

.peel.next:                                       ; preds = %bb.av
  %i.es = add i64 %i.em, %.3300304312
  br label %bb.aw

bb.aw:                                            ; preds = %.peel.next, %bb.bk
  %.0211364 = phi i32 [ %.2213.peel, %.peel.next ], [ %.2213, %bb.bk ] ; 8 uses
  %.0215363 = phi i32 [ %.1216.peel, %.peel.next ], [ %.1216, %bb.bk ] ; 4 uses
  %.0218362 = phi i32 [ %i.eq, %.peel.next ], [ %i.gg, %bb.bk ] ; 9 uses
  %.1298361 = phi i64 [ %i.es, %.peel.next ], [ %i.gf, %bb.bk ] ; 10 uses
  %i.et = call fastcc i64 @transtime(i32 noundef %.0218362, ptr noundef %3, i64 noundef %i.by) ; 5 uses
  %i.eu = call fastcc i64 @transtime(i32 noundef %.0218362, ptr noundef %4, i64 noundef %i.cf) ; 5 uses
  %i.ev = and i32 %.0218362, 3
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %.urem392 = urem i32 %.0218362, 100
  %.not261 = icmp eq i32 %.urem392, 0
  br i1 %.not261, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %.urem393 = urem i32 %.0218362, 400
  %i.ex = icmp eq i32 %.urem393, 0
  %i.ey = zext i1 %i.ex to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  %i.ez = phi i64 [ 0, %bb.aw ], [ 1, %bb.ax ], [ %i.ey, %bb.ay ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @year_lengths, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul nsw i64 %i.fc, 86400                ; 3 uses
  %i.fe = icmp slt i64 %i.eu, %i.et               ; 3 uses
  %i.ff = zext i1 %i.fe to i8
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.eu, i64 %i.et) ; 4 uses
  %spec.select264 = tail call i64 @llvm.smax.i64(i64 %i.eu, i64 %i.et) ; 4 uses
  br i1 %i.fe, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fg = icmp slt i64 %i.et, %i.eu
  br i1 %i.fg, label %bb.bb, label %increment_overflow_time.exit287.thread

bb.bb:                                            ; preds = %bb.ba
  %i.fh = sub i64 %i.eu, %i.et
  %i.fi = add i64 %i.db, %i.fd
  %i.fj = icmp slt i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.bc, label %increment_overflow_time.exit287.thread

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %i.fk = icmp sgt i32 %.0211364, 1998
  br i1 %i.fk, label %.thread328.thread, label %bb.bd

.thread328.thread:                                ; preds = %bb.bc
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.0211364, ptr %i.fl, align 4
  br label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  %i.fm = sext i32 %.0211364 to i64               ; 4 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.fm ; 2 uses
  store i64 %.1298361, ptr %i.fn, align 8
  %i.fo = icmp slt i64 %spec.select, 0
  br i1 %i.fo, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fp = sub nsw i64 -9223372036854775808, %spec.select
  %.not8.i282 = icmp sgt i64 %i.fp, %.1298361
  br i1 %.not8.i282, label %increment_overflow_time.exit283.thread, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.fq = sub nuw nsw i64 9223372036854775807, %spec.select
  %.not.i280 = icmp sgt i64 %.1298361, %i.fq
  br i1 %.not.i280, label %increment_overflow_time.exit283.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.fr = add i64 %spec.select, %.1298361
  store i64 %i.fr, ptr %i.fn, align 8
  %i.fs = xor i1 %i.fe, true
  %i.ft = zext i1 %i.fs to i8
  %i.fu = add nsw i32 %.0211364, 1                ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.dd, i64 %i.fm
  store i8 %i.ft, ptr %i.fv, align 1
  %.pre397 = sext i32 %i.fu to i64
  br label %increment_overflow_time.exit283.thread

increment_overflow_time.exit283.thread:           ; preds = %bb.be, %bb.bf, %bb.bg
  %.pre-phi = phi i64 [ %i.fm, %bb.be ], [ %i.fm, %bb.bf ], [ %.pre397, %bb.bg ] ; 2 uses
  %.1212 = phi i32 [ %.0211364, %bb.be ], [ %.0211364, %bb.bf ], [ %i.fu, %bb.bg ] ; 3 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.pre-phi ; 2 uses
  store i64 %.1298361, ptr %i.fw, align 8
  %i.fx = icmp slt i64 %spec.select264, 0
  br i1 %i.fx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %increment_overflow_time.exit283.thread
  %i.fy = sub nsw i64 -9223372036854775808, %spec.select264
  %.not8.i286 = icmp sgt i64 %i.fy, %.1298361
  br i1 %.not8.i286, label %increment_overflow_time.exit287.thread, label %bb.bj

bb.bi:                                            ; preds = %increment_overflow_time.exit283.thread
  %i.fz = sub nuw nsw i64 9223372036854775807, %spec.select264
  %.not.i284 = icmp sgt i64 %.1298361, %i.fz
  br i1 %.not.i284, label %increment_overflow_time.exit287.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ga = add i64 %spec.select264, %.1298361
  store i64 %i.ga, ptr %i.fw, align 8
  %i.gb = add nsw i32 %.1212, 1
  %i.gc = getelementptr inbounds i8, ptr %i.dd, i64 %.pre-phi
  store i8 %i.ff, ptr %i.gc, align 1
  %i.gd = add nuw i32 %.0218362, 401
  br label %increment_overflow_time.exit287.thread

increment_overflow_time.exit287.thread:           ; preds = %bb.ba, %bb.bb, %bb.bj, %bb.bi, %bb.bh
  %.1216 = phi i32 [ %.0215363, %bb.ba ], [ %i.gd, %bb.bj ], [ %.0215363, %bb.bb ], [ %.0215363, %bb.bi ], [ %.0215363, %bb.bh ] ; 2 uses
  %.2213 = phi i32 [ %.0211364, %bb.ba ], [ %i.gb, %bb.bj ], [ %.0211364, %bb.bb ], [ %.1212, %bb.bi ], [ %.1212, %bb.bh ] ; 3 uses
  %i.ge = sub nuw nsw i64 9223372036854775807, %i.fd
  %.not.i288 = icmp sgt i64 %.1298361, %i.ge
  br i1 %.not.i288, label %.thread328, label %bb.bk

bb.bk:                                            ; preds = %increment_overflow_time.exit287.thread
  %i.gf = add i64 %i.fd, %.1298361
  %i.gg = add nuw nsw i32 %.0218362, 1            ; 3 uses
  %i.gh = icmp slt i32 %i.gg, %.1216
  br i1 %i.gh, label %bb.aw, label %.thread328, !llvm.loop !40

.thread328:                                       ; preds = %bb.bk, %increment_overflow_time.exit287.thread, %bb.at, %bb.au, %bb.av
  %.2213.lcssa = phi i32 [ %.2213.peel, %bb.at ], [ %.2213.peel, %bb.au ], [ %.2213.peel, %bb.av ], [ %.2213, %increment_overflow_time.exit287.thread ], [ %.2213, %bb.bk ] ; 2 uses
  %.0218.lcssa.ph = phi i32 [ %.lcssa, %bb.at ], [ %.lcssa, %bb.au ], [ %i.eq, %bb.av ], [ %i.gg, %bb.bk ], [ %.0218362, %increment_overflow_time.exit287.thread ]
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.2213.lcssa, ptr %i.gi, align 4
  %.not262 = icmp eq i32 %.2213.lcssa, 0
  br i1 %.not262, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  store i32 1, ptr %i.bw, align 8
  br label %bb.bo

bb.bm:                                            ; preds = %.thread328.thread, %.thread328
  %.0218344 = phi i32 [ %.0218362, %.thread328.thread ], [ %.0218.lcssa.ph, %.thread328 ]
  %i.gj = sub nuw i32 %.0218344, %.lcssa
  %i.gk = icmp sgt i32 %i.gj, 400
  br i1 %i.gk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i8 1, ptr %i.ae, align 1
  store i8 1, ptr %i.af, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bx

bb.bp:                                            ; preds = %bb.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bq, !llvm.loop !41

bb.bq:                                            ; preds = %.lr.ph, %bb.bp
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bp ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i8, ptr %i.gp, align 8, !range !9, !noundef !10
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bp, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gs = load i64, ptr %i.go, align 8
  %i.gt = sub i64 0, %i.gs
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bp, %bb.br
  %.0199 = phi i64 [ %i.gt, %bb.br ], [ 0, %bb.bp ]
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16024
  %.pre396 = load i64, ptr %i.a, align 8          ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 18024
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gw = zext nneg i32 %i.bk to i64
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge, %bb.bw
  %indvars.iv388 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next389, %bb.bw ] ; 3 uses
  %.1200356 = phi i64 [ %.0199, %._crit_edge ], [ %.2201, %bb.bw ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv388 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %i.gz ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 8, !range !9, !noundef !10 ; 2 uses
  store i8 %i.hc, ptr %i.gx, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 17
  %i.he = load i8, ptr %i.hd, align 1, !range !9, !noundef !10
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hg = sub i64 %.pre396, %.1200356
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv388 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = add i64 %i.hg, %i.hi
  store i64 %i.hj, ptr %i.hh, align 8
  %.pre395 = load i8, ptr %i.hb, align 8, !range !9
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.hk = phi i8 [ %.pre395, %bb.bt ], [ %i.hc, %bb.bs ]
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hm = load i64, ptr %i.ha, align 8
  %i.hn = sub i64 0, %i.hm
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.2201 = phi i64 [ %i.hn, %bb.bv ], [ %.1200356, %bb.bu ]
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %i.ho = icmp samesign ult i64 %indvars.iv.next389, %i.gw
  br i1 %i.ho, label %bb.bs, label %._crit_edge360, !llvm.loop !42

._crit_edge360:                                   ; preds = %bb.bw, %._crit_edge.thread
  %.pre396426 = phi i64 [ %.pre396425, %._crit_edge.thread ], [ %.pre396, %bb.bw ]
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 18024
  %i.hq = sub i64 0, %.pre396426
  store i64 %i.hq, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 18032
  store i8 0, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 18036
  store i32 0, ptr %i.hs, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 18040
  store i8 0, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 18041
  store i8 0, ptr %i.hu, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 18048
  %i.hw = load i64, ptr %i.b, align 8
  %i.hx = sub i64 0, %i.hw
  %i.hy = trunc nuw nsw i64 %i.ac to i32
  store i64 %i.hx, ptr %i.hv, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 18056
  store i8 1, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 18060
  store i32 %i.hy, ptr %i.ia, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 18064
  store i8 0, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 18065
  store i8 0, ptr %i.ic, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 25480
  store i32 0, ptr %i.ie, align 8
  br label %bb.bx

.thread334:                                       ; preds = %bb.l
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.ig, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 18024
  %i.ii = load i64, ptr %i.a, align 8
  %i.ij = sub i64 0, %i.ii
  store i64 %i.ij, ptr %i.ih, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 18032
  store i8 0, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 18036
  store i32 0, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 18040
  store i8 0, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 18041
  store i8 0, ptr %i.in, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 25480
  store i32 0, ptr %i.io, align 8
  %i.ip = trunc nuw nsw i64 %i.ac to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ip, ptr %i.iq, align 4
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 24168 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ir, ptr align 1 %.1231, i64 %.1227, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.1227
  store i8 0, ptr %i.is, align 1
  br label %.critedge267

bb.bx:                                            ; preds = %._crit_edge360, %bb.bo
  %i.it = trunc nuw nsw i64 %i.ba to i32
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.it, ptr %i.iu, align 4
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 24168 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.iv, ptr align 1 %.1231, i64 %.1227, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.1227 ; 2 uses
  store i8 0, ptr %i.iw, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr nonnull align 1 %.0228, i64 %.0224, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %.0224
  store i8 0, ptr %i.iy, align 1
  br label %.critedge267

.critedge:                                        ; preds = %bb.z, %bb.y, %bb.x, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge267

.critedge267:                                     ; preds = %bb.e, %bb.n, %bb.w, %.thread334, %bb.bx, %.critedge, %bb.u, %bb.s, %bb.r, %bb.k, %bb.j, %bb.i
  %.2204 = phi i1 [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.r ], [ false, %bb.s ], [ true, %.thread334 ], [ false, %.critedge ], [ false, %bb.w ], [ true, %bb.bx ], [ false, %bb.i ], [ false, %bb.n ], [ false, %bb.u ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.2204
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @getoffset(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 2 uses
  %i.c = icmp eq i8 %i.a, 43
  %i.d = or i1 %i.b, %i.c
  %.012.idx = zext i1 %i.d to i64
  %.012 = getelementptr inbounds nuw i8, ptr %0, i64 %.012.idx ; 2 uses
  %i.e = load i8, ptr %.012, align 1              ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = add nsw i32 %i.f, -48
  %i.h = icmp ult i32 %i.g, 10
  br i1 %i.h, label %.preheader.i.i, label %getsecs.exit.thread

.preheader.i.i:                                   ; preds = %bb.a, %bb.b
  %.015.i.i = phi ptr [ %i.n, %bb.b ], [ %.012, %bb.a ] ; 2 uses
  %.013.i.i = phi i8 [ %i.o, %bb.b ], [ %i.e, %bb.a ]
  %.0.i.i = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.i = mul i32 %.0.i.i, 10
  %i.j = sext i8 %.013.i.i to i32
  %i.k = add nsw i32 %i.j, -48
  %i.l = add i32 %i.k, %i.i                       ; 4 uses
  %i.m = icmp sgt i32 %i.l, 167
  br i1 %i.m, label %getsecs.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1 ; 4 uses
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %.preheader.i.i, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i32 %i.l, 0
  br i1 %i.s, label %getsecs.exit.thread, label %getnum.exit.i

getnum.exit.i:                                    ; preds = %bb.c
  %i.t = zext nneg i32 %i.l to i64
  %i.u = mul nuw nsw i64 %i.t, 3600               ; 3 uses
  store i64 %i.u, ptr %1, align 8
  %i.v = load i8, ptr %i.n, align 1
  %i.w = icmp eq i8 %i.v, 58
  br i1 %i.w, label %bb.d, label %getsecs.exit

bb.d:                                             ; preds = %getnum.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = sext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -48
  %i.ab = icmp ult i32 %i.aa, 10
  br i1 %i.ab, label %.preheader.i20.i, label %getsecs.exit.thread

.preheader.i20.i:                                 ; preds = %bb.d, %bb.e
  %.015.i21.i = phi ptr [ %i.ah, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %.013.i22.i = phi i8 [ %i.ai, %bb.e ], [ %i.y, %bb.d ]
  %.0.i23.i = phi i32 [ %i.af, %bb.e ], [ 0, %bb.d ]
  %i.ac = mul i32 %.0.i23.i, 10
  %i.ad = sext i8 %.013.i22.i to i32
  %i.ae = add nsw i32 %i.ad, -48
  %i.af = add i32 %i.ae, %i.ac                    ; 4 uses
  %i.ag = icmp sgt i32 %i.af, 59
  br i1 %i.ag, label %getsecs.exit.thread, label %bb.e

bb.e:                                             ; preds = %.preheader.i20.i
end_hunk_0
