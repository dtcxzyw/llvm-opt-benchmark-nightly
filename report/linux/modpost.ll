Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/modpost?download=true
inline.NumInlined: 205
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@read_symbols:bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ao, %.lr.ph401.i
  %indvars.iv421.i = phi i64 [ 1, %.lr.ph401.i ], [ %indvars.iv.next422.i, %bb.ao ] ; 5 uses
  %.0276398.i = phi i32 [ -1, %.lr.ph401.i ], [ %.1277384.i, %bb.ao ] ; 2 uses
  %.0278397.i = phi i32 [ -1, %.lr.ph401.i ], [ %.1279.i, %bb.ao ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %indvars.iv421.i ; 12 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !100 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 8
  br i1 %i.eb, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !33 ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, %i.j
  br i1 %i.ee, label %bb.ae, label %.thread380.i

bb.ae:                                            ; preds = %bb.ad
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.32, ptr noundef %0, i64 noundef %i.ed, i64 noundef 64)
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.ef = load i32, ptr %i.dy, align 8, !tbaa !99
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.eg ; 2 uses
  %i.ei = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eh, ptr noundef nonnull dereferenceable(9) @.str.33) #28
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ag, label %bb.ai

.thread380.i:                                     ; preds = %bb.ad
  %i.ek = load i32, ptr %i.dy, align 8, !tbaa !99
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.el ; 2 uses
  %i.en = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.em, ptr noundef nonnull dereferenceable(9) @.str.33) #28
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.34, ptr noundef %0)
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.ah:                                            ; preds = %.thread380.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ed
  store ptr %i.ep, ptr %i.do, align 8, !tbaa !107
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !95
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %i.dp, align 8, !tbaa !108
  br label %bb.am

bb.ai:                                            ; preds = %.thread380.i, %bb.af
  %i.et = phi ptr [ %i.em, %.thread380.i ], [ %i.eh, %bb.af ] ; 2 uses
  %i.eu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.et, ptr noundef nonnull dereferenceable(15) @.str.35) #28
  %.not304.i = icmp eq i32 %i.eu, 0
  br i1 %.not304.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ev = trunc nuw i64 %indvars.iv421.i to i32
  store i32 %i.ev, ptr %i.ds, align 8, !tbaa !109
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.ew = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.et, ptr noundef nonnull dereferenceable(16) @.str.36) #28
  %.not305.i = icmp eq i32 %i.ew, 0
  br i1 %.not305.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !33
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ey
  store ptr %i.ez, ptr %i.dq, align 8, !tbaa !110
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !95
  %i.fc = trunc i64 %i.fb to i32
  store i32 %i.fc, ptr %i.dr, align 8, !tbaa !111
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  switch i32 %i.ea, label %bb.ao [
    i32 2, label %.thread382.i
    i32 18, label %bb.an
  ]

.thread382.i:                                     ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !33
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fe ; 2 uses
  store ptr %i.ff, ptr %i.dv, align 8, !tbaa !28
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !95
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh
  store ptr %i.fi, ptr %i.dw, align 8, !tbaa !112
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !97
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fo
  store ptr %i.fp, ptr %i.dx, align 8, !tbaa !113
  %i.fq = trunc nuw i64 %indvars.iv421.i to i32
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !33
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fs ; 2 uses
  store ptr %i.ft, ptr %i.dt, align 8, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !95
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fv
  store ptr %i.fw, ptr %i.du, align 8, !tbaa !114
  %i.fx = trunc nuw i64 %indvars.iv421.i to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread382.i, %bb.am
  %.1277384.i = phi i32 [ %.0276398.i, %bb.an ], [ %.0276398.i, %bb.am ], [ %i.fq, %.thread382.i ] ; 2 uses
  %.1279.i = phi i32 [ %i.fx, %bb.an ], [ %.0278397.i, %bb.am ], [ %.0278397.i, %.thread382.i ] ; 2 uses
  %indvars.iv.next422.i = add nuw nsw i64 %indvars.iv421.i, 1 ; 2 uses
  %exitcond425.not.i = icmp eq i64 %indvars.iv.next422.i, %wide.trip.count419.i
  br i1 %exitcond425.not.i, label %._crit_edge402.i, label %bb.ac, !llvm.loop !115

