Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jp2?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@opj_jp2_setup_encoder:bb.a
  %i.ca = add i32 %i.bz, -1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !53
  %i.cd = shl i32 %i.cc, 7
  %i.ce = add i32 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv195.epil.init
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !72
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %.lr.ph178.epil.preheader, %._crit_edge179.loopexit.unr-lcssa, %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !73 ; 2 uses
  %.not161 = icmp eq i32 %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %.not161, label %bb.p, label %bb.n

bb.n:                                             ; preds = %._crit_edge179
  store i32 2, ptr %i.cj, align 4, !tbaa !74
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.ck, align 4, !tbaa !75
  %i.cl = zext i32 %i.ci to i64
  %i.cm = tail call ptr @opj_malloc(i64 noundef %i.cl) #6 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !76
  %.not162 = icmp eq ptr %i.cm, null
  br i1 %.not162, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load i32, ptr %i.ch, align 8, !tbaa !73 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !77
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78
  %i.cs = zext i32 %i.co to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr align 1 %i.cr, i64 %i.cs, i1 false)
  br label %bb.v

bb.p:                                             ; preds = %._crit_edge179
  store i32 1, ptr %i.cj, align 4, !tbaa !74
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !79
  switch i32 %i.cu, label %bb.v [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 16, ptr %i.cv, align 4, !tbaa !75
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 17, ptr %i.cw, align 4, !tbaa !75
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 18, ptr %i.cx, align 4, !tbaa !75
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 24, ptr %i.cy, align 4, !tbaa !75
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 12, ptr %i.cz, align 4, !tbaa !75
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.q, %bb.s, %bb.u, %bb.t, %bb.r, %bb.n, %bb.o
  %i.da = load i32, ptr %i.d, align 8, !tbaa !32  ; 4 uses
  %.not193 = icmp eq i32 %i.da, 0
  br i1 %.not193, label %.critedge, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.v
  %i.db = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 9 uses
  %wide.trip.count203 = zext i32 %i.da to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.da, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph184
  %n.vec = and i64 %wide.trip.count203, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi229 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %vec.phi230 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.eo, %vector.body ]
  %vec.phi231 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ep, %vector.body ]
  %vec.phi232 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %vec.phi233 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.en, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dc = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.dd = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.de = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.df = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.dg = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.dh = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.di = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.dj = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %index
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 120
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 184
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 248
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 312
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 376
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 440
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 504
  %i.ds = load i16, ptr %i.dk, align 8, !tbaa !59
  %i.dt = load i16, ptr %i.dl, align 8, !tbaa !59
  %i.du = load i16, ptr %i.dm, align 8, !tbaa !59
  %i.dv = load i16, ptr %i.dn, align 8, !tbaa !59
  %i.dw = insertelement <4 x i16> poison, i16 %i.ds, i64 0
  %i.dx = insertelement <4 x i16> %i.dw, i16 %i.dt, i64 1
  %i.dy = insertelement <4 x i16> %i.dx, i16 %i.du, i64 2
  %i.dz = insertelement <4 x i16> %i.dy, i16 %i.dv, i64 3
  %i.ea = load i16, ptr %i.do, align 8, !tbaa !59
  %i.eb = load i16, ptr %i.dp, align 8, !tbaa !59
  %i.ec = load i16, ptr %i.dq, align 8, !tbaa !59
  %i.ed = load i16, ptr %i.dr, align 8, !tbaa !59
  %i.ee = insertelement <4 x i16> poison, i16 %i.ea, i64 0
  %i.ef = insertelement <4 x i16> %i.ee, i16 %i.eb, i64 1
  %i.eg = insertelement <4 x i16> %i.ef, i16 %i.ec, i64 2
  %i.eh = insertelement <4 x i16> %i.eg, i16 %i.ed, i64 3
  %i.ei = icmp ne <4 x i16> %i.dz, zeroinitializer ; 3 uses
  %i.ej = icmp ne <4 x i16> %i.eh, zeroinitializer ; 3 uses
  %i.ek = zext <4 x i1> %i.ei to <4 x i32>
  %i.el = zext <4 x i1> %i.ej to <4 x i32>
  %i.em = add <4 x i32> %vec.phi232, %i.ek        ; 2 uses
  %i.en = add <4 x i32> %vec.phi233, %i.el        ; 2 uses
  %i.eo = or <4 x i1> %vec.phi230, %i.ei          ; 2 uses
  %i.ep = or <4 x i1> %vec.phi231, %i.ej          ; 2 uses
  %i.eq = select <4 x i1> %i.ei, <4 x i32> %vec.ind, <4 x i32> %vec.phi ; 2 uses
  %i.er = select <4 x i1> %i.ej, <4 x i32> %step.add, <4 x i32> %vec.phi229 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.eq, <4 x i32> %i.er)
  %i.et = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  %bin.rdx = or <4 x i1> %i.ep, %i.eo
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.eu = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not236 = icmp eq i4 %i.eu, 0
  %rdx.select = select i1 %.not236, i32 0, i32 %i.et ; 2 uses
  %bin.rdx234 = add <4 x i32> %i.en, %i.em
  %i.ev = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx234) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count203
  br i1 %cmp.n, label %._crit_edge185, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph184, %middle.block
  %indvars.iv200.ph = phi i64 [ 0, %.lr.ph184 ], [ %n.vec, %middle.block ]
  %.0182.ph = phi i32 [ 0, %.lr.ph184 ], [ %rdx.select, %middle.block ]
  %.0147181.ph = phi i32 [ 0, %.lr.ph184 ], [ %i.ev, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %scalar.ph ], [ %indvars.iv200.ph, %scalar.ph.preheader ] ; 3 uses
  %.0182 = phi i32 [ %spec.select171, %scalar.ph ], [ %.0182.ph, %scalar.ph.preheader ]
  %.0147181 = phi i32 [ %spec.select, %scalar.ph ], [ %.0147181.ph, %scalar.ph.preheader ]
  %i.ew = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %indvars.iv200
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !59
  %.not168 = icmp ne i16 %i.ey, 0                 ; 2 uses
  %i.ez = zext i1 %.not168 to i32
  %spec.select = add i32 %.0147181, %i.ez         ; 2 uses
  %i.fa = trunc nuw i64 %indvars.iv200 to i32
  %spec.select171 = select i1 %.not168, i32 %i.fa, i32 %.0182 ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge185, label %scalar.ph, !llvm.loop !127

