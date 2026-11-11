Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeglsenc?download=true
inline.NumInlined: 37
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ls_encode_line:bb.a
  store ptr %i.cq, ptr %i.o, align 8, !tbaa !39
  br label %put_bits.exit.i

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #10
  br label %put_bits.exit.i

put_bits.exit.i:                                  ; preds = %bb.r, %bb.q, %bb.o
  %.sink.i = phi i32 [ -1, %bb.o ], [ 31, %bb.r ], [ 31, %bb.q ]
  %.026.i.i.i = phi i32 [ %i.cd, %bb.o ], [ 1, %bb.r ], [ 1, %bb.q ]
  %i.cr = add nsw i32 %.sink.i, %i.ca
  store i32 %.026.i.i.i, ptr %1, align 8, !tbaa !41
  store i32 %i.cr, ptr %i.m, align 4, !tbaa !40
  %i.cs = load i32, ptr %i.l, align 4, !tbaa !36  ; 3 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !44
  %i.cw = zext nneg i8 %i.cv to i32               ; 2 uses
  %.neg.i = shl nsw i32 -1, %i.cw
  %i.cx = add i32 %.neg.i, %.040.i                ; 3 uses
  %i.cy = icmp slt i32 %i.cs, 31
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %put_bits.exit.i
  %i.cz = add nsw i32 %i.cs, 1                    ; 2 uses
  store i32 %i.cz, ptr %i.l, align 4, !tbaa !36
  %.pre.i = sext i32 %i.cz to i64
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr @ff_log2_run, i64 %.pre.i
  %.pre42.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !44
  %.pre43.i = zext nneg i8 %.pre42.i to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %put_bits.exit.i
  %.pre-phi44.i = phi i32 [ %.pre43.i, %bb.s ], [ %i.cw, %put_bits.exit.i ]
  %i.da = shl nuw i32 1, %.pre-phi44.i
  %.not.i = icmp slt i32 %i.cx, %i.da
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !76

._crit_edge.i:                                    ; preds = %bb.t, %.critedge
  %.0.lcssa.i = phi i32 [ %.0229.lcssa, %.critedge ], [ %i.cx, %bb.t ] ; 4 uses
  %i.db = icmp ne i32 %.0.lcssa.i, 0
  %or.cond.i = and i1 %.lcssa, %i.db
  br i1 %or.cond.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %._crit_edge.i
  %i.dc = load i32, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.dd = load i32, ptr %i.m, align 4, !tbaa !40  ; 4 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.df = shl i32 %i.dc, 1
  %i.dg = or disjoint i32 %i.df, 1
  br label %ls_encode_run.exit

bb.w:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !39  ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp ugt i64 %i.dl, 3
  br i1 %i.dm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dn = shl i32 %i.dc, %i.dd
  %i.do = icmp eq i32 %i.dd, 1
  %i.dp = zext i1 %i.do to i32
  %i.dq = or i32 %i.dn, %i.dp
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %i.dq)
  store i32 %i.dr, ptr %i.di, align 1, !tbaa !44
  %i.ds = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store ptr %i.dt, ptr %i.o, align 8, !tbaa !39
  br label %ls_encode_run.exit

bb.y:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #10
  br label %ls_encode_run.exit

bb.z:                                             ; preds = %._crit_edge.i
  br i1 %.lcssa, label %.critedge276, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = load i32, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.dv = load i32, ptr %i.m, align 4, !tbaa !40  ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dx = shl i32 %i.du, 1
  br label %put_bits.exit33.i

bb.ac:                                            ; preds = %bb.aa
  %i.dy = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.dz = load ptr, ptr %i.o, align 8, !tbaa !39  ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ugt i64 %i.ec, 3
  br i1 %i.ed, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ee = shl i32 %i.du, %i.dv
  %i.ef = tail call i32 @llvm.bswap.i32(i32 %i.ee)
  store i32 %i.ef, ptr %i.dz, align 1, !tbaa !44
  %i.eg = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store ptr %i.eh, ptr %i.o, align 8, !tbaa !39
  br label %put_bits.exit33.i

bb.ae:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #10
  br label %put_bits.exit33.i

