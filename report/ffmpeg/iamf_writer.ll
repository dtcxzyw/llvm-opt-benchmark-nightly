Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iamf_writer?download=true
inline.NumInlined: 118
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ff_iamf_write_descriptors:bb.a
  br label %bb.k

.thread:                                          ; preds = %bb.b, %.lr.ph
  %.0.i.ph = phi i32 [ -1163346256, %bb.b ], [ %i.ae, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  br label %.loopexit76

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.l, align 16, !tbaa !19
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !146
  %i.cl = call i32 @avio_get_dyn_buf(ptr noundef %i.ck, ptr noundef nonnull %i.n) #10 ; 2 uses
  call void @avio_write(ptr noundef %1, ptr noundef nonnull %i.l, i32 noundef 1) #10
  call void @ffio_write_leb(ptr noundef %1, i32 noundef %i.cl) #10
  %i.cm = load ptr, ptr %i.n, align 8, !tbaa !145
  call void @avio_write(ptr noundef %1, ptr noundef %i.cm, i32 noundef %i.cl) #10
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = load i32, ptr %i.v, align 8, !tbaa !80
  %i.co = sext i32 %i.cn to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %.not, label %.lr.ph, label %.preheader80, !llvm.loop !150

.preheader:                                       ; preds = %.loopexit77, %.preheader80
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !117
  %.not51107 = icmp sgt i32 %i.cq, 0
  br i1 %.not51107, label %.lr.ph109, label %.loopexit76

.lr.ph109:                                        ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.aq

bb.l:                                             ; preds = %.lr.ph105, %.loopexit77
  %indvars.iv135 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next136, %.loopexit77 ] ; 2 uses
  %i.cv = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv135
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !60 ; 10 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !86 ; 7 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !81
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 36 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !87
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  store ptr null, ptr %i.i, align 8, !tbaa !145
  %i.df = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.h) #10 ; 2 uses
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %.thread72, label %flush_put_bits.exit.i52

flush_put_bits.exit.i52:                          ; preds = %bb.l
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !62
  call void @ffio_write_leb(ptr noundef %i.dh, i32 noundef %i.dj) #10
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !20
  %.tr.i = trunc i32 %i.dl to i8
  %i.dm = shl i8 %.tr.i, 5
  store i8 %i.dm, ptr %i.g, align 16, !tbaa !19
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !146
  call void @avio_write(ptr noundef %i.dn, ptr noundef nonnull %i.g, i32 noundef 1) #10
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.dp = load i32, ptr %i.da, align 4, !tbaa !87
  call void @ffio_write_leb(ptr noundef %i.do, i32 noundef %i.dp) #10
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 5 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !89
  call void @ffio_write_leb(ptr noundef %i.dq, i32 noundef %i.ds) #10
  %i.dt = load i32, ptr %i.dr, align 8, !tbaa !89
  %.not189.i = icmp eq i32 %i.dt, 0
  br i1 %.not189.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %flush_put_bits.exit.i52
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  br label %bb.m

._crit_edge.i:                                    ; preds = %bb.m, %flush_put_bits.exit.i52
  %i.dv = load i32, ptr %i.dk, align 8, !tbaa !20
  %i.dw = icmp eq i32 %i.dv, 1
  br i1 %i.dw, label %bb.z, label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.dx = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !88
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %indvars.iv.i
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !95
  call void @ffio_write_leb(ptr noundef %i.dx, i32 noundef %i.ea) #10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eb = load i32, ptr %i.dr, align 8, !tbaa !89
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp samesign ult i64 %indvars.iv.next.i, %i.ec
  br i1 %i.ed, label %bb.m, label %._crit_edge.i, !llvm.loop !151

bb.n:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  store i32 0, ptr %i.j, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !25
  call fastcc void @get_loudspeaker_layout(ptr noundef %i.eg, ptr noundef %i.j, ptr noundef %i.k)
  %i.eh = load i32, ptr %i.j, align 4, !tbaa !69  ; 3 uses
  %i.ei = icmp eq i32 %i.eh, 15
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !27 ; 4 uses
  br i1 %i.ei, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.el = icmp ugt i32 %i.ek, 1
  br i1 %i.el, label %.critedge.i, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.em = icmp eq i32 %i.ek, 1
  br i1 %i.em, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.en = icmp ult i32 %i.eh, 9
  br i1 %i.en, label %switch.lookup, label %bb.r

switch.lookup:                                    ; preds = %bb.q
  %i.eo = zext nneg i32 %i.eh to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ff_iamf_write_descriptors, i64 %i.eo
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.r

