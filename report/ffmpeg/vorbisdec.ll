Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vorbisdec?download=true
inline.NumInlined: 163
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@vorbis_decode_frame:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.kj = load i16, ptr %i.kg, align 8, !tbaa !76
  switch i16 %i.kj, label %bb.fi [
    i16 2, label %bb.bb
    i16 1, label %bb.cu
    i16 0, label %bb.eb
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.kk = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 17 ; 3 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !78
  %i.kn = zext i8 %i.km to i64
  %i.ko = getelementptr inbounds nuw [48 x i8], ptr %i.kk, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 8, !tbaa !82  ; 2 uses
  %i.kq = zext i8 %i.kp to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 1048 ; 3 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !83
  %i.kt = add nsw i32 %.1213.i, -1
  %i.ku = mul i32 %i.kt, %i.fs
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kg, i64 1044
  %i.kw = load i16, ptr %i.kv, align 4, !tbaa !84
  %i.kx = zext i16 %i.kw to i32                   ; 2 uses
  %.not258.i = icmp eq i32 %.1213.i, 1            ; 2 uses
  %.pre.i.i = load i8, ptr %i.b, align 16, !tbaa !48 ; 4 uses
  br i1 %.not258.i, label %bb.bc, label %iter.check

iter.check:                                       ; preds = %bb.bb
  %wide.trip.count552.i.i = zext nneg i32 %.1213.i to i64 ; 2 uses
  %i.ky = add nsw i64 %wide.trip.count552.i.i, -1 ; 7 uses
  %min.iters.check348 = icmp ult i64 %i.ky, 8
  br i1 %min.iters.check348, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check349 = icmp ult i64 %i.ky, 32
  br i1 %min.iters.check349, label %vec.epilog.ph, label %vector.ph350

vector.ph350:                                     ; preds = %vector.main.loop.iter.check
  %i.kz = and i64 %i.ky, 24
  %n.vec351 = and i64 %i.ky, -32                  ; 4 uses
  %i.la = or disjoint i64 %n.vec351, 1
  %i.lb = insertelement <16 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %.pre.i.i, i64 0
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph350
  %index353 = phi i64 [ 0, %vector.ph350 ], [ %index.next357, %vector.body352 ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.lb, %vector.ph350 ], [ %i.lf, %vector.body352 ]
  %vec.phi354 = phi <16 x i8> [ splat (i8 -1), %vector.ph350 ], [ %i.lg, %vector.body352 ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 %index353 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 17
  %wide.load355 = load <16 x i8>, ptr %i.ld, align 1, !tbaa !48
  %wide.load356 = load <16 x i8>, ptr %i.le, align 1, !tbaa !48
  %i.lf = and <16 x i8> %wide.load355, %vec.phi   ; 2 uses
  %i.lg = and <16 x i8> %wide.load356, %vec.phi354 ; 2 uses
  %index.next357 = add nuw i64 %index353, 32      ; 2 uses
  %i.lh = icmp eq i64 %index.next357, %n.vec351
  br i1 %i.lh, label %middle.block358, label %vector.body352, !llvm.loop !119

middle.block358:                                  ; preds = %vector.body352
  %bin.rdx = and <16 x i8> %i.lg, %i.lf
  %i.li = tail call i8 @llvm.vector.reduce.and.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n359 = icmp eq i64 %i.ky, %n.vec351
  br i1 %cmp.n359, label %._crit_edge373.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block358
  %min.epilog.iters.check = icmp eq i64 %i.kz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !163

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec351, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.li, %vec.epilog.iter.check ], [ %.pre.i.i, %vector.main.loop.iter.check ]
  %n.vec361 = and i64 %i.ky, -8                   ; 3 uses
  %i.lj = or disjoint i64 %n.vec361, 1
  %i.lk = insertelement <8 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index362 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next365, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi363 = phi <8 x i8> [ %i.lk, %vec.epilog.ph ], [ %i.ln, %vec.epilog.vector.body ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.b, i64 %index362
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  %wide.load364 = load <8 x i8>, ptr %i.lm, align 1, !tbaa !48
  %i.ln = and <8 x i8> %wide.load364, %vec.phi363 ; 2 uses
  %index.next365 = add nuw i64 %index362, 8       ; 2 uses
  %i.lo = icmp eq i64 %index.next365, %n.vec361
  br i1 %i.lo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.lp = tail call i8 @llvm.vector.reduce.and.v8i8(<8 x i8> %i.ln) ; 2 uses
  %cmp.n366 = icmp eq i64 %i.ky, %n.vec361
  br i1 %cmp.n366, label %._crit_edge373.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv550.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.la, %vec.epilog.iter.check ], [ %i.lj, %vec.epilog.middle.block ]
  %.ph = phi i8 [ %.pre.i.i, %iter.check ], [ %i.li, %vec.epilog.iter.check ], [ %i.lp, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv550.i.i = phi i64 [ %indvars.iv.next551.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv550.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.lq = phi i8 [ %i.lt, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv550.i.i
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !48
  %i.lt = and i8 %i.ls, %i.lq                     ; 2 uses
  %indvars.iv.next551.i.i = add nuw nsw i64 %indvars.iv550.i.i, 1 ; 2 uses
  %exitcond553.not.i.i = icmp eq i64 %indvars.iv.next551.i.i, %wide.trip.count552.i.i
  br i1 %exitcond553.not.i.i, label %._crit_edge373.i.i, label %vec.epilog.scalar.ph, !llvm.loop !121

._crit_edge373.i.i:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block358
  %.lcssa312 = phi i8 [ %i.lp, %vec.epilog.middle.block ], [ %i.li, %middle.block358 ], [ %i.lt, %vec.epilog.scalar.ph ] ; 2 uses
  store i8 %.lcssa312, ptr %i.b, align 16, !tbaa !48
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge373.i.i, %bb.bb
  %i.lu = phi i8 [ %.lcssa312, %._crit_edge373.i.i ], [ %.pre.i.i, %bb.bb ]
  %.not.i.i.i = icmp eq i8 %i.lu, 0
  br i1 %.not.i.i.i, label %bb.bd, label %.loopexit.i

bb.bd:                                            ; preds = %bb.bc
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !87
  %i.lx = udiv i32 %i.lw, %.1213.i
  %.0282.i73.i.i = add i32 %i.lx, %i.ku           ; 2 uses
  %i.ly = mul i32 %.0217335.i, %i.fs              ; 2 uses
  %i.lz = icmp ugt i32 %.0282.i73.i.i, %i.ly      ; 2 uses
  br i1 %i.lz, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !88
  %i.mc = udiv i32 %i.mb, %.1213.i
  %i.md = add i32 %i.mc, %i.ly
  %.not326.i74.i.i = icmp ugt i32 %.0282.i73.i.i, %i.md
  br i1 %.not326.i74.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.me = add nsw i32 %i.kx, -1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.mf = load ptr, ptr %i.j, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.mf, i32 noundef 16, ptr noundef nonnull @.str.60) #11
  br label %vorbis_parse_audio_packet.exit.thread

bb.bh:                                            ; preds = %bb.bf, %bb.bd
  %.0281.i75.i.i = phi i32 [ %i.me, %bb.bf ], [ %i.kx, %bb.bd ] ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kg, i64 1042
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %.not333.i82431.i.i = icmp sgt i32 %.0281.i75.i.i, 0
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.mj = icmp ne i8 %i.kp, 0
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kg, i64 18
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kg, i64 12 ; 2 uses
  %i.mm = icmp eq i32 %.1213.i, 2
  %i.mn = zext nneg i32 %.1213.i to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.mn
  %i.mp = sext i32 %.0281.i75.i.i to i64
  %scevgep327 = getelementptr i8, ptr %.0222333.i, i64 4
  %scevgep331 = getelementptr i8, ptr %.0222333.i, i64 4
  br label %bb.bi

bb.bi:                                            ; preds = %.thread184.i.i, %bb.bh
  %indvars.iv573.i.i = phi i64 [ 0, %bb.bh ], [ %indvars.iv.next574.i.i, %.thread184.i.i ] ; 5 uses
  br i1 %.not333.i82431.i.i, label %.lr.ph436.i.i, label %._crit_edge437.i.i

.lr.ph436.i.i:                                    ; preds = %bb.bi
  %i.mq = load i32, ptr %i.mh, align 4, !tbaa !89
  %.not329.i91.i.i = icmp eq i64 %indvars.iv573.i.i, 0
  %invariant.gep424.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %indvars.iv573.i.i
  br label %bb.bj

.loopexit225.loopexit.i.i:                        ; preds = %.thread176.i.us.i
  %i.mr = trunc nsw i64 %indvars.iv.next571.i.us.i to i32
  br label %.loopexit225.i.i

.loopexit225.i.i:                                 ; preds = %setup_classifs.exit.thread.i.i, %.loopexit225.loopexit.i.i
  %.1274.i95.lcssa.i.i = phi i32 [ %.0273.i80432.i.i, %setup_classifs.exit.thread.i.i ], [ %i.agq, %.loopexit225.loopexit.i.i ]
  %.1272.i96.lcssa.i.i = phi i32 [ %.0271.i81433.i.i, %setup_classifs.exit.thread.i.i ], [ %i.mr, %.loopexit225.loopexit.i.i ] ; 2 uses
  %.not333.i82.i.i = icmp slt i32 %.1272.i96.lcssa.i.i, %.0281.i75.i.i
  br i1 %.not333.i82.i.i, label %bb.bj, label %._crit_edge437.i.i, !llvm.loop !122

bb.bj:                                            ; preds = %.loopexit225.i.i, %.lr.ph436.i.i
  %.0271.i81433.i.i = phi i32 [ 0, %.lr.ph436.i.i ], [ %.1272.i96.lcssa.i.i, %.loopexit225.i.i ] ; 7 uses
  %.0273.i80432.i.i = phi i32 [ %i.mq, %.lr.ph436.i.i ], [ %.1274.i95.lcssa.i.i, %.loopexit225.i.i ] ; 2 uses
  br i1 %.not329.i91.i.i, label %bb.bk, label %setup_classifs.exit.thread.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ms = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.mt = load i8, ptr %i.kl, align 1, !tbaa !78
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [48 x i8], ptr %i.ms, i64 %i.mu ; 3 uses
  %i.mw = load i8, ptr %i.mv, align 8, !tbaa !82
  %i.mx = zext i8 %i.mw to i32
  %i.my = load i8, ptr %i.mi, align 8, !tbaa !90  ; 2 uses
  %i.mz = zext i8 %i.my to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !43
  %i.nc = add i32 %.0271.i81433.i.i, -1
  %.1.i124376.i.i = add i32 %i.nc, %i.mx          ; 3 uses
  %.not50.i377.i.i = icmp slt i32 %.1.i124376.i.i, %.0271.i81433.i.i ; 2 uses
  %4 = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 40
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !91 ; 3 uses
  %i.ng = load i32, ptr %i.nd, align 8, !tbaa !92 ; 2 uses
  %i.nh = load i32, ptr %i.dt, align 8, !tbaa !47 ; 4 uses
  %i.ni = load i32, ptr %i.ds, align 8, !tbaa !46 ; 3 uses
  %i.nj = load ptr, ptr %i.k, align 8, !tbaa !44  ; 3 uses
  %i.nk = lshr i32 %i.nh, 3
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 1, !tbaa !48
  %i.no = and i32 %i.nh, 7
  %i.np = lshr i32 %i.nn, %i.no
  %i.nq = sub i32 32, %i.ng
  %i.nr = lshr i32 -1, %i.nq
  %i.ns = and i32 %i.np, %i.nr
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nt ; 2 uses
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !48
  %i.nw = sext i16 %i.nv to i32                   ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !48 ; 2 uses
  %i.nz = sext i16 %i.ny to i32                   ; 3 uses
  %i.oa = icmp slt i16 %i.ny, 0
  br i1 %i.oa, label %bb.bl, label %get_vlc2.exit.i119.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.ob = add i32 %i.nh, %i.ng
  %i.oc = tail call i32 @llvm.umin.i32(i32 %i.ni, i32 %i.ob) ; 4 uses
  %i.od = lshr i32 %i.oc, 3
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 1, !tbaa !48
  %i.oh = and i32 %i.oc, 7
  %i.oi = lshr i32 %i.og, %i.oh
  %i.oj = add nsw i32 %i.nz, 32
  %i.ok = lshr i32 -1, %i.oj
  %i.ol = and i32 %i.oi, %i.ok
  %i.om = add i32 %i.ol, %i.nw
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.on ; 2 uses
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !48
  %i.oq = sext i16 %i.op to i32                   ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 2
  %i.os = load i16, ptr %i.or, align 2, !tbaa !48 ; 2 uses
  %i.ot = sext i16 %i.os to i32                   ; 2 uses
  %i.ou = icmp slt i16 %i.os, 0
  br i1 %i.ou, label %bb.bm, label %get_vlc2.exit.i119.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.ov = sub i32 %i.oc, %i.nz
  %i.ow = tail call i32 @llvm.umin.i32(i32 %i.ni, i32 %i.ov) ; 3 uses
  %i.ox = lshr i32 %i.ow, 3
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 1, !tbaa !48
  %i.pb = and i32 %i.ow, 7
  %i.pc = lshr i32 %i.pa, %i.pb
  %i.pd = add nsw i32 %i.ot, 32
  %i.pe = lshr i32 -1, %i.pd
  %i.pf = and i32 %i.pc, %i.pe
  %i.pg = add i32 %i.pf, %i.oq
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.ph ; 2 uses
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !48
  %i.pk = sext i16 %i.pj to i32
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 2
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !48
  %i.pn = sext i16 %i.pm to i32
  br label %get_vlc2.exit.i119.i.i

get_vlc2.exit.i119.i.i:                           ; preds = %bb.bm, %bb.bl, %bb.bk
  %.167.i.i120.i.i = phi i32 [ %i.nw, %bb.bk ], [ %i.pk, %bb.bm ], [ %i.oq, %bb.bl ] ; 2 uses
  %.165.i.i121.i.i = phi i32 [ %i.nh, %bb.bk ], [ %i.ow, %bb.bm ], [ %i.oc, %bb.bl ]
  %.1.i.i122.i.i = phi i32 [ %i.nz, %bb.bk ], [ %i.pn, %bb.bm ], [ %i.ot, %bb.bl ]
  %i.po = add i32 %.1.i.i122.i.i, %.165.i.i121.i.i
  %i.pp = tail call i32 @llvm.umin.i32(i32 %i.ni, i32 %i.po)
  store i32 %i.pp, ptr %i.dt, align 8, !tbaa !47
  %i.pq = icmp slt i32 %.167.i.i120.i.i, 0
  br i1 %i.pq, label %setup_classifs.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %get_vlc2.exit.i119.i.i
  %i.pr = icmp eq i8 %i.my, 1
  br i1 %i.pr, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  br i1 %.not50.i377.i.i, label %setup_classifs.exit.thread.i.i, label %.lr.ph386.i.i

.lr.ph386.i.i:                                    ; preds = %bb.bo, %bb.bq
  %.045.i384.i.i = phi i32 [ %.045.i.i.i, %bb.bq ], [ %.1.i124376.i.i, %bb.bo ] ; 3 uses
  %i.ps = icmp slt i32 %.045.i384.i.i, %.0281.i75.i.i
  br i1 %i.ps, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph386.i.i
  %i.pt = load ptr, ptr %i.kr, align 8, !tbaa !83
  %i.pu = sext i32 %.045.i384.i.i to i64
  %i.pv = getelementptr inbounds i8, ptr %i.pt, i64 %i.pu
  store i8 0, ptr %i.pv, align 1, !tbaa !48
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph386.i.i
  %.045.i.i.i = add i32 %.045.i384.i.i, -1        ; 2 uses
  %.not51.i.i.i = icmp slt i32 %.045.i.i.i, %.0271.i81433.i.i
  br i1 %.not51.i.i.i, label %setup_classifs.exit.thread.i.i, label %.lr.ph386.i.i, !llvm.loop !123

bb.br:                                            ; preds = %bb.bn
  br i1 %.not50.i377.i.i, label %setup_classifs.exit.thread.i.i, label %.lr.ph381.i.i

.lr.ph381.i.i:                                    ; preds = %bb.br, %bb.bt
  %.1.i124379.i.i = phi i32 [ %.1.i124.i.i, %bb.bt ], [ %.1.i124376.i.i, %bb.br ] ; 3 uses
  %.0.i123378.i.i = phi i32 [ %8, %bb.bt ], [ %.167.i.i120.i.i, %bb.br ] ; 2 uses
  %5 = zext nneg i32 %.0.i123378.i.i to i64
  %6 = mul nuw nsw i64 %5, %4
  %7 = lshr i64 %6, 32
  %8 = trunc nuw nsw i64 %7 to i32                ; 2 uses
  %i.pw = icmp slt i32 %.1.i124379.i.i, %.0281.i75.i.i
  br i1 %i.pw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph381.i.i
  %i.px = load i8, ptr %i.mi, align 8, !tbaa !90
  %i.py = zext i8 %i.px to i32
  %i.pz = mul nuw nsw i32 %i.py, %8
  %i.qa = sub nsw i32 %.0.i123378.i.i, %i.pz
  %i.qb = trunc i32 %i.qa to i8
  %i.qc = load ptr, ptr %i.kr, align 8, !tbaa !83
  %i.qd = sext i32 %.1.i124379.i.i to i64
  %i.qe = getelementptr inbounds i8, ptr %i.qc, i64 %i.qd
  store i8 %i.qb, ptr %i.qe, align 1, !tbaa !48
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph381.i.i
  %.1.i124.i.i = add i32 %.1.i124379.i.i, -1      ; 2 uses
  %.not50.i.i.i = icmp slt i32 %.1.i124.i.i, %.0271.i81433.i.i
  br i1 %.not50.i.i.i, label %setup_classifs.exit.thread.i.i, label %.lr.ph381.i.i, !llvm.loop !124

setup_classifs.exit.i.i:                          ; preds = %get_vlc2.exit.i119.i.i
  %i.qf = load ptr, ptr %i.j, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.qf, i32 noundef 16, ptr noundef nonnull @.str.64, i32 noundef 0) #11
  br label %vorbis_parse_audio_packet.exit.thread

setup_classifs.exit.thread.i.i:                   ; preds = %bb.bt, %bb.bq, %bb.br, %bb.bo, %bb.bj
  %i.qg = icmp slt i32 %.0271.i81433.i.i, %.0281.i75.i.i
  %i.qh = and i1 %i.mj, %i.qg
  br i1 %i.qh, label %.preheader223.i.us.preheader.i, label %.loopexit225.i.i

.preheader223.i.us.preheader.i:                   ; preds = %setup_classifs.exit.thread.i.i
  %i.qi = sext i32 %.0271.i81433.i.i to i64
  br label %.preheader223.i.us.i

.preheader223.i.us.i:                             ; preds = %.thread176.i.us.i, %.preheader223.i.us.preheader.i
  %indvars.iv570.i.us.i = phi i64 [ %indvars.iv.next571.i.us.i, %.thread176.i.us.i ], [ %i.qi, %.preheader223.i.us.preheader.i ] ; 2 uses
  %.1274.i95427.i.us.i = phi i32 [ %i.agq, %.thread176.i.us.i ], [ %.0273.i80432.i.i, %.preheader223.i.us.preheader.i ] ; 6 uses
  %.0296.i94426.i.us.i = phi i32 [ %i.agr, %.thread176.i.us.i ], [ 0, %.preheader223.i.us.preheader.i ]
  %i.qj = sext i32 %.1274.i95427.i.us.i to i64
  %i.qk = ashr exact i32 %.1274.i95427.i.us.i, 1  ; 3 uses
  %i.ql = getelementptr inbounds i8, ptr %i.ks, i64 %indvars.iv570.i.us.i
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !48
  %i.qn = zext i8 %i.qm to i64
  %gep425.i.us.i = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep424.i.i, i64 %i.qn
  %i.qo = load i16, ptr %gep425.i.us.i, align 2, !tbaa !93 ; 2 uses
  %i.qp = icmp sgt i16 %i.qo, -1
  br i1 %i.qp, label %bb.bu, label %.preheader223.i.us..thread176.i.us_crit_edge.i

.preheader223.i.us..thread176.i.us_crit_edge.i:   ; preds = %.preheader223.i.us.i
  %.pre.i = load i32, ptr %i.ml, align 4, !tbaa !88
  br label %.thread176.i.us.i

bb.bu:                                            ; preds = %.preheader223.i.us.i
  %i.qq = zext nneg i16 %i.qo to i64
  %i.qr = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.qs = getelementptr inbounds nuw [48 x i8], ptr %i.qr, i64 %i.qq ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !94 ; 6 uses
  %.not331.i107.i.us.i = icmp eq ptr %i.qu, null
  %.pre417.i = load i32, ptr %i.ml, align 4, !tbaa !88 ; 10 uses
  br i1 %.not331.i107.i.us.i, label %.thread176.i.us.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qv = load i8, ptr %i.qs, align 8, !tbaa !82  ; 9 uses
  %i.qw = zext i8 %i.qv to i32                    ; 4 uses
  %i.qx = zext i32 %.pre417.i to i64
  %i.qy = shl nuw nsw i64 %i.qx, 1
  %i.qz = shl nuw nsw i32 %i.qw, 1
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !43
  %i.rd = zext i32 %i.rc to i64
  %i.re = mul i64 %i.qy, %i.rd
  %i.rf = lshr i64 %i.re, 32                      ; 4 uses
  %i.rg = trunc nuw i64 %i.rf to i32              ; 3 uses
  %.sroa.3.0..sroa_idx.i108.i.us.i = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %.sroa.3.0.copyload.i109.i.us.i = load ptr, ptr %.sroa.3.0..sroa_idx.i108.i.us.i, align 8, !tbaa !95 ; 12 uses
  %.sroa.20.0..sroa_idx.i112.i.us.i = getelementptr inbounds nuw i8, ptr %i.qs, i64 40
  %.sroa.20.0.copyload.i113.i.us.i = load i32, ptr %.sroa.20.0..sroa_idx.i112.i.us.i, align 8, !tbaa !43 ; 8 uses
  %.val158.i.us.i = load i32, ptr %i.dt, align 8, !tbaa !47 ; 5 uses
  %.val159.i.us.i = load i32, ptr %i.dq, align 4, !tbaa !45
  %i.rh = sub nsw i32 %.val159.i.us.i, %.val158.i.us.i ; 2 uses
  %i.ri = icmp slt i32 %i.rh, 0
  br i1 %i.ri, label %.loopexit.sink.split.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rj = or i32 %.1274.i95427.i.us.i, %i.qw
  %i.rk = and i32 %i.rj, 1
  %i.rl = icmp eq i32 %i.rk, 0
  %or.cond337.i.i.us.i = select i1 %i.mm, i1 %i.rl, i1 false
  br i1 %or.cond337.i.i.us.i, label %bb.ce, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br i1 %.not258.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rm = load i32, ptr %i.mo, align 4, !tbaa !43
  %i.rn = zext i32 %i.rm to i64
  %i.ro = mul nsw i64 %i.rn, %i.qj
  %i.rp = lshr i64 %i.ro, 32
  %i.rq = trunc nuw i64 %i.rp to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.rr = phi i32 [ %i.rq, %bb.by ], [ %.1274.i95427.i.us.i, %bb.bx ] ; 2 uses
  %.not332.i398.not.i.us.i = icmp eq i64 %i.rf, 0
  br i1 %.not332.i398.not.i.us.i, label %.thread176.i.us.i, label %.lr.ph403.i.us.i

.lr.ph403.i.us.i:                                 ; preds = %bb.bz
  %i.rs = mul i32 %i.rr, %.1213.i
  %i.rt = sub i32 %.1274.i95427.i.us.i, %i.rs
  %i.ru = load i32, ptr %i.ds, align 8, !tbaa !46 ; 3 uses
  %i.rv = load ptr, ptr %i.k, align 8, !tbaa !44  ; 3 uses
  %i.rw = sub i32 32, %.sroa.20.0.copyload.i113.i.us.i
  %i.rx = lshr i32 -1, %i.rw
  %.not447.i.us.i = icmp eq i8 %i.qv, 0
  %wide.trip.count557.i.us.i = zext i8 %i.qv to i64 ; 2 uses
  %xtraiter442 = and i64 %wide.trip.count557.i.us.i, 1
  %i.ry = icmp eq i8 %i.qv, 1
  %unroll_iter447 = and i64 %wide.trip.count557.i.us.i, 254
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  %lcmp.mod446 = trunc i8 %i.qv to i1
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge395.i.us.i, %.lr.ph403.i.us.i
  %i.rz = phi i32 [ %.val158.i.us.i, %.lr.ph403.i.us.i ], [ %i.ud, %._crit_edge395.i.us.i ] ; 4 uses
  %.0.i401.i.us.i = phi i32 [ %i.rt, %.lr.ph403.i.us.i ], [ %.1.i.lcssa.i.us.i, %._crit_edge395.i.us.i ] ; 3 uses
  %.0263.i400.i.us.i = phi i32 [ %i.rr, %.lr.ph403.i.us.i ], [ %.1264.i.lcssa.i.us.i, %._crit_edge395.i.us.i ] ; 3 uses
  %.5292.i399.i.us.i = phi i32 [ 0, %.lr.ph403.i.us.i ], [ %i.vm, %._crit_edge395.i.us.i ]
  %i.sa = lshr i32 %i.rz, 3
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 1, !tbaa !48
  %i.se = and i32 %i.rz, 7
  %i.sf = lshr i32 %i.sd, %i.se
  %i.sg = and i32 %i.sf, %i.rx
  %i.sh = zext i32 %i.sg to i64
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i109.i.us.i, i64 %i.sh ; 2 uses
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !48
  %i.sk = sext i16 %i.sj to i32                   ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 2
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !48 ; 2 uses
  %i.sn = sext i16 %i.sm to i32                   ; 3 uses
  %i.so = icmp slt i16 %i.sm, 0
  br i1 %i.so, label %bb.cb, label %get_vlc2.exit344.i.i.us.i

bb.cb:                                            ; preds = %bb.ca
  %i.sp = add i32 %i.rz, %.sroa.20.0.copyload.i113.i.us.i
  %i.sq = tail call i32 @llvm.umin.i32(i32 %i.ru, i32 %i.sp) ; 4 uses
  %i.sr = lshr i32 %i.sq, 3
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 1, !tbaa !48
  %i.sv = and i32 %i.sq, 7
  %i.sw = lshr i32 %i.su, %i.sv
  %i.sx = add nsw i32 %i.sn, 32
  %i.sy = lshr i32 -1, %i.sx
  %i.sz = and i32 %i.sw, %i.sy
  %i.ta = add i32 %i.sz, %i.sk
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i109.i.us.i, i64 %i.tb ; 2 uses
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !48
  %i.te = sext i16 %i.td to i32                   ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 2
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !48 ; 2 uses
  %i.th = sext i16 %i.tg to i32                   ; 2 uses
  %i.ti = icmp slt i16 %i.tg, 0
  br i1 %i.ti, label %bb.cc, label %get_vlc2.exit344.i.i.us.i

bb.cc:                                            ; preds = %bb.cb
  %i.tj = sub i32 %i.sq, %i.sn
  %i.tk = tail call i32 @llvm.umin.i32(i32 %i.ru, i32 %i.tj) ; 3 uses
  %i.tl = lshr i32 %i.tk, 3
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 1, !tbaa !48
  %i.tp = and i32 %i.tk, 7
  %i.tq = lshr i32 %i.to, %i.tp
  %i.tr = add nsw i32 %i.th, 32
  %i.ts = lshr i32 -1, %i.tr
  %i.tt = and i32 %i.tq, %i.ts
  %i.tu = add i32 %i.tt, %i.te
  %i.tv = zext i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i109.i.us.i, i64 %i.tv ; 2 uses
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !48
  %i.ty = sext i16 %i.tx to i32
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !48
  %i.ub = sext i16 %i.ua to i32
  br label %get_vlc2.exit344.i.i.us.i

get_vlc2.exit344.i.i.us.i:                        ; preds = %bb.cc, %bb.cb, %bb.ca
  %.167.i341.i.i.us.i = phi i32 [ %i.sk, %bb.ca ], [ %i.ty, %bb.cc ], [ %i.te, %bb.cb ] ; 3 uses
  %.165.i342.i.i.us.i = phi i32 [ %i.rz, %bb.ca ], [ %i.tk, %bb.cc ], [ %i.sq, %bb.cb ]
  %.1.i343.i.i.us.i = phi i32 [ %i.sn, %bb.ca ], [ %i.ub, %bb.cc ], [ %i.th, %bb.cb ]
  %i.uc = add i32 %.1.i343.i.i.us.i, %.165.i342.i.i.us.i
  %i.ud = tail call i32 @llvm.umin.i32(i32 %i.ru, i32 %i.uc) ; 2 uses
  store i32 %i.ud, ptr %i.dt, align 8, !tbaa !47
  %i.ue = icmp slt i32 %.167.i341.i.i.us.i, 0
  br i1 %i.ue, label %vorbis_parse_audio_packet.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %get_vlc2.exit344.i.i.us.i
  br i1 %.not447.i.us.i, label %._crit_edge395.i.us.i, label %.lr.ph394.preheader.i.us.i

.lr.ph394.preheader.i.us.i:                       ; preds = %bb.cd
  %i.uf = mul nuw nsw i32 %.167.i341.i.i.us.i, %i.qw
  %i.ug = zext nneg i32 %i.uf to i64
end_hunk_0
begin_hunk_1_@vorbis_decode_frame:bb.a
  br i1 %exitcond569.not.i.us.i, label %.thread176.i.us.i, label %bb.cn, !llvm.loop !135

.thread176.i.us.i:                                ; preds = %._crit_edge395.i.us.i, %bb.ci, %bb.cm, %._crit_edge416.i.us.i, %.preheader.i.us.i, %.preheader215.i.us.i, %.preheader218.i.us.i, %bb.bz, %bb.bu, %.preheader223.i.us..thread176.i.us_crit_edge.i
  %i.agp = phi i32 [ %.pre.i, %.preheader223.i.us..thread176.i.us_crit_edge.i ], [ %.pre417.i, %bb.ci ], [ %.pre417.i, %bb.cm ], [ %.pre417.i, %._crit_edge416.i.us.i ], [ %.pre417.i, %bb.bu ], [ %.pre417.i, %.preheader.i.us.i ], [ %.pre417.i, %.preheader215.i.us.i ], [ %.pre417.i, %.preheader218.i.us.i ], [ %.pre417.i, %bb.bz ], [ %.pre417.i, %._crit_edge395.i.us.i ]
  %indvars.iv.next571.i.us.i = add nsw i64 %indvars.iv570.i.us.i, 1 ; 3 uses
  %i.agq = add i32 %i.agp, %.1274.i95427.i.us.i   ; 2 uses
  %i.agr = add nuw nsw i32 %.0296.i94426.i.us.i, 1 ; 2 uses
  %i.ags = icmp samesign ult i32 %i.agr, %i.kq
  %i.agt = icmp slt i64 %indvars.iv.next571.i.us.i, %i.mp
  %i.agu = select i1 %i.ags, i1 %i.agt, i1 false
  br i1 %i.agu, label %.preheader223.i.us.i, label %.loopexit225.loopexit.i.i, !llvm.loop !136

._crit_edge437.i.i:                               ; preds = %.loopexit225.i.i, %bb.bi
  %i.agv = icmp eq i64 %indvars.iv573.i.i, 0
  %or.cond8.i83.i.not261.i = and i1 %i.lz, %i.agv
  br i1 %or.cond8.i83.i.not261.i, label %bb.cr, label %.thread184.i.i

bb.cr:                                            ; preds = %._crit_edge437.i.i
  %i.agw = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.agx = load i8, ptr %i.kl, align 1, !tbaa !78
  %i.agy = zext i8 %i.agx to i64
  %i.agz = getelementptr inbounds nuw [48 x i8], ptr %i.agw, i64 %i.agy ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !91 ; 3 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agz, i64 40
  %i.ahd = load i32, ptr %i.ahc, align 8, !tbaa !92 ; 2 uses
  %i.ahe = load i32, ptr %i.dt, align 8, !tbaa !47 ; 4 uses
  %i.ahf = load i32, ptr %i.ds, align 8, !tbaa !46 ; 3 uses
  %i.ahg = load ptr, ptr %i.k, align 8, !tbaa !44 ; 3 uses
  %i.ahh = lshr i32 %i.ahe, 3
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahg, i64 %i.ahi
  %i.ahk = load i32, ptr %i.ahj, align 1, !tbaa !48
  %i.ahl = and i32 %i.ahe, 7
  %i.ahm = lshr i32 %i.ahk, %i.ahl
  %i.ahn = sub i32 32, %i.ahd
  %i.aho = lshr i32 -1, %i.ahn
  %i.ahp = and i32 %i.ahm, %i.aho
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %i.ahq ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 2
  %i.aht = load i16, ptr %i.ahs, align 2, !tbaa !48 ; 2 uses
  %i.ahu = sext i16 %i.aht to i32                 ; 3 uses
  %i.ahv = icmp slt i16 %i.aht, 0
  br i1 %i.ahv, label %bb.cs, label %get_vlc2.exit.i87.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.ahw = load i16, ptr %i.ahr, align 2, !tbaa !48
  %i.ahx = sext i16 %i.ahw to i32
  %i.ahy = add i32 %i.ahe, %i.ahd
  %i.ahz = tail call i32 @llvm.umin.i32(i32 %i.ahf, i32 %i.ahy) ; 4 uses
  %i.aia = lshr i32 %i.ahz, 3
  %i.aib = zext nneg i32 %i.aia to i64
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahg, i64 %i.aib
  %i.aid = load i32, ptr %i.aic, align 1, !tbaa !48
  %i.aie = and i32 %i.ahz, 7
  %i.aif = lshr i32 %i.aid, %i.aie
  %i.aig = add nsw i32 %i.ahu, 32
  %i.aih = lshr i32 -1, %i.aig
  %i.aii = and i32 %i.aif, %i.aih
  %i.aij = add i32 %i.aii, %i.ahx
  %i.aik = zext i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %i.aik ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 2
  %i.ain = load i16, ptr %i.aim, align 2, !tbaa !48 ; 2 uses
  %i.aio = sext i16 %i.ain to i32                 ; 2 uses
  %i.aip = icmp slt i16 %i.ain, 0
  br i1 %i.aip, label %bb.ct, label %get_vlc2.exit.i87.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.aiq = load i16, ptr %i.ail, align 2, !tbaa !48
  %i.air = sext i16 %i.aiq to i32
  %i.ais = sub i32 %i.ahz, %i.ahu
  %i.ait = tail call i32 @llvm.umin.i32(i32 %i.ahf, i32 %i.ais) ; 3 uses
  %i.aiu = lshr i32 %i.ait, 3
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ahg, i64 %i.aiv
  %i.aix = load i32, ptr %i.aiw, align 1, !tbaa !48
  %i.aiy = and i32 %i.ait, 7
  %i.aiz = lshr i32 %i.aix, %i.aiy
  %i.aja = add nsw i32 %i.aio, 32
  %i.ajb = lshr i32 -1, %i.aja
  %i.ajc = and i32 %i.aiz, %i.ajb
  %i.ajd = add i32 %i.ajc, %i.air
  %i.aje = zext i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %i.aje
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 2
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !48
  %i.aji = sext i16 %i.ajh to i32
  br label %get_vlc2.exit.i87.i.i

get_vlc2.exit.i87.i.i:                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %.165.i.i89.i.i = phi i32 [ %i.ahe, %bb.cr ], [ %i.ait, %bb.ct ], [ %i.ahz, %bb.cs ]
  %.1.i.i90.i.i = phi i32 [ %i.ahu, %bb.cr ], [ %i.aji, %bb.ct ], [ %i.aio, %bb.cs ]
  %i.ajj = add i32 %.1.i.i90.i.i, %.165.i.i89.i.i
  %i.ajk = tail call i32 @llvm.umin.i32(i32 %i.ahf, i32 %i.ajj)
  store i32 %i.ajk, ptr %i.dt, align 8, !tbaa !47
  br label %.thread184.i.i

.thread184.i.i:                                   ; preds = %get_vlc2.exit.i87.i.i, %._crit_edge437.i.i
  %indvars.iv.next574.i.i = add nuw nsw i64 %indvars.iv573.i.i, 1
  %i.ajl = load i8, ptr %i.mg, align 2, !tbaa !97
  %i.ajm = zext i8 %i.ajl to i64
  %.not327.i78.not.i.i = icmp samesign ult i64 %indvars.iv573.i.i, %i.ajm
  br i1 %.not327.i78.not.i.i, label %bb.bi, label %.loopexit.i, !llvm.loop !137

bb.cu:                                            ; preds = %bb.ba
  %i.ajn = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.kg, i64 17 ; 3 uses
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !78
  %i.ajq = zext i8 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [48 x i8], ptr %i.ajn, i64 %i.ajq
  %i.ajs = load i8, ptr %i.ajr, align 8, !tbaa !82 ; 2 uses
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = getelementptr inbounds nuw i8, ptr %i.kg, i64 1048 ; 3 uses
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !83
  %i.ajw = add nsw i32 %.1213.i, -1
  %i.ajx = mul i32 %i.ajw, %i.fs
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.kg, i64 1044
  %i.ajz = load i16, ptr %i.ajy, align 4, !tbaa !84
  %i.aka = zext i16 %i.ajz to i32                 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !87
  %.0282.i26.i.i = add i32 %i.akc, %i.ajx         ; 2 uses
  %i.akd = mul i32 %.0217335.i, %i.fs             ; 2 uses
  %i.ake = icmp ule i32 %.0282.i26.i.i, %i.akd    ; 2 uses
  br i1 %i.ake, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.akf = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !88
  %i.akh = mul i32 %i.akg, %.1213.i
  %i.aki = udiv i32 %i.akh, %.1213.i
  %i.akj = add i32 %i.aki, %i.akd
  %.not326.i27.i.i = icmp ugt i32 %.0282.i26.i.i, %i.akj
  br i1 %.not326.i27.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.akk = add nsw i32 %i.aka, -1
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.akl = load ptr, ptr %i.j, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.akl, i32 noundef 16, ptr noundef nonnull @.str.60) #11
  br label %vorbis_parse_audio_packet.exit.thread

bb.cy:                                            ; preds = %bb.cw, %bb.cu
  %.0281.i28.i.i = phi i32 [ %i.akk, %bb.cw ], [ %i.aka, %bb.cu ] ; 7 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.kg, i64 1042
  %i.akn = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %.not333.i35357.i.i = icmp sgt i32 %.0281.i28.i.i, 0
  %i.ako = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 3 uses
  %i.akp = icmp ne i8 %i.ajs, 0
  %i.akq = getelementptr inbounds nuw i8, ptr %i.kg, i64 18
  %i.akr = getelementptr inbounds nuw i8, ptr %i.kg, i64 12 ; 2 uses
  %i.aks = sext i32 %.0281.i28.i.i to i64         ; 2 uses
  %wide.trip.count522.i.i = zext nneg i32 %.1213.i to i64 ; 3 uses
  br label %bb.cz

bb.cz:                                            ; preds = %.thread198.i.i, %bb.cy
  %indvars.iv547.i.i = phi i64 [ 0, %bb.cy ], [ %indvars.iv.next548.i.i, %.thread198.i.i ] ; 5 uses
  br i1 %.not333.i35357.i.i, label %.lr.ph362.i.i, label %._crit_edge363.i.i

.lr.ph362.i.i:                                    ; preds = %bb.cz
  %i.akt = load i32, ptr %i.akn, align 4, !tbaa !89
  %.not329.i45.i.i = icmp eq i64 %indvars.iv547.i.i, 0
  %invariant.gep350.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.akq, i64 %indvars.iv547.i.i
  br label %bb.da

.loopexit231.loopexit.i.i:                        ; preds = %bb.dw
  %i.aku = trunc nsw i64 %indvars.iv.next540.i.i to i32
  br label %.loopexit231.i.i

.loopexit231.i.i:                                 ; preds = %setup_classifs.exit140.thread.i.i, %.loopexit231.loopexit.i.i
  %.1274.i49.lcssa.i.i = phi i32 [ %.0273.i33358.i.i, %setup_classifs.exit140.thread.i.i ], [ %i.aub, %.loopexit231.loopexit.i.i ]
  %.1272.i50.lcssa.i.i = phi i32 [ %.0271.i34359.i.i, %setup_classifs.exit140.thread.i.i ], [ %i.aku, %.loopexit231.loopexit.i.i ] ; 2 uses
  %.not333.i35.i.i = icmp slt i32 %.1272.i50.lcssa.i.i, %.0281.i28.i.i
  br i1 %.not333.i35.i.i, label %bb.da, label %._crit_edge363.i.i, !llvm.loop !122

bb.da:                                            ; preds = %.loopexit231.i.i, %.lr.ph362.i.i
  %.0271.i34359.i.i = phi i32 [ 0, %.lr.ph362.i.i ], [ %.1272.i50.lcssa.i.i, %.loopexit231.i.i ] ; 7 uses
  %.0273.i33358.i.i = phi i32 [ %i.akt, %.lr.ph362.i.i ], [ %.1274.i49.lcssa.i.i, %.loopexit231.i.i ] ; 2 uses
  br i1 %.not329.i45.i.i, label %bb.db, label %setup_classifs.exit140.thread.i.i

bb.db:                                            ; preds = %bb.da
  %i.akv = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.akw = load i8, ptr %i.ajo, align 1, !tbaa !78
  %i.akx = zext i8 %i.akw to i64
  %i.aky = getelementptr inbounds nuw [48 x i8], ptr %i.akv, i64 %i.akx ; 3 uses
  %i.akz = load i8, ptr %i.aky, align 8, !tbaa !82
  %i.ala = zext i8 %i.akz to i32
  %i.alb = load i8, ptr %i.ako, align 8, !tbaa !90
  %i.alc = zext i8 %i.alb to i64
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.alc
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !43
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aky, i64 16
  %i.alg = getelementptr inbounds nuw i8, ptr %i.aky, i64 40
  %i.alh = add i32 %.0271.i34359.i.i, -1
  %.1.i135323.i.i = add i32 %i.alh, %i.ala        ; 3 uses
  %.not50.i136324.i.i = icmp slt i32 %.1.i135323.i.i, %.0271.i34359.i.i ; 2 uses
  %9 = zext i32 %i.ale to i64
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit229.i.i, %bb.db
  %indvars.iv519.i.i = phi i64 [ 0, %bb.db ], [ %indvars.iv.next520.i.i, %.loopexit229.i.i ] ; 3 uses
  %.047.i125334.i.i = phi i32 [ 0, %bb.db ], [ %i.aon, %.loopexit229.i.i ] ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv519.i.i
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !48
  %.not.i128.i.i = icmp eq i8 %i.alj, 0
  br i1 %.not.i128.i.i, label %bb.dd, label %.loopexit229.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.alk = load ptr, ptr %i.alf, align 8, !tbaa !91 ; 3 uses
  %i.all = load i32, ptr %i.alg, align 8, !tbaa !92 ; 2 uses
  %i.alm = load i32, ptr %i.dt, align 8, !tbaa !47 ; 4 uses
  %i.aln = load i32, ptr %i.ds, align 8, !tbaa !46 ; 3 uses
  %i.alo = load ptr, ptr %i.k, align 8, !tbaa !44 ; 3 uses
  %i.alp = lshr i32 %i.alm, 3
  %i.alq = zext nneg i32 %i.alp to i64
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.alq
  %i.als = load i32, ptr %i.alr, align 1, !tbaa !48
  %i.alt = and i32 %i.alm, 7
  %i.alu = lshr i32 %i.als, %i.alt
  %i.alv = sub i32 32, %i.all
  %i.alw = lshr i32 -1, %i.alv
  %i.alx = and i32 %i.alu, %i.alw
  %i.aly = zext i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %i.aly ; 2 uses
  %i.ama = load i16, ptr %i.alz, align 2, !tbaa !48
  %i.amb = sext i16 %i.ama to i32                 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alz, i64 2
  %i.amd = load i16, ptr %i.amc, align 2, !tbaa !48 ; 2 uses
  %i.ame = sext i16 %i.amd to i32                 ; 3 uses
  %i.amf = icmp slt i16 %i.amd, 0
  br i1 %i.amf, label %bb.de, label %get_vlc2.exit.i129.i.i

bb.de:                                            ; preds = %bb.dd
  %i.amg = add i32 %i.alm, %i.all
  %i.amh = tail call i32 @llvm.umin.i32(i32 %i.aln, i32 %i.amg) ; 4 uses
  %i.ami = lshr i32 %i.amh, 3
  %i.amj = zext nneg i32 %i.ami to i64
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.amj
  %i.aml = load i32, ptr %i.amk, align 1, !tbaa !48
  %i.amm = and i32 %i.amh, 7
  %i.amn = lshr i32 %i.aml, %i.amm
  %i.amo = add nsw i32 %i.ame, 32
  %i.amp = lshr i32 -1, %i.amo
  %i.amq = and i32 %i.amn, %i.amp
  %i.amr = add i32 %i.amq, %i.amb
  %i.ams = zext i32 %i.amr to i64
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %i.ams ; 2 uses
  %i.amu = load i16, ptr %i.amt, align 2, !tbaa !48
  %i.amv = sext i16 %i.amu to i32                 ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amt, i64 2
  %i.amx = load i16, ptr %i.amw, align 2, !tbaa !48 ; 2 uses
  %i.amy = sext i16 %i.amx to i32                 ; 2 uses
  %i.amz = icmp slt i16 %i.amx, 0
  br i1 %i.amz, label %bb.df, label %get_vlc2.exit.i129.i.i

bb.df:                                            ; preds = %bb.de
  %i.ana = sub i32 %i.amh, %i.ame
  %i.anb = tail call i32 @llvm.umin.i32(i32 %i.aln, i32 %i.ana) ; 3 uses
  %i.anc = lshr i32 %i.anb, 3
  %i.and = zext nneg i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.and
  %i.anf = load i32, ptr %i.ane, align 1, !tbaa !48
  %i.ang = and i32 %i.anb, 7
  %i.anh = lshr i32 %i.anf, %i.ang
  %i.ani = add nsw i32 %i.amy, 32
  %i.anj = lshr i32 -1, %i.ani
  %i.ank = and i32 %i.anh, %i.anj
  %i.anl = add i32 %i.ank, %i.amv
  %i.anm = zext i32 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %i.anm ; 2 uses
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !48
  %i.anp = sext i16 %i.ano to i32
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 2
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !48
  %i.ans = sext i16 %i.anr to i32
  br label %get_vlc2.exit.i129.i.i

get_vlc2.exit.i129.i.i:                           ; preds = %bb.df, %bb.de, %bb.dd
  %.167.i.i130.i.i = phi i32 [ %i.amb, %bb.dd ], [ %i.anp, %bb.df ], [ %i.amv, %bb.de ] ; 2 uses
  %.165.i.i131.i.i = phi i32 [ %i.alm, %bb.dd ], [ %i.anb, %bb.df ], [ %i.amh, %bb.de ]
  %.1.i.i132.i.i = phi i32 [ %i.ame, %bb.dd ], [ %i.ans, %bb.df ], [ %i.amy, %bb.de ]
  %i.ant = add i32 %.1.i.i132.i.i, %.165.i.i131.i.i
  %i.anu = tail call i32 @llvm.umin.i32(i32 %i.aln, i32 %i.ant)
  store i32 %i.anu, ptr %i.dt, align 8, !tbaa !47
  %i.anv = icmp slt i32 %.167.i.i130.i.i, 0
  br i1 %i.anv, label %setup_classifs.exit140.i.i, label %bb.dg

bb.dg:                                            ; preds = %get_vlc2.exit.i129.i.i
  %i.anw = load i8, ptr %i.ako, align 8, !tbaa !90
  %i.anx = icmp eq i8 %i.anw, 1
  br i1 %i.anx, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  br i1 %.not50.i136324.i.i, label %.loopexit229.i.i, label %.lr.ph333.i.i

.lr.ph333.i.i:                                    ; preds = %bb.dh, %bb.dj
  %.045.i138331.i.i = phi i32 [ %.045.i138.i.i, %bb.dj ], [ %.1.i135323.i.i, %bb.dh ] ; 3 uses
  %i.any = icmp slt i32 %.045.i138331.i.i, %.0281.i28.i.i
  br i1 %i.any, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.lr.ph333.i.i
  %i.anz = load ptr, ptr %i.aju, align 8, !tbaa !83
  %i.aoa = add nsw i32 %.045.i138331.i.i, %.047.i125334.i.i
  %i.aob = sext i32 %i.aoa to i64
  %i.aoc = getelementptr inbounds i8, ptr %i.anz, i64 %i.aob
  store i8 0, ptr %i.aoc, align 1, !tbaa !48
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.lr.ph333.i.i
  %.045.i138.i.i = add i32 %.045.i138331.i.i, -1  ; 2 uses
  %.not51.i139.i.i = icmp slt i32 %.045.i138.i.i, %.0271.i34359.i.i
  br i1 %.not51.i139.i.i, label %.loopexit229.i.i, label %.lr.ph333.i.i, !llvm.loop !123

bb.dk:                                            ; preds = %bb.dg
  br i1 %.not50.i136324.i.i, label %.loopexit229.i.i, label %.lr.ph328.i.i

.lr.ph328.i.i:                                    ; preds = %bb.dk, %bb.dm
  %.1.i135326.i.i = phi i32 [ %.1.i135.i.i, %bb.dm ], [ %.1.i135323.i.i, %bb.dk ] ; 3 uses
  %.0.i134325.i.i = phi i32 [ %13, %bb.dm ], [ %.167.i.i130.i.i, %bb.dk ] ; 2 uses
  %10 = zext nneg i32 %.0.i134325.i.i to i64
  %11 = mul nuw nsw i64 %10, %9
  %12 = lshr i64 %11, 32
  %13 = trunc nuw nsw i64 %12 to i32              ; 2 uses
  %i.aod = icmp slt i32 %.1.i135326.i.i, %.0281.i28.i.i
  br i1 %i.aod, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph328.i.i
  %i.aoe = load i8, ptr %i.ako, align 8, !tbaa !90
  %i.aof = zext i8 %i.aoe to i32
  %i.aog = mul nuw nsw i32 %i.aof, %13
  %i.aoh = sub nsw i32 %.0.i134325.i.i, %i.aog
  %i.aoi = trunc i32 %i.aoh to i8
  %i.aoj = load ptr, ptr %i.aju, align 8, !tbaa !83
  %i.aok = add nsw i32 %.1.i135326.i.i, %.047.i125334.i.i
  %i.aol = sext i32 %i.aok to i64
  %i.aom = getelementptr inbounds i8, ptr %i.aoj, i64 %i.aol
  store i8 %i.aoi, ptr %i.aom, align 1, !tbaa !48
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph328.i.i
  %.1.i135.i.i = add i32 %.1.i135326.i.i, -1      ; 2 uses
  %.not50.i136.i.i = icmp slt i32 %.1.i135.i.i, %.0271.i34359.i.i
  br i1 %.not50.i136.i.i, label %.loopexit229.i.i, label %.lr.ph328.i.i, !llvm.loop !124

.loopexit229.i.i:                                 ; preds = %bb.dm, %bb.dj, %bb.dk, %bb.dh, %bb.dc
  %i.aon = add nuw nsw i32 %.047.i125334.i.i, %.0281.i28.i.i
  %indvars.iv.next520.i.i = add nuw nsw i64 %indvars.iv519.i.i, 1 ; 2 uses
  %exitcond523.not.i.i = icmp eq i64 %indvars.iv.next520.i.i, %wide.trip.count522.i.i
  br i1 %exitcond523.not.i.i, label %setup_classifs.exit140.thread.i.i, label %bb.dc, !llvm.loop !138

setup_classifs.exit140.i.i:                       ; preds = %get_vlc2.exit.i129.i.i
  %i.aoo = trunc nuw nsw i64 %indvars.iv519.i.i to i32
  %i.aop = load ptr, ptr %i.j, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aop, i32 noundef 16, ptr noundef nonnull @.str.64, i32 noundef %i.aoo) #11
  br label %vorbis_parse_audio_packet.exit.thread

