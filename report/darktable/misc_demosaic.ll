Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/misc_demosaic?download=true
inline.NumInlined: 44
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6LibRaw18border_interpolateEi:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi81 = phi i32 [ %.pre80, %bb.h ], [ %.pre-phi79, %bb.g ] ; 2 uses
  %i.dl = phi i16 [ %i.ct, %bb.h ], [ %i.cn, %bb.g ] ; 2 uses
  %i.dm = icmp samesign ult i32 %.04357, %.pre-phi81
  %i.dn = zext i16 %i.dl to i32
  %i.do = icmp ult i32 %.1, %i.dn
  %or.cond128 = select i1 %i.dm, i1 %i.do, i1 false
  br i1 %or.cond128, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dp = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.04357, i32 noundef %.1) ; 2 uses
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.dr = load i16, ptr %i.e, align 2, !tbaa !82  ; 2 uses
  %i.ds = zext i16 %i.dr to i32
  %i.dt = mul nuw i32 %.04357, %i.ds
  %i.du = add nuw i32 %i.dt, %.1
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dv
  %i.dx = zext i32 %i.dp to i64                   ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !85
  %i.ea = zext i16 %i.dz to i32
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !96
  %i.ed = add i32 %i.ec, %i.ea
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !96
  %i.ee = add i32 %i.dp, 4
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !96
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !96
  %.pre70 = load i16, ptr %i.c, align 4, !tbaa !80
  %.pre82 = zext i16 %.pre70 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi83 = phi i32 [ %.pre82, %bb.j ], [ %.pre-phi81, %bb.i ] ; 2 uses
  %i.ej = phi i16 [ %i.dr, %bb.j ], [ %i.dl, %bb.i ] ; 2 uses
  %i.ek = icmp samesign ult i32 %.04357, %.pre-phi83
  %i.el = zext i16 %i.ej to i32
  %i.em = icmp ult i32 %i.bp, %i.el
  %or.cond130 = select i1 %i.ek, i1 %i.em, i1 false
  br i1 %or.cond130, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.en = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.04357, i32 noundef %i.bp) ; 2 uses
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.ep = load i16, ptr %i.e, align 2, !tbaa !82  ; 2 uses
  %i.eq = zext i16 %i.ep to i32
  %i.er = mul nuw i32 %.04357, %i.eq
  %i.es = add nuw i32 %i.er, %i.bp
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.et
  %i.ev = zext i32 %i.en to i64                   ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !85
  %i.ey = zext i16 %i.ex to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ev ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !96
  %i.fb = add i32 %i.fa, %i.ey
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !96
  %i.fc = add i32 %i.en, 4
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !96
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !96
  %.pre71 = load i16, ptr %i.c, align 4, !tbaa !80
  %.pre84 = zext i16 %.pre71 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi85 = phi i32 [ %.pre84, %bb.l ], [ %.pre-phi83, %bb.k ]
  %i.fh = phi i16 [ %i.ep, %bb.l ], [ %i.ej, %bb.k ] ; 2 uses
  %i.fi = icmp samesign ult i32 %i.l, %.pre-phi85
  br i1 %i.fi, label %bb.n, label %.thread114

bb.n:                                             ; preds = %bb.m
  %i.fj = zext i16 %i.fh to i32
  %i.fk = icmp ult i32 %i.s, %i.fj
  br i1 %i.fk, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.fl = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.l, i32 noundef %i.s) ; 2 uses
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.fn = load i16, ptr %i.e, align 2, !tbaa !82  ; 2 uses
  %i.fo = zext i16 %i.fn to i32
  %i.fp = mul nuw i32 %i.l, %i.fo
  %i.fq = add nuw i32 %i.fp, %i.s
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fr
  %i.ft = zext i32 %i.fl to i64                   ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !85
  %i.fw = zext i16 %i.fv to i32
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ft ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !96
  %i.fz = add i32 %i.fy, %i.fw
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !96
  %i.ga = add i32 %i.fl, 4
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !96
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !96
  %.pre72 = load i16, ptr %i.c, align 4, !tbaa !80
  %.pre86 = zext i16 %.pre72 to i32
  %i.gf = icmp samesign ult i32 %i.l, %.pre86
  br i1 %i.gf, label %.thread, label %.thread114