._crit_edge402.i:                                 ; preds = %bb.ao, %._crit_edge.i, %bb.ab
  %.0278.lcssa.i = phi i32 [ -1, %._crit_edge.i ], [ -1, %bb.ab ], [ %.1279.i, %bb.ao ] ; 2 uses
  %.0276.lcssa.i = phi i32 [ -1, %._crit_edge.i ], [ -1, %bb.ab ], [ %.1277384.i, %bb.ao ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !28 ; 3 uses
  %.not300.i = icmp eq ptr %i.fz, null
  br i1 %.not300.i, label %bb.ap, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge402.i
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !112 ; 2 uses
  %i.gc = icmp uge ptr %i.fz, %i.gb
  %brmerge.i = or i1 %i.ae, %i.gc
  br i1 %brmerge.i, label %._crit_edge407.i, label %.lr.ph406.split.i

bb.ap:                                            ; preds = %._crit_edge402.i
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.37, ptr noundef %0)
  tail call void @exit(i32 noundef 1) #29
  unreachable

.lr.ph406.split.i:                                ; preds = %.preheader.i, %.lr.ph406.split.i
  %.0275405.i = phi ptr [ %i.gn, %.lr.ph406.split.i ], [ %i.fz, %.preheader.i ] ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0275405.i, i64 6 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !21
  %rev.i313.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ge)
  store i16 %rev.i313.i, ptr %i.gd, align 2, !tbaa !21
  %i.gf = load i32, ptr %.0275405.i, align 8, !tbaa !116
  %i.gg = tail call noundef i32 @llvm.bswap.i32(i32 %i.gf)
  store i32 %i.gg, ptr %.0275405.i, align 8, !tbaa !116
  %i.gh = getelementptr inbounds nuw i8, ptr %.0275405.i, i64 8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !30
  %i.gj = tail call noundef i64 @llvm.bswap.i64(i64 %i.gi)
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !30
  %i.gk = getelementptr inbounds nuw i8, ptr %.0275405.i, i64 16 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !117
  %i.gm = tail call noundef i64 @llvm.bswap.i64(i64 %i.gl)
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !117
  %i.gn = getelementptr inbounds nuw i8, ptr %.0275405.i, i64 24 ; 2 uses
  %i.go = icmp ult ptr %i.gn, %i.gb
  br i1 %i.go, label %.lr.ph406.split.i, label %._crit_edge407.i, !llvm.loop !118

._crit_edge407.i:                                 ; preds = %.lr.ph406.split.i, %.preheader.i
  %.not301.i = icmp eq i32 %.0278.lcssa.i, -1
  br i1 %.not301.i, label %.loopexit195, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge407.i
  %i.gp = zext i32 %.0278.lcssa.i to i64
  %i.gq = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !97 ; 2 uses
  %.not302.i = icmp eq i32 %.0276.lcssa.i, %i.gs
  br i1 %.not302.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.38, ptr noundef %0, i32 noundef %i.gs, i32 noundef %.0276.lcssa.i)
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !24 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !114 ; 3 uses
  %i.gx = icmp uge ptr %i.gu, %i.gw
  %brmerge444.i = or i1 %i.ae, %i.gx
  br i1 %brmerge444.i, label %.loopexit195, label %.lr.ph410.split.i.preheader

