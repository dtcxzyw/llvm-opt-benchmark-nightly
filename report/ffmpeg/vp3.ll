Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vp3_decode_frame:bb.a
  %.0204337 = phi i32 [ %i.ai, %bb.h ], [ %i.ag, %bb.g ]
  %i.ak = tail call i32 @vp3_decode_end(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.nd

bb.i:                                             ; preds = %bb.f
  %i.al = tail call i32 @vp3_decode_end(ptr noundef nonnull %0) #12 ; 0 uses
  %i.am = call fastcc i32 @theora_decode_tables(ptr noundef nonnull %0, ptr noundef %4) ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.j, label %.thread338

bb.j:                                             ; preds = %bb.i
  %i.ao = call i32 @vp3_decode_init(ptr noundef nonnull %0) #12 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.thread338, label %bb.nd

.thread338:                                       ; preds = %bb.i, %bb.j
  %.1340 = phi i32 [ %i.ao, %bb.j ], [ %i.am, %bb.i ]
  %i.aq = call i32 @vp3_decode_end(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.nd

bb.k:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.22) #11
  br label %bb.nd

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.ar = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]      ; 3 uses
  %i.as = load i8, ptr %i.i, align 1, !tbaa !49
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, %i.ar
  %i.av = lshr i32 %i.au, 7
  %i.aw = and i32 %i.av, 1
  %i.ax = xor i32 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 12 uses
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !144
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 936 ; 15 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  %.not228 = icmp eq ptr %i.ba, null
  br i1 %.not228, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.23) #11
  br label %bb.nd

bb.n:                                             ; preds = %bb.l
  %spec.select.i260 = add nuw nsw i32 %i.ar, 1
  %i.bb = or disjoint i32 %i.ar, 2
  %spec.select = select i1 %.not, i32 %i.bb, i32 %spec.select.i260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 828 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.bc, i64 12, i1 false), !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 840 ; 4 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !40
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.be = phi i32 [ %.pre, %bb.q ], [ 0, %bb.n ]  ; 2 uses
  %i.bf = phi i32 [ %i.cc, %bb.q ], [ %i.r, %bb.n ]
  %i.bg = phi i32 [ %spec.select.i261, %bb.q ], [ %spec.select, %bb.n ] ; 3 uses
  %i.bh = lshr i32 %i.bg, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !49
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bm = and i32 %i.bg, 7
  %i.bn = shl i32 %i.bl, %i.bm
  %i.bo = lshr i32 %i.bn, 26
  %i.bp = add i32 %i.bg, 6
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %i.bp)
  store i32 %i.bq, ptr %i.t, align 8, !tbaa !48
  %i.br = add nsw i32 %i.be, 1
  store i32 %i.br, ptr %i.bd, align 8, !tbaa !40
  %i.bs = sext i32 %i.be to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bs
  store i32 %i.bo, ptr %i.bt, align 4, !tbaa !29
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !42
  %i.bv = icmp sgt i32 %i.bu, 197119
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !40 ; 4 uses
  %i.bw = icmp slt i32 %.pre, 3                   ; 2 uses
  br i1 %i.bv, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  br i1 %i.bw, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.bx = load i32, ptr %i.t, align 8, !tbaa !48  ; 4 uses
  %i.by = lshr i32 %i.bx, 3
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !49
  %i.cc = load i32, ptr %i.s, align 8, !tbaa !47  ; 2 uses
  %i.cd = icmp slt i32 %i.bx, %i.cc
  %i.ce = zext i1 %i.cd to i32
  %spec.select.i261 = add i32 %i.bx, %i.ce        ; 2 uses
  %i.cf = zext i8 %i.cb to i32
  %i.cg = and i32 %i.bx, 7
  store i32 %spec.select.i261, ptr %i.t, align 8, !tbaa !48
  %i.ch = lshr exact i32 128, %i.cg
  %i.ci = and i32 %i.ch, %i.cf
  %.not230 = icmp eq i32 %i.ci, 0
  br i1 %.not230, label %.lr.ph.preheader, label %bb.o, !llvm.loop !105