setup_classifs.exit140.thread.i.i:                ; preds = %.loopexit229.i.i, %bb.da
  %i.aoq = icmp slt i32 %.0271.i34359.i.i, %.0281.i28.i.i
  %i.aor = and i1 %i.akp, %i.aoq
  br i1 %i.aor, label %.preheader228.preheader.i.i, label %.loopexit231.i.i

.preheader228.preheader.i.i:                      ; preds = %setup_classifs.exit140.thread.i.i
  %i.aos = sext i32 %.0271.i34359.i.i to i64
  br label %.preheader228.i.i

.preheader228.i.i:                                ; preds = %bb.dw, %.preheader228.preheader.i.i
  %indvars.iv539.i.i = phi i64 [ %i.aos, %.preheader228.preheader.i.i ], [ %indvars.iv.next540.i.i, %bb.dw ] ; 2 uses
  %.1274.i49353.i.i = phi i32 [ %.0273.i33358.i.i, %.preheader228.preheader.i.i ], [ %i.aub, %bb.dw ] ; 2 uses
  %.0296.i48352.i.i = phi i32 [ 0, %.preheader228.preheader.i.i ], [ %i.auc, %bb.dw ]
  %invariant.gep645.i.i = getelementptr i8, ptr %i.ajv, i64 %indvars.iv539.i.i
  br label %bb.dn

