Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/output?download=true
inline.NumInlined: 20
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 280
loop-unroll.NumUnrolled: 280
begin_hunk_0_@yuv2v30xle_X_c:bb.a

.preheader11.lr.ph.split.us:                      ; preds = %.preheader11.lr.ph
  br i1 %i.b, label %.preheader11.us.us.preheader, label %.preheader11.us.preheader

.preheader11.us.preheader:                        ; preds = %.preheader11.lr.ph.split.us
  %wide.trip.count53 = zext nneg i32 %7 to i64    ; 2 uses
  %xtraiter105 = and i64 %wide.trip.count53, 1
  %i.d = icmp eq i32 %7, 1
  %unroll_iter111 = and i64 %wide.trip.count53, 2147483646
  %lcmp.mod107.not = icmp eq i64 %xtraiter105, 0
  %lcmp.mod110 = trunc i32 %7 to i1
  br label %.preheader11.us

.preheader11.us.us.preheader:                     ; preds = %.preheader11.lr.ph.split.us
  %wide.trip.count63 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count68 = zext nneg i32 %7 to i64    ; 2 uses
  %xtraiter114 = and i64 %wide.trip.count63, 3    ; 3 uses
  %i.e = icmp ult i32 %3, 4
  %unroll_iter119 = and i64 %wide.trip.count63, 2147483644
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  %lcmp.mod118 = icmp ne i64 %xtraiter114, 0
  %xtraiter121 = and i64 %wide.trip.count68, 1
  %i.f = icmp eq i32 %7, 1
  %unroll_iter127 = and i64 %wide.trip.count68, 2147483646
  %lcmp.mod123.not = icmp eq i64 %xtraiter121, 0
  %lcmp.mod126 = trunc i32 %7 to i1
  br label %.preheader11.us.us

.preheader11.us.us:                               ; preds = %.preheader11.us.us.preheader, %._crit_edge.us.us
  %indvars.iv70 = phi i64 [ 0, %.preheader11.us.us.preheader ], [ %indvars.iv.next71, %._crit_edge.us.us ] ; 13 uses
  br i1 %i.e, label %.epil.preheader113, label %.preheader11.us.us.new