.lr.ph410.split.i.preheader:                      ; preds = %bb.as
  %i.gy = ptrtoaddr ptr %i.gw to i64
  %i.gz = ptrtoaddr ptr %i.gu to i64
  %i.ha = xor i64 %i.gz, -1
  %i.hb = add i64 %i.ha, %i.gy                    ; 2 uses
  %i.hc = lshr i64 %i.hb, 2
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hb, 28
  br i1 %min.iters.check, label %.lr.ph410.split.i.preheader575, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph410.split.i.preheader
  %n.vec = and i64 %i.hd, 9223372036854775800     ; 3 uses
  %i.he = shl i64 %n.vec, 2
  %i.hf = getelementptr i8, ptr %i.gu, i64 %i.he
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.gu, i64 %i.hg ; 3 uses
  %i.hh = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !29
  %wide.load483 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !29
  %i.hi = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.hj = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load483)
  store <4 x i32> %i.hi, ptr %next.gep, align 4, !tbaa !29
  store <4 x i32> %i.hj, ptr %i.hh, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n, label %.loopexit195, label %.lr.ph410.split.i.preheader575

.lr.ph410.split.i.preheader575:                   ; preds = %.lr.ph410.split.i.preheader, %middle.block
  %.0273408.i.ph = phi ptr [ %i.gu, %.lr.ph410.split.i.preheader ], [ %i.hf, %middle.block ]
  br label %.lr.ph410.split.i

.lr.ph410.split.i:                                ; preds = %.lr.ph410.split.i.preheader575, %.lr.ph410.split.i
  %.0273408.i = phi ptr [ %i.hn, %.lr.ph410.split.i ], [ %.0273408.i.ph, %.lr.ph410.split.i.preheader575 ] ; 3 uses
  %i.hl = load i32, ptr %.0273408.i, align 4, !tbaa !29
  %i.hm = tail call noundef i32 @llvm.bswap.i32(i32 %i.hl)
  store i32 %i.hm, ptr %.0273408.i, align 4, !tbaa !29
  %i.hn = getelementptr inbounds nuw i8, ptr %.0273408.i, i64 4 ; 2 uses
  %i.ho = icmp ult ptr %i.hn, %i.gw
  br i1 %i.ho, label %.lr.ph410.split.i, label %.loopexit195, !llvm.loop !122

.loopexit195:                                     ; preds = %.lr.ph410.split.i, %middle.block, %bb.as, %._crit_edge407.i
  call void @symsearch_init(ptr noundef nonnull %2) #25
  %i.hp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 4 uses
  %i.hq = icmp ult i64 %i.hp, 2
  br i1 %i.hq, label %strends.exit.thread, label %strends.exit

strends.exit:                                     ; preds = %.loopexit195
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 %i.hp ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -2
  %i.ht = load i8, ptr %i.hs, align 1
  %.not247 = icmp eq i8 %i.ht, 46
  br i1 %.not247, label %sub_1, label %strends.exit.thread

sub_1:                                            ; preds = %strends.exit
  %i.hu = getelementptr inbounds i8, ptr %i.hr, i64 -1
  %i.hv = load i8, ptr %i.hu, align 1
  %.not248 = icmp eq i8 %i.hv, 111
  br i1 %.not248, label %strends.exit.tail, label %strends.exit.thread

strends.exit.tail:                                ; preds = %sub_1
  %i.hw = load i8, ptr %i.hr, align 1
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.at, label %strends.exit.thread

strends.exit.thread:                              ; preds = %sub_1, %strends.exit, %.loopexit195, %strends.exit.tail
  call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext true, ptr noundef nonnull @.str.18, ptr noundef nonnull %0)
  br label %parse_elf.exit.thread

bb.at:                                            ; preds = %strends.exit.tail
  %i.hy = add i64 %i.hp, 151
  %i.hz = call noalias ptr @malloc(i64 noundef %i.hy) #30 ; 28 uses
  %.not.i.i63 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i63, label %bb.au, label %new_module.exit

bb.au:                                            ; preds = %bb.at
  call void @exit(i32 noundef 1) #29
  unreachable