bb.dn:                                            ; preds = %.thread190.i.i, %.preheader228.i.i
  %indvars.iv532.i.i = phi i64 [ 0, %.preheader228.i.i ], [ %indvars.iv.next533.i.i, %.thread190.i.i ] ; 3 uses
  %indvars.iv530.i.i = phi i64 [ 0, %.preheader228.i.i ], [ %indvars.iv.next531.i.i, %.thread190.i.i ] ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv532.i.i
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !48
  %.not330.i54.i.i = icmp eq i8 %i.aou, 0
  br i1 %.not330.i54.i.i, label %bb.do, label %.thread190.i.i

bb.do:                                            ; preds = %bb.dn
  %gep646.i.i = getelementptr i8, ptr %invariant.gep645.i.i, i64 %indvars.iv530.i.i
  %i.aov = load i8, ptr %gep646.i.i, align 1, !tbaa !48
  %i.aow = zext i8 %i.aov to i64
  %gep351.i.i = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep350.i.i, i64 %i.aow
  %i.aox = load i16, ptr %gep351.i.i, align 2, !tbaa !93 ; 2 uses
  %i.aoy = icmp sgt i16 %i.aox, -1
  br i1 %i.aoy, label %bb.dp, label %.thread190.i.i

bb.dp:                                            ; preds = %bb.do
  %i.aoz = zext nneg i16 %i.aox to i64
  %i.apa = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.apb = getelementptr inbounds nuw [48 x i8], ptr %i.apa, i64 %i.aoz ; 4 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 32
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !94 ; 3 uses
  %.not331.i61.i.i = icmp eq ptr %i.apd, null
  br i1 %.not331.i61.i.i, label %.thread190.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ape = load i8, ptr %i.apb, align 8, !tbaa !82 ; 4 uses
  %i.apf = zext i8 %i.ape to i32                  ; 2 uses
  %i.apg = load i32, ptr %i.akr, align 4, !tbaa !88
  %i.aph = zext i32 %i.apg to i64
  %i.api = shl nuw nsw i64 %i.aph, 1
  %i.apj = shl nuw nsw i32 %i.apf, 1
  %i.apk = zext nneg i32 %i.apj to i64
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.apk
  %i.apm = load i32, ptr %i.apl, align 8, !tbaa !43
  %i.apn = zext i32 %i.apm to i64
  %i.apo = mul i64 %i.api, %i.apn
  %i.app = lshr i64 %i.apo, 32                    ; 2 uses
  %i.apq = trunc nuw i64 %i.app to i32
  %.sroa.3.0..sroa_idx.i62.i.i = getelementptr inbounds nuw i8, ptr %i.apb, i64 16
  %.sroa.3.0.copyload.i63.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i62.i.i, align 8, !tbaa !95 ; 3 uses
  %.sroa.20.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.apb, i64 40
  %.sroa.20.0.copyload.i67.i.i = load i32, ptr %.sroa.20.0..sroa_idx.i66.i.i, align 8, !tbaa !43 ; 2 uses
  %.val162.i.i = load i32, ptr %i.dt, align 8, !tbaa !47 ; 2 uses
  %.val163.i.i = load i32, ptr %i.dq, align 4, !tbaa !45
  %i.apr = sub nsw i32 %.val163.i.i, %.val162.i.i ; 2 uses
  %i.aps = icmp slt i32 %i.apr, 0
  br i1 %i.aps, label %.loopexit.sink.split.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.not445.i.i = icmp eq i64 %i.app, 0
  br i1 %.not445.i.i, label %.thread190.i.i, label %.lr.ph346.i.i