put_bits.exit33.i:                                ; preds = %bb.ae, %bb.ad, %bb.ab
  %.sink59.i = phi i32 [ -1, %bb.ab ], [ 31, %bb.ae ], [ 31, %bb.ad ]
  %.026.i.i31.i = phi i32 [ %i.dx, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %i.ei = add nsw i32 %.sink59.i, %i.dv           ; 6 uses
  store i32 %.026.i.i31.i, ptr %1, align 8, !tbaa !41
  store i32 %i.ei, ptr %i.m, align 4, !tbaa !40
  %i.ej = load i32, ptr %i.l, align 4, !tbaa !36
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !44  ; 2 uses
  %.not25.i = icmp eq i8 %i.em, 0
  br i1 %.not25.i, label %ls_encode_run.exit.thread, label %bb.af

bb.af:                                            ; preds = %put_bits.exit33.i
  %i.en = zext i8 %i.em to i32                    ; 4 uses
  %i.eo = icmp sgt i32 %i.ei, %i.en
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ep = shl i32 %.026.i.i31.i, %i.en
  %i.eq = or i32 %i.ep, %.0.lcssa.i
  br label %put_bits.exit37.i

bb.ah:                                            ; preds = %bb.af
  %i.er = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.es = load ptr, ptr %i.o, align 8, !tbaa !39  ; 2 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = icmp ugt i64 %i.ev, 3
  br i1 %i.ew, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ex = shl i32 %.026.i.i31.i, %i.ei
  %i.ey = sub nsw i32 %i.en, %i.ei
  %i.ez = lshr i32 %.0.lcssa.i, %i.ey
  %i.fa = or i32 %i.ez, %i.ex
  %i.fb = tail call i32 @llvm.bswap.i32(i32 %i.fa)
  store i32 %i.fb, ptr %i.es, align 1, !tbaa !44
  %i.fc = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store ptr %i.fd, ptr %i.o, align 8, !tbaa !39
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %reass.sub.i34.i = add nsw i32 %i.ei, 32
  br label %put_bits.exit37.i

put_bits.exit37.i:                                ; preds = %bb.ak, %bb.ag
  %.026.i.i35.i = phi i32 [ %i.eq, %bb.ag ], [ %.0.lcssa.i, %bb.ak ]
  %.0.i.i32.pn.i = phi i32 [ %i.ei, %bb.ag ], [ %reass.sub.i34.i, %bb.ak ]
  %.0.i.i36.i = sub i32 %.0.i.i32.pn.i, %i.en
  store i32 %.026.i.i35.i, ptr %1, align 8, !tbaa !41
  store i32 %.0.i.i36.i, ptr %i.m, align 4, !tbaa !40
  br label %ls_encode_run.exit.thread

ls_encode_run.exit:                               ; preds = %bb.v, %bb.x, %bb.y
  %.sink58.i = phi i32 [ -1, %bb.v ], [ 31, %bb.y ], [ 31, %bb.x ]
  %.026.i.i27.i = phi i32 [ %i.dg, %bb.v ], [ 1, %bb.y ], [ 1, %bb.x ]
  %i.fe = add nsw i32 %.sink58.i, %i.dd
  store i32 %.026.i.i27.i, ptr %1, align 8, !tbaa !41
  store i32 %i.fe, ptr %i.m, align 4, !tbaa !40
  br i1 %.lcssa, label %.critedge276, label %ls_encode_run.exit.thread

ls_encode_run.exit.thread:                        ; preds = %put_bits.exit37.i, %put_bits.exit33.i, %ls_encode_run.exit
  %i.ff = sext i32 %.1245.lcssa to i64            ; 2 uses
  br i1 %i.a, label %bb.al, label %bb.am

bb.al:                                            ; preds = %ls_encode_run.exit.thread
  %i.fg = getelementptr inbounds i8, ptr %2, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !44
  %i.fi = zext i8 %i.fh to i32
  br label %bb.an

bb.am:                                            ; preds = %ls_encode_run.exit.thread
  %i.fj = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ff
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !47
  %i.fl = zext i16 %i.fk to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fm = phi i32 [ %i.fi, %bb.al ], [ %i.fl, %bb.am ] ; 5 uses
  %i.fn = sub nsw i32 %.0238365, %i.fm
  %i.fo = tail call i32 @llvm.abs.i32(i32 %i.fn, i1 true)
  %i.fp = load i32, ptr %i.i, align 4, !tbaa !43  ; 4 uses
  %i.fq = icmp sle i32 %i.fo, %i.fp               ; 6 uses
  %.neg371 = sext i1 %i.fq to i32                 ; 2 uses
  %i.fr = select i1 %i.fq, i32 %.0238365, i32 %i.fm ; 3 uses
  %i.fs = sext i32 %.1245.lcssa to i64            ; 2 uses
  %i.ft = icmp sle i32 %.0238365, %i.fm
  %or.cond272.not = select i1 %i.fq, i1 true, i1 %i.ft ; 3 uses
  %.not266 = icmp eq i32 %i.fp, 0                 ; 2 uses
  br i1 %i.a, label %bb.ao, label %.thread417

bb.ao:                                            ; preds = %bb.an
  %i.fu = getelementptr inbounds i8, ptr %3, i64 %i.fs
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !44
  %i.fw = zext i8 %i.fv to i32
  %i.fx = sub nsw i32 %i.fw, %i.fr                ; 2 uses
  %i.fy = sub nsw i32 0, %i.fx
  %.0232 = select i1 %or.cond272.not, i32 %i.fx, i32 %i.fy ; 2 uses
  br i1 %.not266, label %.thread325, label %bb.ap

.thread417:                                       ; preds = %bb.an
  %i.fz = getelementptr inbounds [2 x i8], ptr %3, i64 %i.fs
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !47
  %i.gb = zext i16 %i.ga to i32
  %i.gc = sub nsw i32 %i.gb, %i.fr                ; 2 uses
  %i.gd = sub nsw i32 0, %i.gc
  %.0232419 = select i1 %or.cond272.not, i32 %i.gc, i32 %i.gd ; 2 uses
  br i1 %.not266, label %.thread332, label %bb.ap

bb.ap:                                            ; preds = %.thread417, %bb.ao
  %.0232422 = phi i32 [ %.0232419, %.thread417 ], [ %.0232, %bb.ao ] ; 2 uses
  %i.ge = icmp sgt i32 %.0232422, 0
  %i.gf = load i32, ptr %i.p, align 4, !tbaa !80  ; 3 uses
  %i.gg = sub i32 0, %i.fp
  %.neg267.sink.p = select i1 %i.ge, i32 %i.fp, i32 %i.gg
  %.neg267.sink = add i32 %.0232422, %.neg267.sink.p
  %i.gh = sdiv i32 %.neg267.sink, %i.gf           ; 4 uses
  %i.gi = mul nsw i32 %i.gf, %i.gh
  %i.gj = mul nsw i32 %i.gf, %i.gh
  %i.gk = sub i32 0, %i.gj
  %.sink430.p = select i1 %or.cond272.not, i32 %i.gi, i32 %i.gk
  %.sink430 = add i32 %i.fr, %.sink430.p          ; 2 uses
  %i.gl = load i32, ptr %i.q, align 4, !tbaa !52
  %i.gm = icmp slt i32 %.sink430, 0
  %..i285 = tail call i32 @llvm.smin.i32(i32 %.sink430, i32 %i.gl)
  %.0.i286 = select i1 %i.gm, i32 0, i32 %..i285  ; 2 uses
  %.pre380 = sext i32 %.1245.lcssa to i64         ; 2 uses
  br i1 %i.a, label %._crit_edge374, label %._crit_edge

.thread325:                                       ; preds = %bb.ao
  %i.gn = sext i32 %.1245.lcssa to i64            ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %3, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !44
  %i.gq = zext i8 %i.gp to i32
  br label %._crit_edge374

.thread332:                                       ; preds = %.thread417
  %i.gr = sext i32 %.1245.lcssa to i64            ; 2 uses
  %i.gs = getelementptr inbounds [2 x i8], ptr %3, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !47
  %i.gu = zext i16 %i.gt to i32
  br label %._crit_edge

._crit_edge374:                                   ; preds = %bb.ap, %.thread325
  %.pre-phi381 = phi i64 [ %i.gn, %.thread325 ], [ %.pre380, %bb.ap ]
  %.2331 = phi i32 [ %.0232, %.thread325 ], [ %i.gh, %bb.ap ]
  %.1239328 = phi i32 [ %i.gq, %.thread325 ], [ %.0.i286, %bb.ap ] ; 2 uses
  %i.gv = trunc i32 %.1239328 to i8
  %i.gw = getelementptr inbounds i8, ptr %2, i64 %.pre-phi381
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !44
  br label %bb.aq

._crit_edge:                                      ; preds = %bb.ap, %.thread332
  %.pre-phi383 = phi i64 [ %i.gr, %.thread332 ], [ %.pre380, %bb.ap ]
  %.2336 = phi i32 [ %.0232419, %.thread332 ], [ %i.gh, %bb.ap ]
  %.1239335 = phi i32 [ %i.gu, %.thread332 ], [ %.0.i286, %bb.ap ] ; 2 uses
  %i.gx = trunc i32 %.1239335 to i16
  %i.gy = getelementptr inbounds [2 x i8], ptr %2, i64 %.pre-phi383
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !47
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge, %._crit_edge374
  %.2330 = phi i32 [ %.2336, %._crit_edge ], [ %.2331, %._crit_edge374 ] ; 2 uses
  %.1239329 = phi i32 [ %.1239335, %._crit_edge ], [ %.1239328, %._crit_edge374 ] ; 2 uses
  %i.gz = icmp slt i32 %.2330, 0
  %.pre = load i32, ptr %i.r, align 4, !tbaa !81  ; 3 uses
  %i.ha = select i1 %i.gz, i32 %.pre, i32 0
  %spec.select431 = add nsw i32 %.2330, %i.ha     ; 3 uses
  %i.hb = load i32, ptr %i.l, align 4, !tbaa !36
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !44
  %i.hf = select i1 %i.fq, i64 366, i64 365       ; 5 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.hf ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !36
  %.phi.trans.insert47.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert.i289, i64 %i.hf ; 3 uses
  %.pre.i290 = load i32, ptr %.phi.trans.insert47.i, align 4, !tbaa !36 ; 3 uses
  %i.hi = ashr i32 %.pre.i290, 1
  %i.hj = select i1 %i.fq, i32 %i.hi, i32 0
  %.0.i291 = add nsw i32 %i.hj, %i.hh
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.042.i = phi i32 [ 0, %bb.aq ], [ %i.hm, %bb.ar ] ; 4 uses
  %i.hk = shl i32 %.pre.i290, %.042.i
  %i.hl = icmp slt i32 %i.hk, %.0.i291
  %i.hm = add nuw nsw i32 %.042.i, 1
  br i1 %i.hl, label %bb.ar, label %bb.as, !llvm.loop !77

bb.as:                                            ; preds = %bb.ar
  %i.hn = add nsw i32 %.pre, 1
  %i.ho = ashr i32 %i.hn, 1
  %.not269 = icmp slt i32 %spec.select431, %i.ho
  %i.hp = select i1 %.not269, i32 0, i32 %.pre    ; 2 uses
  %spec.select = sub nsw i32 %spec.select431, %i.hp ; 2 uses
  %i.hq = zext i8 %i.he to i32
  %i.hr = icmp eq i32 %.042.i, 0
  %i.hs = icmp ne i32 %spec.select431, %i.hp
  %or.cond.i292 = and i1 %i.hs, %i.hr
  br i1 %or.cond.i292, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.hf
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !36
  %i.hv = shl nsw i32 %i.hu, 1
  %i.hw = icmp slt i32 %i.hv, %.pre.i290
  %spec.select.i = zext i1 %i.hw to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.040.i293 = phi i32 [ 0, %bb.as ], [ %spec.select.i, %bb.at ] ; 2 uses
  %i.hx = icmp slt i32 %spec.select, 0            ; 2 uses
  %i.hy = shl i32 %spec.select, 1                 ; 2 uses
  br i1 %i.hx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hz = xor i32 %i.hy, -1
  %i.ia = add nsw i32 %i.hz, %.neg371
  %i.ib = add nuw nsw i32 %i.ia, %.040.i293
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %.neg354 = add i32 %i.hy, %.neg371
  %i.ic = sub i32 %.neg354, %.040.i293
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.041.i = phi i32 [ %i.ib, %bb.av ], [ %i.ic, %bb.aw ] ; 2 uses
  %i.id = load i32, ptr %i.u, align 4, !tbaa !82
  %i.ie = xor i32 %i.hq, -1
  %i.if = add i32 %i.id, %i.ie
  %i.ig = load i32, ptr %i.v, align 4, !tbaa !83
  tail call fastcc void @set_ur_golomb_jpegls(ptr noundef nonnull %1, i32 noundef %.041.i, i32 noundef %.042.i, i32 noundef %i.if, i32 noundef %i.ig)
  br i1 %i.hx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.hf ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !36
  %i.ij = add nsw i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !36
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ik = xor i1 %i.fq, true
  %i.il = zext i1 %i.ik to i32
  %i.im = add i32 %.041.i, %i.il
  %i.in = ashr i32 %i.im, 1
  %i.io = load i32, ptr %i.hg, align 4, !tbaa !36
  %i.ip = add nsw i32 %i.io, %i.in                ; 2 uses
  store i32 %i.ip, ptr %i.hg, align 4, !tbaa !36
  %i.iq = load i32, ptr %.phi.trans.insert47.i, align 4, !tbaa !36 ; 3 uses
  %i.ir = load i32, ptr %i.w, align 4, !tbaa !51
  %i.is = icmp eq i32 %i.iq, %i.ir
  br i1 %i.is, label %bb.ba, label %ls_encode_runterm.exit

bb.ba:                                            ; preds = %bb.az
  %i.it = ashr i32 %i.ip, 1
  store i32 %i.it, ptr %i.hg, align 4, !tbaa !36
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.hf ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !36
  %i.iw = ashr i32 %i.iv, 1
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !36
  %i.ix = ashr i32 %i.iq, 1
  br label %ls_encode_runterm.exit

ls_encode_runterm.exit:                           ; preds = %bb.az, %bb.ba
  %i.iy = phi i32 [ %i.ix, %bb.ba ], [ %i.iq, %bb.az ]
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %.phi.trans.insert47.i, align 4, !tbaa !36
  %i.ja = load i32, ptr %i.l, align 4, !tbaa !36  ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %bb.bb, label %ls_encode_regular.exit

bb.bb:                                            ; preds = %ls_encode_runterm.exit
  %i.jc = add nsw i32 %i.ja, -1
  store i32 %i.jc, ptr %i.l, align 4, !tbaa !36
  br label %ls_encode_regular.exit

bb.bc:                                            ; preds = %.thread319
  %i.jd = icmp eq i32 %i.au, %i.at
  br i1 %i.jd, label %ff_jpegls_quantize.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.je = icmp slt i32 %i.av, 0
  br i1 %i.je, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.jf = load i32, ptr %i.y, align 4, !tbaa !50
  %i.jg = sub nsw i32 0, %i.jf
  %.not19.i = icmp sgt i32 %i.av, %i.jg
  br i1 %.not19.i, label %bb.bf, label %ff_jpegls_quantize.exit

bb.bf:                                            ; preds = %bb.be
  %i.jh = load i32, ptr %i.x, align 4, !tbaa !49
  %i.ji = sub nsw i32 0, %i.jh
  %.not20.i = icmp sgt i32 %i.av, %i.ji
  br i1 %.not20.i, label %bb.bg, label %ff_jpegls_quantize.exit

bb.bg:                                            ; preds = %bb.bf
  %i.jj = load i32, ptr %0, align 4, !tbaa !48
  %i.jk = sub nsw i32 0, %i.jj
  %.not21.i = icmp sgt i32 %i.av, %i.jk
  br i1 %.not21.i, label %bb.bh, label %ff_jpegls_quantize.exit

bb.bh:                                            ; preds = %bb.bg
  %i.jl = sub nsw i32 0, %i.az
  %i.jm = icmp slt i32 %i.av, %i.jl
  %..i296 = sext i1 %i.jm to i32
  br label %ff_jpegls_quantize.exit

bb.bi:                                            ; preds = %bb.bd
  %.not.i294 = icmp sgt i32 %i.av, %i.az
  br i1 %.not.i294, label %bb.bj, label %ff_jpegls_quantize.exit

bb.bj:                                            ; preds = %bb.bi
  %i.jn = load i32, ptr %0, align 4, !tbaa !48
  %i.jo = icmp slt i32 %i.av, %i.jn
  br i1 %i.jo, label %ff_jpegls_quantize.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jp = load i32, ptr %i.x, align 4, !tbaa !49
  %i.jq = icmp slt i32 %i.av, %i.jp
  br i1 %i.jq, label %ff_jpegls_quantize.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
end_hunk_0
