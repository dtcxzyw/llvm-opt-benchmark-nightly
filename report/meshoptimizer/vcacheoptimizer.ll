Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vcacheoptimizer?download=true
inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z32meshopt_optimizeVertexCacheTablePjPKjmmPKN7meshopt16VertexScoreTableE:bb.a
          to label %.lr.ph unwind label %bb.k, !inline_history !28 ; 14 uses

.lr.ph:                                           ; preds = %bb.h
  %i.y = add nuw nsw i64 %i.q, 2                  ; 2 uses
  store i64 %i.y, ptr %i.p, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.r
  store ptr %i.x, ptr %i.z, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.ab = icmp eq i64 %3, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %3, -2
  br label %bb.l

._crit_edge.unr-lcssa:                            ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.0187207.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bp, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod296 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0187207.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 8)
  %i.af = load float, ptr %4, align 4, !tbaa !38
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !38
  %i.aj = fadd float %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0187207.epil.init
  store float %i.aj, ptr %i.ak, align 4, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.al = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.am = icmp ugt i64 %2, -4611686018427387905
  %i.an = shl nuw i64 %i.l, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noundef ptr %i.al(i64 noundef %i.ao)
          to label %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit200 unwind label %bb.m, !inline_history !28 ; 8 uses

_ZN17meshopt_Allocator8allocateIfEEPT_m.exit200:  ; preds = %._crit_edge
  %i.aq = add nuw nsw i64 %i.q, 3
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.y
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !18
  %.not241 = icmp ult i64 %2, 3
  br i1 %.not241, label %._crit_edge210, label %.lr.ph209.preheader

.lr.ph209.preheader:                              ; preds = %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit200
  %xtraiter297 = and i64 %i.l, 1
  %.off = add i64 %2, -3
  %i.as = icmp ult i64 %.off, 3
  br i1 %i.as, label %.lr.ph209.epil.preheader, label %.lr.ph209.preheader.new

.lr.ph209.preheader.new:                          ; preds = %.lr.ph209.preheader
  %unroll_iter300 = and i64 %i.l, 9223372036854775806
  br label %.lr.ph209

bb.i:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.l:                                             ; preds = %bb.l, %.lr.ph.new
  %.0187207 = phi i64 [ 0, %.lr.ph.new ], [ %i.bp, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0187207
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 8)
  %i.az = load float, ptr %4, align 4, !tbaa !38
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !38
  %i.bd = fadd float %i.az, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0187207
  store float %i.bd, ptr %i.be, align 4, !tbaa !38
  %i.bf = or disjoint i64 %.0187207, 1            ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 8)
  %i.bj = load float, ptr %4, align 4, !tbaa !38
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !38
  %i.bn = fadd float %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bf
  store float %i.bn, ptr %i.bo, align 4, !tbaa !38
  %i.bp = add nuw i64 %.0187207, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.l, !llvm.loop !29

._crit_edge210.loopexit.unr-lcssa:                ; preds = %.lr.ph209
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %._crit_edge210, label %.lr.ph209.epil.preheader

.lr.ph209.epil.preheader:                         ; preds = %._crit_edge210.loopexit.unr-lcssa, %.lr.ph209.preheader
  %.0186208.epil.init = phi i64 [ 0, %.lr.ph209.preheader ], [ %i.ea, %._crit_edge210.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod299 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod299)
  %.idx.epil = mul nuw i64 %.0186208.epil.init, 12
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx.epil ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = zext i32 %i.br to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !38
  %i.bz = zext i32 %i.bt to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !38
  %i.cc = fadd float %i.by, %i.cb
  %i.cd = zext i32 %i.bv to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !38
  %i.cg = fadd float %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0186208.epil.init
  store float %i.cg, ptr %i.ch, align 4, !tbaa !38
  br label %._crit_edge210

._crit_edge210:                                   ; preds = %.lr.ph209.epil.preheader, %._crit_edge210.loopexit.unr-lcssa, %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !24 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !25 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 68
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph209:                                        ; preds = %.lr.ph209, %.lr.ph209.preheader.new
  %.0186208 = phi i64 [ 0, %.lr.ph209.preheader.new ], [ %i.ea, %.lr.ph209 ] ; 4 uses
  %niter301 = phi i64 [ 0, %.lr.ph209.preheader.new ], [ %niter301.next.1, %.lr.ph209 ]
  %.idx = mul nuw i64 %.0186208, 12
  %i.cp = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !22
  %i.cv = zext i32 %i.cq to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !38
  %i.cy = zext i32 %i.cs to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !38
  %i.db = fadd float %i.cx, %i.da
  %i.dc = zext i32 %i.cu to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !38
  %i.df = fadd float %i.db, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0186208
  store float %i.df, ptr %i.dg, align 4, !tbaa !38
  %i.dh = or disjoint i64 %.0186208, 1            ; 2 uses
  %.idx.1 = mul nuw i64 %i.dh, 12
  %i.di = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx.1 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !22
  %i.do = zext i32 %i.dj to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !38
  %i.dr = zext i32 %i.dl to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !38
  %i.du = fadd float %i.dq, %i.dt
  %i.dv = zext i32 %i.dn to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !38
  %i.dy = fadd float %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.dh
  store float %i.dy, ptr %i.dz, align 4, !tbaa !38
  %i.ea = add nuw nsw i64 %.0186208, 2            ; 2 uses
  %niter301.next.1 = add i64 %niter301, 2         ; 2 uses
  %niter301.ncmp.1 = icmp eq i64 %niter301.next.1, %unroll_iter300
  br i1 %niter301.ncmp.1, label %._crit_edge210.loopexit.unr-lcssa, label %.lr.ph209, !llvm.loop !30