new_module.exit:                                  ; preds = %bb.at
  %i.ia = add i64 %i.hp, -2                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.hz, i8 0, i64 152, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 3 uses
  store ptr %i.ib, ptr %i.ib, align 8, !tbaa !39
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !42
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 32 ; 5 uses
  store ptr %i.id, ptr %i.id, align 8, !tbaa !39
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 40 ; 5 uses
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !42
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 88 ; 3 uses
  store ptr %i.if, ptr %i.if, align 8, !tbaa !39
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 96
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !42
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 104 ; 6 uses
  store ptr %i.ih, ptr %i.ih, align 8, !tbaa !39
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 112 ; 3 uses
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !42
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 120 ; 3 uses
  store ptr %i.ij, ptr %i.ij, align 8, !tbaa !39
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 128
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !42
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 148 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.il, ptr nonnull readonly align 1 %0, i64 %i.ia, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ia
  store i8 0, ptr %i.im, align 1, !tbaa !18
  %i.in = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.il, ptr noundef nonnull dereferenceable(8) @.str.13) #28
  %i.io = icmp eq i32 %i.in, 0                    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 57 ; 3 uses
  %i.iq = zext i1 %i.io to i8
  store i8 %i.iq, ptr %i.ip, align 1, !tbaa !46
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hz, i64 56 ; 2 uses
  store i8 1, ptr %i.ir, align 8, !tbaa !46
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @modules, i64 8), align 8, !tbaa !42 ; 2 uses
  store ptr %i.hz, ptr getelementptr inbounds nuw (i8, ptr @modules, i64 8), align 8, !tbaa !42
  store ptr @modules, ptr %i.hz, align 8, !tbaa !39
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %i.is, ptr %i.it, align 8, !tbaa !42
  store ptr %i.hz, ptr %i.is, align 8, !tbaa !39
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !111 ; 3 uses
  %.not44 = icmp eq i32 %i.iv, 0
  br i1 %.not44, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %new_module.exit
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = call noalias ptr @malloc(i64 noundef %i.iw) #30 ; 3 uses
  %.not.i64 = icmp eq ptr %i.ix, null
  br i1 %.not.i64, label %bb.aw, label %xmalloc.exit

bb.aw:                                            ; preds = %bb.av
  call void @exit(i32 noundef 1) #29
  unreachable

xmalloc.exit:                                     ; preds = %bb.av
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hz, i64 136
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !19
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr align 1 %i.ja, i64 %i.iw, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hz, i64 144
  store i32 %i.iv, ptr %i.jb, align 8, !tbaa !29
  br label %bb.ax

bb.ax:                                            ; preds = %xmalloc.exit, %new_module.exit
  br i1 %i.io, label %get_modinfo.exit131, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.val59 = load ptr, ptr %i.jc, align 8, !tbaa !107 ; 10 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %.not2017.i.i = icmp eq ptr %.val59, null
  br i1 %.not2017.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ay
  %.val60 = load i32, ptr %i.jd, align 8, !tbaa !108
  %i.je = zext i32 %.val60 to i64
  br label %next_string.exit30.i.i

next_string.exit30.i.loopexit.i:                  ; preds = %thread-pre-split.i27.i.i
  br label %next_string.exit30.i.i, !llvm.loop !123

next_string.exit30.i.i:                           ; preds = %next_string.exit30.i.loopexit.i, %.lr.ph.i.i
  %.01719.i.i = phi ptr [ %.val59, %.lr.ph.i.i ], [ %i.jr, %next_string.exit30.i.loopexit.i ] ; 4 uses
  %.318.i.i = phi i64 [ %i.je, %.lr.ph.i.i ], [ %i.jq, %next_string.exit30.i.loopexit.i ]
  %i.jf = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.01719.i.i, ptr noundef nonnull readonly dereferenceable(8) @.str.19, i64 noundef 7) #28
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.az, label %.preheader563