.thread:                                          ; preds = %bb.n, %bb.o
  %i.gg = phi i16 [ %i.fn, %bb.o ], [ %i.fh, %bb.n ] ; 2 uses
  %i.gh = zext i16 %i.gg to i32
  %i.gi = icmp ult i32 %.1, %i.gh
  br i1 %i.gi, label %bb.p, label %.thread116

bb.p:                                             ; preds = %.thread
  %i.gj = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.l, i32 noundef %.1) ; 2 uses
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.gl = load i16, ptr %i.e, align 2, !tbaa !82  ; 2 uses
  %i.gm = zext i16 %i.gl to i32
  %i.gn = mul nuw i32 %i.l, %i.gm
  %i.go = add nuw i32 %i.gn, %.1
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gp
  %i.gr = zext i32 %i.gj to i64                   ; 2 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gq, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !85
  %i.gu = zext i16 %i.gt to i32
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gr ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !96
  %i.gx = add i32 %i.gw, %i.gu
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !96
  %i.gy = add i32 %i.gj, 4
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gz ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !96
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !96
  %.pre73 = load i16, ptr %i.c, align 4, !tbaa !80
  %.pre88 = zext i16 %.pre73 to i32
  %i.hd = icmp samesign ult i32 %i.l, %.pre88
  br i1 %i.hd, label %.thread116, label %.thread114

.thread116:                                       ; preds = %.thread, %bb.p
  %i.he = phi i16 [ %i.gl, %bb.p ], [ %i.gg, %.thread ]
  %i.hf = zext i16 %i.he to i32
  %i.hg = icmp ult i32 %i.bp, %i.hf
  br i1 %i.hg, label %bb.q, label %.thread114

bb.q:                                             ; preds = %.thread116
  %i.hh = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.l, i32 noundef %i.bp) ; 2 uses
  %i.hi = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.hj = load i16, ptr %i.e, align 2, !tbaa !82
  %i.hk = zext i16 %i.hj to i32
  %i.hl = mul nuw i32 %i.l, %i.hk
  %i.hm = add nuw i32 %i.hl, %i.bp
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hn
  %i.hp = zext i32 %i.hh to i64                   ; 2 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !85
  %i.hs = zext i16 %i.hr to i32
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !96
  %i.hv = add i32 %i.hu, %i.hs
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !96
  %i.hw = add i32 %i.hh, 4
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hx ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !96
  %i.ia = add i32 %i.hz, 1
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !96
  br label %.thread114