.preheader11.us.us.new:                           ; preds = %.preheader11.us.us, %.preheader11.us.us.new
  %indvars.iv60 = phi i64 [ %indvars.iv.next61.3, %.preheader11.us.us.new ], [ 0, %.preheader11.us.us ] ; 6 uses
  %.041.i12.us.us = phi i32 [ %i.at, %.preheader11.us.us.new ], [ 65536, %.preheader11.us.us ]
  %niter120 = phi i64 [ %niter120.next.3, %.preheader11.us.us.new ], [ 0, %.preheader11.us.us ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv60
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv70
  %i.j = load i16, ptr %i.i, align 2, !tbaa !107
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv60
  %i.m = load i16, ptr %i.l, align 2, !tbaa !107
  %i.n = sext i16 %i.m to i32
  %i.o = mul nsw i32 %i.n, %i.k
  %i.p = add i32 %i.o, %.041.i12.us.us
  %indvars.iv.next61 = or disjoint i64 %indvars.iv60, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next61
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv70
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next61
  %i.w = load i16, ptr %i.v, align 2, !tbaa !107
  %i.x = sext i16 %i.w to i32
  %i.y = mul nsw i32 %i.x, %i.u
  %i.z = add i32 %i.y, %i.p
  %indvars.iv.next61.1 = or disjoint i64 %indvars.iv60, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next61.1
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !111
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv70
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !107
  %i.ae = sext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next61.1
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !107
  %i.ah = sext i16 %i.ag to i32
  %i.ai = mul nsw i32 %i.ah, %i.ae
  %i.aj = add i32 %i.ai, %i.z
  %indvars.iv.next61.2 = or disjoint i64 %indvars.iv60, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next61.2
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !111
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv70
  %i.an = load i16, ptr %i.am, align 2, !tbaa !107
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next61.2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !107
  %i.ar = sext i16 %i.aq to i32
  %i.as = mul nsw i32 %i.ar, %i.ao
  %i.at = add i32 %i.as, %i.aj                    ; 3 uses
  %indvars.iv.next61.3 = add nuw nsw i64 %indvars.iv60, 4 ; 2 uses
  %niter120.next.3 = add i64 %niter120, 4         ; 2 uses
  %niter120.ncmp.3 = icmp eq i64 %niter120.next.3, %unroll_iter119
  br i1 %niter120.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.preheader11.us.us.new, !llvm.loop !47

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.preheader11.us.us.new
  br i1 %lcmp.mod116.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader113

.epil.preheader113:                               ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader11.us.us
  %indvars.iv60.epil.init = phi i64 [ 0, %.preheader11.us.us ], [ %indvars.iv.next61.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  %.041.i12.us.us.epil.init = phi i32 [ 65536, %.preheader11.us.us ], [ %i.at, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader113
  %indvars.iv60.epil = phi i64 [ %indvars.iv.next61.epil, %bb.b ], [ %indvars.iv60.epil.init, %.epil.preheader113 ] ; 3 uses
  %.041.i12.us.us.epil = phi i32 [ %i.bd, %bb.b ], [ %.041.i12.us.us.epil.init, %.epil.preheader113 ]
  %epil.iter115 = phi i64 [ %epil.iter115.next, %bb.b ], [ 0, %.epil.preheader113 ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv60.epil
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !111
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv70
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !107
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv60.epil
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !107
  %i.bb = sext i16 %i.ba to i32
  %i.bc = mul nsw i32 %i.bb, %i.ay
  %i.bd = add i32 %i.bc, %.041.i12.us.us.epil     ; 2 uses
  %indvars.iv.next61.epil = add nuw nsw i64 %indvars.iv60.epil, 1
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.b, !llvm.loop !2572

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.b, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.at, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %i.bd, %bb.b ]
  br i1 %i.f, label %..preheader_crit_edge.us.us.epil.preheader, label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %..preheader_crit_edge.us.us
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 5 uses
  %.039.i15.us.us = phi i32 [ %i.cl, %..preheader_crit_edge.us.us ], [ 65536, %..preheader_crit_edge.us.us.preheader ]
  %.040.i14.us.us = phi i32 [ %i.ce, %..preheader_crit_edge.us.us ], [ 65536, %..preheader_crit_edge.us.us.preheader ]
  %niter128 = phi i64 [ %niter128.next.1, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv65
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !111
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv70
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !107
  %i.bi = sext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv65
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !107
  %i.bl = sext i16 %i.bk to i32                   ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %i.bi
  %i.bn = add i32 %i.bm, %.040.i14.us.us
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv65
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !111
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv70
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !107
  %i.bs = sext i16 %i.br to i32
  %i.bt = mul nsw i32 %i.bs, %i.bl
  %i.bu = add i32 %i.bt, %.039.i15.us.us
  %indvars.iv.next66 = or disjoint i64 %indvars.iv65, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next66
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !111
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv70
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !107
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next66
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !107
  %i.cc = sext i16 %i.cb to i32                   ; 2 uses
  %i.cd = mul nsw i32 %i.cc, %i.bz
  %i.ce = add i32 %i.cd, %i.bn                    ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next66
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !111
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %indvars.iv70
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !107
  %i.cj = sext i16 %i.ci to i32
  %i.ck = mul nsw i32 %i.cj, %i.cc
  %i.cl = add i32 %i.ck, %i.bu                    ; 3 uses
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter128.next.1 = add nuw i64 %niter128, 2     ; 2 uses
  %niter128.ncmp.1 = icmp eq i64 %niter128.next.1, %unroll_iter127
  br i1 %niter128.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %..preheader_crit_edge.us.us, !llvm.loop !48

._crit_edge.us.us.unr-lcssa:                      ; preds = %..preheader_crit_edge.us.us
  br i1 %lcmp.mod123.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil.preheader

..preheader_crit_edge.us.us.epil.preheader:       ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv65.epil.init = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next66.1, %._crit_edge.us.us.unr-lcssa ] ; 3 uses
  %.039.i15.us.us.epil.init = phi i32 [ 65536, %..preheader_crit_edge.us.us.preheader ], [ %i.cl, %._crit_edge.us.us.unr-lcssa ]
  %.040.i14.us.us.epil.init = phi i32 [ 65536, %..preheader_crit_edge.us.us.preheader ], [ %i.ce, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv65.epil.init
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !111
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv70
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !107
  %i.cq = sext i16 %i.cp to i32
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv65.epil.init
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !107
  %i.ct = sext i16 %i.cs to i32                   ; 2 uses
  %i.cu = mul nsw i32 %i.ct, %i.cq
  %i.cv = add i32 %i.cu, %.040.i14.us.us.epil.init
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv65.epil.init
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !111
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv70
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !107
  %i.da = sext i16 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.ct
  %i.dc = add i32 %i.db, %.039.i15.us.us.epil.init
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.epil.preheader
  %.lcssa94 = phi i32 [ %i.ce, %._crit_edge.us.us.unr-lcssa ], [ %i.cv, %..preheader_crit_edge.us.us.epil.preheader ]
  %.lcssa93 = phi i32 [ %i.cl, %._crit_edge.us.us.unr-lcssa ], [ %i.dc, %..preheader_crit_edge.us.us.epil.preheader ]
  %i.dd = ashr i32 %.lcssa, 17
  %i.de = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 0)
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.de, i32 1023)
  %i.dg = ashr i32 %.lcssa94, 17
  %i.dh = tail call i32 @llvm.smax.i32(i32 %i.dg, i32 0)
  %i.di = tail call i32 @llvm.umin.i32(i32 %i.dh, i32 1023)
  %i.dj = ashr i32 %.lcssa93, 17
  %i.dk = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %i.dl = tail call i32 @llvm.umin.i32(i32 %i.dk, i32 1023)
  %i.dm = shl nuw nsw i32 %i.di, 2
  %i.dn = shl nuw nsw i32 %i.df, 12
  %i.do = or disjoint i32 %i.dm, %i.dn
  %i.dp = shl nuw i32 %i.dl, 22
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = or disjoint i32 %i.dq, 3
  %i.ds = shl nuw nsw i64 %indvars.iv70, 2
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 %i.ds
  store i32 %i.dr, ptr %i.dt, align 1, !tbaa !108
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %yuv2v30_X_c_template.exit, label %.preheader11.us.us, !llvm.loop !49

.preheader11.us:                                  ; preds = %.preheader11.us.preheader, %._crit_edge.us
  %indvars.iv55 = phi i64 [ 0, %.preheader11.us.preheader ], [ %indvars.iv.next56, %._crit_edge.us ] ; 8 uses
  br i1 %i.d, label %.epil.preheader104, label %.preheader11.us.new

.preheader11.us.new:                              ; preds = %.preheader11.us, %.preheader11.us.new
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.preheader11.us.new ], [ 0, %.preheader11.us ] ; 5 uses
  %.039.i15.us = phi i32 [ %i.fb, %.preheader11.us.new ], [ 65536, %.preheader11.us ]
  %.040.i14.us = phi i32 [ %i.eu, %.preheader11.us.new ], [ 65536, %.preheader11.us ]
  %niter112 = phi i64 [ %niter112.next.1, %.preheader11.us.new ], [ 0, %.preheader11.us ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv50
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !111
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv55
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !107
  %i.dy = sext i16 %i.dx to i32
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv50
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !107
  %i.eb = sext i16 %i.ea to i32                   ; 2 uses
  %i.ec = mul nsw i32 %i.eb, %i.dy
  %i.ed = add i32 %i.ec, %.040.i14.us
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv50
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !111
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %indvars.iv55
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !107
  %i.ei = sext i16 %i.eh to i32
  %i.ej = mul nsw i32 %i.ei, %i.eb
  %i.ek = add i32 %i.ej, %.039.i15.us
  %indvars.iv.next51 = or disjoint i64 %indvars.iv50, 1 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next51
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !111
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %indvars.iv55
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !107
  %i.ep = sext i16 %i.eo to i32
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next51
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !107
  %i.es = sext i16 %i.er to i32                   ; 2 uses
  %i.et = mul nsw i32 %i.es, %i.ep
  %i.eu = add i32 %i.et, %i.ed                    ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next51
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !111
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv55
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !107
  %i.ez = sext i16 %i.ey to i32
  %i.fa = mul nsw i32 %i.ez, %i.es
  %i.fb = add i32 %i.fa, %i.ek                    ; 3 uses
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %niter112.next.1 = add nuw i64 %niter112, 2     ; 2 uses
  %niter112.ncmp.1 = icmp eq i64 %niter112.next.1, %unroll_iter111
  br i1 %niter112.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader11.us.new, !llvm.loop !48

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader11.us.new
  br i1 %lcmp.mod107.not, label %._crit_edge.us, label %.epil.preheader104

.epil.preheader104:                               ; preds = %._crit_edge.us.unr-lcssa, %.preheader11.us
  %indvars.iv50.epil.init = phi i64 [ 0, %.preheader11.us ], [ %indvars.iv.next51.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  %.039.i15.us.epil.init = phi i32 [ 65536, %.preheader11.us ], [ %i.fb, %._crit_edge.us.unr-lcssa ]
  %.040.i14.us.epil.init = phi i32 [ 65536, %.preheader11.us ], [ %i.eu, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod110)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv50.epil.init
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !111
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv55
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !107
  %i.fg = sext i16 %i.ff to i32
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv50.epil.init
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !107
  %i.fj = sext i16 %i.fi to i32                   ; 2 uses
  %i.fk = mul nsw i32 %i.fj, %i.fg
  %i.fl = add i32 %i.fk, %.040.i14.us.epil.init
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv50.epil.init
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !111
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv55
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !107
  %i.fq = sext i16 %i.fp to i32
  %i.fr = mul nsw i32 %i.fq, %i.fj
  %i.fs = add i32 %i.fr, %.039.i15.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader104
  %.lcssa97 = phi i32 [ %i.eu, %._crit_edge.us.unr-lcssa ], [ %i.fl, %.epil.preheader104 ]
  %.lcssa96 = phi i32 [ %i.fb, %._crit_edge.us.unr-lcssa ], [ %i.fs, %.epil.preheader104 ]
  %i.ft = ashr i32 %.lcssa97, 17
  %i.fu = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 0)
  %i.fv = tail call i32 @llvm.umin.i32(i32 %i.fu, i32 1023)
  %i.fw = ashr i32 %.lcssa96, 17
  %i.fx = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 0)
  %i.fy = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 1023)
  %i.fz = shl nuw nsw i32 %i.fv, 2
  %i.ga = shl nuw i32 %i.fy, 22
  %i.gb = or disjoint i32 %i.fz, %i.ga
  %i.gc = or disjoint i32 %i.gb, 3
  %i.gd = shl nuw nsw i64 %indvars.iv55, 2
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 %i.gd
  store i32 %i.gc, ptr %i.ge, align 1, !tbaa !108
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count73
  br i1 %exitcond59.not, label %yuv2v30_X_c_template.exit, label %.preheader11.us, !llvm.loop !49