._crit_edge185:                                   ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.ev, %middle.block ], [ %spec.select, %scalar.ph ]
  %spec.select171.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select171, %scalar.ph ]
  switch i32 %spec.select.lcssa, label %.critedge.sink.split [
    i32 1, label %bb.w
    i32 0, label %.critedge
  ]

bb.w:                                             ; preds = %._crit_edge185
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !75
  %switch.tableidx = add i32 %i.fc, -16           ; 3 uses
  %i.fd = icmp ult i32 %switch.tableidx, 3
  br i1 %i.fd, label %switch.lookup, label %.critedge.sink.split

switch.lookup:                                    ; preds = %bb.w
  %i.fe = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.opj_jp2_setup_encoder, i64 %i.fe
  %switch.load = load i8, ptr %switch.gep, align 1 ; 3 uses
  %switch.ext = zext i8 %switch.load to i32       ; 3 uses
  %.not164 = icmp ugt i32 %i.da, %switch.ext
  br i1 %.not164, label %bb.x, label %.critedge.sink.split

bb.x:                                             ; preds = %switch.lookup
  %i.ff = icmp ult i32 %spec.select171.lcssa, %switch.ext
  br i1 %i.ff, label %.critedge.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fg = tail call ptr @opj_malloc(i64 noundef 16) #6 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !57
  %.not165 = icmp eq ptr %i.fg, null
  br i1 %.not165, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fi = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  %i.fj = load i32, ptr %i.d, align 8, !tbaa !32
  %i.fk = zext i32 %i.fj to i64
  %i.fl = mul nuw nsw i64 %i.fk, 6
  %i.fm = tail call ptr @opj_malloc(i64 noundef %i.fl) #6 ; 6 uses
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !57 ; 2 uses
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !28
  %.not166 = icmp eq ptr %i.fm, null
  br i1 %.not166, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fo = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.fp = load i32, ptr %i.d, align 8, !tbaa !32  ; 3 uses
  %i.fq = trunc i32 %i.fp to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i16 %i.fq, ptr %i.fr, align 8, !tbaa !29
  %wide.trip.count208 = zext i8 %switch.load to i64 ; 2 uses
  %xtraiter250 = and i64 %wide.trip.count208, 1
  %i.fs = icmp eq i32 %switch.tableidx, 1
  br i1 %i.fs, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ac
  %unroll_iter254 = and i64 %wide.trip.count208, 254
  br label %bb.ad