.lr.ph346.i.i:                                    ; preds = %bb.dr
  %i.apt = trunc nuw i64 %indvars.iv532.i.i to i32
  %i.apu = mul i32 %i.fs, %i.apt
  %i.apv = add i32 %i.apu, %.1274.i49353.i.i
  %i.apw = load i32, ptr %i.ds, align 8, !tbaa !46 ; 3 uses
  %i.apx = load ptr, ptr %i.k, align 8, !tbaa !44 ; 3 uses
  %i.apy = sub i32 32, %.sroa.20.0.copyload.i67.i.i
  %i.apz = lshr i32 -1, %i.apy
  %.not446.i.i = icmp eq i8 %i.ape, 0
  %wide.trip.count527.i.i = zext i8 %i.ape to i64 ; 7 uses
  %i.aqa = add nsw i64 %wide.trip.count527.i.i, -1 ; 2 uses
  %i.aqb = shl nuw nsw i64 %wide.trip.count527.i.i, 2 ; 2 uses
  %scevgep371 = getelementptr i8, ptr %i.apd, i64 %i.aqb
  %scevgep374 = getelementptr i8, ptr %.0222333.i, i64 %i.aqb
  %min.iters.check380 = icmp ult i8 %i.ape, 8
  %i.aqc = trunc nsw i64 %i.aqa to i32
  %i.aqd = icmp ugt i64 %i.aqa, 4294967295
  %n.vec382 = and i64 %wide.trip.count527.i.i, 248 ; 4 uses
  %i.aqe = trunc nuw nsw i64 %n.vec382 to i32
  %cmp.n391 = icmp eq i64 %n.vec382, %wide.trip.count527.i.i
  %xtraiter440 = and i64 %wide.trip.count527.i.i, 1
  %lcmp.mod441.not = icmp eq i64 %xtraiter440, 0
  %i.aqf = add nsw i64 %wide.trip.count527.i.i, -1
  br label %bb.ds