.thread114:                                       ; preds = %bb.m, %bb.o, %bb.q, %.thread116, %bb.p
  %i.ib = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.04357, i32 noundef %.1)
  %i.ic = load i32, ptr %i.f, align 4, !tbaa !91  ; 4 uses
  %.not61 = icmp eq i32 %i.ic, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread114
  %i.id = zext i32 %i.ib to i64                   ; 3 uses
  %wide.trip.count = zext i32 %i.ic to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ie = icmp eq i32 %i.ic, 1
  br i1 %i.ie, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %.lr.ph.preheader.new
  %indvars.iv62 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next63.1, %bb.v ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.v ]
  %.not48 = icmp eq i64 %indvars.iv62, %i.id
  br i1 %.not48, label %.lr.ph.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %2 = add nuw i64 %indvars.iv62, 4
  %3 = and i64 %2, 4294967294
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  %i.if = load i32, ptr %4, align 8, !tbaa !96    ; 2 uses
  %.not49 = icmp eq i32 %i.if, 0
  br i1 %.not49, label %.lr.ph.1, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv62
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !96
  %i.ii = udiv i32 %i.ih, %i.if
  %i.ij = trunc i32 %i.ii to i16
  %i.ik = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.il = load i16, ptr %i.e, align 2, !tbaa !82
  %i.im = zext i16 %i.il to i32
  %i.in = mul nuw i32 %.04357, %i.im
  %i.io = add i32 %i.in, %.1
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.ip
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %indvars.iv62
  store i16 %i.ij, ptr %i.ir, align 2, !tbaa !85
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.r, %bb.s
  %indvars.iv.next63 = or disjoint i64 %indvars.iv62, 1 ; 3 uses
  %.not48.1 = icmp eq i64 %indvars.iv.next63, %i.id
  br i1 %.not48.1, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.1
  %5 = add nuw i64 %indvars.iv62, 5
  %6 = and i64 %5, 4294967295
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %6
  %i.is = load i32, ptr %7, align 4, !tbaa !96    ; 2 uses
  %.not49.1 = icmp eq i32 %i.is, 0
  br i1 %.not49.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next63
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !96
  %i.iv = udiv i32 %i.iu, %i.is
  %i.iw = trunc i32 %i.iv to i16
  %i.ix = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.iy = load i16, ptr %i.e, align 2, !tbaa !82
  %i.iz = zext i16 %i.iy to i32
  %i.ja = mul nuw i32 %.04357, %i.iz
  %i.jb = add i32 %i.ja, %.1
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.jc
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %indvars.iv.next63
  store i16 %i.iw, ptr %i.je, align 2, !tbaa !85
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.1
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !97

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv62.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next63.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod131 = trunc i32 %i.ic to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
  %.not48.epil = icmp eq i64 %indvars.iv62.epil.init, %i.id
  br i1 %.not48.epil, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph.epil.preheader
  %i.jf = add nuw i64 %indvars.iv62.epil.init, 4
  %i.jg = and i64 %i.jf, 4294967295
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !96 ; 2 uses
  %.not49.epil = icmp eq i32 %i.ji, 0
  br i1 %.not49.epil, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv62.epil.init
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !96
  %i.jl = udiv i32 %i.jk, %i.ji
  %i.jm = trunc i32 %i.jl to i16
  %i.jn = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.jo = load i16, ptr %i.e, align 2, !tbaa !82
  %i.jp = zext i16 %i.jo to i32
  %i.jq = mul nuw i32 %.04357, %i.jp
  %i.jr = add i32 %i.jq, %.1
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.js
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %indvars.iv62.epil.init
  store i16 %i.jm, ptr %i.ju, align 2, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.x, %bb.w, %.lr.ph.epil.preheader, %.thread114
  %i.jv = load i16, ptr %i.e, align 2, !tbaa !82  ; 4 uses
  %i.jw = zext i16 %i.jv to i32                   ; 2 uses
  %i.jx = icmp ult i32 %i.bp, %i.jw
  br i1 %i.jx, label %._crit_edge90, label %._crit_edge56.loopexit, !llvm.loop !98

._crit_edge56.loopexit:                           ; preds = %._crit_edge
  %.pre74 = load i16, ptr %i.c, align 4, !tbaa !80
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %.preheader.._crit_edge56_crit_edge, %._crit_edge56.loopexit
  %.pre-phi92 = phi i32 [ %.pre91, %.preheader.._crit_edge56_crit_edge ], [ %i.l, %._crit_edge56.loopexit ] ; 2 uses
  %i.jy = phi i16 [ %i.g, %.preheader.._crit_edge56_crit_edge ], [ %.pre74, %._crit_edge56.loopexit ] ; 2 uses
  %i.jz = phi i16 [ %i.h, %.preheader.._crit_edge56_crit_edge ], [ %i.jv, %._crit_edge56.loopexit ]
  %i.ka = phi i16 [ 0, %.preheader.._crit_edge56_crit_edge ], [ %i.jv, %._crit_edge56.loopexit ]
  %i.kb = zext i16 %i.jy to i32
  %i.kc = icmp samesign ult i32 %.pre-phi92, %i.kb
  br i1 %i.kc, label %.preheader, label %._crit_edge58, !llvm.loop !99