bb.r:                                             ; preds = %switch.lookup, %bb.q, %bb.p, %bb.o
  %i.ep = phi i32 [ %i.ek, %bb.o ], [ 1, %switch.lookup ], [ 1, %bb.q ], [ %i.ek, %bb.p ] ; 2 uses
  %.087.i = phi i32 [ 0, %bb.o ], [ %switch.ext, %switch.lookup ], [ 1, %bb.q ], [ 1, %bb.p ] ; 2 uses
  %i.eq = icmp ugt i32 %i.ep, 1                   ; 2 uses
  %i.er = or disjoint i32 %.087.i, 2
  %spec.select.i = select i1 %i.eq, i32 %i.er, i32 %.087.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !148
  switch i32 %i.et, label %bb.t [
    i32 1130450022, label %bb.s
    i32 1835233385, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.eu = and i32 %spec.select.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.289.i = phi i32 [ %i.eu, %bb.s ], [ %spec.select.i, %bb.r ] ; 4 uses
  %i.ev = and i32 %.289.i, 1
  %.not.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !100
  %.not105.i = icmp eq ptr %i.ex, null
  br i1 %.not105.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %i.eq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ey = load ptr, ptr %i.ee, align 8, !tbaa !24
  %i.ez = add i32 %i.ep, -1
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !25
  call fastcc void @get_loudspeaker_layout(ptr noundef %i.fc, ptr noundef %i.j, ptr noundef %i.k)
  %i.fd = load i32, ptr %i.j, align 4, !tbaa !69
  %switch.tableidx = add i32 %i.fd, -3            ; 2 uses
  %i.fe = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.fe, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ff = and i32 %.289.i, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.t
  %.4.i = phi i32 [ %i.ff, %bb.x ], [ %.289.i, %bb.t ], [ %.289.i, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %.5.i = phi i32 [ %.4.i, %bb.y ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.fg = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.fh = lshr i32 %.5.i, 1
  %i.fi = sub nuw nsw i32 %.5.i, %i.fh
  %i.fj = and i32 %i.fi, 50529027
  call void @ffio_write_leb(ptr noundef %i.fg, i32 noundef %i.fj) #10
  %i.fk = and i32 %.5.i, 1
  %.not106.i = icmp eq i32 %i.fk, 0
  br i1 %.not106.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !100 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !110
  %.not178.i = icmp eq i32 %i.fo, 0
  br i1 %.not178.i, label %bb.ab, label %av_iamf_param_definition_get_subblock.exit.i

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 262) #10
  call void @abort() #12
  unreachable

av_iamf_param_definition_get_subblock.exit.i:     ; preds = %bb.aa
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !152
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fq
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !146
  call void @ffio_write_leb(ptr noundef %i.fs, i32 noundef 1) #10
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !101 ; 2 uses
  %i.fv = load i32, ptr %i.z, align 8, !tbaa !103
  %i.fw = load ptr, ptr %i.aa, align 8, !tbaa !104 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.fv to i64
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !106
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !108 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !101
  %i.gc = icmp eq i32 %i.gb, %i.fu
  br i1 %i.gc, label %ff_iamf_get_param_definition.exit.i, label %.lr.ph184.i

.lr.ph184.i:                                      ; preds = %av_iamf_param_definition_get_subblock.exit.i, %.lr.ph184.i
  %indvars.iv.i183.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph184.i ], [ 0, %av_iamf_param_definition_get_subblock.exit.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i183.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.next.i.i
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !106
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !108 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !101
  %i.gj = icmp eq i32 %i.gi, %i.fu
  br i1 %i.gj, label %ff_iamf_get_param_definition.exit.i, label %.lr.ph184.i

ff_iamf_get_param_definition.exit.i:              ; preds = %.lr.ph184.i, %av_iamf_param_definition_get_subblock.exit.i
  %.val109.i = phi ptr [ %i.fz, %av_iamf_param_definition_get_subblock.exit.i ], [ %i.gg, %.lr.ph184.i ]
  %i.gk = load ptr, ptr %i.h, align 8, !tbaa !146
  call fastcc void @param_definition(ptr nonnull %.val109.i, ptr noundef %i.gk)
  %i.gl = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !153
  %i.go = shl i32 %i.gn, 5
  call void @avio_w8(ptr noundef %i.gl, i32 noundef %i.go) #10
  %i.gp = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !155
  %i.gs = shl i32 %i.gr, 4
  call void @avio_w8(ptr noundef %i.gp, i32 noundef %i.gs) #10
  br label %bb.ac

bb.ac:                                            ; preds = %ff_iamf_get_param_definition.exit.i, %bb.z
  %i.gt = and i32 %.5.i, 2
  %.not107.i = icmp eq i32 %i.gt, 0
  br i1 %.not107.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !111 ; 2 uses
  %.not108.not.i = icmp eq ptr %i.gv, null
  br i1 %.not108.not.i, label %.thread.i, label %bb.ae

.thread.i:                                        ; preds = %bb.ad
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !62
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %i.gx) #10
  br label %.thread72

bb.ae:                                            ; preds = %bb.ad
  %i.gy = load ptr, ptr %i.h, align 8, !tbaa !146
  call void @ffio_write_leb(ptr noundef %i.gy, i32 noundef 2) #10
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !101 ; 2 uses
  %i.hb = load i32, ptr %i.z, align 8, !tbaa !103 ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.i116.i, label %.thread174.i

.thread174.i:                                     ; preds = %bb.ae
  %i.hd = load ptr, ptr %i.h, align 8, !tbaa !146
  %.val176.i = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !108
  call fastcc void @param_definition(ptr %.val176.i, ptr noundef %i.hd)
  br label %bb.af

.lr.ph.i116.i:                                    ; preds = %bb.ae
  %i.he = load ptr, ptr %i.aa, align 8, !tbaa !104 ; 2 uses
  %wide.trip.count.i117.i = zext nneg i32 %i.hb to i64
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !106
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !108 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !101
  %i.hk = icmp eq i32 %i.hj, %i.ha
  br i1 %i.hk, label %._crit_edge187.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %.lr.ph.i116.i, %.lr.ph186.i
  %indvars.iv.i118185.i = phi i64 [ %indvars.iv.next.i119.i, %.lr.ph186.i ], [ 0, %.lr.ph.i116.i ]
  %indvars.iv.next.i119.i = add nuw nsw i64 %indvars.iv.i118185.i, 1 ; 3 uses
  %exitcond.not.i120.i = icmp ne i64 %indvars.iv.next.i119.i, %wide.trip.count.i117.i
  call void @llvm.assume(i1 %exitcond.not.i120.i)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.next.i119.i
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !106
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !108 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !101
  %i.hr = icmp eq i32 %i.hq, %i.ha
  br i1 %i.hr, label %._crit_edge187.i, label %.lr.ph186.i

._crit_edge187.i:                                 ; preds = %.lr.ph186.i, %.lr.ph.i116.i
  %.val.i = phi ptr [ %i.hh, %.lr.ph.i116.i ], [ %i.ho, %.lr.ph186.i ]
  %i.hs = load ptr, ptr %i.h, align 8, !tbaa !146
  call fastcc void @param_definition(ptr nonnull %.val.i, ptr noundef %i.hs)
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge187.i, %.thread174.i, %bb.ac
  %i.ht = load i32, ptr %i.dk, align 8, !tbaa !20
  %i.hu = icmp eq i32 %i.ht, 0
  %i.hv = load ptr, ptr %i.h, align 8, !tbaa !146 ; 9 uses
  %i.hw = load ptr, ptr %i.cx, align 8, !tbaa !86 ; 3 uses
  br i1 %i.hu, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !27
  %.tr.i.i = trunc i32 %i.hy to i8
  %i.hz = shl i8 %.tr.i.i, 5
  store i8 %i.hz, ptr %i.d, align 16, !tbaa !19
  call void @avio_write(ptr noundef %i.hv, ptr noundef nonnull %i.d, i32 noundef 1) #10
  %i.ia = load i32, ptr %i.hx, align 8, !tbaa !27
  %.not144.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not144.i.i, label %scalable_channel_layout_config.exit.i, label %put_bits.exit31.lr.ph.i.i

put_bits.exit31.lr.ph.i.i:                        ; preds = %bb.ag
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  br label %put_bits.exit31.i.i

put_bits.exit31.i.i:                              ; preds = %flush_put_bits.exit66.i.i, %put_bits.exit31.lr.ph.i.i
  %indvars.iv.i122.i = phi i64 [ 0, %put_bits.exit31.lr.ph.i.i ], [ %indvars.iv.next.i124.i, %flush_put_bits.exit66.i.i ] ; 3 uses
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !24
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i122.i
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call fastcc void @get_loudspeaker_layout(ptr noundef %i.if, ptr noundef %i.e, ptr noundef %i.f)
  %i.ig = load i32, ptr %i.e, align 4, !tbaa !69
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 36
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !156 ; 2 uses
  %.not142.i.i = icmp eq i32 %i.ii, 0             ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !157
  %i.il = and i32 %i.ik, 1
  %i.im = shl i32 %i.ig, 2
  %i.in = select i1 %.not142.i.i, i32 0, i32 2
  %i.io = or disjoint i32 %i.in, %i.im
  %i.ip = or disjoint i32 %i.io, %i.il
  %i.iq = load ptr, ptr %i.ic, align 8, !tbaa !90
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i122.i ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !91
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !93
  %i.iv = shl i32 %i.ip, 18
  %i.iw = shl i32 %i.is, 8
  %i.ix = or i32 %i.iu, %i.iw
  %i.iy = or i32 %i.ix, %i.iv                     ; 3 uses
  br i1 %.not142.i.i, label %put_bits.exit60.i.i, label %put_bits.exit60.thread.i.i

put_bits.exit60.i.i:                              ; preds = %put_bits.exit31.i.i
  %i.iz = load i32, ptr %i.f, align 4, !tbaa !69  ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, -1
  br i1 %i.ja, label %bb.ai, label %.lr.ph.i65.i.i

put_bits.exit60.thread.i.i:                       ; preds = %put_bits.exit31.i.i
  %i.jb = shl i32 %i.iy, 8
  %i.jc = shl i32 %i.ii, 2
  %i.jd = or i32 %i.jb, %i.jc
  %i.je = call i32 @llvm.bswap.i32(i32 %i.jd)
  store i32 %i.je, ptr %i.d, align 16, !tbaa !19
  %i.jf = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.jg = load i64, ptr %i.jf, align 8            ; 2 uses
  %sext.i.i.i = shl i64 %i.jg, 32
  %i.jh = ashr exact i64 %sext.i.i.i, 32
  %i.ji = ashr i64 %i.jg, 32
end_hunk_0