.preheader.unr-lcssa:                             ; preds = %bb.ad
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %bb.ac
  %indvars.iv210.epil.init = phi i64 [ 1, %bb.ac ], [ %indvars.iv.next211.1, %.preheader.unr-lcssa ]
  %indvars.iv205.epil.init = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next206.1, %.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod253 = trunc i8 %switch.load to i1
  tail call void @llvm.assume(i1 %lcmp.mod253)
  %i.ft = trunc i64 %indvars.iv205.epil.init to i16
  %i.fu = getelementptr inbounds nuw [6 x i8], ptr %i.fm, i64 %indvars.iv205.epil.init ; 3 uses
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !38
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  store i16 0, ptr %i.fv, align 2, !tbaa !58
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fx = trunc i64 %indvars.iv205.epil.init to i16
  %i.fy = add i16 %i.fx, 1
  store i16 %i.fy, ptr %i.fw, align 2, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader
  %indvars.iv210.lcssa = phi i64 [ %indvars.iv.next211, %.preheader.unr-lcssa ], [ %indvars.iv210.epil.init, %.epil.preheader ]
  %i.fz = icmp ugt i32 %i.fp, %switch.ext
  br i1 %i.fz, label %.lr.ph191, label %.critedge

.lr.ph191:                                        ; preds = %.preheader
  %i.ga = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.gb = zext i32 %i.fp to i64
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ad, %.new
  %indvars.iv210 = phi i64 [ 1, %.new ], [ %indvars.iv.next211.1, %bb.ad ] ; 2 uses
  %indvars.iv205 = phi i64 [ 0, %.new ], [ %indvars.iv.next206.1, %bb.ad ] ; 4 uses
  %niter255 = phi i64 [ 0, %.new ], [ %niter255.next.1, %bb.ad ]
  %i.gc = trunc i64 %indvars.iv205 to i16
  %i.gd = getelementptr inbounds nuw [6 x i8], ptr %i.fm, i64 %indvars.iv205 ; 3 uses
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !38
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  store i16 0, ptr %i.ge, align 2, !tbaa !58
  %indvars.iv.next206 = or disjoint i64 %indvars.iv205, 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gg = trunc nuw nsw i64 %indvars.iv.next206 to i16
  store i16 %i.gg, ptr %i.gf, align 2, !tbaa !40
  %i.gh = trunc i64 %indvars.iv.next206 to i16
  %i.gi = getelementptr inbounds nuw [6 x i8], ptr %i.fm, i64 %indvars.iv.next206 ; 3 uses
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !38
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store i16 0, ptr %i.gj, align 2, !tbaa !58
  %indvars.iv.next206.1 = add nuw nsw i64 %indvars.iv205, 2 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gl = trunc nuw nsw i64 %indvars.iv.next206.1 to i16
  store i16 %i.gl, ptr %i.gk, align 2, !tbaa !40
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %niter255.next.1 = add i64 %niter255, 2         ; 2 uses
  %niter255.ncmp.1 = icmp eq i64 %niter255.next.1, %unroll_iter254
  br i1 %niter255.ncmp.1, label %.preheader.unr-lcssa, label %bb.ad, !llvm.loop !128

bb.ae:                                            ; preds = %.lr.ph191, %bb.ae
  %indvars.iv212 = phi i64 [ %indvars.iv210.lcssa, %.lr.ph191 ], [ %indvars.iv.next213, %bb.ae ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [64 x i8], ptr %i.ga, i64 %indvars.iv212
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.go = load i16, ptr %i.gn, align 8, !tbaa !59
  %.not167 = icmp eq i16 %i.go, 0                 ; 2 uses
  %i.gp = trunc i64 %indvars.iv212 to i16
  %i.gq = getelementptr inbounds nuw [6 x i8], ptr %i.fm, i64 %indvars.iv212 ; 3 uses
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !38
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %. = select i1 %.not167, i16 -1, i16 1
  %.228 = sext i1 %.not167 to i16
  store i16 %., ptr %i.gr, align 2, !tbaa !58
  store i16 %.228, ptr %i.gs, align 2, !tbaa !40
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.gt = icmp samesign ult i64 %indvars.iv.next213, %i.gb
  br i1 %i.gt, label %bb.ae, label %.critedge, !llvm.loop !129

.critedge.sink.split:                             ; preds = %bb.w, %._crit_edge185, %bb.x, %switch.lookup
  %.str.3.sink = phi ptr [ @.str.5, %bb.x ], [ @.str.3, %bb.w ], [ @.str.4, %switch.lookup ], [ @.str.6, %._crit_edge185 ]
  %i.gu = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %.str.3.sink) #6 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %.critedge.sink.split, %bb.v, %.preheader, %._crit_edge185
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.gv, align 8, !tbaa !80
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.gw, align 8, !tbaa !81
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 18700
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !131
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.gy, ptr %i.gz, align 8, !tbaa !82
  br label %bb.af