.critedge:                                        ; preds = %bb.o
  br i1 %i.bw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q, %.critedge
  %i.cj = sext i32 %.pre to i64
  %i.ck = shl nsw i64 %i.cj, 2
  %i.cl = getelementptr i8, ptr %i.m, i64 %i.ck
  %scevgep = getelementptr i8, ptr %i.cl, i64 828
  %i.cm = sub i32 2, %.pre
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 -1, i64 %i.cp, i1 false), !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %.lr.ph.preheader, %.critedge
  %i.cq = load ptr, ptr %i.m, align 16, !tbaa !51 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 524
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !145
  %i.ct = and i32 %i.cs, 1
  %.not231 = icmp eq i32 %i.ct, 0
  br i1 %.not231, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.cu = load i32, ptr %i.ay, align 8, !tbaa !144
  %.not232 = icmp eq i32 %i.cu, 0
  %i.cv = select i1 %.not232, ptr @.str.26, ptr @.str.25
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !146
  %i.cy = add nsw i64 %i.cx, 1
  %i.cz = load i32, ptr %i.bc, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.cq, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.cv, i64 noundef %i.cy, i32 noundef %i.cz) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 37160
  %i.db = load i32, ptr %i.bc, align 4, !tbaa !29 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %i.dc ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !49
  %.not233 = icmp eq i8 %i.de, 0
  br i1 %.not233, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !147
  %i.dh = load i32, ptr %i.ay, align 8, !tbaa !144
  %.not234 = icmp eq i32 %i.dh, 0
  %i.di = select i1 %.not234, i32 32, i32 48
  %i.dj = icmp sge i32 %i.dg, %i.di
  %i.dk = zext i1 %i.dj to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dl = phi i32 [ 1, %bb.s ], [ %i.dk, %bb.t ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 824 ; 3 uses
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !148
  %i.dn = load i32, ptr %i.g, align 4, !tbaa !29  ; 2 uses
  %.not235 = icmp eq i32 %i.db, %i.dn
  br i1 %.not235, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 37232
  %i.dp = load i8, ptr %i.dd, align 1, !tbaa !49
  %i.dq = zext i8 %i.dp to i32
  tail call void @ff_vp3dsp_set_bounding_values(ptr noundef nonnull %i.do, i32 noundef %i.dq) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dr = load i32, ptr %i.bd, align 8, !tbaa !40 ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph408, label %._crit_edge409

.lr.ph408:                                        ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 1248
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 992
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 26086
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 26080
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 26470
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 1504 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 29632 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 92 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %wide.trip.count = zext nneg i32 %i.dr to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 26278
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 26083
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 26854
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 30016
  br label %bb.x

._crit_edge409:                                   ; preds = %init_dequantizer.exit, %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !149
  %i.ei = icmp sgt i32 %i.eh, 31
  br i1 %i.ei, label %bb.ad, label %bb.ae

bb.x:                                             ; preds = %.lr.ph408, %init_dequantizer.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph408 ], [ %indvars.iv.next, %init_dequantizer.exit ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !29 ; 8 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.em = load i32, ptr %i.el, align 4, !tbaa !29
  %.not256 = icmp eq i32 %i.ek, %i.em
  br i1 %.not256, label %bb.y, label %.preheader.i

bb.y:                                             ; preds = %bb.x
  %i.en = load i32, ptr %i.bc, align 4, !tbaa !29
  %.not257 = icmp eq i32 %i.en, %i.dn
  br i1 %.not257, label %init_dequantizer.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.y, %bb.x
  %i.eo = sext i32 %i.ek to i64                   ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !29 ; 4 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.du, i64 %i.eo ; 2 uses
  %i.er = getelementptr inbounds nuw [768 x i8], ptr %i.dz, i64 %indvars.iv ; 2 uses
  %i.es = load i32, ptr %i.eb, align 4, !tbaa !54
  %i.et = icmp slt i32 %i.es, 2                   ; 2 uses
  br label %bb.ab

.preheader.i.1:                                   ; preds = %.loopexit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 384
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.i.1, %.preheader.i.1
  %indvars.iv112.i.1 = phi i64 [ 0, %.preheader.i.1 ], [ %indvars.iv.next113.i.1, %.loopexit.i.1 ] ; 7 uses
  %i.ev = icmp ne i64 %indvars.iv112.i.1, 0
  %i.ew = zext i1 %i.ev to i64
  %gep.i.1 = getelementptr [128 x i8], ptr %invariant.gep.i, i64 %i.ew
  %i.ex = load i16, ptr %gep.i.1, align 2, !tbaa !56
  %i.ey = zext i16 %i.ex to i32
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %i.ec, i64 %indvars.iv112.i.1 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv112.i.1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !49  ; 2 uses
  %i.fc = zext i8 %i.fb to i64                    ; 2 uses
  %.not105.i.1 = icmp eq i8 %i.fb, 0
  br i1 %.not105.i.1, label %.peel.next.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.z, %bb.aa
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %.08795.i.1 = phi i32 [ %i.fg, %bb.aa ], [ 0, %bb.z ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.i.1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !49
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nuw nsw i32 %.08795.i.1, %i.ff      ; 3 uses
  %.not.i.1 = icmp sgt i32 %i.ek, %i.fg
  br i1 %.not.i.1, label %bb.aa, label %._crit_edge.loopexit.i.1

bb.aa:                                            ; preds = %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.fc
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i.1, label %.lr.ph.i.1, !llvm.loop !106

._crit_edge.loopexit.i.1:                         ; preds = %bb.aa, %.lr.ph.i.1
  %.086.lcssa.ph.i.1 = phi i64 [ %i.fc, %bb.aa ], [ %indvars.iv.i.1, %.lr.ph.i.1 ]
  %i.fh = and i64 %.086.lcssa.ph.i.1, 4294967295
  br label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %._crit_edge.loopexit.i.1, %bb.z
  %.086.lcssa.i.1 = phi i64 [ 0, %bb.z ], [ %i.fh, %._crit_edge.loopexit.i.1 ] ; 2 uses
  %.1.i.1 = phi i32 [ 0, %bb.z ], [ %i.fg, %._crit_edge.loopexit.i.1 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.086.lcssa.i.1 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !49
  %i.fk = zext i8 %i.fj to i32                    ; 3 uses
  %i.fl = getelementptr inbounds nuw [128 x i8], ptr %i.ee, i64 %indvars.iv112.i.1
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %.086.lcssa.i.1 ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !56
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !56
  %i.fq = sub nsw i32 %.1.i.1, %i.ek
  %i.fr = zext i16 %i.fn to i64
  %i.fs = getelementptr inbounds nuw [64 x i8], ptr %i.dy, i64 %i.fr ; 3 uses
  %i.ft = sub i32 %i.ek, %.1.i.1
  %.neg.i.1 = add i32 %i.ft, %i.fk
  %i.fu = zext i16 %i.fp to i64
  %i.fv = getelementptr inbounds nuw [64 x i8], ptr %i.dy, i64 %i.fu ; 3 uses
  %factor.op.mul.i.1 = shl i32 %i.fq, 1           ; 3 uses
  %factor.op.mul101.i.1 = shl i32 %.neg.i.1, 1    ; 3 uses
  %i.fw = getelementptr inbounds nuw [128 x i8], ptr %i.eu, i64 %indvars.iv112.i.1 ; 4 uses
  %i.fx = load i8, ptr %i.fv, align 1, !tbaa !49
  %i.fy = zext i8 %i.fx to i32
  %.neg93.reass.peel.i.1 = mul i32 %factor.op.mul101.i.1, %i.fy
  %i.fz = load i8, ptr %i.fs, align 1, !tbaa !49
  %i.ga = zext i8 %i.fz to i32
  %.reass.peel.i.1 = mul i32 %factor.op.mul.i.1, %i.ga
  %reass.add.peel.i.1 = add i32 %.neg93.reass.peel.i.1, %i.fk
  %i.gb = add i32 %reass.add.peel.i.1, %.reass.peel.i.1
  %i.gc = shl nuw nsw i32 %i.fk, 1
  %i.gd = sdiv i32 %i.gb, %i.gc
  %i.ge = mul nsw i32 %i.gd, %i.ey
  %i.gf = sdiv i32 %i.ge, 100
  %i.gg = shl nsw i32 %i.gf, 2
  %i.gh = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 32)
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.gh, i32 4096)
  %i.gj = trunc nuw nsw i32 %i.gi to i16
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %i.js
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !56
  br i1 %i.et, label %.peel.next.i.split.us.1, label %.peel.next.i.split.1

.peel.next.i.split.1:                             ; preds = %.peel.next.i.1, %.peel.next.i.split.1
  %indvars.iv107.i.1 = phi i64 [ %indvars.iv.next108.i.1, %.peel.next.i.split.1 ], [ 1, %.peel.next.i.1 ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv107.i.1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !49
  %i.gn = zext i8 %i.gm to i32
  %.reass.i.1 = mul i32 %factor.op.mul.i.1, %i.gn
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv107.i.1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !49
  %i.gq = zext i8 %i.gp to i32
  %.neg93.reass.i.1 = mul i32 %factor.op.mul101.i.1, %i.gq
  %i.gr = load i8, ptr %i.fi, align 1, !tbaa !49
  %i.gs = zext i8 %i.gr to i32                    ; 2 uses
  %reass.add.i.1 = add i32 %.neg93.reass.i.1, %.reass.i.1
  %i.gt = add i32 %reass.add.i.1, %i.gs
  %i.gu = shl nuw nsw i32 %i.gs, 1
  %i.gv = sdiv i32 %i.gt, %i.gu
  %i.gw = add nsw i32 %i.gv, -6
  %i.gx = mul nsw i32 %i.gw, %i.eq
  %i.gy = sdiv i32 %i.gx, 100
  %i.gz = trunc i32 %i.gy to i16
  %.tr.1 = shl i16 %i.gz, 2
  %i.ha = add i16 %.tr.1, 24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv107.i.1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !49
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %i.hd
  store i16 %i.ha, ptr %i.he, align 2, !tbaa !56
  %indvars.iv.next108.i.1 = add nuw nsw i64 %indvars.iv107.i.1, 1 ; 2 uses
  %exitcond110.not.i.1 = icmp eq i64 %indvars.iv.next108.i.1, 64
  br i1 %exitcond110.not.i.1, label %.loopexit.i.1, label %.peel.next.i.split.1, !llvm.loop !107

.peel.next.i.split.us.1:                          ; preds = %.peel.next.i.1, %.peel.next.i.split.us.1
  %indvars.iv107.i.us.1 = phi i64 [ %indvars.iv.next108.i.us.1, %.peel.next.i.split.us.1 ], [ 1, %.peel.next.i.1 ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv107.i.us.1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !49
  %i.hh = zext i8 %i.hg to i32
  %.reass.i.us.1 = mul i32 %factor.op.mul.i.1, %i.hh
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv107.i.us.1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !49
  %i.hk = zext i8 %i.hj to i32
  %.neg93.reass.i.us.1 = mul i32 %factor.op.mul101.i.1, %i.hk
  %i.hl = load i8, ptr %i.fi, align 1, !tbaa !49
  %i.hm = zext i8 %i.hl to i32                    ; 2 uses
  %reass.add.i.us.1 = add i32 %.neg93.reass.i.us.1, %.reass.i.us.1
  %i.hn = add i32 %reass.add.i.us.1, %i.hm
  %i.ho = shl nuw nsw i32 %i.hm, 1
  %i.hp = sdiv i32 %i.hn, %i.ho
  %i.hq = mul nsw i32 %i.hp, %i.eq
  %i.hr = sdiv i32 %i.hq, 100
  %i.hs = shl nsw i32 %i.hr, 2
  %i.ht = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 16)
  %i.hu = tail call i32 @llvm.umin.i32(i32 %i.ht, i32 4096)
  %i.hv = trunc nuw nsw i32 %i.hu to i16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv107.i.us.1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !49
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %i.hy
  store i16 %i.hv, ptr %i.hz, align 2, !tbaa !56
  %indvars.iv.next108.i.us.1 = add nuw nsw i64 %indvars.iv107.i.us.1, 1 ; 2 uses
  %exitcond110.not.i.us.1 = icmp eq i64 %indvars.iv.next108.i.us.1, 64
  br i1 %exitcond110.not.i.us.1, label %.loopexit.i.1, label %.peel.next.i.split.us.1, !llvm.loop !107

.loopexit.i.1:                                    ; preds = %.peel.next.i.split.1, %.peel.next.i.split.us.1
  %i.ia = getelementptr inbounds nuw [128 x i8], ptr %i.ef, i64 %indvars.iv112.i.1
  %i.ib = load i16, ptr %i.ia, align 16, !tbaa !56
  store i16 %i.ib, ptr %i.fw, align 16, !tbaa !56
  %indvars.iv.next113.i.1 = add nuw nsw i64 %indvars.iv112.i.1, 1 ; 2 uses
  %exitcond115.not.i.1 = icmp eq i64 %indvars.iv.next113.i.1, 3
  br i1 %exitcond115.not.i.1, label %init_dequantizer.exit, label %bb.z, !llvm.loop !108

bb.ab:                                            ; preds = %.loopexit.i, %.preheader.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next113.i, %.loopexit.i ] ; 7 uses
  %i.ic = icmp ne i64 %indvars.iv112.i, 0
  %i.id = zext i1 %i.ic to i64
  %gep.i = getelementptr [128 x i8], ptr %invariant.gep.i, i64 %i.id
  %i.ie = load i16, ptr %gep.i, align 2, !tbaa !56
  %i.if = zext i16 %i.ie to i32
  %i.ig = getelementptr inbounds nuw [64 x i8], ptr %i.dv, i64 %indvars.iv112.i ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv112.i
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !49  ; 2 uses
  %i.ij = zext i8 %i.ii to i64                    ; 2 uses
  %.not105.i = icmp eq i8 %i.ii, 0
  br i1 %.not105.i, label %.peel.next.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ac
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ac ], [ 0, %bb.ab ] ; 3 uses
  %.08795.i = phi i32 [ %i.in, %bb.ac ], [ 0, %bb.ab ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.i
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !49
  %i.im = zext i8 %i.il to i32
  %i.in = add nuw nsw i32 %.08795.i, %i.im        ; 3 uses
  %.not.i = icmp sgt i32 %i.ek, %i.in
  br i1 %.not.i, label %bb.ac, label %._crit_edge.loopexit.i

bb.ac:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ij
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !106

._crit_edge.loopexit.i:                           ; preds = %bb.ac, %.lr.ph.i
  %.086.lcssa.ph.i = phi i64 [ %i.ij, %bb.ac ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.io = and i64 %.086.lcssa.ph.i, 4294967295
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %._crit_edge.loopexit.i, %bb.ab
  %.086.lcssa.i = phi i64 [ 0, %bb.ab ], [ %i.io, %._crit_edge.loopexit.i ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.ab ], [ %i.in, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.086.lcssa.i ; 3 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !49
  %i.ir = zext i8 %i.iq to i32                    ; 3 uses
  %i.is = getelementptr inbounds nuw [128 x i8], ptr %i.dx, i64 %indvars.iv112.i
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %.086.lcssa.i ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !56
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !56
  %i.ix = sub nsw i32 %.1.i, %i.ek
  %i.iy = zext i16 %i.iu to i64
  %i.iz = getelementptr inbounds nuw [64 x i8], ptr %i.dy, i64 %i.iy ; 3 uses
  %i.ja = sub i32 %i.ek, %.1.i
  %.neg.i = add i32 %i.ja, %i.ir
  %i.jb = zext i16 %i.iw to i64
  %i.jc = getelementptr inbounds nuw [64 x i8], ptr %i.dy, i64 %i.jb ; 3 uses
  %factor.op.mul.i = shl i32 %i.ix, 1             ; 3 uses
  %factor.op.mul101.i = shl i32 %.neg.i, 1        ; 3 uses
  %i.jd = getelementptr inbounds nuw [128 x i8], ptr %i.er, i64 %indvars.iv112.i ; 4 uses
  %i.je = load i8, ptr %i.jc, align 1, !tbaa !49
  %i.jf = zext i8 %i.je to i32
  %.neg93.reass.peel.i = mul i32 %factor.op.mul101.i, %i.jf
  %i.jg = load i8, ptr %i.iz, align 1, !tbaa !49
  %i.jh = zext i8 %i.jg to i32
  %.reass.peel.i = mul i32 %factor.op.mul.i, %i.jh
  %reass.add.peel.i = add i32 %.neg93.reass.peel.i, %i.ir
  %i.ji = add i32 %reass.add.peel.i, %.reass.peel.i
  %i.jj = shl nuw nsw i32 %i.ir, 1
  %i.jk = sdiv i32 %i.ji, %i.jj
  %i.jl = mul nsw i32 %i.jk, %i.if
  %i.jm = sdiv i32 %i.jl, 100
  %i.jn = shl nsw i32 %i.jm, 2
  %i.jo = tail call i32 @llvm.smax.i32(i32 %i.jn, i32 16)
  %i.jp = tail call i32 @llvm.umin.i32(i32 %i.jo, i32 4096)
  %i.jq = trunc nuw nsw i32 %i.jp to i16
  %i.jr = load i8, ptr %i.ea, align 4, !tbaa !49
  %i.js = zext i8 %i.jr to i64                    ; 2 uses
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.js
  store i16 %i.jq, ptr %i.jt, align 2, !tbaa !56
  br i1 %i.et, label %.peel.next.i.split.us, label %.peel.next.i.split

.peel.next.i.split.us:                            ; preds = %.peel.next.i, %.peel.next.i.split.us
  %indvars.iv107.i.us = phi i64 [ %indvars.iv.next108.i.us, %.peel.next.i.split.us ], [ 1, %.peel.next.i ] ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iz, i64 %indvars.iv107.i.us
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !49
  %i.jw = zext i8 %i.jv to i32
  %.reass.i.us = mul i32 %factor.op.mul.i, %i.jw
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jc, i64 %indvars.iv107.i.us
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !49
  %i.jz = zext i8 %i.jy to i32
  %.neg93.reass.i.us = mul i32 %factor.op.mul101.i, %i.jz
  %i.ka = load i8, ptr %i.ip, align 1, !tbaa !49
  %i.kb = zext i8 %i.ka to i32                    ; 2 uses
  %reass.add.i.us = add i32 %.neg93.reass.i.us, %.reass.i.us
  %i.kc = add i32 %reass.add.i.us, %i.kb
  %i.kd = shl nuw nsw i32 %i.kb, 1
  %i.ke = sdiv i32 %i.kc, %i.kd
  %i.kf = mul nsw i32 %i.ke, %i.eq
  %i.kg = sdiv i32 %i.kf, 100
  %i.kh = shl nsw i32 %i.kg, 2
  %i.ki = tail call i32 @llvm.smax.i32(i32 %i.kh, i32 8)
  %i.kj = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 4096)
  %i.kk = trunc nuw nsw i32 %i.kj to i16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv107.i.us
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !49
  %i.kn = zext i8 %i.km to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.kn
  store i16 %i.kk, ptr %i.ko, align 2, !tbaa !56
  %indvars.iv.next108.i.us = add nuw nsw i64 %indvars.iv107.i.us, 1 ; 2 uses
  %exitcond110.not.i.us = icmp eq i64 %indvars.iv.next108.i.us, 64
  br i1 %exitcond110.not.i.us, label %.loopexit.i, label %.peel.next.i.split.us, !llvm.loop !107

.loopexit.i:                                      ; preds = %.peel.next.i.split, %.peel.next.i.split.us
  %i.kp = getelementptr inbounds nuw [128 x i8], ptr %i.dz, i64 %indvars.iv112.i
  %i.kq = load i16, ptr %i.kp, align 16, !tbaa !56
  store i16 %i.kq, ptr %i.jd, align 16, !tbaa !56
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond115.not.i = icmp eq i64 %indvars.iv.next113.i, 3
  br i1 %exitcond115.not.i, label %.preheader.i.1, label %bb.ab, !llvm.loop !108

.peel.next.i.split:                               ; preds = %.peel.next.i, %.peel.next.i.split
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.peel.next.i.split ], [ 1, %.peel.next.i ] ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iz, i64 %indvars.iv107.i
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !49
  %i.kt = zext i8 %i.ks to i32
  %.reass.i = mul i32 %factor.op.mul.i, %i.kt
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jc, i64 %indvars.iv107.i
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !49
  %i.kw = zext i8 %i.kv to i32
  %.neg93.reass.i = mul i32 %factor.op.mul101.i, %i.kw
  %i.kx = load i8, ptr %i.ip, align 1, !tbaa !49
  %i.ky = zext i8 %i.kx to i32                    ; 2 uses
  %reass.add.i = add i32 %.neg93.reass.i, %.reass.i
  %i.kz = add i32 %reass.add.i, %i.ky
  %i.la = shl nuw nsw i32 %i.ky, 1
  %i.lb = sdiv i32 %i.kz, %i.la
  %i.lc = add nsw i32 %i.lb, -3
  %i.ld = mul nsw i32 %i.lc, %i.eq
  %i.le = sdiv i32 %i.ld, 100
  %i.lf = trunc i32 %i.le to i16
  %.tr = shl i16 %i.lf, 2
  %i.lg = add i16 %.tr, 12
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv107.i
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !49
  %i.lj = zext i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.lj
  store i16 %i.lg, ptr %i.lk, align 2, !tbaa !56
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond110.not.i = icmp eq i64 %indvars.iv.next108.i, 64
  br i1 %exitcond110.not.i, label %.loopexit.i, label %.peel.next.i.split, !llvm.loop !107

init_dequantizer.exit:                            ; preds = %.loopexit.i.1, %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge409, label %bb.x, !llvm.loop !109

bb.ad:                                            ; preds = %._crit_edge409
  %i.ll = load i32, ptr %i.ay, align 8, !tbaa !144
  %.not236 = icmp eq i32 %i.ll, 0
  br i1 %.not236, label %bb.nc, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge409
  %i.lm = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 7 uses
  %i.ln = tail call i32 @ff_progress_frame_get_buffer(ptr noundef nonnull %0, ptr noundef nonnull %i.lm, i32 noundef 1) #11 ; 2 uses
  %i.lo = icmp slt i32 %i.ln, 0
  br i1 %i.lo, label %bb.nc, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lp = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 14 uses
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %i.lp, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, ptr noundef nonnull align 8 dereferenceable(16) %i.lm, i64 16, i1 false), !tbaa.struct !152
  store <2 x ptr> %.sroa.0.0.copyload, ptr %i.lm, align 8
  %i.lq = load i32, ptr %i.ay, align 8, !tbaa !144 ; 2 uses
  %.not237 = icmp eq i32 %i.lq, 0                 ; 2 uses
  %i.lr = select i1 %.not237, i32 2, i32 1
  %i.ls = load ptr, ptr %i.lp, align 8, !tbaa !58 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 120
  store i32 %i.lr, ptr %i.lt, align 8, !tbaa !157
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 276 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !158
  %i.lw = and i32 %i.lv, -3
  %masksel = select i1 %.not237, i32 0, i32 2
  %.sink666 = or disjoint i32 %i.lw, %masksel
  store i32 %.sink666, ptr %i.lu, align 4, !tbaa !158
  %i.lx = getelementptr inbounds nuw i8, ptr %i.m, i64 31952 ; 4 uses
  %i.ly = load ptr, ptr %i.lx, align 16, !tbaa !159
  %.not239 = icmp eq ptr %i.ly, null
  br i1 %.not239, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 64
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !29
  %i.mb = tail call i32 @llvm.abs.i32(i32 %i.ma, i1 true)
  %i.mc = mul nuw nsw i32 %i.mb, 9
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = tail call noalias ptr @av_malloc(i64 noundef %i.md) #11 ; 2 uses
  store ptr %i.me, ptr %i.lx, align 16, !tbaa !159
  %.not240 = icmp eq ptr %i.me, null
  br i1 %.not240, label %bb.nb, label %._crit_edge487