._crit_edge58:                                    ; preds = %._crit_edge56, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw20lin_interpolate_loopEPii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !80   ; 3 uses
  %i.d = icmp ugt i16 %i.c, 2
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge43

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.i = load i32, ptr %i.h, align 4
  %.fr44 = freeze i32 %i.i
  %i.j = add i32 %.fr44, -1                       ; 5 uses
  %.not2933 = icmp eq i32 %i.j, 0
  %i.k = load i16, ptr %i.f, align 2, !tbaa !82   ; 4 uses
  br i1 %.not2933, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.l = zext i32 %i.j to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.j, 8
  %n.vec = and i64 %i.l, 4294967288               ; 4 uses
  %i.m = trunc nuw i64 %n.vec to i32
  %i.n = sub i32 %i.j, %i.m
  %i.o = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.p = icmp ugt i16 %i.k, 2
  br i1 %i.p, label %.preheader.us.preheader, label %._crit_edge43

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %i.q = zext i16 %i.k to i64
  %i.r = add nuw nsw i64 %i.q, 4294967295
  %i.s = zext i16 %i.c to i32
  %i.t = zext i16 %i.k to i64                     ; 2 uses
  %wide.trip.count = and i64 %i.r, 4294967295
  %i.u = add nsw i32 %i.s, -2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge40.split.us.us
  %indvars.iv49 = phi i64 [ %i.t, %.preheader.us.preheader ], [ %indvars.iv.next50, %._crit_edge40.split.us.us ] ; 2 uses
  %.02741.us = phi i32 [ 1, %.preheader.us.preheader ], [ %i.dh, %._crit_edge40.split.us.us ] ; 3 uses
  %i.v = srem i32 %.02741.us, %2
  %i.w = shl i32 %i.v, 9
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv49
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %._crit_edge.us.us ], [ 1, %.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv46 ; 5 uses
  %i.z = trunc nuw nsw i64 %indvars.iv46 to i32
  %i.aa = srem i32 %i.z, %2
  %i.ab = shl i32 %i.aa, 5
  %i.ac = add i32 %i.ab, %i.w
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ad ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !96 ; 5 uses
  %.not30.us.us = icmp eq i32 %i.af, 0
  br i1 %.not30.us.us, label %._crit_edge.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %xtraiter70 = and i32 %i.af, 3                  ; 2 uses
  %lcmp.mod71.not = icmp eq i32 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us.prol
  %.032.us.us.prol = phi i32 [ %i.ah, %.lr.ph.us.us.prol ], [ %i.af, %.lr.ph.us.us.preheader ]
  %.02431.us.us.prol = phi ptr [ %i.aw, %.lr.ph.us.us.prol ], [ %i.ag, %.lr.ph.us.us.preheader ] ; 4 uses
  %prol.iter72 = phi i32 [ %prol.iter72.next, %.lr.ph.us.us.prol ], [ 0, %.lr.ph.us.us.preheader ]
  %i.ah = add nsw i32 %.032.us.us.prol, -1        ; 2 uses
  %i.ai = load i32, ptr %.02431.us.us.prol, align 4, !tbaa !96
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !85
  %i.am = zext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %.02431.us.us.prol, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !96
  %i.ap = shl i32 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.02431.us.us.prol, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !96
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !96
  %i.av = add nsw i32 %i.au, %i.ap
  store i32 %i.av, ptr %i.at, align 4, !tbaa !96
  %i.aw = getelementptr inbounds nuw i8, ptr %.02431.us.us.prol, i64 12 ; 2 uses
  %prol.iter72.next = add i32 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i32 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol, !llvm.loop !100

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader
  %.032.us.us.unr = phi i32 [ %i.af, %.lr.ph.us.us.preheader ], [ %i.ah, %.lr.ph.us.us.prol ]
  %.02431.us.us.unr = phi ptr [ %i.ag, %.lr.ph.us.us.preheader ], [ %i.aw, %.lr.ph.us.us.prol ]
  %i.ax = icmp ult i32 %i.af, 4
  br i1 %i.ax, label %._crit_edge.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.032.us.us = phi i32 [ %i.cr, %.lr.ph.us.us ], [ %.032.us.us.unr, %.lr.ph.us.us.prol.loopexit ]
  %.02431.us.us = phi ptr [ %i.dg, %.lr.ph.us.us ], [ %.02431.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 13 uses
  %i.ay = load i32, ptr %.02431.us.us, align 4, !tbaa !96
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !85
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.02431.us.us, i64 4
end_hunk_0