bb.ds:                                            ; preds = %._crit_edge341.i.i, %.lr.ph346.i.i
  %i.aqg = phi i32 [ %.val162.i.i, %.lr.ph346.i.i ], [ %i.ask, %._crit_edge341.i.i ] ; 4 uses
  %.0266.i344.i.i = phi i32 [ %i.apv, %.lr.ph346.i.i ], [ %.1267.i.lcssa.i.i, %._crit_edge341.i.i ] ; 8 uses
  %.1288.i343.i.i = phi i32 [ 0, %.lr.ph346.i.i ], [ %i.atz, %._crit_edge341.i.i ]
  %i.aqh = lshr i32 %i.aqg, 3
  %i.aqi = zext nneg i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.apx, i64 %i.aqi
  %i.aqk = load i32, ptr %i.aqj, align 1, !tbaa !48
  %i.aql = and i32 %i.aqg, 7
  %i.aqm = lshr i32 %i.aqk, %i.aql
  %i.aqn = and i32 %i.aqm, %i.apz
  %i.aqo = zext i32 %i.aqn to i64
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i63.i.i, i64 %i.aqo ; 2 uses
  %i.aqq = load i16, ptr %i.aqp, align 2, !tbaa !48
  %i.aqr = sext i16 %i.aqq to i32                 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 2
  %i.aqt = load i16, ptr %i.aqs, align 2, !tbaa !48 ; 2 uses
  %i.aqu = sext i16 %i.aqt to i32                 ; 3 uses
  %i.aqv = icmp slt i16 %i.aqt, 0
  br i1 %i.aqv, label %bb.dt, label %get_vlc2.exit360.i.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.aqw = add i32 %i.aqg, %.sroa.20.0.copyload.i67.i.i
  %i.aqx = tail call i32 @llvm.umin.i32(i32 %i.apw, i32 %i.aqw) ; 4 uses
  %i.aqy = lshr i32 %i.aqx, 3
  %i.aqz = zext nneg i32 %i.aqy to i64
  %i.ara = getelementptr inbounds nuw i8, ptr %i.apx, i64 %i.aqz
  %i.arb = load i32, ptr %i.ara, align 1, !tbaa !48
  %i.arc = and i32 %i.aqx, 7
  %i.ard = lshr i32 %i.arb, %i.arc
  %i.are = add nsw i32 %i.aqu, 32
  %i.arf = lshr i32 -1, %i.are
  %i.arg = and i32 %i.ard, %i.arf
  %i.arh = add i32 %i.arg, %i.aqr
  %i.ari = zext i32 %i.arh to i64
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i63.i.i, i64 %i.ari ; 2 uses
  %i.ark = load i16, ptr %i.arj, align 2, !tbaa !48
  %i.arl = sext i16 %i.ark to i32                 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arj, i64 2
  %i.arn = load i16, ptr %i.arm, align 2, !tbaa !48 ; 2 uses
  %i.aro = sext i16 %i.arn to i32                 ; 2 uses
  %i.arp = icmp slt i16 %i.arn, 0
  br i1 %i.arp, label %bb.du, label %get_vlc2.exit360.i.i.i

bb.du:                                            ; preds = %bb.dt
  %i.arq = sub i32 %i.aqx, %i.aqu
  %i.arr = tail call i32 @llvm.umin.i32(i32 %i.apw, i32 %i.arq) ; 3 uses
  %i.ars = lshr i32 %i.arr, 3
  %i.art = zext nneg i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw i8, ptr %i.apx, i64 %i.art
  %i.arv = load i32, ptr %i.aru, align 1, !tbaa !48
  %i.arw = and i32 %i.arr, 7
  %i.arx = lshr i32 %i.arv, %i.arw
  %i.ary = add nsw i32 %i.aro, 32
  %i.arz = lshr i32 -1, %i.ary
  %i.asa = and i32 %i.arx, %i.arz
  %i.asb = add i32 %i.asa, %i.arl
  %i.asc = zext i32 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i63.i.i, i64 %i.asc ; 2 uses
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !48
  %i.asf = sext i16 %i.ase to i32
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 2
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !48
  %i.asi = sext i16 %i.ash to i32
  br label %get_vlc2.exit360.i.i.i

get_vlc2.exit360.i.i.i:                           ; preds = %bb.du, %bb.dt, %bb.ds
  %.167.i357.i.i.i = phi i32 [ %i.aqr, %bb.ds ], [ %i.asf, %bb.du ], [ %i.arl, %bb.dt ] ; 3 uses
  %.165.i358.i.i.i = phi i32 [ %i.aqg, %bb.ds ], [ %i.arr, %bb.du ], [ %i.aqx, %bb.dt ]
  %.1.i359.i.i.i = phi i32 [ %i.aqu, %bb.ds ], [ %i.asi, %bb.du ], [ %i.aro, %bb.dt ]
  %i.asj = add i32 %.1.i359.i.i.i, %.165.i358.i.i.i
  %i.ask = tail call i32 @llvm.umin.i32(i32 %i.apw, i32 %i.asj) ; 2 uses
  store i32 %i.ask, ptr %i.dt, align 8, !tbaa !47
  %i.asl = icmp slt i32 %.167.i357.i.i.i, 0
  br i1 %i.asl, label %vorbis_parse_audio_packet.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %get_vlc2.exit360.i.i.i
  br i1 %.not446.i.i, label %._crit_edge341.i.i, label %.lr.ph340.preheader.i.i

end_hunk_1
begin_hunk_2_@vorbis_decode_frame:bb.a
._crit_edge363.i.i:                               ; preds = %.loopexit231.i.i, %bb.cz
  %i.aug = icmp ne i64 %indvars.iv547.i.i, 0
  %or.cond8.i36.i.i = or i1 %i.ake, %i.aug
  br i1 %or.cond8.i36.i.i, label %.thread198.i.i, label %.preheader232.i.i

.preheader232.i.i:                                ; preds = %._crit_edge363.i.i, %bb.ea
  %indvars.iv542.i.i = phi i64 [ %indvars.iv.next543.i.i, %bb.ea ], [ 0, %._crit_edge363.i.i ] ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv542.i.i
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !48
  %.not328.i40.i.i = icmp eq i8 %i.aui, 0
  br i1 %.not328.i40.i.i, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %.preheader232.i.i
  %i.auj = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.auk = load i8, ptr %i.ajo, align 1, !tbaa !78
  %i.aul = zext i8 %i.auk to i64
  %i.aum = getelementptr inbounds nuw [48 x i8], ptr %i.auj, i64 %i.aul ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 16
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !91 ; 3 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aum, i64 40
  %i.auq = load i32, ptr %i.aup, align 8, !tbaa !92 ; 2 uses
  %i.aur = load i32, ptr %i.dt, align 8, !tbaa !47 ; 4 uses
  %i.aus = load i32, ptr %i.ds, align 8, !tbaa !46 ; 3 uses
  %i.aut = load ptr, ptr %i.k, align 8, !tbaa !44 ; 3 uses
  %i.auu = lshr i32 %i.aur, 3
  %i.auv = zext nneg i32 %i.auu to i64
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.auv
  %i.aux = load i32, ptr %i.auw, align 1, !tbaa !48
  %i.auy = and i32 %i.aur, 7
  %i.auz = lshr i32 %i.aux, %i.auy
  %i.ava = sub i32 32, %i.auq
  %i.avb = lshr i32 -1, %i.ava
  %i.avc = and i32 %i.auz, %i.avb
  %i.avd = zext i32 %i.avc to i64
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.auo, i64 %i.avd ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 2
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !48 ; 2 uses
  %i.avh = sext i16 %i.avg to i32                 ; 3 uses
  %i.avi = icmp slt i16 %i.avg, 0
  br i1 %i.avi, label %bb.dy, label %get_vlc2.exit.i41.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.avj = load i16, ptr %i.ave, align 2, !tbaa !48
  %i.avk = sext i16 %i.avj to i32
  %i.avl = add i32 %i.aur, %i.auq
  %i.avm = tail call i32 @llvm.umin.i32(i32 %i.aus, i32 %i.avl) ; 4 uses
  %i.avn = lshr i32 %i.avm, 3
  %i.avo = zext nneg i32 %i.avn to i64
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.avo
  %i.avq = load i32, ptr %i.avp, align 1, !tbaa !48
  %i.avr = and i32 %i.avm, 7
  %i.avs = lshr i32 %i.avq, %i.avr
  %i.avt = add nsw i32 %i.avh, 32
  %i.avu = lshr i32 -1, %i.avt
  %i.avv = and i32 %i.avs, %i.avu
  %i.avw = add i32 %i.avv, %i.avk
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.auo, i64 %i.avx ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 2
  %i.awa = load i16, ptr %i.avz, align 2, !tbaa !48 ; 2 uses
  %i.awb = sext i16 %i.awa to i32                 ; 2 uses
  %i.awc = icmp slt i16 %i.awa, 0
  br i1 %i.awc, label %bb.dz, label %get_vlc2.exit.i41.i.i

bb.dz:                                            ; preds = %bb.dy
  %i.awd = load i16, ptr %i.avy, align 2, !tbaa !48
  %i.awe = sext i16 %i.awd to i32
  %i.awf = sub i32 %i.avm, %i.avh
  %i.awg = tail call i32 @llvm.umin.i32(i32 %i.aus, i32 %i.awf) ; 3 uses
  %i.awh = lshr i32 %i.awg, 3
  %i.awi = zext nneg i32 %i.awh to i64
  %i.awj = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.awi
  %i.awk = load i32, ptr %i.awj, align 1, !tbaa !48
  %i.awl = and i32 %i.awg, 7
  %i.awm = lshr i32 %i.awk, %i.awl
  %i.awn = add nsw i32 %i.awb, 32
  %i.awo = lshr i32 -1, %i.awn
  %i.awp = and i32 %i.awm, %i.awo
  %i.awq = add i32 %i.awp, %i.awe
  %i.awr = zext i32 %i.awq to i64
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %i.auo, i64 %i.awr
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 2
  %i.awu = load i16, ptr %i.awt, align 2, !tbaa !48
  %i.awv = sext i16 %i.awu to i32
  br label %get_vlc2.exit.i41.i.i

get_vlc2.exit.i41.i.i:                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %.165.i.i43.i.i = phi i32 [ %i.aur, %bb.dx ], [ %i.awg, %bb.dz ], [ %i.avm, %bb.dy ]
  %.1.i.i44.i.i = phi i32 [ %i.avh, %bb.dx ], [ %i.awv, %bb.dz ], [ %i.awb, %bb.dy ]
  %i.aww = add i32 %.1.i.i44.i.i, %.165.i.i43.i.i
  %i.awx = tail call i32 @llvm.umin.i32(i32 %i.aus, i32 %i.aww)
  store i32 %i.awx, ptr %i.dt, align 8, !tbaa !47
  br label %bb.ea

bb.ea:                                            ; preds = %get_vlc2.exit.i41.i.i, %.preheader232.i.i
  %indvars.iv.next543.i.i = add nuw nsw i64 %indvars.iv542.i.i, 1 ; 2 uses
  %exitcond546.not.i.i = icmp eq i64 %indvars.iv.next543.i.i, %wide.trip.count522.i.i
  br i1 %exitcond546.not.i.i, label %.thread198.i.i, label %.preheader232.i.i, !llvm.loop !146

.thread198.i.i:                                   ; preds = %bb.ea, %._crit_edge363.i.i
  %indvars.iv.next548.i.i = add nuw nsw i64 %indvars.iv547.i.i, 1
  %i.awy = load i8, ptr %i.akm, align 2, !tbaa !97
  %i.awz = zext i8 %i.awy to i64
  %.not327.i31.not.i.i = icmp samesign ult i64 %indvars.iv547.i.i, %i.awz
  br i1 %.not327.i31.not.i.i, label %bb.cz, label %.loopexit.i, !llvm.loop !137