bb.af:                                            ; preds = %bb.d, %bb.a, %.critedge, %bb.ab, %bb.z, %bb.h, %bb.f, %bb.c
  %.0153 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 1, %.critedge ], [ 0, %bb.ab ], [ 0, %bb.z ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.0153
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @opj_j2k_setup_encoder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @opj_jp2_encode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call i32 @opj_j2k_encode(ptr noundef %i.a, ptr noundef %1, ptr noundef %2) #6
  ret i32 %i.b
}

declare i32 @opj_j2k_encode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @opj_jp2_end_decompress(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.b = tail call i32 @opj_procedure_list_add_procedure(ptr noundef %.val, ptr noundef nonnull @opj_jp2_read_header_procedure, ptr noundef %2) #6
  %.not.i.not = icmp eq i32 %i.b, 0
  br i1 %.not.i.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %i.d = tail call i32 @opj_procedure_list_get_nb_procedures(ptr noundef %i.c) #6 ; 2 uses
  %i.e = tail call ptr @opj_procedure_list_get_first_procedure(ptr noundef %i.c) #6
  %.not17.i = icmp eq i32 %i.d, 0
  br i1 %.not17.i, label %opj_jp2_exec.exit.thread, label %.lr.ph.i

opj_jp2_exec.exit.thread:                         ; preds = %bb.b
  tail call void @opj_procedure_list_clear(ptr noundef %i.c) #6
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.016.i = phi i32 [ %i.l, %bb.d ], [ 0, %bb.b ]
  %.01215.i = phi i32 [ %i.j, %bb.d ], [ 1, %bb.b ]
  %.01314.i = phi ptr [ %i.k, %bb.d ], [ %i.e, %bb.b ] ; 2 uses
  %.not.i10 = icmp eq i32 %.01215.i, 0
  br i1 %.not.i10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %.01314.i, align 8, !tbaa !84
  %i.g = tail call i32 %i.f(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6, !inline_history !0
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i32 [ 0, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01314.i, i64 8
  %i.l = add nuw i32 %.016.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.d
  br i1 %exitcond.not.i, label %opj_jp2_exec.exit, label %.lr.ph.i, !llvm.loop !1

opj_jp2_exec.exit:                                ; preds = %bb.d
  tail call void @opj_procedure_list_clear(ptr noundef %i.c) #6
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %opj_jp2_exec.exit.thread, %opj_jp2_exec.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !22
  %i.n = tail call i32 @opj_j2k_end_decompress(ptr noundef %i.m, ptr noundef %1, ptr noundef %2) #6
  br label %bb.f

bb.f:                                             ; preds = %opj_jp2_exec.exit, %bb.a, %bb.e
  %.0 = phi i32 [ %i.n, %bb.e ], [ 0, %bb.a ], [ 0, %opj_jp2_exec.exit ]
  ret i32 %.0
}

declare i32 @opj_j2k_end_decompress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @opj_jp2_end_compress(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.b = tail call i32 @opj_procedure_list_add_procedure(ptr noundef %.val, ptr noundef nonnull @opj_jp2_write_jp2c, ptr noundef %2) #6
  %.not.i.not = icmp eq i32 %i.b, 0
  br i1 %.not.i.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  %i.d = tail call i32 @opj_j2k_end_compress(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #6
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.f = tail call i32 @opj_procedure_list_get_nb_procedures(ptr noundef %i.e) #6 ; 2 uses
  %i.g = tail call ptr @opj_procedure_list_get_first_procedure(ptr noundef %i.e) #6
  %.not17.i = icmp eq i32 %i.f, 0
  br i1 %.not17.i, label %opj_jp2_exec.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.016.i = phi i32 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.01215.i = phi i32 [ %i.l, %bb.e ], [ 1, %bb.c ]
  %.01314.i = phi ptr [ %i.m, %bb.e ], [ %i.g, %bb.c ] ; 2 uses
  %.not.i10 = icmp eq i32 %.01215.i, 0
  br i1 %.not.i10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %.01314.i, align 8, !tbaa !84
end_hunk_0