bb.az:                                            ; preds = %next_string.exit30.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.01719.i.i, i64 7
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !18
  %i.jj = icmp eq i8 %i.ji, 61
  br i1 %i.jj, label %.lr.ph, label %.preheader563

.preheader563:                                    ; preds = %bb.az, %next_string.exit30.i.i
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader563, %bb.bb
  %.4.i.i = phi i64 [ %i.jn, %bb.bb ], [ %.318.i.i, %.preheader563 ] ; 4 uses
  %.08.i21.i.i = phi ptr [ %i.jm, %bb.bb ], [ %.01719.i.i, %.preheader563 ] ; 3 uses
  %i.jk = load i8, ptr %.08.i21.i.i, align 1, !tbaa !18
  %.not.i22.i.i = icmp eq i8 %i.jk, 0
  br i1 %.not.i22.i.i, label %.preheader.i24.i.i.preheader, label %bb.bb

.preheader.i24.i.i.preheader:                     ; preds = %bb.ba
  %i.jl = icmp ult i64 %.4.i.i, 2
  br i1 %i.jl, label %.thread, label %thread-pre-split.i27.i.i.lr.ph, !llvm.loop !59

thread-pre-split.i27.i.i.lr.ph:                   ; preds = %.preheader.i24.i.i.preheader
  br label %thread-pre-split.i27.i.i, !llvm.loop !59

bb.bb:                                            ; preds = %bb.ba
  %i.jm = getelementptr inbounds nuw i8, ptr %.08.i21.i.i, i64 1
  %i.jn = add i64 %.4.i.i, -1
  %i.jo = icmp ult i64 %.4.i.i, 2
  br i1 %i.jo, label %.thread, label %bb.ba, !llvm.loop !60

end_hunk_0
begin_hunk_1_@add_exported_symbols:bb.a
  %.b3648 = phi i1 [ true, %bb.b ], [ %.b36.pre, %bb.c ]
  %.pn = load ptr, ptr %.pn41, align 8, !tbaa !39 ; 2 uses
  %.not = icmp eq ptr %.pn, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.b = load i1, ptr @modversions, align 1
  br i1 %.b, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  tail call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.163)
  %.pn3742 = load ptr, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %.not3843 = icmp eq ptr %.pn3742, %i.a
  br i1 %.not3843, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 57
  %.b35.pre50 = load i1, ptr @trim_unused_exports, align 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph46, %bb.k
  %.b35 = phi i1 [ %.b35.pre50, %.lr.ph46 ], [ %.b3551, %bb.k ]
  %.pn3744 = phi ptr [ %.pn3742, %.lr.ph46 ], [ %.pn37, %bb.k ] ; 6 uses
  br i1 %.b35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.pn3744, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !46, !range !61, !noundef !62
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.pn3744, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !46, !range !61, !noundef !62
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.pn3744, i64 41 ; 2 uses
  %i.w = load i8, ptr %i.o, align 1, !tbaa !46, !range !61, !noundef !62
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = select i1 %i.x, ptr @.str.15, ptr @.str.16
  tail call void (i1, ptr, ...) @modpost_log(i1 noundef zeroext false, ptr noundef nonnull @.str.182, ptr noundef nonnull %i.v, ptr noundef nonnull %i.n, ptr noundef nonnull %i.y, ptr noundef nonnull %i.v)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.pn3744, i64 41
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn3744, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !29
  tail call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.183, ptr noundef nonnull %i.z, i32 noundef %i.ab)
  %.b35.pre = load i1, ptr @trim_unused_exports, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %.b3551 = phi i1 [ true, %bb.g ], [ %.b35.pre, %bb.j ]
  %.pn37 = load ptr, ptr %.pn3744, align 8, !tbaa !39 ; 2 uses
  %.not38 = icmp eq ptr %.pn37, %i.a
  br i1 %.not38, label %.loopexit, label %bb.f, !llvm.loop !159