bb.eb:                                            ; preds = %bb.ba
  %i.axa = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.axb = getelementptr inbounds nuw i8, ptr %i.kg, i64 17 ; 3 uses
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !78
  %i.axd = zext i8 %i.axc to i64
  %i.axe = getelementptr inbounds nuw [48 x i8], ptr %i.axa, i64 %i.axd
  %i.axf = load i8, ptr %i.axe, align 8, !tbaa !82 ; 2 uses
  %i.axg = zext i8 %i.axf to i32
  %i.axh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1048 ; 3 uses
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !83
  %i.axj = add nsw i32 %.1213.i, -1
  %i.axk = mul i32 %i.axj, %i.fs
  %i.axl = getelementptr inbounds nuw i8, ptr %i.kg, i64 1044
  %i.axm = load i16, ptr %i.axl, align 4, !tbaa !84
  %i.axn = zext i16 %i.axm to i32                 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.axp = load i32, ptr %i.axo, align 8, !tbaa !87
  %.0282.i.i.i = add i32 %i.axp, %i.axk           ; 2 uses
  %i.axq = mul i32 %.0217335.i, %i.fs             ; 2 uses
  %i.axr = icmp ule i32 %.0282.i.i.i, %i.axq      ; 2 uses
  br i1 %i.axr, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.axs = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !88
  %i.axu = mul i32 %i.axt, %.1213.i
  %i.axv = udiv i32 %i.axu, %.1213.i
  %i.axw = add i32 %i.axv, %i.axq
  %.not326.i.i.i = icmp ugt i32 %.0282.i.i.i, %i.axw
  br i1 %.not326.i.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.axx = add nsw i32 %i.axn, -1
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.axy = load ptr, ptr %i.j, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.axy, i32 noundef 16, ptr noundef nonnull @.str.60) #11
  br label %vorbis_parse_audio_packet.exit.thread

bb.ef:                                            ; preds = %bb.ed, %bb.eb
  %.0281.i.i.i = phi i32 [ %i.axx, %bb.ed ], [ %i.axn, %bb.eb ] ; 7 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.kg, i64 1042
  %i.aya = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %.not333.i310.i.i = icmp sgt i32 %.0281.i.i.i, 0
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 3 uses
  %i.ayc = icmp ne i8 %i.axf, 0
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.kg, i64 18
  %i.aye = getelementptr inbounds nuw i8, ptr %i.kg, i64 12 ; 2 uses
  %i.ayf = sext i32 %.0281.i.i.i to i64           ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %.1213.i to i64 ; 3 uses
  br label %bb.eg

bb.eg:                                            ; preds = %.thread212.i.i, %bb.ef
  %indvars.iv516.i.i = phi i64 [ 0, %bb.ef ], [ %indvars.iv.next517.i.i, %.thread212.i.i ] ; 5 uses
  br i1 %.not333.i310.i.i, label %.lr.ph315.i.i, label %._crit_edge316.i.i

.lr.ph315.i.i:                                    ; preds = %bb.eg
  %i.ayg = load i32, ptr %i.aya, align 4, !tbaa !89
  %.not329.i.i.i = icmp eq i64 %indvars.iv516.i.i, 0
  %invariant.gep.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.ayd, i64 %indvars.iv516.i.i
  br label %bb.eh

.loopexit239.loopexit.i.i:                        ; preds = %bb.fd
  %i.ayh = trunc nsw i64 %indvars.iv.next509.i.i to i32
  br label %.loopexit239.i.i

.loopexit239.i.i:                                 ; preds = %setup_classifs.exit156.thread.i.i, %.loopexit239.loopexit.i.i
  %.1274.i.lcssa.i.i = phi i32 [ %.0273.i311.i.i, %setup_classifs.exit156.thread.i.i ], [ %i.bgx, %.loopexit239.loopexit.i.i ]
  %.1272.i.lcssa.i.i = phi i32 [ %.0271.i312.i.i, %setup_classifs.exit156.thread.i.i ], [ %i.ayh, %.loopexit239.loopexit.i.i ] ; 2 uses
  %.not333.i.i.i = icmp slt i32 %.1272.i.lcssa.i.i, %.0281.i.i.i
  br i1 %.not333.i.i.i, label %bb.eh, label %._crit_edge316.i.i, !llvm.loop !122

bb.eh:                                            ; preds = %.loopexit239.i.i, %.lr.ph315.i.i
  %.0271.i312.i.i = phi i32 [ 0, %.lr.ph315.i.i ], [ %.1272.i.lcssa.i.i, %.loopexit239.i.i ] ; 7 uses
  %.0273.i311.i.i = phi i32 [ %i.ayg, %.lr.ph315.i.i ], [ %.1274.i.lcssa.i.i, %.loopexit239.i.i ] ; 2 uses
  br i1 %.not329.i.i.i, label %bb.ei, label %setup_classifs.exit156.thread.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.ayi = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.ayj = load i8, ptr %i.axb, align 1, !tbaa !78
  %i.ayk = zext i8 %i.ayj to i64
  %i.ayl = getelementptr inbounds nuw [48 x i8], ptr %i.ayi, i64 %i.ayk ; 3 uses
  %i.aym = load i8, ptr %i.ayl, align 8, !tbaa !82
  %i.ayn = zext i8 %i.aym to i32
  %i.ayo = load i8, ptr %i.ayb, align 8, !tbaa !90
  %i.ayp = zext i8 %i.ayo to i64
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ayp
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !43
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayl, i64 16
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayl, i64 40
  %i.ayu = add i32 %.0271.i312.i.i, -1
  %.1.i151288.i.i = add i32 %i.ayu, %i.ayn        ; 3 uses
  %.not50.i152289.i.i = icmp slt i32 %.1.i151288.i.i, %.0271.i312.i.i ; 2 uses
  %14 = zext i32 %i.ayr to i64
  br label %bb.ej

bb.ej:                                            ; preds = %.loopexit237.i.i, %bb.ei
  %indvars.iv.i.i = phi i64 [ 0, %bb.ei ], [ %indvars.iv.next.i.i, %.loopexit237.i.i ] ; 3 uses
  %.047.i141296.i.i = phi i32 [ 0, %bb.ei ], [ %i.bca, %.loopexit237.i.i ] ; 3 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i
  %i.ayw = load i8, ptr %i.ayv, align 1, !tbaa !48
  %.not.i144.i.i = icmp eq i8 %i.ayw, 0
  br i1 %.not.i144.i.i, label %bb.ek, label %.loopexit237.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.ayx = load ptr, ptr %i.ays, align 8, !tbaa !91 ; 3 uses
  %i.ayy = load i32, ptr %i.ayt, align 8, !tbaa !92 ; 2 uses
  %i.ayz = load i32, ptr %i.dt, align 8, !tbaa !47 ; 4 uses
  %i.aza = load i32, ptr %i.ds, align 8, !tbaa !46 ; 3 uses
  %i.azb = load ptr, ptr %i.k, align 8, !tbaa !44 ; 3 uses
  %i.azc = lshr i32 %i.ayz, 3
  %i.azd = zext nneg i32 %i.azc to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azb, i64 %i.azd
  %i.azf = load i32, ptr %i.aze, align 1, !tbaa !48
  %i.azg = and i32 %i.ayz, 7
  %i.azh = lshr i32 %i.azf, %i.azg
  %i.azi = sub i32 32, %i.ayy
  %i.azj = lshr i32 -1, %i.azi
  %i.azk = and i32 %i.azh, %i.azj
  %i.azl = zext i32 %i.azk to i64
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %i.ayx, i64 %i.azl ; 2 uses
  %i.azn = load i16, ptr %i.azm, align 2, !tbaa !48
  %i.azo = sext i16 %i.azn to i32                 ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azm, i64 2
  %i.azq = load i16, ptr %i.azp, align 2, !tbaa !48 ; 2 uses
  %i.azr = sext i16 %i.azq to i32                 ; 3 uses
  %i.azs = icmp slt i16 %i.azq, 0
  br i1 %i.azs, label %bb.el, label %get_vlc2.exit.i145.i.i

bb.el:                                            ; preds = %bb.ek
  %i.azt = add i32 %i.ayz, %i.ayy
  %i.azu = tail call i32 @llvm.umin.i32(i32 %i.aza, i32 %i.azt) ; 4 uses
  %i.azv = lshr i32 %i.azu, 3
  %i.azw = zext nneg i32 %i.azv to i64
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azb, i64 %i.azw
  %i.azy = load i32, ptr %i.azx, align 1, !tbaa !48
  %i.azz = and i32 %i.azu, 7
  %i.baa = lshr i32 %i.azy, %i.azz
  %i.bab = add nsw i32 %i.azr, 32
  %i.bac = lshr i32 -1, %i.bab
  %i.bad = and i32 %i.baa, %i.bac
  %i.bae = add i32 %i.bad, %i.azo
  %i.baf = zext i32 %i.bae to i64
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %i.ayx, i64 %i.baf ; 2 uses
  %i.bah = load i16, ptr %i.bag, align 2, !tbaa !48
  %i.bai = sext i16 %i.bah to i32                 ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bag, i64 2
  %i.bak = load i16, ptr %i.baj, align 2, !tbaa !48 ; 2 uses
  %i.bal = sext i16 %i.bak to i32                 ; 2 uses
  %i.bam = icmp slt i16 %i.bak, 0
  br i1 %i.bam, label %bb.em, label %get_vlc2.exit.i145.i.i

bb.em:                                            ; preds = %bb.el
  %i.ban = sub i32 %i.azu, %i.azr
  %i.bao = tail call i32 @llvm.umin.i32(i32 %i.aza, i32 %i.ban) ; 3 uses
  %i.bap = lshr i32 %i.bao, 3
  %i.baq = zext nneg i32 %i.bap to i64
  %i.bar = getelementptr inbounds nuw i8, ptr %i.azb, i64 %i.baq
  %i.bas = load i32, ptr %i.bar, align 1, !tbaa !48
  %i.bat = and i32 %i.bao, 7
  %i.bau = lshr i32 %i.bas, %i.bat
  %i.bav = add nsw i32 %i.bal, 32
  %i.baw = lshr i32 -1, %i.bav
  %i.bax = and i32 %i.bau, %i.baw
  %i.bay = add i32 %i.bax, %i.bai
  %i.baz = zext i32 %i.bay to i64
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.ayx, i64 %i.baz ; 2 uses
  %i.bbb = load i16, ptr %i.bba, align 2, !tbaa !48
  %i.bbc = sext i16 %i.bbb to i32
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bba, i64 2
  %i.bbe = load i16, ptr %i.bbd, align 2, !tbaa !48
  %i.bbf = sext i16 %i.bbe to i32
  br label %get_vlc2.exit.i145.i.i

get_vlc2.exit.i145.i.i:                           ; preds = %bb.em, %bb.el, %bb.ek
  %.167.i.i146.i.i = phi i32 [ %i.azo, %bb.ek ], [ %i.bbc, %bb.em ], [ %i.bai, %bb.el ] ; 2 uses
  %.165.i.i147.i.i = phi i32 [ %i.ayz, %bb.ek ], [ %i.bao, %bb.em ], [ %i.azu, %bb.el ]
  %.1.i.i148.i.i = phi i32 [ %i.azr, %bb.ek ], [ %i.bbf, %bb.em ], [ %i.bal, %bb.el ]
  %i.bbg = add i32 %.1.i.i148.i.i, %.165.i.i147.i.i
  %i.bbh = tail call i32 @llvm.umin.i32(i32 %i.aza, i32 %i.bbg)
  store i32 %i.bbh, ptr %i.dt, align 8, !tbaa !47
  %i.bbi = icmp slt i32 %.167.i.i146.i.i, 0
  br i1 %i.bbi, label %setup_classifs.exit156.i.i, label %bb.en

bb.en:                                            ; preds = %get_vlc2.exit.i145.i.i
  %i.bbj = load i8, ptr %i.ayb, align 8, !tbaa !90
  %i.bbk = icmp eq i8 %i.bbj, 1
  br i1 %i.bbk, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  br i1 %.not50.i152289.i.i, label %.loopexit237.i.i, label %.lr.ph295.i.i

.lr.ph295.i.i:                                    ; preds = %bb.eo, %bb.eq
  %.045.i154294.i.i = phi i32 [ %.045.i154.i.i, %bb.eq ], [ %.1.i151288.i.i, %bb.eo ] ; 3 uses
  %i.bbl = icmp slt i32 %.045.i154294.i.i, %.0281.i.i.i
  br i1 %i.bbl, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %.lr.ph295.i.i
  %i.bbm = load ptr, ptr %i.axh, align 8, !tbaa !83
  %i.bbn = add nsw i32 %.045.i154294.i.i, %.047.i141296.i.i
  %i.bbo = sext i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds i8, ptr %i.bbm, i64 %i.bbo
  store i8 0, ptr %i.bbp, align 1, !tbaa !48
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.lr.ph295.i.i
  %.045.i154.i.i = add i32 %.045.i154294.i.i, -1  ; 2 uses
  %.not51.i155.i.i = icmp slt i32 %.045.i154.i.i, %.0271.i312.i.i
  br i1 %.not51.i155.i.i, label %.loopexit237.i.i, label %.lr.ph295.i.i, !llvm.loop !123

bb.er:                                            ; preds = %bb.en
  br i1 %.not50.i152289.i.i, label %.loopexit237.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.er, %bb.et
  %.1.i151291.i.i = phi i32 [ %.1.i151.i.i, %bb.et ], [ %.1.i151288.i.i, %bb.er ] ; 3 uses
  %.0.i150290.i.i = phi i32 [ %18, %bb.et ], [ %.167.i.i146.i.i, %bb.er ] ; 2 uses
  %15 = zext nneg i32 %.0.i150290.i.i to i64
  %16 = mul nuw nsw i64 %15, %14
  %17 = lshr i64 %16, 32
  %18 = trunc nuw nsw i64 %17 to i32              ; 2 uses
  %i.bbq = icmp slt i32 %.1.i151291.i.i, %.0281.i.i.i
  br i1 %i.bbq, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.lr.ph.i.i
  %i.bbr = load i8, ptr %i.ayb, align 8, !tbaa !90
  %i.bbs = zext i8 %i.bbr to i32
  %i.bbt = mul nuw nsw i32 %i.bbs, %18
  %i.bbu = sub nsw i32 %.0.i150290.i.i, %i.bbt
  %i.bbv = trunc i32 %i.bbu to i8
  %i.bbw = load ptr, ptr %i.axh, align 8, !tbaa !83
  %i.bbx = add nsw i32 %.1.i151291.i.i, %.047.i141296.i.i
  %i.bby = sext i32 %i.bbx to i64
  %i.bbz = getelementptr inbounds i8, ptr %i.bbw, i64 %i.bby
  store i8 %i.bbv, ptr %i.bbz, align 1, !tbaa !48
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.lr.ph.i.i
  %.1.i151.i.i = add i32 %.1.i151291.i.i, -1      ; 2 uses
  %.not50.i152.i.i = icmp slt i32 %.1.i151.i.i, %.0271.i312.i.i
  br i1 %.not50.i152.i.i, label %.loopexit237.i.i, label %.lr.ph.i.i, !llvm.loop !124