bb.n:                                             ; preds = %._crit_edge210, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit
  %.0173239 = phi i32 [ 0, %._crit_edge210 ], [ %7, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 2 uses
  %.0174238 = phi i32 [ 0, %._crit_edge210 ], [ %.1175, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 5 uses
  %.0176237 = phi i64 [ 0, %._crit_edge210 ], [ %8, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 5 uses
  %.0177236 = phi ptr [ %i.ci, %._crit_edge210 ], [ %.0178235, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 8 uses
  %.0178235 = phi ptr [ %i.a, %._crit_edge210 ], [ %.0177236, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 4 uses
  %.0203234 = phi i32 [ 1, %._crit_edge210 ], [ %.1204, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 3 uses
  %i.eb = mul i32 %.0174238, 3                    ; 3 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.ec ; 4 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !22 ; 5 uses
  %i.ef = add i32 %i.eb, 1
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !22 ; 5 uses
  %i.ej = add i32 %i.eb, 2
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !22 ; 5 uses
  %i.en = mul i32 %.0173239, 3                    ; 3 uses
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo
  store i32 %i.ee, ptr %i.ep, align 4, !tbaa !22
  %i.eq = add i32 %i.en, 1
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.er
  store i32 %i.ei, ptr %i.es, align 4, !tbaa !22
  %i.et = add i32 %i.en, 2
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eu
  store i32 %i.em, ptr %i.ev, align 4, !tbaa !22
  %7 = add i32 %.0173239, 1
  %i.ew = zext i32 %.0174238 to i64               ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ew
  store i8 1, ptr %i.ex, align 1, !tbaa !26
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ew
  store float 0.000000e+00, ptr %i.ey, align 4, !tbaa !38
  store i32 %i.ee, ptr %.0177236, align 4, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %.0177236, i64 4
  store i32 %i.ei, ptr %i.ez, align 4, !tbaa !22
  %i.fa = getelementptr inbounds nuw i8, ptr %.0177236, i64 8
  store i32 %i.em, ptr %i.fa, align 4, !tbaa !22
  %.not242 = icmp eq i64 %.0176237, 0
  br i1 %.not242, label %._crit_edge215, label %.lr.ph214.preheader

.lr.ph214.preheader:                              ; preds = %bb.n
  %xtraiter302 = and i64 %.0176237, 1
  %i.fb = icmp eq i64 %.0176237, 1
  br i1 %i.fb, label %.lr.ph214.epil.preheader, label %.lr.ph214.preheader.new

.lr.ph214.preheader.new:                          ; preds = %.lr.ph214.preheader
  %unroll_iter306 = and i64 %.0176237, 30
  br label %.lr.ph214

._crit_edge215.loopexit.unr-lcssa:                ; preds = %.lr.ph214
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %._crit_edge215, label %.lr.ph214.epil.preheader

.lr.ph214.epil.preheader:                         ; preds = %._crit_edge215.loopexit.unr-lcssa, %.lr.ph214.preheader
  %.0171212.epil.init = phi i64 [ 0, %.lr.ph214.preheader ], [ %i.gq, %._crit_edge215.loopexit.unr-lcssa ]
  %.0172211.epil.init = phi i64 [ 3, %.lr.ph214.preheader ], [ %i.gp, %._crit_edge215.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod305 = trunc i64 %.0176237 to i1
  tail call void @llvm.assume(i1 %lcmp.mod305)
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0178235, i64 %.0171212.epil.init
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !22 ; 4 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0177236, i64 %.0172211.epil.init
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !22
  %i.ff = icmp ne i32 %i.fd, %i.ee
  %i.fg = icmp ne i32 %i.fd, %i.ei
  %i.fh = and i1 %i.ff, %i.fg
  %i.fi = icmp ne i32 %i.fd, %i.em
  %i.fj = and i1 %i.fi, %i.fh
  %i.fk = zext i1 %i.fj to i64
  %i.fl = add i64 %.0172211.epil.init, %i.fk
  br label %._crit_edge215

._crit_edge215:                                   ; preds = %.lr.ph214.epil.preheader, %._crit_edge215.loopexit.unr-lcssa, %bb.n
  %.0172.lcssa = phi i64 [ 3, %bb.n ], [ %i.gp, %._crit_edge215.loopexit.unr-lcssa ], [ %i.fl, %.lr.ph214.epil.preheader ] ; 3 uses
  %i.fm = load i32, ptr %i.ed, align 4, !tbaa !22
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !22
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.fq ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fn ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !22 ; 2 uses
  %i.fu = zext i32 %i.ft to i64                   ; 2 uses
  %.not243 = icmp eq i32 %i.ft, 0
  br i1 %.not243, label %.loopexit206, label %.lr.ph218

.lr.ph214:                                        ; preds = %.lr.ph214, %.lr.ph214.preheader.new
  %.0171212 = phi i64 [ 0, %.lr.ph214.preheader.new ], [ %i.gq, %.lr.ph214 ] ; 3 uses
  %.0172211 = phi i64 [ 3, %.lr.ph214.preheader.new ], [ %i.gp, %.lr.ph214 ] ; 2 uses
  %niter307 = phi i64 [ 0, %.lr.ph214.preheader.new ], [ %niter307.next.1, %.lr.ph214 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.0178235, i64 %.0171212
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !22 ; 4 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.0177236, i64 %.0172211
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !22
  %i.fy = icmp ne i32 %i.fw, %i.ee
  %i.fz = icmp ne i32 %i.fw, %i.ei
  %i.ga = and i1 %i.fy, %i.fz
  %i.gb = icmp ne i32 %i.fw, %i.em
  %i.gc = and i1 %i.gb, %i.ga
  %i.gd = zext i1 %i.gc to i64
  %i.ge = add i64 %.0172211, %i.gd                ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0178235, i64 %.0171212
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !22 ; 4 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.0177236, i64 %i.ge
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !22
  %i.gj = icmp ne i32 %i.gh, %i.ee
  %i.gk = icmp ne i32 %i.gh, %i.ei
  %i.gl = and i1 %i.gj, %i.gk
  %i.gm = icmp ne i32 %i.gh, %i.em
  %i.gn = and i1 %i.gm, %i.gl
  %i.go = zext i1 %i.gn to i64
  %i.gp = add i64 %i.ge, %i.go                    ; 3 uses
  %i.gq = add nuw nsw i64 %.0171212, 2            ; 2 uses
  %niter307.next.1 = add nuw nsw i64 %niter307, 2 ; 2 uses
  %niter307.ncmp.1 = icmp eq i64 %niter307.next.1, %unroll_iter306
  br i1 %niter307.ncmp.1, label %._crit_edge215.loopexit.unr-lcssa, label %.lr.ph214, !llvm.loop !31

.lr.ph231:                                        ; preds = %.loopexit206.2
  %i.gr = load ptr, ptr %i.cj, align 8
  %i.gs = load ptr, ptr %i.cl, align 8
  br label %bb.r

.lr.ph218:                                        ; preds = %._crit_edge215, %.critedge
  %.0169216 = phi i64 [ %i.hb, %.critedge ], [ 0, %._crit_edge215 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.0169216
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !22
  %.not199 = icmp eq i32 %i.gu, %.0174238
  br i1 %.not199, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph218
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.0169216
  %i.gw = getelementptr [4 x i8], ptr %i.fr, i64 %i.fu
  %i.gx = getelementptr i8, ptr %i.gw, i64 -4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !22
  store i32 %i.gy, ptr %i.gv, align 4, !tbaa !22
  %i.gz = load i32, ptr %i.fs, align 4, !tbaa !22
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr %i.fs, align 4, !tbaa !22
  br label %.loopexit206

.critedge:                                        ; preds = %.lr.ph218
  %i.hb = add nuw nsw i64 %.0169216, 1            ; 2 uses
  %exitcond251.not = icmp eq i64 %i.hb, %i.fu
  br i1 %exitcond251.not, label %.loopexit206, label %.lr.ph218, !llvm.loop !32

.loopexit206:                                     ; preds = %.critedge, %._crit_edge215, %bb.o
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.hc = load i32, ptr %gep.1, align 4, !tbaa !22
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !22
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.hg ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hd ; 3 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !22 ; 2 uses
  %i.hk = zext i32 %i.hj to i64                   ; 2 uses
  %.not243.1 = icmp eq i32 %i.hj, 0
  br i1 %.not243.1, label %.loopexit206.1, label %.lr.ph218.1

.lr.ph218.1:                                      ; preds = %.loopexit206, %.critedge.1
  %.0169216.1 = phi i64 [ %i.hn, %.critedge.1 ], [ 0, %.loopexit206 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.0169216.1
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !22
  %.not199.1 = icmp eq i32 %i.hm, %.0174238
  br i1 %.not199.1, label %bb.p, label %.critedge.1

.critedge.1:                                      ; preds = %.lr.ph218.1
  %i.hn = add nuw nsw i64 %.0169216.1, 1          ; 2 uses
  %exitcond251.1.not = icmp eq i64 %i.hn, %i.hk
  br i1 %exitcond251.1.not, label %.loopexit206.1, label %.lr.ph218.1, !llvm.loop !32

bb.p:                                             ; preds = %.lr.ph218.1
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.0169216.1
  %i.hp = getelementptr [4 x i8], ptr %i.hh, i64 %i.hk
  %i.hq = getelementptr i8, ptr %i.hp, i64 -4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !22
  store i32 %i.hr, ptr %i.ho, align 4, !tbaa !22
  %i.hs = load i32, ptr %i.hi, align 4, !tbaa !22
  %i.ht = add i32 %i.hs, -1
  store i32 %i.ht, ptr %i.hi, align 4, !tbaa !22
  br label %.loopexit206.1

.loopexit206.1:                                   ; preds = %.critedge.1, %bb.p, %.loopexit206
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.hu = load i32, ptr %gep.2, align 4, !tbaa !22
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !22
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.hy ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hv ; 3 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !22 ; 2 uses
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %.not243.2 = icmp eq i32 %i.ib, 0
  br i1 %.not243.2, label %.loopexit206.2, label %.lr.ph218.2

.lr.ph218.2:                                      ; preds = %.loopexit206.1, %.critedge.2
  %.0169216.2 = phi i64 [ %i.if, %.critedge.2 ], [ 0, %.loopexit206.1 ] ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %.0169216.2
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !22
  %.not199.2 = icmp eq i32 %i.ie, %.0174238
  br i1 %.not199.2, label %bb.q, label %.critedge.2

.critedge.2:                                      ; preds = %.lr.ph218.2
  %i.if = add nuw nsw i64 %.0169216.2, 1          ; 2 uses
  %exitcond251.2.not = icmp eq i64 %i.if, %i.ic
  br i1 %exitcond251.2.not, label %.loopexit206.2, label %.lr.ph218.2, !llvm.loop !32

bb.q:                                             ; preds = %.lr.ph218.2
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %.0169216.2
  %i.ih = getelementptr [4 x i8], ptr %i.hz, i64 %i.ic
  %i.ii = getelementptr i8, ptr %i.ih, i64 -4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !22
  store i32 %i.ij, ptr %i.ig, align 4, !tbaa !22
  %i.ik = load i32, ptr %i.ia, align 4, !tbaa !22
  %i.il = add i32 %i.ik, -1
  store i32 %i.il, ptr %i.ia, align 4, !tbaa !22
  br label %.loopexit206.2

.loopexit206.2:                                   ; preds = %.critedge.2, %bb.q, %.loopexit206.1
  %8 = tail call i64 @llvm.umin.i64(i64 %.0172.lcssa, i64 16)
  %.not244 = icmp eq i64 %.0172.lcssa, 0
  br i1 %.not244, label %._crit_edge232.thread.a, label %.lr.ph231

._crit_edge232:                                   ; preds = %.loopexit
  %i.im = icmp eq i32 %.2168, -1
  br i1 %i.im, label %._crit_edge232.thread.a, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit

bb.r:                                             ; preds = %.lr.ph231, %.loopexit
  %.0164230 = phi i64 [ 0, %.lr.ph231 ], [ %i.kr, %.loopexit ] ; 4 uses
  %.0165229 = phi float [ 0.000000e+00, %.lr.ph231 ], [ %.2, %.loopexit ] ; 4 uses
  %.0166228 = phi i32 [ -1, %.lr.ph231 ], [ %.2168, %.loopexit ] ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0177236, i64 %.0164230
  %i.io = load i32, ptr %i.in, align 4, !tbaa !22
  %i.ip = zext i32 %i.io to i64                   ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !22 ; 3 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %.loopexit, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %bb.r
  %i.it = icmp ugt i64 %.0164230, 15
  %i.iu = tail call i32 @llvm.umin.i32(i32 %i.ir, i32 8)
  %sext = shl i64 %.0164230, 32
  %i.iv = ashr exact i64 %sext, 32
  %i.iw = select i1 %i.it, i64 -1, i64 %i.iv
  %i.ix = getelementptr [4 x i8], ptr %4, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 4
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !38
  %i.ja = zext nneg i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ja
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !38
  %i.jd = fadd float %i.iz, %i.jc                 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ip ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !38
  %i.jg = fsub float %i.jd, %i.jf                 ; 3 uses
  store float %i.jd, ptr %i.je, align 4, !tbaa !38
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.ip
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !22
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.jj ; 4 uses
  %i.jl = zext i32 %i.ir to i64
  %.idx245 = shl nuw nsw i64 %i.jl, 2             ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.idx245
  %i.jn = add nsw i64 %.idx245, -4                ; 2 uses
  %i.jo = and i64 %i.jn, 4
  %lcmp.mod309.not.not = icmp eq i64 %i.jo, 0
  br i1 %lcmp.mod309.not.not, label %.lr.ph225.prol, label %.lr.ph225.prol.loopexit

.lr.ph225.prol:                                   ; preds = %.lr.ph225.preheader
  %i.jp = load i32, ptr %i.jk, align 4, !tbaa !22 ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.jq ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !38
  %i.jt = fadd float %i.jg, %i.js                 ; 3 uses
  %i.ju = fcmp olt float %.0165229, %i.jt         ; 2 uses
  %i.jv = select i1 %i.ju, i32 %i.jp, i32 %.0166228 ; 2 uses
  %i.jw = select i1 %i.ju, float %i.jt, float %.0165229 ; 2 uses
  store float %i.jt, ptr %i.jr, align 4, !tbaa !38
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  br label %.lr.ph225.prol.loopexit

.lr.ph225.prol.loopexit:                          ; preds = %.lr.ph225.prol, %.lr.ph225.preheader
  %.lcssa294.unr = phi i32 [ poison, %.lr.ph225.preheader ], [ %i.jv, %.lr.ph225.prol ]
  %.lcssa293.unr = phi float [ poison, %.lr.ph225.preheader ], [ %i.jw, %.lr.ph225.prol ]
  %.0163223.unr = phi ptr [ %i.jk, %.lr.ph225.preheader ], [ %i.jx, %.lr.ph225.prol ]
  %.1222.unr = phi float [ %.0165229, %.lr.ph225.preheader ], [ %i.jw, %.lr.ph225.prol ]
  %.1167221.unr = phi i32 [ %.0166228, %.lr.ph225.preheader ], [ %i.jv, %.lr.ph225.prol ]
  %i.jy = icmp eq i64 %i.jn, 0
  br i1 %i.jy, label %.loopexit, label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225
  %.0163223 = phi ptr [ %i.kq, %.lr.ph225 ], [ %.0163223.unr, %.lr.ph225.prol.loopexit ] ; 3 uses
  %.1222 = phi float [ %i.kp, %.lr.ph225 ], [ %.1222.unr, %.lr.ph225.prol.loopexit ] ; 2 uses
  %.1167221 = phi i32 [ %i.ko, %.lr.ph225 ], [ %.1167221.unr, %.lr.ph225.prol.loopexit ]
  %i.jz = load i32, ptr %.0163223, align 4, !tbaa !22 ; 2 uses
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ka ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !38
  %i.kd = fadd float %i.jg, %i.kc                 ; 3 uses
  %i.ke = fcmp olt float %.1222, %i.kd            ; 2 uses
  %i.kf = select i1 %i.ke, i32 %i.jz, i32 %.1167221
  %i.kg = select i1 %i.ke, float %i.kd, float %.1222 ; 2 uses
  store float %i.kd, ptr %i.kb, align 4, !tbaa !38
  %i.kh = getelementptr inbounds nuw i8, ptr %.0163223, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !22 ; 2 uses
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.kj ; 2 uses
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !38
  %i.km = fadd float %i.jg, %i.kl                 ; 3 uses
  %i.kn = fcmp olt float %i.kg, %i.km             ; 2 uses
  %i.ko = select i1 %i.kn, i32 %i.ki, i32 %i.kf   ; 2 uses
  %i.kp = select i1 %i.kn, float %i.km, float %i.kg ; 2 uses
  store float %i.km, ptr %i.kk, align 4, !tbaa !38
  %i.kq = getelementptr inbounds nuw i8, ptr %.0163223, i64 8 ; 2 uses
  %.not198.1 = icmp eq ptr %i.kq, %i.jm
  br i1 %.not198.1, label %.loopexit, label %.lr.ph225, !llvm.loop !33

.loopexit:                                        ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225, %bb.r
  %.2168 = phi i32 [ %.0166228, %bb.r ], [ %.lcssa294.unr, %.lr.ph225.prol.loopexit ], [ %i.ko, %.lr.ph225 ] ; 3 uses
  %.2 = phi float [ %.0165229, %bb.r ], [ %.lcssa293.unr, %.lr.ph225.prol.loopexit ], [ %i.kp, %.lr.ph225 ]
  %i.kr = add nuw i64 %.0164230, 1                ; 2 uses
  %exitcond253.not = icmp eq i64 %i.kr, %.0172.lcssa
  br i1 %exitcond253.not, label %._crit_edge232, label %bb.r, !llvm.loop !34

._crit_edge232.thread.a:                          ; preds = %.loopexit206.2, %._crit_edge232
  %i.ks = zext i32 %.0203234 to i64               ; 2 uses
  %i.kt = icmp samesign ugt i64 %i.l, %i.ks
  br i1 %i.kt, label %.lr.ph.i, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread

.lr.ph.i:                                         ; preds = %._crit_edge232.thread.a, %bb.s
  %.2205 = phi i32 [ %i.kx, %bb.s ], [ %.0203234, %._crit_edge232.thread.a ] ; 3 uses
  %i.ku = phi i64 [ %i.ky, %bb.s ], [ %i.ks, %._crit_edge232.thread.a ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.kw, 0
  br i1 %.not.i, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.kx = add i32 %.2205, 1                       ; 2 uses
  %i.ky = zext i32 %i.kx to i64                   ; 2 uses
  %i.kz = icmp samesign ugt i64 %i.l, %i.ky
  br i1 %i.kz, label %.lr.ph.i, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread, !llvm.loop !35

_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit: ; preds = %.lr.ph.i, %._crit_edge232
  %.1204 = phi i32 [ %.0203234, %._crit_edge232 ], [ %.2205, %.lr.ph.i ]
  %.1175 = phi i32 [ %.2168, %._crit_edge232 ], [ %.2205, %.lr.ph.i ] ; 2 uses
  %.not = icmp eq i32 %.1175, -1
  br i1 %.not, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread, label %bb.n, !llvm.loop !36

_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread: ; preds = %._crit_edge232.thread.a, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread, %bb.t
  %.04.i = phi i64 [ %i.le, %bb.t ], [ %i.aq, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread ] ; 2 uses
  %i.la = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.lb = getelementptr [8 x i8], ptr %5, i64 %.04.i
  %i.lc = getelementptr i8, ptr %i.lb, i64 -8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !18
  invoke void %i.la(ptr noundef %i.ld)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph.i201
  %i.le = add i64 %.04.i, -1                      ; 2 uses
  %.not.i202 = icmp eq i64 %i.le, 0
  br i1 %.not.i202, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i201, !llvm.loop !2

bb.u:                                             ; preds = %.lr.ph.i201
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  tail call void @__clang_call_terminate(ptr %i.lg) #11
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.t, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.v:                                             ; preds = %bb.j, %bb.m, %bb.k, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.i ], [ %i.au, %bb.j ], [ %i.co, %bb.m ], [ %i.av, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.v ], [ %i.k, %bb.e ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7meshoptL22buildTriangleAdjacencyERNS_17TriangleAdjacencyEPKjmmR17meshopt_Allocator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.b = icmp ugt i64 %3, 4611686018427387903
  %i.c = shl i64 %3, 2                            ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c         ; 2 uses
  %i.e = tail call noundef ptr %i.a(i64 noundef %i.d), !inline_history !0 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g
  store ptr %i.e, ptr %i.i, align 8, !tbaa !18
  store ptr %i.e, ptr %0, align 8, !tbaa !21
  %i.j = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.k = tail call noundef ptr %i.j(i64 noundef %i.d), !inline_history !0 ; 2 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.f, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.l
  store ptr %i.k, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.o, align 8, !tbaa !25
  %i.p = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.q = icmp ugt i64 %2, 4611686018427387903
  %i.r = shl nuw i64 %2, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = tail call noundef ptr %i.p(i64 noundef %i.s), !inline_history !0 ; 2 uses
  %i.u = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.f, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.u
  store ptr %i.t, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.x, align 8, !tbaa !24
  %i.y = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.y, i8 0, i64 %i.c, i1 false)
  %i.z = load ptr, ptr %0, align 8, !tbaa !21     ; 18 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.aa = icmp ult i64 %2, 4
  br i1 %i.aa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %2, -4
  br label %bb.c

.preheader60.unr-lcssa:                           ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader60, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader60.unr-lcssa, %bb.a
  %.05461.epil.init = phi i64 [ 0, %bb.a ], [ %i.bl, %.preheader60.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.05461.epil = phi i64 [ %.05461.epil.init, %.epil.preheader ], [ %i.ah, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461.epil
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !22
  %i.ah = add nuw i64 %.05461.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader60, label %bb.b, !llvm.loop !39

.preheader60:                                     ; preds = %bb.b, %.preheader60.unr-lcssa
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !25  ; 16 uses
  %xtraiter76 = and i64 %3, 3                     ; 3 uses
  %i.aj = icmp ult i64 %3, 4
  br i1 %i.aj, label %.epil.preheader75, label %.preheader60.new

.preheader60.new:                                 ; preds = %.preheader60
  %unroll_iter80 = and i64 %3, -4
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.new
  %.05461 = phi i64 [ 0, %.new ], [ %i.bl, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !22
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !22
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !22
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !22
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !22
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !22
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !22
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !22
  %i.bl = add nuw i64 %.05461, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader60.unr-lcssa, label %bb.c, !llvm.loop !40

.preheader59.unr-lcssa:                           ; preds = %bb.e
  %lcmp.mod78.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %.preheader59, label %.epil.preheader75

.epil.preheader75:                                ; preds = %.preheader59.unr-lcssa, %.preheader60
  %.05563.epil.init = phi i32 [ 0, %.preheader60 ], [ %i.cl, %.preheader59.unr-lcssa ]
  %.05762.epil.init = phi i64 [ 0, %.preheader60 ], [ %i.cm, %.preheader59.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter76, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader75
  %.05563.epil = phi i32 [ %.05563.epil.init, %.epil.preheader75 ], [ %i.bp, %bb.d ] ; 2 uses
  %.05762.epil = phi i64 [ %.05762.epil.init, %.epil.preheader75 ], [ %i.bq, %bb.d ] ; 3 uses
  %epil.iter77 = phi i64 [ 0, %.epil.preheader75 ], [ %epil.iter77.next, %bb.d ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05762.epil
  store i32 %.05563.epil, ptr %i.bm, align 4, !tbaa !22
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.05762.epil
end_hunk_0
begin_hunk_1_@_ZN7meshoptL22buildTriangleAdjacencyERNS_17TriangleAdjacencyEPKjmmR17meshopt_Allocator:bb.a
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !22
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.du
  store i32 %i.dj, ptr %i.dv, align 4, !tbaa !22
  %i.dw = zext i32 %i.di to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !22 ; 2 uses
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !22
  %i.ea = zext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ea
  store i32 %i.dj, ptr %i.eb, align 4, !tbaa !22
  %i.ec = add nuw nsw i64 %.05664, 1              ; 2 uses
  %exitcond67.not = icmp eq i64 %i.ec, %i.br
  br i1 %exitcond67.not, label %.preheader, label %bb.f, !llvm.loop !48

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.065 = phi i64 [ %i.fa, %scalar.ph ], [ %.065.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.065
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !22
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.065 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !22
  %i.eh = sub i32 %i.eg, %i.ee
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !22
  %i.ei = add nuw i64 %.065, 1                    ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !22
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ei ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !22
  %i.en = sub i32 %i.em, %i.ek
  store i32 %i.en, ptr %i.el, align 4, !tbaa !22
  %i.eo = add nuw i64 %.065, 2                    ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !22
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.eo ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !22
  %i.et = sub i32 %i.es, %i.eq
  store i32 %i.et, ptr %i.er, align 4, !tbaa !22
  %i.eu = add nuw i64 %.065, 3                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !22
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.eu ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !22
  %i.ez = sub i32 %i.ey, %i.ew
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !22
  %i.fa = add nuw i64 %.065, 4                    ; 2 uses
  %exitcond68.not.3 = icmp eq i64 %i.fa, %3
  br i1 %exitcond68.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !49
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #11
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_optimizeVertexCache(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z32meshopt_optimizeVertexCacheTablePjPKjmmPKN7meshopt16VertexScoreTableE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull @_ZN7meshoptL17kVertexScoreTableE)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_optimizeVertexCacheStrip(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z32meshopt_optimizeVertexCacheTablePjPKjmmPKN7meshopt16VertexScoreTableE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull @_ZN7meshoptL22kVertexScoreTableStripE)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_optimizeVertexCacheFifo(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.meshopt_Allocator, align 8   ; 14 uses
  %6 = alloca %"struct.meshopt::TriangleAdjacency", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, i8 0, i64 200, i1 false)
  %i.a = icmp eq i64 %2, 0
  %i.b = icmp eq i64 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN17meshopt_AllocatorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.e = icmp ugt i64 %2, 4611686018427387903
  %i.f = shl i64 %2, 2                            ; 2 uses
  %i.g = select i1 %i.e, i64 -1, i64 %i.f
  %i.h = invoke noundef ptr %i.d(i64 noundef %i.g)
          to label %bb.d unwind label %bb.e, !inline_history !0 ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 1, ptr %i.i, align 8, !tbaa !17
  store ptr %i.h, ptr %5, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %bb.d, %bb.b
  %.0116 = phi ptr [ %i.h, %bb.d ], [ %1, %bb.b ] ; 4 uses
  %i.k = udiv i64 %2, 3                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN7meshoptL22buildTriangleAdjacencyERNS_17TriangleAdjacencyEPKjmmR17meshopt_Allocator(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %.0116, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.m = icmp ugt i64 %3, 4611686018427387903
  %i.n = shl i64 %3, 2                            ; 3 uses
  %i.o = select i1 %i.m, i64 -1, i64 %i.n         ; 2 uses
  %i.p = invoke noundef ptr %i.l(i64 noundef %i.o)
          to label %bb.h unwind label %bb.p, !inline_history !0 ; 8 uses

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17   ; 5 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.r
  store ptr %i.p, ptr %i.t, align 8, !tbaa !18
  %i.u = load ptr, ptr %6, align 8, !tbaa !21     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.p, ptr align 4 %i.u, i64 %i.n, i1 false)
  %i.v = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.w = invoke noundef ptr %i.v(i64 noundef %i.o)
          to label %bb.i unwind label %bb.q, !inline_history !0 ; 6 uses

bb.i:                                             ; preds = %bb.h
  %i.x = add nuw nsw i64 %i.r, 2                  ; 2 uses
  store i64 %i.x, ptr %i.q, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.s
  store ptr %i.w, ptr %i.y, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.n, i1 false)
  %i.z = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.aa = icmp ugt i64 %2, 4611686018427387903
  %i.ab = shl nuw i64 %2, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noundef ptr %i.z(i64 noundef %i.ac)
          to label %bb.j unwind label %bb.r, !inline_history !0 ; 7 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = add nuw nsw i64 %i.r, 3                 ; 2 uses
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.x
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !18
  %i.ag = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.ah = invoke noundef ptr %i.ag(i64 noundef %i.k)
          to label %bb.k unwind label %bb.s, !inline_history !1 ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ai = add nuw nsw i64 %i.r, 4
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 0, i64 %i.k, i1 false)
  %i.ak = add i32 %4, 1
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit
  %.0100172 = phi i32 [ 0, %bb.k ], [ %.1.lcssa, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ] ; 2 uses
  %.0101171 = phi i32 [ %i.ak, %bb.k ], [ %.1102.lcssa, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ] ; 2 uses
  %.0104170 = phi i32 [ 0, %bb.k ], [ %.1105, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ]
  %.0144169 = phi i32 [ 1, %bb.k ], [ %.1145, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ] ; 4 uses
  %.0148168 = phi i32 [ 0, %bb.k ], [ %.3151, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ] ; 4 uses
  %7 = zext i32 %.0148168 to i64                  ; 2 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %7
  %i.ap = zext i32 %.0104170 to i64               ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !22 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx = shl nuw nsw i64 %i.aw, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx
  %.not127157 = icmp eq i32 %i.av, 0
  br i1 %.not127157, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.aa
  %.pre = zext i32 %.2150 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %7, %bb.l ] ; 2 uses
  %.1149.lcssa.a = phi i32 [ %.2150, %._crit_edge.loopexit ], [ %.0148168, %bb.l ] ; 3 uses
  %.1102.lcssa = phi i32 [ %.5, %._crit_edge.loopexit ], [ %.0101171, %bb.l ] ; 3 uses
  %.1.lcssa = phi i32 [ %.2, %._crit_edge.loopexit ], [ %.0100172, %bb.l ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.pre-phi
  %.not28.i = icmp eq i32 %.0148168, %.1149.lcssa.a
  br i1 %.not28.i, label %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.n
  %.02031.i = phi ptr [ %i.bk, %bb.n ], [ %8, %._crit_edge ] ; 2 uses
  %.02130.i = phi i32 [ %.2.i, %bb.n ], [ -1, %._crit_edge ] ; 3 uses
  %.02229.i = phi i32 [ %.224.i, %bb.n ], [ -1, %._crit_edge ] ; 2 uses
  %i.az = load i32, ptr %.02031.i, align 4, !tbaa !22 ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !22 ; 2 uses
  %.not26.i = icmp eq i32 %i.bc, 0
  br i1 %.not26.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.bd = shl i32 %i.bc, 1
  %i.be = add i32 %i.bd, %.1102.lcssa
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ba
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22 ; 2 uses
  %i.bh = sub i32 %i.be, %i.bg
  %.not27.i = icmp ugt i32 %i.bh, %4
  %i.bi = sub i32 %.1102.lcssa, %i.bg
  %spec.select.i = select i1 %.not27.i, i32 0, i32 %i.bi ; 2 uses
  %i.bj = icmp sgt i32 %spec.select.i, %.02130.i
  %.123.i = select i1 %i.bj, i32 %i.az, i32 %.02229.i
  %.1.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %.02130.i)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.224.i = phi i32 [ %.123.i, %bb.m ], [ %.02229.i, %.lr.ph.i ] ; 3 uses
  %.2.i = phi i32 [ %.1.i, %bb.m ], [ %.02130.i, %.lr.ph.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02031.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %i.ay
  br i1 %.not.i, label %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit, label %.lr.ph.i, !llvm.loop !55

_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit: ; preds = %bb.n
  %i.bl = icmp eq i32 %.224.i, -1
  br i1 %i.bl, label %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit

bb.o:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.p:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.r:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph:                                           ; preds = %bb.l, %bb.aa
  %.0161 = phi ptr [ %i.eb, %bb.aa ], [ %i.at, %bb.l ] ; 2 uses
  %.1160 = phi i32 [ %.2, %bb.aa ], [ %.0100172, %bb.l ] ; 3 uses
  %.1102159 = phi i32 [ %.5, %bb.aa ], [ %.0101171, %bb.l ] ; 5 uses
  %.1149158 = phi i32 [ %.2150, %bb.aa ], [ %.0148168, %bb.l ] ; 5 uses
  %i.br = load i32, ptr %.0161, align 4, !tbaa !22 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !26
  %.not128 = icmp eq i8 %i.bu, 0
  br i1 %.not128, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %.lr.ph
  %i.bv = mul i32 %i.br, 3                        ; 3 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0116, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !22 ; 3 uses
  %i.bz = add i32 %i.bv, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0116, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !22 ; 3 uses
  %i.cd = add i32 %i.bv, 2
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0116, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !22 ; 3 uses
  %i.ch = mul i32 %.1160, 3                       ; 3 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ci
  store i32 %i.by, ptr %i.cj, align 4, !tbaa !22
  %i.ck = add i32 %i.ch, 1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cl
  store i32 %i.cc, ptr %i.cm, align 4, !tbaa !22
  %i.cn = add i32 %i.ch, 2
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.co
  store i32 %i.cg, ptr %i.cp, align 4, !tbaa !22
  %i.cq = add i32 %.1160, 1
  %i.cr = zext i32 %.1149158 to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cr
  store i32 %i.by, ptr %i.cs, align 4, !tbaa !22
  %i.ct = add i32 %.1149158, 1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cu
  store i32 %i.cc, ptr %i.cv, align 4, !tbaa !22
  %i.cw = add i32 %.1149158, 2
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cx
  store i32 %i.cg, ptr %i.cy, align 4, !tbaa !22
  %i.cz = add i32 %.1149158, 3
  %i.da = zext i32 %i.by to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !22
  %i.dd = add i32 %i.dc, -1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !22
  %i.de = zext i32 %i.cc to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !22
  %i.dh = add i32 %i.dg, -1
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !22
  %i.di = zext i32 %i.cg to i64                   ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !22
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !22
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.da ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !22
  %i.do = sub i32 %.1102159, %i.dn
  %i.dp = icmp ugt i32 %i.do, %4
  br i1 %i.dp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dq = add i32 %.1102159, 1
  store i32 %.1102159, ptr %i.dm, align 4, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2103 = phi i32 [ %i.dq, %bb.u ], [ %.1102159, %bb.t ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.de ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !22
  %i.dt = sub i32 %.2103, %i.ds
  %i.du = icmp ugt i32 %i.dt, %4
  br i1 %i.du, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dv = add i32 %.2103, 1
  store i32 %.2103, ptr %i.dr, align 4, !tbaa !22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3 = phi i32 [ %i.dv, %bb.w ], [ %.2103, %bb.v ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.di ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !22
  %i.dy = sub i32 %.3, %i.dx
  %i.dz = icmp ugt i32 %i.dy, %4
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ea = add i32 %.3, 1
  store i32 %.3, ptr %i.dw, align 4, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.4 = phi i32 [ %i.ea, %bb.y ], [ %.3, %bb.x ]
  store i8 1, ptr %i.bt, align 1, !tbaa !26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph
  %.2150 = phi i32 [ %i.cz, %bb.z ], [ %.1149158, %.lr.ph ] ; 3 uses
  %.5 = phi i32 [ %.4, %bb.z ], [ %.1102159, %.lr.ph ] ; 2 uses
  %.2 = phi i32 [ %i.cq, %bb.z ], [ %.1160, %.lr.ph ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0161, i64 4 ; 2 uses
  %.not127 = icmp eq ptr %i.eb, %i.ax
  br i1 %.not127, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !56

_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread: ; preds = %._crit_edge, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit
  %.not.i132164 = icmp eq i32 %.1149.lcssa.a, 0
  br i1 %.not.i132164, label %.preheader.i, label %.lr.ph166

bb.ab:                                            ; preds = %.lr.ph166
  %.not.i132 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i132, label %.preheader.i, label %.lr.ph166

.preheader.i:                                     ; preds = %bb.ab, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread
  %i.ec = zext i32 %.0144169 to i64               ; 2 uses
  %i.ed = icmp ugt i64 %3, %i.ec
  br i1 %i.ed, label %.lr.ph.i134, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread

.lr.ph166:                                        ; preds = %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread, %bb.ab
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i, %bb.ab ], [ %.pre-phi, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i165, -1 ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !22 ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !22
  %.not17.not.i = icmp eq i32 %i.ei, 0
  br i1 %.not17.not.i, label %bb.ab, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173

.lr.ph.i134:                                      ; preds = %.preheader.i, %bb.ac
  %.2146 = phi i32 [ %i.em, %bb.ac ], [ %.0144169, %.preheader.i ] ; 3 uses
  %i.ej = phi i64 [ %i.en, %bb.ac ], [ %i.ec, %.preheader.i ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !22
  %.not16.i = icmp eq i32 %i.el, 0
  br i1 %.not16.i, label %bb.ac, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit

bb.ac:                                            ; preds = %.lr.ph.i134
  %i.em = add i32 %.2146, 1                       ; 2 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = icmp ugt i64 %3, %i.en
  br i1 %i.eo, label %.lr.ph.i134, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread, !llvm.loop !57

_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173: ; preds = %.lr.ph166
  %indvars.i = trunc nuw i64 %indvars.iv.next.i to i32
  br label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit

_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit: ; preds = %.lr.ph.i134, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit
  %.3151 = phi i32 [ %.1149.lcssa.a, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit ], [ %indvars.i, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173 ], [ 0, %.lr.ph.i134 ]
  %.1145 = phi i32 [ %.0144169, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit ], [ %.0144169, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173 ], [ %.2146, %.lr.ph.i134 ]
  %.1105 = phi i32 [ %.224.i, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit ], [ %i.ef, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173 ], [ %.2146, %.lr.ph.i134 ] ; 2 uses
  %.not = icmp eq i32 %.1105, -1
  br i1 %.not, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread, label %bb.l, !llvm.loop !58

_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread: ; preds = %.preheader.i, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread, %bb.ad
  %.04.i = phi i64 [ %i.et, %bb.ad ], [ %i.ai, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread ] ; 2 uses
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.eq = getelementptr [8 x i8], ptr %5, i64 %.04.i
  %i.er = getelementptr i8, ptr %i.eq, i64 -8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !18
  invoke void %i.ep(ptr noundef %i.es)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i135
  %i.et = add i64 %.04.i, -1                      ; 2 uses
  %.not.i136 = icmp eq i64 %i.et, 0
  br i1 %.not.i136, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i135, !llvm.loop !2

bb.ae:                                            ; preds = %.lr.ph.i135
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  tail call void @__clang_call_terminate(ptr %i.ev) #11
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.ad, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.af:                                            ; preds = %bb.p, %bb.r, %bb.s, %bb.q, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %i.bn, %bb.p ], [ %i.bo, %bb.q ], [ %i.bq, %bb.s ], [ %i.bp, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.af ], [ %i.j, %bb.e ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !23}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"_ZTSN17meshopt_Allocator7StorageE", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTS17meshopt_Allocator", !8, i64 0, !15, i64 192}
!17 = !{!16, !15, i64 192}
!18 = !{!12, !12, i64 0}
!19 = !{!"p1 int", !12, i64 0}
!20 = !{!"_ZTSN7meshopt17TriangleAdjacencyE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!20, !19, i64 16}
!25 = !{!20, !19, i64 8}
!26 = !{!8, !8, i64 0}
!27 = !{!13, !12, i64 8}
!28 = distinct !{null}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = !{!"float", !8, i64 0}
!38 = !{!37, !37, i64 0}
!39 = distinct !{!39, !50}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !50}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !23, !53, !54}
!47 = distinct !{!47, !50}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23, !53}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!44}
!52 = !{!45}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
end_hunk_1