.loopexit:                                        ; preds = %bb.k, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_if_changed(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.167) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fileno(ptr noundef nonnull %i.a) #25
  %i.c = call i32 @fstat(i32 noundef %i.b, ptr noundef nonnull %2) #25
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !12   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %i.i = sext i32 %i.h to i64
  %.not20 = icmp eq i64 %i.f, %i.i
  br i1 %.not20, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #30 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %xmalloc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @exit(i32 noundef 1) #29
  unreachable

xmalloc.exit:                                     ; preds = %bb.d
  %i.k = tail call i64 @fread(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %i.a) ; 2 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !37
  %i.m = sext i32 %i.l to i64
  %.not21 = icmp eq i64 %i.k, %i.m
  br i1 %.not21, label %bb.f, label %bb.h

bb.f:                                             ; preds = %xmalloc.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !38
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.j, ptr %i.n, i64 %i.k)
  %.not22 = icmp eq i32 %bcmp, 0
  br i1 %.not22, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #25
  %i.o = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %xmalloc.exit
  tail call void @free(ptr noundef nonnull %i.j) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.h
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  tail call fastcc void @write_buf(ptr noundef %0, ptr noundef %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @write_buf(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #18 {
bb.a:
  %.b = load i1, ptr @error_occurred, align 1
  br i1 %.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.184) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @perror(ptr noundef %1) #26
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37
  %i.e = sext i32 %i.d to i64
  %i.f = tail call i64 @fwrite(ptr noundef %i.b, i64 noundef 1, i64 noundef %i.e, ptr noundef nonnull %i.a)
  %i.g = load i32, ptr %i.c, align 8, !tbaa !37
  %i.h = sext i32 %i.g to i64
  %.not10 = icmp eq i64 %i.f, %i.h
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @perror(ptr noundef %1) #26
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.a)
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @perror(ptr noundef %1) #26
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #23