.loopexit237.i.i:                                 ; preds = %bb.et, %bb.eq, %bb.er, %bb.eo, %bb.ej
  %i.bca = add nuw nsw i32 %.047.i141296.i.i, %.0281.i.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %setup_classifs.exit156.thread.i.i, label %bb.ej, !llvm.loop !138

setup_classifs.exit156.i.i:                       ; preds = %get_vlc2.exit.i145.i.i
  %i.bcb = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.bcc = load ptr, ptr %i.j, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bcc, i32 noundef 16, ptr noundef nonnull @.str.64, i32 noundef %i.bcb) #11
  br label %vorbis_parse_audio_packet.exit.thread

setup_classifs.exit156.thread.i.i:                ; preds = %.loopexit237.i.i, %bb.eh
  %i.bcd = icmp slt i32 %.0271.i312.i.i, %.0281.i.i.i
  %i.bce = and i1 %i.ayc, %i.bcd
  br i1 %i.bce, label %.preheader236.preheader.i.i, label %.loopexit239.i.i

.preheader236.preheader.i.i:                      ; preds = %setup_classifs.exit156.thread.i.i
  %i.bcf = sext i32 %.0271.i312.i.i to i64
  br label %.preheader236.i.i

.preheader236.i.i:                                ; preds = %bb.fd, %.preheader236.preheader.i.i
  %indvars.iv508.i.i = phi i64 [ %i.bcf, %.preheader236.preheader.i.i ], [ %indvars.iv.next509.i.i, %bb.fd ] ; 2 uses
  %.1274.i307.i.i = phi i32 [ %.0273.i311.i.i, %.preheader236.preheader.i.i ], [ %i.bgx, %bb.fd ] ; 2 uses
  %.0296.i306.i.i = phi i32 [ 0, %.preheader236.preheader.i.i ], [ %i.bgy, %bb.fd ]
  %invariant.gep641.i.i = getelementptr i8, ptr %i.axi, i64 %indvars.iv508.i.i
  br label %bb.eu

bb.eu:                                            ; preds = %.thread204.i.i, %.preheader236.i.i
  %indvars.iv501.i.i = phi i64 [ 0, %.preheader236.i.i ], [ %indvars.iv.next502.i.i, %.thread204.i.i ] ; 3 uses
  %indvars.iv499.i.i = phi i64 [ 0, %.preheader236.i.i ], [ %indvars.iv.next500.i.i, %.thread204.i.i ] ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv501.i.i
  %i.bch = load i8, ptr %i.bcg, align 1, !tbaa !48
  %.not330.i.i.i = icmp eq i8 %i.bch, 0
  br i1 %.not330.i.i.i, label %bb.ev, label %.thread204.i.i

bb.ev:                                            ; preds = %bb.eu
  %gep642.i.i = getelementptr i8, ptr %invariant.gep641.i.i, i64 %indvars.iv499.i.i
  %i.bci = load i8, ptr %gep642.i.i, align 1, !tbaa !48
  %i.bcj = zext i8 %i.bci to i64
  %gep.i.i = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i.i, i64 %i.bcj
  %i.bck = load i16, ptr %gep.i.i, align 2, !tbaa !93 ; 2 uses
  %i.bcl = icmp sgt i16 %i.bck, -1
  br i1 %i.bcl, label %bb.ew, label %.thread204.i.i

bb.ew:                                            ; preds = %bb.ev
  %i.bcm = zext nneg i16 %i.bck to i64
  %i.bcn = load ptr, ptr %i.ip, align 8, !tbaa !77
  %i.bco = getelementptr inbounds nuw [48 x i8], ptr %i.bcn, i64 %i.bcm ; 4 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 32
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !94 ; 2 uses
  %.not331.i.i.i = icmp eq ptr %i.bcq, null
  br i1 %.not331.i.i.i, label %.thread204.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.bcr = load i8, ptr %i.bco, align 8, !tbaa !82 ; 5 uses
  %i.bcs = zext i8 %i.bcr to i32                  ; 2 uses
  %i.bct = load i32, ptr %i.aye, align 4, !tbaa !88
  %i.bcu = zext i32 %i.bct to i64
  %i.bcv = shl nuw nsw i64 %i.bcu, 1
  %i.bcw = shl nuw nsw i32 %i.bcs, 1
  %i.bcx = zext nneg i32 %i.bcw to i64
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.bcx
  %i.bcz = load i32, ptr %i.bcy, align 8, !tbaa !43
  %i.bda = zext i32 %i.bcz to i64
  %i.bdb = mul i64 %i.bcv, %i.bda
  %i.bdc = lshr i64 %i.bdb, 32                    ; 2 uses
  %i.bdd = trunc nuw i64 %i.bdc to i32            ; 4 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bco, i64 16
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !95 ; 3 uses
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bco, i64 40
  %.sroa.20.0.copyload.i.i.i = load i32, ptr %.sroa.20.0..sroa_idx.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.val166.i.i = load i32, ptr %i.dt, align 8, !tbaa !47 ; 2 uses
  %.val167.i.i = load i32, ptr %i.dq, align 4, !tbaa !45
  %i.bde = sub nsw i32 %.val167.i.i, %.val166.i.i ; 2 uses
  %i.bdf = icmp slt i32 %i.bde, 0
  br i1 %i.bdf, label %.loopexit.sink.split.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bdg = trunc nuw i64 %indvars.iv501.i.i to i32
  %i.bdh = mul i32 %i.fs, %i.bdg
  %i.bdi = add i32 %i.bdh, %.1274.i307.i.i
  %.not.i251.i = icmp eq i64 %i.bdc, 0
  br i1 %.not.i251.i, label %.thread204.i.i, label %.lr.ph303.i.i

.lr.ph303.i.i:                                    ; preds = %bb.ey
  %i.bdj = load i32, ptr %i.ds, align 8, !tbaa !46 ; 3 uses
  %i.bdk = load ptr, ptr %i.k, align 8, !tbaa !44 ; 3 uses
  %i.bdl = sub i32 32, %.sroa.20.0.copyload.i.i.i
  %i.bdm = lshr i32 -1, %i.bdl
  %.not444.i.i = icmp eq i8 %i.bcr, 0
  %wide.trip.count496.i.i = zext i8 %i.bcr to i64 ; 2 uses
  %xtraiter437 = and i64 %wide.trip.count496.i.i, 1
  %i.bdn = icmp eq i8 %i.bcr, 1
  %unroll_iter = and i64 %wide.trip.count496.i.i, 254
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  %lcmp.mod439 = trunc i8 %i.bcr to i1
  br label %bb.ez

bb.ez:                                            ; preds = %._crit_edge.i.i, %.lr.ph303.i.i
  %i.bdo = phi i32 [ %.val166.i.i, %.lr.ph303.i.i ], [ %i.bfs, %._crit_edge.i.i ] ; 4 uses
  %.0287.i301.i.i = phi i32 [ 0, %.lr.ph303.i.i ], [ %i.bgv, %._crit_edge.i.i ] ; 2 uses
  %i.bdp = lshr i32 %i.bdo, 3
  %i.bdq = zext nneg i32 %i.bdp to i64
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdk, i64 %i.bdq
  %i.bds = load i32, ptr %i.bdr, align 1, !tbaa !48
  %i.bdt = and i32 %i.bdo, 7
  %i.bdu = lshr i32 %i.bds, %i.bdt
  %i.bdv = and i32 %i.bdu, %i.bdm
  %i.bdw = zext i32 %i.bdv to i64
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i.i.i, i64 %i.bdw ; 2 uses
  %i.bdy = load i16, ptr %i.bdx, align 2, !tbaa !48
  %i.bdz = sext i16 %i.bdy to i32                 ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdx, i64 2
  %i.beb = load i16, ptr %i.bea, align 2, !tbaa !48 ; 2 uses
  %i.bec = sext i16 %i.beb to i32                 ; 3 uses
  %i.bed = icmp slt i16 %i.beb, 0
  br i1 %i.bed, label %bb.fa, label %get_vlc2.exit364.i.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.bee = add i32 %i.bdo, %.sroa.20.0.copyload.i.i.i
  %i.bef = tail call i32 @llvm.umin.i32(i32 %i.bdj, i32 %i.bee) ; 4 uses
  %i.beg = lshr i32 %i.bef, 3
  %i.beh = zext nneg i32 %i.beg to i64
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bdk, i64 %i.beh
  %i.bej = load i32, ptr %i.bei, align 1, !tbaa !48
  %i.bek = and i32 %i.bef, 7
  %i.bel = lshr i32 %i.bej, %i.bek
  %i.bem = add nsw i32 %i.bec, 32
  %i.ben = lshr i32 -1, %i.bem
  %i.beo = and i32 %i.bel, %i.ben
  %i.bep = add i32 %i.beo, %i.bdz
  %i.beq = zext i32 %i.bep to i64
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i.i.i, i64 %i.beq ; 2 uses
  %i.bes = load i16, ptr %i.ber, align 2, !tbaa !48
  %i.bet = sext i16 %i.bes to i32                 ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %i.ber, i64 2
  %i.bev = load i16, ptr %i.beu, align 2, !tbaa !48 ; 2 uses
  %i.bew = sext i16 %i.bev to i32                 ; 2 uses
  %i.bex = icmp slt i16 %i.bev, 0
  br i1 %i.bex, label %bb.fb, label %get_vlc2.exit364.i.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.bey = sub i32 %i.bef, %i.bec
  %i.bez = tail call i32 @llvm.umin.i32(i32 %i.bdj, i32 %i.bey) ; 3 uses
  %i.bfa = lshr i32 %i.bez, 3
  %i.bfb = zext nneg i32 %i.bfa to i64
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bdk, i64 %i.bfb
  %i.bfd = load i32, ptr %i.bfc, align 1, !tbaa !48
  %i.bfe = and i32 %i.bez, 7
  %i.bff = lshr i32 %i.bfd, %i.bfe
  %i.bfg = add nsw i32 %i.bew, 32
  %i.bfh = lshr i32 -1, %i.bfg
  %i.bfi = and i32 %i.bff, %i.bfh
  %i.bfj = add i32 %i.bfi, %i.bet
  %i.bfk = zext i32 %i.bfj to i64
  %i.bfl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0.copyload.i.i.i, i64 %i.bfk ; 2 uses
  %i.bfm = load i16, ptr %i.bfl, align 2, !tbaa !48
  %i.bfn = sext i16 %i.bfm to i32
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfl, i64 2
  %i.bfp = load i16, ptr %i.bfo, align 2, !tbaa !48
  %i.bfq = sext i16 %i.bfp to i32
  br label %get_vlc2.exit364.i.i.i

get_vlc2.exit364.i.i.i:                           ; preds = %bb.fb, %bb.fa, %bb.ez
  %.167.i361.i.i.i = phi i32 [ %i.bdz, %bb.ez ], [ %i.bfn, %bb.fb ], [ %i.bet, %bb.fa ] ; 3 uses
  %.165.i362.i.i.i = phi i32 [ %i.bdo, %bb.ez ], [ %i.bez, %bb.fb ], [ %i.bef, %bb.fa ]
  %.1.i363.i.i.i = phi i32 [ %i.bec, %bb.ez ], [ %i.bfq, %bb.fb ], [ %i.bew, %bb.fa ]
  %i.bfr = add i32 %.1.i363.i.i.i, %.165.i362.i.i.i
  %i.bfs = tail call i32 @llvm.umin.i32(i32 %i.bdj, i32 %i.bfr) ; 2 uses
  store i32 %i.bfs, ptr %i.dt, align 8, !tbaa !47
  %i.bft = icmp slt i32 %.167.i361.i.i.i, 0
  br i1 %i.bft, label %vorbis_parse_audio_packet.exit.thread, label %bb.fc

bb.fc:                                            ; preds = %get_vlc2.exit364.i.i.i
  br i1 %.not444.i.i, label %._crit_edge.i.i, label %.lr.ph300.i.i

.lr.ph300.i.i:                                    ; preds = %bb.fc
  %i.bfu = mul nuw nsw i32 %.167.i361.i.i.i, %i.bcs
  %i.bfv = add i32 %i.bdi, %.0287.i301.i.i        ; 3 uses
  %i.bfw = zext nneg i32 %i.bfu to i64
  %invariant.gep639.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bcq, i64 %i.bfw ; 3 uses
  br i1 %i.bdn, label %.epil.preheader, label %.lr.ph300.i.i.new

.lr.ph300.i.i.new:                                ; preds = %.lr.ph300.i.i, %.lr.ph300.i.i.new
  %indvars.iv493.i.i = phi i64 [ %indvars.iv.next494.i.i.1, %.lr.ph300.i.i.new ], [ 0, %.lr.ph300.i.i ] ; 4 uses
end_hunk_2
begin_hunk_3_@vorbis_floor0_decode:bb.a
  store float %i.jo, ptr %i.jj, align 4, !tbaa !96
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %.preheader, label %.lr.ph161, !llvm.loop !248

bb.p:                                             ; preds = %.lr.ph173, %bb.v
  %i.jp = phi i32 [ %.pre, %.lr.ph173 ], [ %i.mr, %bb.v ] ; 2 uses
  %.1114172 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next199, %bb.v ]
  %i.jq = sitofp nsz i32 %i.jp to float
  %i.jr = fmul nsz float %i.it, %i.jq
  %i.js = fpext nsz float %i.jr to double
  %i.jt = tail call nsz double @llvm.cos.f64(double %i.js)
  %i.ju = fmul nsz double %i.jt, 2.000000e+00
  %i.jv = fptrunc nsz double %i.ju to float       ; 10 uses
  br i1 %i.jb, label %.lr.ph166.preheader, label %._crit_edge167

.lr.ph166.preheader:                              ; preds = %bb.p
  br i1 %i.ji, label %.lr.ph166.epil.preheader, label %.lr.ph166.preheader.new