.preheader11.lr.ph.split:                         ; preds = %.preheader11.lr.ph
  br i1 %i.b, label %.preheader11.us21.preheader, label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %.preheader11.lr.ph.split
  %min.iters.check = icmp ult i32 %10, 8
  br i1 %min.iters.check, label %.preheader11.preheader100, label %vector.ph

vector.ph:                                        ; preds = %.preheader11.preheader
  %n.vec = and i64 %wide.trip.count73, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = shl nuw nsw i64 %index, 2
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> splat (i32 3), ptr %i.gg, align 1, !tbaa !108
  store <4 x i32> splat (i32 3), ptr %i.gh, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !2573

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73
  br i1 %cmp.n, label %yuv2v30_X_c_template.exit, label %.preheader11.preheader100

.preheader11.preheader100:                        ; preds = %.preheader11.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader11.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader11

.preheader11.us21.preheader:                      ; preds = %.preheader11.lr.ph.split
  %wide.trip.count43 = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count43, 3       ; 3 uses
  %i.gj = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count43, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod103 = icmp ne i64 %xtraiter, 0
  br label %.preheader11.us21

.preheader11.us21:                                ; preds = %.preheader11.us21.preheader, %..preheader_crit_edge.us26
  %indvars.iv45 = phi i64 [ 0, %.preheader11.us21.preheader ], [ %indvars.iv.next46, %..preheader_crit_edge.us26 ] ; 7 uses
  br i1 %i.gj, label %.epil.preheader, label %.preheader11.us21.new