attributes #0 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { cold nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !14, i64 48}
!13 = !{!"stat", !14, i64 0, !14, i64 8, !14, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !15, i64 72, !15, i64 88, !15, i64 104, !7, i64 120}
!14 = !{!"long", !7, i64 0}
!15 = !{!"timespec", !14, i64 0, !14, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!22, !23, i64 6}
!22 = !{!"", !6, i64 0, !7, i64 4, !7, i64 5, !23, i64 6, !14, i64 8, !14, i64 16}
!23 = !{!"short", !7, i64 0}
!24 = !{!25, !26, i64 96}
!25 = !{!"elf_info", !14, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !20, i64 48, !20, i64 56, !6, i64 64, !20, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !26, i64 96, !26, i64 104, !27, i64 112}
!26 = !{!"p1 int", !11, i64 0}
!27 = !{!"p1 _ZTS9symsearch", !11, i64 0}
!28 = !{!25, !11, i64 24}
!29 = !{!6, !6, i64 0}
!30 = !{!22, !14, i64 8}
!31 = !{!25, !11, i64 8}
!32 = !{!25, !11, i64 16}
!33 = !{!34, !14, i64 24}
!34 = !{!"", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !14, i64 48, !14, i64 56}
!35 = !{!36, !6, i64 12}
!36 = !{!"buffer", !20, i64 0, !6, i64 8, !6, i64 12}
!37 = !{!36, !6, i64 8}
!38 = !{!36, !20, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"list_head", !41, i64 0, !41, i64 8}
!41 = !{!"p1 _ZTS9list_head", !11, i64 0}
!42 = !{!40, !41, i64 8}
!43 = distinct !{!43, !17}
!44 = !{!45, !20, i64 16}
!45 = !{!"dump_list", !40, i64 0, !20, i64 16}
!46 = !{!47, !47, i64 0}
!47 = !{!"_Bool", !7, i64 0}
!48 = !{!45, !41, i64 0}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = !{!57, !57, i64 0}
!57 = !{!"p1 _ZTS10hlist_node", !11, i64 0}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTS6module", !11, i64 0}
!65 = distinct !{!65, !17}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = !{!41, !41, i64 0}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = !{!14, !14, i64 0}
!84 = !{!85, !23, i64 16}
!85 = !{!"", !7, i64 0, !23, i64 16, !23, i64 18, !6, i64 20, !14, i64 24, !14, i64 32, !14, i64 40, !6, i64 48, !23, i64 52, !23, i64 54, !23, i64 56, !23, i64 58, !23, i64 60, !23, i64 62}
!86 = !{!85, !14, i64 40}
!87 = !{!85, !23, i64 60}
!88 = !{!85, !23, i64 62}
!89 = !{!85, !23, i64 18}
!90 = !{!85, !6, i64 20}
!91 = !{!85, !14, i64 24}
!92 = !{!85, !14, i64 32}
!93 = !{!85, !6, i64 48}
!94 = !{!23, !23, i64 0}
!95 = !{!34, !14, i64 32}
!96 = !{!25, !6, i64 84}
!97 = !{!34, !6, i64 40}
!98 = !{!25, !6, i64 88}
!99 = !{!34, !6, i64 0}
!100 = !{!34, !6, i64 4}
!101 = !{!34, !14, i64 8}
!102 = !{!34, !14, i64 16}
!103 = !{!34, !6, i64 44}
!104 = !{!34, !14, i64 48}
!105 = !{!34, !14, i64 56}
!106 = distinct !{!106, !17}
!107 = !{!25, !20, i64 56}
!108 = !{!25, !6, i64 64}
!109 = !{!25, !6, i64 40}
!110 = !{!25, !20, i64 72}
!111 = !{!25, !6, i64 80}
!112 = !{!25, !11, i64 32}
!113 = !{!25, !20, i64 48}
!114 = !{!25, !26, i64 104}
!115 = distinct !{!115, !17}
!116 = !{!22, !6, i64 0}
!117 = !{!22, !14, i64 16}
!118 = distinct !{!118, !17}
!119 = distinct !{!119, !17, !120, !121}
!120 = !{!"llvm.loop.isvectorized", i32 1}
!121 = !{!"llvm.loop.unroll.runtime.disable"}
!122 = distinct !{!122, !17, !121, !120}
!123 = distinct !{!123, !17}
!124 = distinct !{!124, !17}
!125 = distinct !{!125, !17}
!126 = !{!22, !7, i64 4}
!127 = !{!26, !26, i64 0}
!128 = distinct !{!128, !17}
!129 = !{!130, !14, i64 0}
!130 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!131 = !{!130, !14, i64 8}
!132 = !{!130, !14, i64 16}
!133 = distinct !{!133, !17}
!134 = !{!135, !14, i64 0}
!135 = !{!"", !14, i64 0, !14, i64 8}
!136 = !{!135, !14, i64 8}
!137 = !{!138, !6, i64 0}
!138 = !{!"", !6, i64 0}
!139 = !{!140, !23, i64 0}
!140 = !{!"", !23, i64 0}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = !{!25, !14, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"p1 short", !11, i64 0}
!146 = distinct !{!146, !17}
!147 = distinct !{!147, !17}
!148 = !{!149, !57, i64 0}
!149 = !{!"hlist_head", !57, i64 0}
!150 = !{!151, !57, i64 0}
!151 = !{!"hlist_node", !57, i64 0, !152, i64 8}
!152 = !{!"p2 _ZTS10hlist_node", !153, i64 0}
!153 = !{!"any p2 pointer", !11, i64 0}
!154 = !{!151, !152, i64 8}
!155 = !{!156, !6, i64 480}
!156 = !{!"sectioncheck", !7, i64 0, !7, i64 160, !7, i64 320, !6, i64 480}
end_hunk_1
