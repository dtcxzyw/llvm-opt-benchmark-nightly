Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/topsort?download=true
inline.NumInlined: 139
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z28gmx_mtop_bondeds_free_energyPK10gmx_mtop_t:bb.a
  %i.bu = fcmp une float %i.br, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %.lr.ph39
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.4 = phi i1 [ true, %bb.g ], [ %.335, %bb.f ]  ; 2 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 3 ; 2 uses
  %i.bv = icmp samesign ult i64 %indvars.iv.next50, %i.ba
  br i1 %i.bv, label %.lr.ph39, label %._crit_edge40, !llvm.loop !32
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL7ip_pert19InteractionFunctionPK9t_iparams(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.a ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.thread100, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %bb.ae [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 5, label %bb.c
    i32 10, label %bb.c
    i32 11, label %bb.c
    i32 24, label %bb.c
    i32 2, label %bb.d
    i32 9, label %bb.f
    i32 16, label %bb.i
    i32 13, label %bb.l
    i32 19, label %bb.m
    i32 25, label %bb.m
    i32 58, label %bb.m
    i32 59, label %bb.m
    i32 20, label %.loopexit.loopexit
    i32 23, label %.loopexit.loopexit
    i32 7, label %.split127
    i32 8, label %.split127
    i32 18, label %.split127
    i32 26, label %.split127
    i32 52, label %.preheader
    i32 60, label %bb.u
    i32 33, label %bb.w
    i32 27, label %.thread100
    i32 12, label %bb.x
    i32 21, label %bb.y
    i32 22, label %.preheader105
  ]

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %1, align 4, !tbaa !23
  %i.h = load float, ptr %i.f, align 4, !tbaa !23
  %i.i = fcmp une float %i.g, %i.h
  br i1 %i.i, label %bb.o, label %bb.n

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.j = load float, ptr %1, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !23
  %i.m = fcmp une float %i.j, %i.l
  br i1 %i.m, label %.thread, label %.split122

.split122:                                        ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = fcmp une float %i.o, %i.q
  br i1 %i.r, label %.thread, label %.thread100

bb.d:                                             ; preds = %bb.b
  %i.s = load float, ptr %1, align 4, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load float, ptr %i.t, align 4, !tbaa !23
  %i.v = fcmp une float %i.s, %i.u
  br i1 %i.v, label %.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load float, ptr %i.y, align 4, !tbaa !23
  %i.aa = fcmp une float %i.x, %i.z
  br i1 %i.aa, label %.thread100, label %.split123

.split123:                                        ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !23
  %i.af = fcmp une float %i.ac, %i.ae
  br i1 %i.af, label %.thread.thread, label %.thread100

bb.f:                                             ; preds = %bb.b
  %i.ag = load float, ptr %1, align 4, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !23
  %i.aj = fcmp une float %i.ag, %i.ai
  br i1 %i.aj, label %.thread100, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.an = load float, ptr %i.am, align 4, !tbaa !23
  %i.ao = fcmp une float %i.al, %i.an
  br i1 %i.ao, label %.thread100, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load float, ptr %i.ar, align 4, !tbaa !23
  %i.at = fcmp une float %i.aq, %i.as
  br i1 %i.at, label %.thread100, label %.split131

.split131:                                        ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load float, ptr %i.au, align 4, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !23
  %i.ay = fcmp une float %i.av, %i.ax
  br i1 %i.ay, label %.thread.thread, label %.thread100

bb.i:                                             ; preds = %bb.b
  %i.az = load float, ptr %1, align 4, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !23
  %i.bc = fcmp une float %i.az, %i.bb
  br i1 %i.bc, label %.thread100, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !23
  %i.bh = fcmp une float %i.be, %i.bg
  br i1 %i.bh, label %.thread100, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !23
  %i.bm = fcmp une float %i.bj, %i.bl
  br i1 %i.bm, label %.thread100, label %.split130

.split130:                                        ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !23
  %i.br = fcmp une float %i.bo, %i.bq
  br i1 %i.br, label %.thread.thread, label %.thread100

bb.l:                                             ; preds = %bb.b
  %i.bs = load float, ptr %1, align 4, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !23
  %i.bv = fcmp une float %i.bs, %i.bu
  br i1 %i.bv, label %.thread100, label %.split129

.split129:                                        ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !23
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !23
  %i.ca = fcmp une float %i.bx, %i.bz
  br i1 %i.ca, label %.thread.thread, label %.thread100

bb.m:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.cb = load float, ptr %1, align 4, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !23
  %i.ce = fcmp une float %i.cb, %i.cd
  br i1 %i.ce, label %.thread, label %.split128

.split128:                                        ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !23
  %i.cj = fcmp une float %i.cg, %i.ci
  br i1 %i.cj, label %.thread, label %.thread100

.loopexit.loopexit:                               ; preds = %bb.b, %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load <2 x float>, ptr %1, align 4, !tbaa !23
  %i.cm = load <2 x float>, ptr %i.ck, align 4, !tbaa !23
  %i.cn = fcmp une <2 x float> %i.cl, %i.cm       ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cq = load <4 x float>, ptr %i.co, align 4, !tbaa !23
  %i.cr = load <4 x float>, ptr %i.cp, align 4, !tbaa !23
  %i.cs = fcmp une <4 x float> %i.cq, %i.cr
  %i.ct = freeze <4 x i1> %i.cs
  %i.cu = bitcast <4 x i1> %i.ct to i4
  %i.cv = icmp ne i4 %i.cu, 0
  %i.cw = extractelement <2 x i1> %i.cn, i64 1
  %op.rdx = select i1 %i.cv, i1 true, i1 %i.cw
  %i.cx = extractelement <2 x i1> %i.cn, i64 0
  %op.rdx136 = select i1 %op.rdx, i1 true, i1 %i.cx
  br i1 %op.rdx136, label %.thread, label %.thread100

.split127:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !23
  %i.dc = fcmp une float %i.cz, %i.db
  br i1 %i.dc, label %.thread, label %.thread100

bb.n:                                             ; preds = %.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.df = load float, ptr %i.de, align 4, !tbaa !23
  %i.dg = load float, ptr %i.dd, align 4, !tbaa !23
  %i.dh = fcmp une float %i.df, %i.dg
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.preheader
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.3 = phi i1 [ true, %bb.o ], [ false, %bb.n ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !23
  %i.dm = fcmp une float %i.dj, %i.dl
  br i1 %i.dm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.do = load float, ptr %i.dn, align 4, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !23
  %i.dr = fcmp une float %i.do, %i.dq
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.3.1 = phi i1 [ true, %bb.r ], [ %.3, %bb.q ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !23
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load float, ptr %i.du, align 4, !tbaa !23
  %i.dw = fcmp une float %i.dt, %i.dv
  br i1 %i.dw, label %.thread.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !23
  %i.eb = fcmp une float %i.dy, %i.ea
  br i1 %i.eb, label %.thread.thread, label %.loopexit

bb.u:                                             ; preds = %bb.b
  %i.ec = load float, ptr %1, align 4, !tbaa !23
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !23
  %i.ef = fcmp une float %i.ec, %i.ee
  br i1 %i.ef, label %.thread100, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !23
  %i.ek = fcmp une float %i.eh, %i.ej
  br i1 %i.ek, label %.thread100, label %.split125

.split125:                                        ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eo = load float, ptr %i.en, align 4, !tbaa !23
  %i.ep = fcmp une float %i.em, %i.eo
  br i1 %i.ep, label %.thread.thread, label %.thread100

bb.w:                                             ; preds = %bb.b
  %i.eq = load float, ptr %1, align 4, !tbaa !23
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !23
  %i.et = fcmp une float %i.eq, %i.es
  br i1 %i.et, label %.thread100, label %.split124

.split124:                                        ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !23
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !23
  %i.ey = fcmp une float %i.ev, %i.ex
  br i1 %i.ey, label %.thread.thread, label %.thread100

bb.x:                                             ; preds = %bb.b
  %i.ez = load float, ptr %1, align 4, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !23
  %i.fc = fcmp une float %i.ez, %i.fb
  br i1 %i.fc, label %.thread.thread103, label %.split126

.split126:                                        ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !23
  %i.fh = fcmp une float %i.fe, %i.fg
  br i1 %i.fh, label %.thread.thread103, label %.thread100

bb.y:                                             ; preds = %bb.b
  %i.fi = load float, ptr %1, align 4, !tbaa !23
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !23
  %i.fl = fcmp une float %i.fi, %i.fk
  br i1 %i.fl, label %.thread.thread103, label %.split

.split:                                           ; preds = %bb.y
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !23
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !23
  %i.fq = fcmp une float %i.fn, %i.fp
  br i1 %i.fq, label %.thread.thread103, label %.thread100

.preheader105:                                    ; preds = %bb.b
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fs = load float, ptr %1, align 4, !tbaa !23
  %i.ft = load float, ptr %i.fr, align 4, !tbaa !23
  %i.fu = fcmp une float %i.fs, %i.ft
  br i1 %i.fu, label %.thread, label %bb.z

bb.z:                                             ; preds = %.preheader105
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !23
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !23
  %i.fz = fcmp une float %i.fw, %i.fy
  br i1 %i.fz, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !23
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !23
  %i.ge = fcmp une float %i.gb, %i.gd
  br i1 %i.ge, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !23
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !23
  %i.gj = fcmp une float %i.gg, %i.gi
  br i1 %i.gj, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !23
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !23
  %i.go = fcmp une float %i.gl, %i.gn
  br i1 %i.go, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !23
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !23
  %i.gt = fcmp une float %i.gq, %i.gs
  br label %.loopexit

bb.ae:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(65) @.str, i8 noundef zeroext 2)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !24
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 145, ptr noundef nonnull @.str.1, ptr noundef %i.gv) #11
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.aj

.loopexit:                                        ; preds = %bb.ad, %bb.t
  %.5 = phi i1 [ %.3.1, %bb.t ], [ %i.gt, %bb.ad ]
  br i1 %.5, label %.thread, label %.thread100

.thread.thread:                                   ; preds = %.split131, %.split130, %.split129, %.split125, %.split124, %.split123, %bb.s, %bb.t
  br label %.thread100

.thread:                                          ; preds = %.preheader105, %bb.z, %bb.aa, %bb.ab, %bb.ac, %.split128, %.split127, %.loopexit.loopexit, %.split122, %bb.m, %bb.c, %.loopexit
  switch i32 %0, label %.thread100 [
end_hunk_0