.preheader11.us21.new:                            ; preds = %.preheader11.us21, %.preheader11.us21.new
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.3, %.preheader11.us21.new ], [ 0, %.preheader11.us21 ] ; 6 uses
  %.041.i12.us25 = phi i32 [ %i.hx, %.preheader11.us21.new ], [ 65536, %.preheader11.us21 ]
  %niter = phi i64 [ %niter.next.3, %.preheader11.us21.new ], [ 0, %.preheader11.us21 ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !111
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %indvars.iv45
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !107
  %i.go = sext i16 %i.gn to i32
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv40
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !107
  %i.gr = sext i16 %i.gq to i32
  %i.gs = mul nsw i32 %i.gr, %i.go
  %i.gt = add i32 %i.gs, %.041.i12.us25
  %indvars.iv.next41 = or disjoint i64 %indvars.iv40, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next41
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !111
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %indvars.iv45
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !107
  %i.gy = sext i16 %i.gx to i32
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next41
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !107
  %i.hb = sext i16 %i.ha to i32
  %i.hc = mul nsw i32 %i.hb, %i.gy
  %i.hd = add i32 %i.hc, %i.gt
  %indvars.iv.next41.1 = or disjoint i64 %indvars.iv40, 2 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next41.1
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !111
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %indvars.iv45
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !107
  %i.hi = sext i16 %i.hh to i32
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next41.1
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !107
  %i.hl = sext i16 %i.hk to i32
  %i.hm = mul nsw i32 %i.hl, %i.hi
  %i.hn = add i32 %i.hm, %i.hd
  %indvars.iv.next41.2 = or disjoint i64 %indvars.iv40, 3 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next41.2
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !111
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %indvars.iv45
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !107
  %i.hs = sext i16 %i.hr to i32
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next41.2
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !107
  %i.hv = sext i16 %i.hu to i32
  %i.hw = mul nsw i32 %i.hv, %i.hs
  %i.hx = add i32 %i.hw, %i.hn                    ; 3 uses
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us26.unr-lcssa, label %.preheader11.us21.new, !llvm.loop !47
end_hunk_0