._crit_edge487:                                   ; preds = %bb.ag
  %.pre488 = load i32, ptr %i.ay, align 8, !tbaa !144
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge487, %bb.af
  %i.mf = phi i32 [ %.pre488, %._crit_edge487 ], [ %i.lq, %bb.af ]
  %.not241 = icmp eq i32 %i.mf, 0
  br i1 %.not241, label %bb.az, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mg = load i32, ptr %i.u, align 8, !tbaa !42
  %.not243 = icmp eq i32 %i.mg, 0
  br i1 %.not243, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.mh = load i32, ptr %i.t, align 8, !tbaa !48
  %i.mi = load i32, ptr %i.s, align 8, !tbaa !47  ; 3 uses
  %i.mj = add i32 %i.mh, 4
  %i.mk = tail call i32 @llvm.umin.i32(i32 %i.mi, i32 %i.mj)
  %i.ml = add i32 %i.mk, 4
  %i.mm = tail call i32 @llvm.umin.i32(i32 %i.mi, i32 %i.ml) ; 4 uses
  store i32 %i.mm, ptr %i.t, align 8, !tbaa !48
  %i.mn = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !54
  %.not244 = icmp eq i32 %i.mo, 0
  br i1 %.not244, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mp = lshr i32 %i.mm, 3
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 1, !tbaa !49
  %i.mt = tail call i32 @llvm.bswap.i32(i32 %i.ms)
  %i.mu = and i32 %i.mm, 7
  %i.mv = shl i32 %i.mt, %i.mu
  %i.mw = lshr i32 %i.mv, 27                      ; 2 uses
  %i.mx = add i32 %i.mm, 5
  %i.my = tail call i32 @llvm.umin.i32(i32 %i.mi, i32 %i.mx)
  store i32 %i.my, ptr %i.t, align 8, !tbaa !48
  store i32 %i.mw, ptr %i.mn, align 4, !tbaa !54
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !146
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.nc = load ptr, ptr %i.m, align 16, !tbaa !51
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nc, i32 noundef 48, ptr noundef nonnull @.str.27, i32 noundef %i.mw) #11
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj, %bb.ai
  %i.nd = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !54 ; 2 uses
  %.not245 = icmp eq i32 %i.ne, 0
  br i1 %.not245, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nf = load i32, ptr %i.u, align 8, !tbaa !42
end_hunk_0