.lr.ph166.preheader.new:                          ; preds = %.lr.ph166.preheader
  %i.jw = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166, %.lr.ph166.preheader.new
  %indvars.iv195 = phi i64 [ 0, %.lr.ph166.preheader.new ], [ %indvars.iv.next196.3, %.lr.ph166 ] ; 5 uses
  %i.ke = phi <2 x float> [ splat (float 5.000000e-01), %.lr.ph166.preheader.new ], [ %i.kx, %.lr.ph166 ]
  %niter = phi i64 [ 0, %.lr.ph166.preheader.new ], [ %niter.next.3, %.lr.ph166 ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv195
  %i.kg = load <2 x float>, ptr %i.kf, align 4, !tbaa !96
  %i.kh = fsub nsz <2 x float> %i.kg, %i.jx
  %i.ki = fmul nsz <2 x float> %i.ke, %i.kh
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv195
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load <2 x float>, ptr %i.kk, align 4, !tbaa !96
  %i.km = fsub nsz <2 x float> %i.kl, %i.jz
  %i.kn = fmul nsz <2 x float> %i.ki, %i.km
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv195
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load <2 x float>, ptr %i.kp, align 4, !tbaa !96
  %i.kr = fsub nsz <2 x float> %i.kq, %i.kb
  %i.ks = fmul nsz <2 x float> %i.kn, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv195
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load <2 x float>, ptr %i.ku, align 4, !tbaa !96
  %i.kw = fsub nsz <2 x float> %i.kv, %i.kd
  %i.kx = fmul nsz <2 x float> %i.ks, %i.kw       ; 3 uses
  %indvars.iv.next196.3 = add nuw nsw i64 %indvars.iv195, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge167.loopexit.unr-lcssa, label %.lr.ph166, !llvm.loop !249

._crit_edge167.loopexit.unr-lcssa:                ; preds = %.lr.ph166
  br i1 %lcmp.mod232.not, label %._crit_edge167, label %.lr.ph166.epil.preheader

.lr.ph166.epil.preheader:                         ; preds = %._crit_edge167.loopexit.unr-lcssa, %.lr.ph166.preheader
  %indvars.iv195.epil.init = phi i64 [ 0, %.lr.ph166.preheader ], [ %indvars.iv.next196.3, %._crit_edge167.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float 5.000000e-01), %.lr.ph166.preheader ], [ %i.kx, %._crit_edge167.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod234)
  %i.ky = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph166.epil

.lr.ph166.epil:                                   ; preds = %.lr.ph166.epil, %.lr.ph166.epil.preheader
  %indvars.iv195.epil = phi i64 [ %indvars.iv.next196.epil, %.lr.ph166.epil ], [ %indvars.iv195.epil.init, %.lr.ph166.epil.preheader ] ; 2 uses
  %i.la = phi <2 x float> [ %i.le, %.lr.ph166.epil ], [ %.epil.init, %.lr.ph166.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph166.epil ], [ 0, %.lr.ph166.epil.preheader ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv195.epil
  %i.lc = load <2 x float>, ptr %i.lb, align 4, !tbaa !96
  %i.ld = fsub nsz <2 x float> %i.lc, %i.kz
  %i.le = fmul nsz <2 x float> %i.la, %i.ld       ; 2 uses
  %indvars.iv.next196.epil = add nuw nsw i64 %indvars.iv195.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter231
  br i1 %epil.iter.cmp.not, label %._crit_edge167, label %.lr.ph166.epil, !llvm.loop !250

._crit_edge167:                                   ; preds = %._crit_edge167.loopexit.unr-lcssa, %.lr.ph166.epil, %bb.p
  %.0112.lcssa = phi i32 [ 0, %bb.p ], [ %i.je, %.lr.ph166.epil ], [ %i.je, %._crit_edge167.loopexit.unr-lcssa ] ; 2 uses
  %i.lf = phi <2 x float> [ splat (float 5.000000e-01), %bb.p ], [ %i.kx, %._crit_edge167.loopexit.unr-lcssa ], [ %i.le, %.lr.ph166.epil ] ; 3 uses
  %i.lg = icmp eq i32 %.0112.lcssa, %i.ep
  br i1 %i.lg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge167
  %i.lh = fsub nsz float 2.000000e+00, %i.jv
  %i.li = fadd nsz float %i.jv, 2.000000e+00
  %i.lj = extractelement <2 x float> %i.lf, i64 0 ; 2 uses
  %i.lk = fmul nsz float %i.li, %i.lj
  %i.ll = fmul nsz float %i.lj, %i.lk
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge167
  %i.lm = zext nneg i32 %.0112.lcssa to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lm
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !96
  %i.lp = fsub nsz float %i.jv, %i.lo
  %i.lq = extractelement <2 x float> %i.lf, i64 0
  %i.lr = fmul nsz float %i.lq, %i.lp             ; 2 uses
  %i.ls = fneg nsz float %i.jv
  %i.lt = tail call nsz float @llvm.fmuladd.f32(float %i.ls, float %i.jv, float 4.000000e+00)
  %i.lu = fmul nsz float %i.lr, %i.lr
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn141 = phi float [ %i.lh, %bb.q ], [ %i.lt, %bb.r ]
  %.1 = phi nsz float [ %i.ll, %bb.q ], [ %i.lu, %bb.r ]
  %i.lv = extractelement <2 x float> %i.lf, i64 1 ; 2 uses
  %.pn = fmul nsz float %i.lv, %.pn141
  %.1111 = fmul nsz float %i.lv, %.pn
  %i.lw = fadd nsz float %.1, %.1111              ; 2 uses
  %i.lx = fcmp nsz une float %i.lw, 0.000000e+00
  br i1 %i.lx, label %bb.t, label %.critedge143

bb.t:                                             ; preds = %bb.s
  %i.ly = fpext nsz float %i.lw to double
  %i.lz = load i8, ptr %i.jc, align 1, !tbaa !259 ; 2 uses
  %i.ma = zext i8 %i.lz to i64
  %i.mb = mul i64 %.0.i, %i.ma
  %i.mc = uitofp nsz i64 %i.mb to double
  %i.md = load i8, ptr %i.k, align 8, !tbaa !254
  %i.me = zext nneg i8 %i.md to i64
  %notmask = shl nsw i64 -1, %i.me
  %i.mf = xor i64 %notmask, -1
  %i.mg = uitofp nsz nneg i64 %i.mf to double
  %i.mh = tail call nsz double @llvm.sqrt.f64(double %i.ly)
  %i.mi = fmul nsz double %i.mh, %i.mg
  %i.mj = fdiv nsz double %i.mc, %i.mi
  %i.mk = uitofp i8 %i.lz to double
  %i.ml = fsub nsz double %i.mj, %i.mk
  %i.mm = fmul nsz double %i.ml, f0x3FBD791C40000000
  %i.mn = tail call nsz double @llvm.exp.f64(double %i.mm)
  %i.mo = fptrunc nsz double %i.mn to float
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %bb.u ], [ %.1114172, %bb.t ] ; 2 uses
  %i.mp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv198
  store float %i.mo, ptr %i.mp, align 4, !tbaa !96
  %indvars.iv.next199 = add nsw i64 %indvars.iv198, 1 ; 4 uses
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %indvars.iv.next199
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !43 ; 2 uses
  %i.ms = icmp eq i32 %i.mr, %i.jp
  br i1 %i.ms, label %bb.u, label %bb.v, !llvm.loop !251

bb.v:                                             ; preds = %bb.u
  %i.mt = trunc nsw i64 %indvars.iv.next199 to i32
  %.not146 = icmp ugt i32 %i.ix, %i.mt
  br i1 %.not146, label %bb.p, label %.critedge143, !llvm.loop !252

.critedge143:                                     ; preds = %get_vlc2.exit, %bb.v, %bb.s, %.preheader, %bb.k, %get_bits64.exit, %bb.a
  %.6 = phi i32 [ 1, %get_bits64.exit ], [ 1, %bb.a ], [ -1094995529, %bb.k ], [ 0, %.preheader ], [ -1094995529, %bb.s ], [ 0, %bb.v ], [ -1094995529, %get_vlc2.exit ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @ff_vorbis_floor1_render_list(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.and.v16i8(<16 x i8>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.and.v8i8(<8 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.atan.v4f64(<4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.floor.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

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
!29 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!30 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!31 = !{!"VorbisDSPContext", !9, i64 0}
!32 = !{!"p1 _ZTS17AVFloatDSPContext", !9, i64 0}
!33 = !{!"short", !5, i64 0}
!34 = !{!"p1 _ZTS15vorbis_codebook", !9, i64 0}
!35 = !{!"p1 _ZTS12vorbis_floor", !9, i64 0}
!36 = !{!"p1 _ZTS14vorbis_residue", !9, i64 0}
!37 = !{!"p1 _ZTS14vorbis_mapping", !9, i64 0}
!38 = !{!"p1 _ZTS11vorbis_mode", !9, i64 0}
!39 = !{!"p1 float", !9, i64 0}
!40 = !{!"vorbis_context_s", !29, i64 0, !30, i64 8, !31, i64 32, !32, i64 40, !5, i64 48, !5, i64 64, !5, i64 80, !6, i64 84, !5, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !5, i64 108, !5, i64 120, !33, i64 136, !34, i64 144, !5, i64 152, !35, i64 160, !5, i64 168, !36, i64 176, !5, i64 184, !37, i64 192, !5, i64 200, !38, i64 208, !5, i64 216, !5, i64 217, !39, i64 224, !39, i64 232}
!41 = !{!40, !29, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!6, !6, i64 0}
!44 = !{!30, !14, i64 0}
!45 = !{!30, !6, i64 12}
!46 = !{!30, !6, i64 16}
!47 = !{!30, !6, i64 8}
!48 = !{!5, !5, i64 0}
!49 = !{!40, !5, i64 88}
!50 = !{!27, !6, i64 352}
!51 = !{!27, !6, i64 356}
!52 = !{!40, !6, i64 92}
!53 = !{!27, !6, i64 344}
!54 = !{!40, !39, i64 224}
!55 = !{!40, !38, i64 208}
!56 = !{!39, !39, i64 0}
!57 = !{!40, !5, i64 217}
!58 = !{!40, !5, i64 200}
!59 = !{!40, !5, i64 216}
!60 = !{!40, !37, i64 192}
!61 = !{!"vorbis_mode", !5, i64 0, !33, i64 2, !33, i64 4, !5, i64 6}
!62 = !{!61, !5, i64 6}
!63 = !{!61, !5, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"vorbis_mapping", !5, i64 0, !33, i64 2, !14, i64 8, !14, i64 16, !14, i64 24, !5, i64 32, !5, i64 48}
!66 = !{!65, !5, i64 0}
!67 = !{!40, !35, i64 160}
!68 = !{!65, !14, i64 24}
!69 = !{!"vorbis_floor", !5, i64 0, !9, i64 8, !5, i64 16}
!70 = !{!69, !9, i64 8}
!71 = !{!65, !33, i64 2}
!72 = !{!65, !14, i64 8}
!73 = !{!65, !14, i64 16}
!74 = !{!40, !36, i64 176}
!75 = !{!"vorbis_residue", !33, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 1042, !33, i64 1044, !14, i64 1048}
!76 = !{!75, !33, i64 0}
!77 = !{!40, !34, i64 144}
!78 = !{!75, !5, i64 17}
!79 = !{!"p1 _ZTS7VLCElem", !9, i64 0}
!80 = !{!"VLC", !6, i64 0, !79, i64 8, !6, i64 16, !6, i64 20}
!81 = !{!"vorbis_codebook", !5, i64 0, !5, i64 1, !5, i64 2, !80, i64 8, !39, i64 32, !6, i64 40}
!82 = !{!81, !5, i64 0}
!83 = !{!75, !14, i64 1048}
!84 = !{!75, !33, i64 1044}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!75, !6, i64 8}
!88 = !{!75, !6, i64 12}
!89 = !{!75, !6, i64 4}
!90 = !{!75, !5, i64 16}
!91 = !{!81, !79, i64 16}
!92 = !{!81, !6, i64 40}
!93 = !{!33, !33, i64 0}
!94 = !{!81, !39, i64 32}
!95 = !{!79, !79, i64 0}
!96 = !{!16, !16, i64 0}
!97 = !{!75, !5, i64 1042}
!98 = !{!40, !32, i64 40}
!99 = !{!40, !39, i64 232}
!100 = !{!40, !5, i64 80}
!101 = !{!40, !5, i64 168}
!102 = !{!40, !33, i64 136}
!103 = !{!40, !5, i64 152}
!104 = !{!69, !5, i64 0}
!105 = !{!40, !5, i64 184}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!"vorbis_floor1_entry", !33, i64 0, !33, i64 2, !33, i64 4, !33, i64 6}
!108 = !{!107, !33, i64 0}
!109 = !{!"vorbis_floor0_s", !5, i64 0, !33, i64 2, !33, i64 4, !5, i64 8, !5, i64 24, !5, i64 32, !5, i64 33, !5, i64 34, !14, i64 40, !39, i64 48}
!110 = !{!109, !33, i64 4}
!111 = !{!27, !14, i64 72}
!112 = !{!27, !6, i64 80}
!113 = !{!27, !6, i64 348}
!114 = distinct !{!114, !64}
!115 = distinct !{null}
!116 = distinct !{!116, !64}
!117 = distinct !{!117, !64}
!118 = distinct !{!118, !64}
!119 = distinct !{!119, !64, !85, !86}
!120 = distinct !{!120, !64, !85, !86}
!121 = distinct !{!121, !64, !86, !85}
!122 = distinct !{!122, !64}
!123 = distinct !{!123, !64}
!124 = distinct !{!124, !64}
!125 = distinct !{!125, !64}
!126 = distinct !{!126, !64}
!127 = distinct !{!127, !64}
!128 = distinct !{!128, !64}
!129 = distinct !{!129, !"LVerDomain"}
!130 = distinct !{!130, !129}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !129}
!133 = distinct !{!133, !64, !85, !86}
!134 = distinct !{!134, !64, !85}
!135 = distinct !{!135, !64}
!136 = distinct !{!136, !64}
!137 = distinct !{!137, !64}
!138 = distinct !{!138, !64}
!139 = distinct !{!139, !"LVerDomain"}
!140 = distinct !{!140, !139}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !64, !85, !86}
!143 = distinct !{!143, !64, !85}
!144 = distinct !{!144, !64}
!145 = distinct !{!145, !64}
!146 = distinct !{!146, !64}
!147 = distinct !{!147, !64}
!148 = distinct !{!148, !64}
!149 = distinct !{!149, !64, !170}
!150 = distinct !{!150, !64}
!151 = distinct !{!151, !64}
!152 = distinct !{!152, !64}
end_hunk_3
