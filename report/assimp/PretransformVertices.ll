inline.NumInlined: 650
inline.NumDeleted: 354
begin_hunk_0_@_ZNK6Assimp20PretransformVertices14ApplyTransformEP6aiMeshRK12aiMatrix4x4tIfE:bb.a
  %i.lo = zext i32 %i.ln to i64
  %i.lp = icmp samesign ult i64 %indvars.iv.next131, %i.lo
  br i1 %i.lp, label %.lr.ph122, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, !llvm.loop !31

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit75, %bb.g, %.loopexit, %bb.a
  ret void
}

declare void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6Assimp20PretransformVertices14BuildWCSMeshesERSt6vectorIP6aiMeshSaIS3_EEPS3_jP6aiNode(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(93) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1120 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not64 = icmp eq i32 %i.c, 0
  br i1 %.not64, label %.preheader, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1128 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 1028 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 1032 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1036 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 1040 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 1044 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1048 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 1052 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 1056 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1060 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 1064 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 1068 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 1072 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1076 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1080 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1084 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 1088 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = add i32 %3, -1
  br label %bb.b

.preheader:                                       ; preds = %bb.ap, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 1104 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %.not66 = icmp eq i32 %i.y, 0
  br i1 %.not66, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 1112
  br label %bb.aq

bb.b:                                             ; preds = %.lr.ph60, %bb.ap
  %indvars.iv = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next, %bb.ap ] ; 6 uses
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 224 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 17 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = load float, ptr %i.e, align 4
  %i.ak = fcmp oeq float %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %.preheader56

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.am = load float, ptr %i.al, align 4
  %i.an = load float, ptr %i.f, align 8
  %i.ao = fcmp oeq float %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %.preheader56

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = load float, ptr %i.g, align 4
  %i.as = fcmp oeq float %i.aq, %i.ar
  br i1 %i.as, label %bb.f, label %.preheader56

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.au = load float, ptr %i.at, align 4
  %i.av = load float, ptr %i.h, align 8
  %i.aw = fcmp oeq float %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %.preheader56

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = load float, ptr %i.i, align 4
  %i.ba = fcmp oeq float %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %.preheader56

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = load float, ptr %i.j, align 8
  %i.be = fcmp oeq float %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %.preheader56

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = load float, ptr %i.k, align 4
  %i.bi = fcmp oeq float %i.bg, %i.bh
  br i1 %i.bi, label %bb.j, label %.preheader56

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = load float, ptr %i.l, align 8
  %i.bm = fcmp oeq float %i.bk, %i.bl
  br i1 %i.bm, label %bb.k, label %.preheader56

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = load float, ptr %i.m, align 4
  %i.bq = fcmp oeq float %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %.preheader56

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = load float, ptr %i.n, align 8
  %i.bu = fcmp oeq float %i.bs, %i.bt
  br i1 %i.bu, label %bb.m, label %.preheader56

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = load float, ptr %i.o, align 4
  %i.by = fcmp oeq float %i.bw, %i.bx
  br i1 %i.by, label %bb.n, label %.preheader56

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = load float, ptr %i.p, align 8
  %i.cc = fcmp oeq float %i.ca, %i.cb
  br i1 %i.cc, label %bb.o, label %.preheader56

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ce = load float, ptr %i.cd, align 4
  %i.cf = load float, ptr %i.q, align 4
  %i.cg = fcmp oeq float %i.ce, %i.cf
  br i1 %i.cg, label %bb.p, label %.preheader56

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = load float, ptr %i.r, align 8
  %i.ck = fcmp oeq float %i.ci, %i.cj
  br i1 %i.ck, label %bb.q, label %.preheader56

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = load float, ptr %i.s, align 4
  %i.co = fcmp oeq float %i.cm, %i.cn
  br i1 %i.co, label %bb.r, label %.preheader56

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = load float, ptr %i.t, align 8
  %i.cs = fcmp oeq float %i.cq, %i.cr
  br i1 %i.cs, label %bb.s, label %.preheader56

.preheader56:                                     ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.r
  %i.ct = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.cu = load ptr, ptr %1, align 8               ; 2 uses
  %.not65 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not65, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.r, %bb.b
  store ptr %i.e, ptr %i.ag, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  store i32 -1, ptr %i.cv, align 8
  br label %bb.ap

._crit_edge.loopexit:                             ; preds = %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread
  %.pre72 = load ptr, ptr %i.d, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre72, i64 %indvars.iv
  %.pre73 = load i32, ptr %.phi.trans.insert, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader56
  %i.cw = phi i32 [ %.pre73, %._crit_edge.loopexit ], [ %i.ac, %.preheader56 ]
  %i.cx = icmp ult i32 %i.cw, %3
  br i1 %i.cx, label %bb.aj, label %bb.ap

.lr.ph:                                           ; preds = %.preheader56, %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread
  %i.cy = phi ptr [ %i.fx, %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread ], [ %i.cu, %.preheader56 ] ; 18 uses
  %i.cz = phi ptr [ %i.fy, %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread ], [ %i.ct, %.preheader56 ] ; 17 uses
  %i.da = phi i64 [ %i.ga, %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread ], [ 0, %.preheader56 ]
  %.05157 = phi i32 [ %i.fz, %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread ], [ 0, %.preheader56 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 216
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = load ptr, ptr %i.d, align 8
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = icmp eq i32 %i.de, %i.dh
  br i1 %i.di, label %bb.t, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.t:                                             ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 224
  %i.dk = load ptr, ptr %i.dj, align 8            ; 16 uses
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = load float, ptr %i.e, align 4
  %i.dn = fcmp oeq float %i.dl, %i.dm
  br i1 %i.dn, label %bb.u, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = load float, ptr %i.f, align 8
  %i.dr = fcmp oeq float %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = load float, ptr %i.g, align 4
  %i.dv = fcmp oeq float %i.dt, %i.du
  br i1 %i.dv, label %bb.w, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = load float, ptr %i.h, align 8
  %i.dz = fcmp oeq float %i.dx, %i.dy
  br i1 %i.dz, label %bb.x, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.eb = load float, ptr %i.ea, align 4
  %i.ec = load float, ptr %i.i, align 4
  %i.ed = fcmp oeq float %i.eb, %i.ec
  br i1 %i.ed, label %bb.y, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = load float, ptr %i.j, align 8
  %i.eh = fcmp oeq float %i.ef, %i.eg
  br i1 %i.eh, label %bb.z, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = load float, ptr %i.k, align 4
  %i.el = fcmp oeq float %i.ej, %i.ek
  br i1 %i.el, label %bb.aa, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.en = load float, ptr %i.em, align 4
  %i.eo = load float, ptr %i.l, align 8
  %i.ep = fcmp oeq float %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.ab:                                            ; preds = %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.er = load float, ptr %i.eq, align 4
  %i.es = load float, ptr %i.m, align 4
  %i.et = fcmp oeq float %i.er, %i.es
  br i1 %i.et, label %bb.ac, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.ac:                                            ; preds = %bb.ab
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %i.ev = load float, ptr %i.eu, align 4
  %i.ew = load float, ptr %i.n, align 8
  %i.ex = fcmp oeq float %i.ev, %i.ew
  br i1 %i.ex, label %bb.ad, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.ez = load float, ptr %i.ey, align 4
  %i.fa = load float, ptr %i.o, align 4
  %i.fb = fcmp oeq float %i.ez, %i.fa
  br i1 %i.fb, label %bb.ae, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.ae:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dk, i64 44
  %i.fd = load float, ptr %i.fc, align 4
  %i.fe = load float, ptr %i.p, align 8
  %i.ff = fcmp oeq float %i.fd, %i.fe
  br i1 %i.ff, label %bb.af, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.af:                                            ; preds = %bb.ae
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.fh = load float, ptr %i.fg, align 4
  %i.fi = load float, ptr %i.q, align 4
  %i.fj = fcmp oeq float %i.fh, %i.fi
  br i1 %i.fj, label %bb.ag, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dk, i64 52
  %i.fl = load float, ptr %i.fk, align 4
  %i.fm = load float, ptr %i.r, align 8
  %i.fn = fcmp oeq float %i.fl, %i.fm
  br i1 %i.fn, label %bb.ah, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.ah:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.fp = load float, ptr %i.fo, align 4
  %i.fq = load float, ptr %i.s, align 4
  %i.fr = fcmp oeq float %i.fp, %i.fq
  br i1 %i.fr, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55:             ; preds = %bb.ah
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 60
  %i.ft = load float, ptr %i.fs, align 4
  %i.fu = load float, ptr %i.t, align 8
  %i.fv = fcmp oeq float %i.ft, %i.fu
  br i1 %i.fv, label %bb.ai, label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

bb.ai:                                            ; preds = %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55
  %i.fw = add i32 %.05157, %3
  store i32 %i.fw, ptr %i.dg, align 4
  %.pre = load ptr, ptr %i.u, align 8
  %.pre71 = load ptr, ptr %1, align 8
  br label %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread

_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55.thread:      ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55, %.lr.ph
  %i.fx = phi ptr [ %i.cy, %bb.t ], [ %i.cy, %bb.u ], [ %i.cy, %bb.v ], [ %i.cy, %bb.w ], [ %i.cy, %bb.x ], [ %i.cy, %bb.y ], [ %i.cy, %bb.z ], [ %i.cy, %bb.aa ], [ %i.cy, %bb.ab ], [ %i.cy, %bb.ac ], [ %i.cy, %bb.ad ], [ %i.cy, %bb.ae ], [ %i.cy, %bb.af ], [ %i.cy, %bb.ag ], [ %i.cy, %bb.ah ], [ %.pre71, %bb.ai ], [ %i.cy, %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55 ], [ %i.cy, %.lr.ph ] ; 2 uses
  %i.fy = phi ptr [ %i.cz, %bb.t ], [ %i.cz, %bb.u ], [ %i.cz, %bb.v ], [ %i.cz, %bb.w ], [ %i.cz, %bb.x ], [ %i.cz, %bb.y ], [ %i.cz, %bb.z ], [ %i.cz, %bb.aa ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ac ], [ %i.cz, %bb.ad ], [ %i.cz, %bb.ae ], [ %i.cz, %bb.af ], [ %i.cz, %bb.ag ], [ %i.cz, %bb.ah ], [ %.pre, %bb.ai ], [ %i.cz, %_ZNK12aiMatrix4x4tIfEeqERKS0_.exit55 ], [ %i.cz, %.lr.ph ] ; 2 uses
  %i.fz = add i32 %.05157, 1                      ; 2 uses
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = ptrtoint ptr %i.fx to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = icmp ugt i64 %i.ge, %i.ga
  br i1 %i.gf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !32

bb.aj:                                            ; preds = %._crit_edge
  %i.gg = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.gg, ptr noundef nonnull @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.gh = getelementptr inbounds nuw i8, ptr %i.af, i64 216 ; 3 uses
  %i.gi = load i32, ptr %i.gh, align 8
  store i32 0, ptr %i.gh, align 8
  call void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef nonnull %i.a, ptr noundef %i.af)
  store i32 %i.gi, ptr %i.gh, align 8
  %i.gj = load ptr, ptr %i.d, align 8
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 216
  store i32 %i.gl, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 224
  store ptr %i.e, ptr %i.go, align 8
  %i.gp = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.gq = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.gp, %i.gq
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.gm, ptr %i.gp, align 8
  %i.gr = load ptr, ptr %i.u, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  store ptr %i.gs, ptr %i.u, align 8
  %.pre74 = load ptr, ptr %1, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.al:                                            ; preds = %bb.aj
  %i.gt = load ptr, ptr %1, align 8               ; 4 uses
  %i.gu = ptrtoint ptr %i.gp to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 6 uses
  %i.gx = icmp eq i64 %i.gw, 9223372036854775800
  br i1 %i.gx, label %bb.am, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.gy = ashr exact i64 %i.gw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gy, i64 1)
  %i.gz = add nsw i64 %.sroa.speculated.i.i.i, %i.gy ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  %i.hb = call i64 @llvm.umin.i64(i64 %i.gz, i64 1152921504606846975)
  %i.hc = select i1 %i.ha, i64 1152921504606846975, i64 %i.hb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hd = shl nuw nsw i64 %i.hc, 3
  %i.he = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #24 ; 5 uses
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.gw ; 2 uses
  store ptr %i.gm, ptr %i.hf, align 8
  %i.hg = icmp sgt i64 %i.gw, 0
  br i1 %i.hg, label %bb.an, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.an:                                            ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp20PretransformVertices7ExecuteEP7aiScene:bb.a
  %i.f = alloca [2 x i32], align 8                ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull @.str.6)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.dn, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %i.j, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8
  store i32 %i.l, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 6 uses
  %i.o = tail call noundef i32 @_ZNK6Assimp20PretransformVertices10CountNodesEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.n)
  store i32 %i.o, ptr %i.c, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !range !38, !noundef !39
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1028 ; 2 uses
  %i.u = load <4 x float>, ptr %i.s, align 4
  %.sroa.6533.0..sroa_idx534 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <4 x float>, ptr %.sroa.6533.0..sroa_idx534, align 8
  %.sroa.8536.0..sroa_idx537 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.w = load <4 x float>, ptr %.sroa.8536.0..sroa_idx537, align 4
  %.sroa.10539.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load <4 x float>, ptr %.sroa.10539.0..sroa_idx540, align 8
  %.sroa.12542.0..sroa_idx543 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.y = load <4 x float>, ptr %.sroa.12542.0..sroa_idx543, align 4
  %.sroa.14545.0..sroa_idx546 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load <4 x float>, ptr %.sroa.14545.0..sroa_idx546, align 8
  %.sroa.16548.0..sroa_idx549 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aa = load <4 x float>, ptr %.sroa.16548.0..sroa_idx549, align 4
  %.sroa.18551.0..sroa_idx552 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load <4 x float>, ptr %.sroa.18551.0..sroa_idx552, align 8
  %.sroa.20.0..sroa_idx554 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ac = load <4 x float>, ptr %.sroa.20.0..sroa_idx554, align 4
  %.sroa.22.0..sroa_idx556 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load <4 x float>, ptr %.sroa.22.0..sroa_idx556, align 8
  %.sroa.24.0..sroa_idx558 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ae = load <4 x float>, ptr %.sroa.24.0..sroa_idx558, align 4
  %.sroa.26.0..sroa_idx560 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load <4 x float>, ptr %.sroa.26.0..sroa_idx560, align 8
  %.sroa.28.0..sroa_idx562 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ag = load <4 x float>, ptr %.sroa.28.0..sroa_idx562, align 4
  %.sroa.30.0..sroa_idx564 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.30.0.copyload565 = load float, ptr %.sroa.30.0..sroa_idx564, align 8
  %.sroa.32.0..sroa_idx566 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.sroa.32.0.copyload567 = load float, ptr %.sroa.32.0..sroa_idx566, align 4
  %.sroa.34.0..sroa_idx568 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.34.0.copyload569 = load float, ptr %.sroa.34.0..sroa_idx568, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 1044 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 1060 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 1076 ; 2 uses
  %i.ak = load <4 x float>, ptr %i.t, align 4     ; 4 uses
  %i.al = load <4 x float>, ptr %i.ah, align 4    ; 4 uses
  %i.am = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.an = fmul <4 x float> %i.am, %i.al
  %i.ao = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.ao, <4 x float> %i.an)
  %i.aq = load <4 x float>, ptr %i.ai, align 4    ; 4 uses
  %i.ar = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.ar, <4 x float> %i.ap)
  %i.at = load <4 x float>, ptr %i.aj, align 4    ; 4 uses
  %i.au = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.au, <4 x float> %i.as)
  store <4 x float> %i.av, ptr %i.t, align 4
  %i.aw = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = fmul <4 x float> %i.aw, %i.al
  %i.ay = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.ay, <4 x float> %i.ax)
  %i.ba = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.ba, <4 x float> %i.az)
  %i.bc = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.bc, <4 x float> %i.bb)
  store <4 x float> %i.bd, ptr %i.ah, align 4
  %i.be = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = fmul <4 x float> %i.be, %i.al
  %i.bg = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.bg, <4 x float> %i.bf)
  %i.bi = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.bi, <4 x float> %i.bh)
  %i.bk = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.bk, <4 x float> %i.bj)
  store <4 x float> %i.bl, ptr %i.ai, align 4
  %i.bm = insertelement <4 x float> poison, float %.sroa.30.0.copyload565, i64 0
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = fmul <4 x float> %i.bn, %i.al
  %i.bp = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.bp, <4 x float> %i.bo)
  %i.br = insertelement <4 x float> poison, float %.sroa.32.0.copyload567, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.bs, <4 x float> %i.bq)
  %i.bu = insertelement <4 x float> poison, float %.sroa.34.0.copyload569, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.bv, <4 x float> %i.bt)
  store <4 x float> %i.bw, ptr %i.aj, align 4
  %.pre = load ptr, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bx = phi ptr [ %.pre, %bb.c ], [ %i.n, %bb.b ]
  tail call void @_ZN6Assimp20PretransformVertices24ComputeAbsoluteTransformEP6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.bx)
  %i.by = load i32, ptr %i.i, align 8
  %.not716.a = icmp eq i32 %i.by, 0
  br i1 %.not716.a, label %._crit_edge607.a, label %.lr.ph606.a

.lr.ph606.a:                                      ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

._crit_edge607.a:                                 ; preds = %bb.k, %bb.d
  %i.ca = phi i32 [ 0, %bb.d ], [ %i.cy, %bb.k ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !range !38, !noundef !39
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.l, label %bb.t

bb.e:                                             ; preds = %.lr.ph606.a, %bb.k
  %indvars.iv775 = phi i64 [ 0, %.lr.ph606.a ], [ %indvars.iv.next776, %bb.k ] ; 2 uses
  %i.ce = load ptr, ptr %i.bz, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv775
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 216 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %.not717.a = icmp eq i32 %i.ci, 0
  br i1 %.not717.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 224
  br label %bb.f

._crit_edge:                                      ; preds = %bb.i, %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 224 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.k, label %bb.j

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.cn = phi i32 [ %i.ci, %.lr.ph ], [ %i.cv, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.co = load ptr, ptr %i.cj, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1048
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN6aiBoneD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.ct) #26
  br label %_ZN6aiBoneD2Ev.exit

_ZN6aiBoneD2Ev.exit:                              ; preds = %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 1120) #26
  %.pre826 = load i32, ptr %i.ch, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_ZN6aiBoneD2Ev.exit
  %i.cv = phi i32 [ %i.cn, %bb.f ], [ %.pre826, %_ZN6aiBoneD2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp samesign ult i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %bb.f, label %._crit_edge, !llvm.loop !40

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  store ptr null, ptr %i.ck, align 8
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %i.cy = load i32, ptr %i.i, align 8             ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next776, %i.cz
  br i1 %i.da, label %bb.e, label %._crit_edge607.a, !llvm.loop !41

bb.l:                                             ; preds = %._crit_edge607.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.m, align 8
  invoke void @_ZNK6Assimp20PretransformVertices14BuildWCSMeshesERSt6vectorIP6aiMeshSaIS3_EEPS3_jP6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.dc, i32 noundef %i.ca, ptr noundef %i.dd)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %.val = load ptr, ptr %3, align 8               ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val359 = load ptr, ptr %i.de, align 8         ; 2 uses
  %i.df = icmp eq ptr %.val, %.val359
  %.pre836 = load i32, ptr %i.i, align 8          ; 3 uses
  br i1 %i.df, label %_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = zext i32 %.pre836 to i64                ; 3 uses
  %i.dh = ptrtoint ptr %.val359 to i64
  %i.di = ptrtoint ptr %.val to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 2 uses
  %i.dk = ashr exact i64 %i.dj, 3                 ; 2 uses
  %i.dl = add nsw i64 %i.dk, %i.dg                ; 2 uses
  %i.dm = icmp ugt i64 %i.dl, 2305843009213693951
  %i.dn = shl i64 %i.dl, 3
  %i.do = select i1 %i.dm, i64 -1, i64 %i.dn
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.do) #24
          to label %.noexc unwind label %bb.q     ; 3 uses

.noexc:                                           ; preds = %bb.n
  %i.dq = load ptr, ptr %i.db, align 8            ; 3 uses
  %i.dr = shl nuw nsw i64 %i.dg, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr align 8 %i.dq, i64 %i.dr, i1 false)
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr nonnull align 8 %.val, i64 %i.dj, i1 false)
  %i.dt = trunc i64 %i.dk to i32
  %i.du = add i32 %.pre836, %i.dt                 ; 2 uses
  store i32 %i.du, ptr %i.i, align 8
  %i.dv = icmp eq ptr %i.dq, null
  br i1 %i.dv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc
  tail call void @_ZdaPv(ptr noundef nonnull %i.dq) #26
  %.pre835.pre = load i32, ptr %i.i, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.noexc
  %.pre835 = phi i32 [ %.pre835.pre, %bb.o ], [ %i.du, %.noexc ]
  store ptr %i.dp, ptr %i.db, align 8
  br label %_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit

_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit: ; preds = %bb.m, %bb.p
  %i.dw = phi i32 [ %.pre836, %bb.m ], [ %.pre835, %bb.p ]
  %.not722 = icmp eq i32 %i.dw, 0
  br i1 %.not722, label %.loopexit575, label %.lr.ph662

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, %bb.n, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.de, %bb.dd, %bb.dc, %._crit_edge715, %bb.l
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.lr.ph662:                                        ; preds = %_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit, %bb.r
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %bb.r ], [ 0, %_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit ] ; 4 uses
  %i.dy = load ptr, ptr %i.db, align 8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv787
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 224
  %i.ec = load ptr, ptr %i.eb, align 8
  invoke void @_ZNK6Assimp20PretransformVertices14ApplyTransformEP6aiMeshRK12aiMatrix4x4tIfE(ptr nonnull align 8 poison, ptr noundef nonnull %i.ea, ptr noundef nonnull align 4 dereferenceable(64) %i.ec)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph662
  %i.ed = load ptr, ptr %i.db, align 8
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv787
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 224
  store ptr null, ptr %i.eg, align 8
  %i.eh = load ptr, ptr %i.db, align 8
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv787
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 216
  store i32 0, ptr %i.ek, align 8
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1 ; 2 uses
  %i.el = load i32, ptr %i.i, align 8
  %i.em = zext i32 %i.el to i64
  %i.en = icmp samesign ult i64 %indvars.iv.next788, %i.em
  br i1 %i.en, label %.lr.ph662, label %.loopexit575, !llvm.loop !42

bb.s:                                             ; preds = %.lr.ph662
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.t:                                             ; preds = %._crit_edge607.a
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 8            ; 2 uses
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %.not890 = icmp eq i32 %i.eq, 0
  br i1 %.not890, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.t
  %i.et = shl nuw nsw i64 %i.er, 4
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #24
          to label %.noexc361 unwind label %bb.q  ; 4 uses

.noexc361:                                        ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.eu, ptr %3, align 8
  store ptr %i.eu, ptr %i.ev, align 8
  %.idx = shl nuw nsw i64 %i.er, 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx ; 2 uses
  store ptr %i.ew, ptr %i.es, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %.noexc361, %bb.t
  %.promoted632830 = phi ptr [ %i.eu, %.noexc361 ], [ null, %bb.t ] ; 2 uses
  %.promoted623828 = phi ptr [ %i.ew, %.noexc361 ], [ null, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %4, ptr %i.ex, align 8
  store ptr %4, ptr %4, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i64 0, ptr %i.ey, align 8
  %i.ez = zext i32 %i.ca to i64
  %.not.i.i.i.i = icmp ne i32 %i.ca, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fa = shl nuw nsw i64 %i.ez, 2                ; 4 uses
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #24
          to label %.noexc362 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit379.thread ; 5 uses

.noexc362:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fb, i8 0, i64 %i.fa, i1 false)
  %i.fc = load ptr, ptr %i.m, align 8
  call void @_ZNK6Assimp20PretransformVertices22BuildMeshRefCountArrayEPK6aiNodePj(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.fc, ptr noundef nonnull %i.fb)
  %i.fd = load i32, ptr %i.ep, align 8
  %.not718 = icmp eq i32 %i.fd, 0
  br i1 %.not718, label %._crit_edge650.thread, label %.lr.ph649

.lr.ph649:                                        ; preds = %.noexc362
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.v

._crit_edge650:                                   ; preds = %._crit_edge645
  %i.fi = icmp eq ptr %.lcssa633, %i.hf
  br i1 %i.fi, label %._crit_edge650.thread, label %.preheader576

.preheader576:                                    ; preds = %._crit_edge650
  %i.fj = load i32, ptr %i.i, align 8
  %.not719.a = icmp eq i32 %i.fj, 0
  br i1 %.not719.a, label %._crit_edge657, label %.lr.ph656.a

.lr.ph656.a:                                      ; preds = %.preheader576
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bf

_ZNSt6vectorIjSaIjEED2Ev.exit379.thread:          ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit384

bb.u:                                             ; preds = %bb.bd
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit379

bb.v:                                             ; preds = %.lr.ph649, %._crit_edge645
  %i.fn = phi ptr [ %.promoted632830, %.lr.ph649 ], [ %i.hf, %._crit_edge645 ] ; 2 uses
  %.promoted632 = phi ptr [ %.promoted632830, %.lr.ph649 ], [ %.lcssa633, %._crit_edge645 ] ; 2 uses
  %.promoted623 = phi ptr [ %.promoted623828, %.lr.ph649 ], [ %.lcssa624, %._crit_edge645 ] ; 2 uses
  %.0302648 = phi i32 [ 0, %.lr.ph649 ], [ %i.hg, %._crit_edge645 ] ; 5 uses
  %i.fo = load ptr, ptr %4, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.fo, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIjSaIjEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %i.fo, %bb.v ] ; 2 uses
  %i.fp = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #26
  %.not.i.i = icmp eq ptr %i.fp, %4
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIjSaIjEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !43

_ZNSt7__cxx114listIjSaIjEE5clearEv.exit:          ; preds = %.lr.ph.i.i, %bb.v
  store ptr %4, ptr %i.ex, align 8
  store ptr %4, ptr %4, align 8
  store i64 0, ptr %i.ey, align 8
  %i.fq = load i32, ptr %i.i, align 8             ; 2 uses
  %.not.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_114GetVFormatListEPK7aiScenejRNSt7__cxx114listIjSaIjEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx114listIjSaIjEE5clearEv.exit, %bb.z
  %i.fr = phi i32 [ %i.gj, %bb.z ], [ %i.fq, %_ZNSt7__cxx114listIjSaIjEE5clearEv.exit ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.z ], [ 0, %_ZNSt7__cxx114listIjSaIjEE5clearEv.exit ] ; 2 uses
  %i.fs = load ptr, ptr %i.fe, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i
  %i.fu = load ptr, ptr %i.ft, align 8            ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 232
  %i.fw = load i32, ptr %i.fv, align 8
  %i.fx = icmp eq i32 %.0302648, %i.fw
  br i1 %i.fx, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 224 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  %.not.i.i363 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i363, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = trunc i64 %i.ga to i32
  br label %_ZN12_GLOBAL__N_114GetMeshVFormatEP6aiMesh.exit.i

bb.y:                                             ; preds = %bb.w
  %i.gc = invoke noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef nonnull %i.fu)
          to label %.noexc364 unwind label %.loopexit585 ; 2 uses

.noexc364:                                        ; preds = %bb.y
  %i.gd = zext i32 %i.gc to i64
  %i.ge = inttoptr i64 %i.gd to ptr
  store ptr %i.ge, ptr %i.fy, align 8
  br label %_ZN12_GLOBAL__N_114GetMeshVFormatEP6aiMesh.exit.i

_ZN12_GLOBAL__N_114GetMeshVFormatEP6aiMesh.exit.i: ; preds = %.noexc364, %bb.x
  %.0.i.i = phi i32 [ %i.gb, %bb.x ], [ %i.gc, %.noexc364 ]
  %i.gf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc365 unwind label %.loopexit585 ; 2 uses

.noexc365:                                        ; preds = %_ZN12_GLOBAL__N_114GetMeshVFormatEP6aiMesh.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i32 %.0.i.i, ptr %i.gg, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  %i.gh = load i64, ptr %i.ey, align 8
  %i.gi = add i64 %i.gh, 1
  store i64 %i.gi, ptr %i.ey, align 8
  %.pre.i = load i32, ptr %i.i, align 8
  br label %bb.z

bb.z:                                             ; preds = %.noexc365, %.lr.ph.i
  %i.gj = phi i32 [ %.pre.i, %.noexc365 ], [ %i.fr, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = icmp samesign ult i64 %indvars.iv.next.i, %i.gk
  br i1 %i.gl, label %.lr.ph.i, label %_ZN12_GLOBAL__N_114GetVFormatListEPK7aiScenejRNSt7__cxx114listIjSaIjEEE.exit, !llvm.loop !44

_ZN12_GLOBAL__N_114GetVFormatListEPK7aiScenejRNSt7__cxx114listIjSaIjEEE.exit: ; preds = %bb.z, %_ZNSt7__cxx114listIjSaIjEE5clearEv.exit
  invoke void @_ZNSt7__cxx114listIjSaIjEE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.aa unwind label %.loopexit.split-lp586

bb.aa:                                            ; preds = %_ZN12_GLOBAL__N_114GetVFormatListEPK7aiScenejRNSt7__cxx114listIjSaIjEEE.exit
  %i.gm = load ptr, ptr %4, align 8               ; 4 uses
  %i.gn = icmp eq ptr %i.gm, %4
  br i1 %i.gn, label %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %2, ptr %i.ff, align 8
  store ptr %2, ptr %2, align 8
  store i64 0, ptr %i.fg, align 8
  %i.go = load ptr, ptr %i.gm, align 8            ; 2 uses
  %.not12.i = icmp eq ptr %i.go, %4
  br i1 %.not12.i, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit.i, label %.lr.ph.i366

.lr.ph.i366:                                      ; preds = %bb.ab, %_ZNSt7__cxx114listIjSaIjEE6spliceESt20_List_const_iteratorIjERS2_S4_.exit.i
  %i.gp = phi ptr [ %i.hd, %_ZNSt7__cxx114listIjSaIjEE6spliceESt20_List_const_iteratorIjERS2_S4_.exit.i ], [ %i.go, %bb.ab ] ; 5 uses
  %.sroa.010.013.i = phi ptr [ %.sroa.010.1.i, %_ZNSt7__cxx114listIjSaIjEE6spliceESt20_List_const_iteratorIjERS2_S4_.exit.i ], [ %i.gm, %bb.ab ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i, i64 16
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = icmp eq i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.ac, label %_ZNSt7__cxx114listIjSaIjEE6spliceESt20_List_const_iteratorIjERS2_S4_.exit.i

bb.ac:                                            ; preds = %.lr.ph.i366
  %i.gv = load ptr, ptr %2, align 8               ; 3 uses
  %i.gw = load ptr, ptr %i.gp, align 8            ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gp
  %i.gy = icmp eq ptr %i.gv, %i.gw
  %or.cond.i.i.i = select i1 %i.gx, i1 true, i1 %i.gy
  br i1 %or.cond.i.i.i, label %_ZNSt7__cxx114listIjSaIjEE6spliceESt20_List_const_iteratorIjERS2_S4_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull %i.gp, ptr noundef %i.gw) #23
  %i.gz = load i64, ptr %i.fg, align 8
  %i.ha = add i64 %i.gz, 1
  store i64 %i.ha, ptr %i.fg, align 8
  %i.hb = load i64, ptr %i.ey, align 8
  %i.hc = add i64 %i.hb, -1
  store i64 %i.hc, ptr %i.ey, align 8
  br label %_ZNSt7__cxx114listIjSaIjEE6spliceESt20_List_const_iteratorIjERS2_S4_.exit.i

_ZNSt7__cxx114listIjSaIjEE6spliceESt20_List_const_iteratorIjERS2_S4_.exit.i: ; preds = %bb.ad, %bb.ac, %.lr.ph.i366
  %.sroa.010.1.i = phi ptr [ %.sroa.010.013.i, %bb.ad ], [ %.sroa.010.013.i, %bb.ac ], [ %i.gp, %.lr.ph.i366 ] ; 2 uses
  %i.hd = load ptr, ptr %.sroa.010.1.i, align 8   ; 2 uses
  %.not.i367 = icmp eq ptr %i.hd, %4
  br i1 %.not.i367, label %._crit_edge.i, label %.lr.ph.i366, !llvm.loop !45

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx114listIjSaIjEE6spliceESt20_List_const_iteratorIjERS2_S4_.exit.i
  %.pre.i368 = load ptr, ptr %2, align 8          ; 2 uses
  %.not8.i.i.i = icmp eq ptr %.pre.i368, %2
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i ], [ %.pre.i368, %._crit_edge.i ] ; 2 uses
  %i.he = load ptr, ptr %.09.i.i.i, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #26
  %.not.i.i.i = icmp eq ptr %i.he, %2
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit.i:     ; preds = %.lr.ph.i.i.i, %._crit_edge.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.sroa.0514.0641.pre = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit

_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit:         ; preds = %bb.aa, %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit.i
  %.sroa.0514.0641 = phi ptr [ %i.gm, %bb.aa ], [ %.sroa.0514.0641.pre, %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit.i ] ; 2 uses
  %.not570642 = icmp eq ptr %.sroa.0514.0641, %4
  br i1 %.not570642, label %._crit_edge645, label %.lr.ph644

._crit_edge645:                                   ; preds = %bb.bc, %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit
  %i.hf = phi ptr [ %i.fn, %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit ], [ %i.lz, %bb.bc ] ; 3 uses
  %.lcssa633 = phi ptr [ %.promoted632, %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit ], [ %i.ma, %bb.bc ] ; 5 uses
  %.lcssa624 = phi ptr [ %.promoted623, %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit ], [ %i.mb, %bb.bc ] ; 2 uses
  store ptr %.lcssa624, ptr %i.es, align 8
  store ptr %.lcssa633, ptr %3, align 8
  %i.hg = add nuw i32 %.0302648, 1                ; 2 uses
  %i.hh = load i32, ptr %i.ep, align 8
  %i.hi = icmp ult i32 %i.hg, %i.hh
  br i1 %i.hi, label %bb.v, label %._crit_edge650, !llvm.loop !46

.loopexit585:                                     ; preds = %bb.y, %_ZN12_GLOBAL__N_114GetMeshVFormatEP6aiMesh.exit.i
  %lpad.loopexit587 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit379

.loopexit.split-lp586:                            ; preds = %_ZN12_GLOBAL__N_114GetVFormatListEPK7aiScenejRNSt7__cxx114listIjSaIjEEE.exit
  %lpad.loopexit.split-lp588 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit379

.lr.ph644:                                        ; preds = %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit, %bb.bc
  %i.hj = phi ptr [ %i.lz, %bb.bc ], [ %i.fn, %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit ] ; 5 uses
  %.sroa.0514.0643 = phi ptr [ %.sroa.0514.0, %bb.bc ], [ %.sroa.0514.0641, %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit ] ; 2 uses
  %i.hk = phi ptr [ %i.mb, %bb.bc ], [ %.promoted623, %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit ] ; 6 uses
  %i.hl = phi ptr [ %i.ma, %bb.bc ], [ %.promoted632, %_ZNSt7__cxx114listIjSaIjEE6uniqueEv.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 0, ptr %i.e, align 4
  %i.hm = load ptr, ptr %i.m, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0514.0643, i64 16 ; 7 uses
  %i.ho = load i32, ptr %i.hn, align 4
  invoke void @_ZNK6Assimp20PretransformVertices21CountVerticesAndFacesEPK7aiScenePK6aiNodejjPjS7_(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef nonnull %1, ptr noundef %i.hm, i32 noundef %.0302648, i32 noundef %i.ho, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
          to label %bb.ae unwind label %bb.aq

bb.ae:                                            ; preds = %.lr.ph644
  %i.hp = load i32, ptr %i.e, align 4             ; 3 uses
  %i.hq = icmp ne i32 %i.hp, 0
  %i.hr = load i32, ptr %i.d, align 4             ; 3 uses
  %i.hs = icmp ne i32 %i.hr, 0
  %or.cond = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %or.cond, label %bb.af, label %bb.bc

bb.af:                                            ; preds = %bb.ae
  %i.ht = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #24
          to label %bb.ag unwind label %.loopexit581 ; 9 uses

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store i32 0, ptr %i.hu, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i32 0, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 224
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 1272
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 1312
  store ptr null, ptr %i.hz, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.hw, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.hx, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.hy, i8 0, i64 36, i1 false)
  %.not.i.i369 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.i.i369, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ht, ptr %i.hj, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  store ptr %i.ia, ptr %i.fh, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ib = ptrtoint ptr %i.hj to i64
  %i.ic = ptrtoint ptr %i.hl to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 6 uses
  %i.ie = icmp eq i64 %i.id, 9223372036854775800
  br i1 %i.ie, label %bb.aj, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.hk, ptr %i.es, align 8
  store ptr %i.hl, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #25
          to label %.noexc371 unwind label %.loopexit.split-lp582

.noexc371:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.if = ashr exact i64 %i.id, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.if, i64 1)
  %i.ig = add nsw i64 %.sroa.speculated.i.i.i.i, %i.if ; 2 uses
  %i.ih = icmp ult i64 %i.ig, %i.if
  %i.ii = call i64 @llvm.umin.i64(i64 %i.ig, i64 1152921504606846975)
  %i.ij = select i1 %i.ih, i64 1152921504606846975, i64 %i.ii ; 3 uses
  %.not.i.i.i.i370 = icmp ne i64 %i.ij, 0
  call void @llvm.assume(i1 %.not.i.i.i.i370)
  %i.ik = shl nuw nsw i64 %i.ij, 3
  %i.il = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ik) #24
          to label %.noexc372 unwind label %.loopexit581 ; 4 uses

.noexc372:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 %i.id ; 2 uses
  store ptr %i.ht, ptr %i.im, align 8
  %i.in = icmp sgt i64 %i.id, 0
  br i1 %i.in, label %bb.ak, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc372
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.il, ptr align 8 %i.hl, i64 %i.id, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ak, %.noexc372
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.id) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.io, ptr %i.fh, align 8
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ij
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ah
  %i.iq = phi ptr [ %i.io, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ia, %bb.ah ] ; 2 uses
  %i.ir = phi ptr [ %i.il, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.hl, %bb.ah ] ; 5 uses
  %i.is = phi ptr [ %i.ip, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.hk, %bb.ah ] ; 5 uses
  %i.it = getelementptr inbounds i8, ptr %i.iq, i64 -8
  %i.iu = load ptr, ptr %i.it, align 8            ; 12 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i32 %i.hp, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store i32 %i.hr, ptr %i.iw, align 4
  %i.ix = zext i32 %i.hp to i64                   ; 5 uses
  %i.iy = shl nuw nsw i64 %i.ix, 4
  %i.iz = or disjoint i64 %i.iy, 8
  %i.ja = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.iz) #24
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.am:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit
  store i64 %i.ix, ptr %i.ja, align 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 4 uses
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %i.ix
  %i.jd = add nuw nsw i64 %i.ix, 1152921504606846975
  %i.je = and i64 %i.jd, 1152921504606846975
  %xtraiter = and i64 %i.ix, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.am, %.prol.preheader
  %i.jf = phi ptr [ %i.jh, %.prol.preheader ], [ %i.jb, %bb.am ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.am ]
  store i32 0, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr null, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.am
  %.unr = phi ptr [ %i.jb, %bb.am ], [ %i.jh, %.prol.preheader ]
  %i.ji = icmp samesign ult i64 %i.je, 7
  br i1 %i.ji, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.jj = phi ptr [ %i.jz, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr null, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store i32 0, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  store ptr null, ptr %i.jm, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  store i32 0, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  store ptr null, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  store i32 0, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  store ptr null, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  store i32 0, ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jj, i64 72
  store ptr null, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 80
  store i32 0, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jj, i64 88
  store ptr null, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jj, i64 96
  store i32 0, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jj, i64 104
  store ptr null, ptr %i.jw, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jj, i64 112
  store i32 0, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jj, i64 120
  store ptr null, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jj, i64 128 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.jc
  br i1 %i.ka, label %.unr-lcssa, label %.new

end_hunk_1
begin_hunk_2_@_ZN6Assimp20PretransformVertices7ExecuteEP7aiScene:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.kn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kd) #24
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.kn, i8 0, i64 %i.ki, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  store ptr %i.kn, ptr %i.ko, align 8
  %.pre832 = load i32, ptr %i.hn, align 4
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph644
  %i.kp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hk, ptr %i.es, align 8
  store ptr %i.hl, ptr %3, align 8
  br label %.loopexit.split-lp

.loopexit581:                                     ; preds = %bb.af, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit583 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hk, ptr %i.es, align 8
  store ptr %i.hl, ptr %3, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp582:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit577:                                     ; preds = %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.is, ptr %i.es, align 8
  store ptr %i.ir, ptr %3, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aw
  %lpad.loopexit578 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.is, ptr %i.es, align 8
  store ptr %i.ir, ptr %3, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.at, %bb.as, %bb.ao, %.unr-lcssa, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit
  %lpad.loopexit.split-lp579 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.is, ptr %i.es, align 8
  store ptr %i.ir, ptr %3, align 8
  br label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.ap, %bb.an
  %i.kq = phi i32 [ %.pre832, %bb.ap ], [ %i.kl, %bb.an ] ; 2 uses
  %i.kr = and i32 %i.kq, 4
  %.not332 = icmp eq i32 %i.kr, 0
  br i1 %.not332, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ks = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kd) #24
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.at:                                            ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ks, i8 0, i64 %i.ki, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  store ptr %i.ks, ptr %i.kt, align 8
  %i.ku = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kd) #24
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ku, i8 0, i64 %i.ki, i1 false)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  store ptr %i.ku, ptr %i.kv, align 8
  %.pre833 = load i32, ptr %i.hn, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %i.kw = phi i32 [ %.pre833, %bb.au ], [ %i.kq, %bb.ar ] ; 2 uses
  %i.kx = and i32 %i.kw, 256
  %.not333609 = icmp eq i32 %i.kx, 0
  br i1 %.not333609, label %._crit_edge613, label %.lr.ph612

.lr.ph612:                                        ; preds = %bb.av
  %i.ky = getelementptr inbounds nuw i8, ptr %i.iu, i64 112
  %i.kz = getelementptr inbounds nuw i8, ptr %i.iu, i64 176
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph612, %bb.ax
  %storemerge610 = phi i32 [ 0, %.lr.ph612 ], [ %i.lh, %bb.ax ] ; 3 uses
  %i.la = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kd) #24
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.la, i8 0, i64 %i.ki, i1 false)
  %i.lb = zext i32 %storemerge610 to i64          ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lb
  store ptr %i.la, ptr %i.lc, align 8
  %i.ld = load i32, ptr %i.hn, align 4
  %i.le = shl i32 65536, %storemerge610
  %i.lf = and i32 %i.ld, %i.le
  %.not340 = icmp eq i32 %i.lf, 0
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.lb
  %. = select i1 %.not340, i32 2, i32 3
  store i32 %., ptr %i.lg, align 4
  %i.lh = add i32 %storemerge610, 1               ; 2 uses
  %i.li = load i32, ptr %i.hn, align 4            ; 2 uses
  %i.lj = shl i32 256, %i.lh
  %i.lk = and i32 %i.li, %i.lj
  %.not333 = icmp eq i32 %i.lk, 0
  br i1 %.not333, label %._crit_edge613, label %bb.aw, !llvm.loop !48

._crit_edge613:                                   ; preds = %bb.ax, %bb.av
  %i.ll = phi i32 [ %i.kw, %bb.av ], [ %i.li, %bb.ax ] ; 2 uses
  %i.lm = and i32 %i.ll, 16777216
  %.not334617 = icmp eq i32 %i.lm, 0
  br i1 %.not334617, label %._crit_edge620, label %.lr.ph619

.lr.ph619:                                        ; preds = %._crit_edge613
  %i.ln = shl nuw nsw i64 %i.kc, 4                ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph619, %bb.az
  %i.lp = phi i32 [ 0, %.lr.ph619 ], [ %i.lr, %bb.az ] ; 2 uses
  %i.lq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ln) #24
          to label %bb.az unwind label %.loopexit577 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lq, i8 0, i64 %i.ln, i1 false)
  %i.lr = add i32 %i.lp, 1                        ; 2 uses
  %i.ls = zext i32 %i.lp to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.ls
  store ptr %i.lq, ptr %i.lt, align 8
  %i.lu = load i32, ptr %i.hn, align 4            ; 2 uses
  %i.lv = shl i32 16777216, %i.lr
  %i.lw = and i32 %i.lv, %i.lu
  %.not334 = icmp eq i32 %i.lw, 0
  br i1 %.not334, label %._crit_edge620, label %bb.ay, !llvm.loop !49

._crit_edge620:                                   ; preds = %bb.az, %._crit_edge613
  %.lcssa600 = phi i32 [ %i.ll, %._crit_edge613 ], [ %i.lu, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 0, ptr %i.f, align 8
  %i.lx = load ptr, ptr %i.m, align 8
  invoke void @_ZNK6Assimp20PretransformVertices11CollectDataEPK7aiScenePK6aiNodejjP6aiMeshPjS9_(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef nonnull %1, ptr noundef %i.lx, i32 noundef %.0302648, i32 noundef %.lcssa600, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.f, ptr noundef nonnull %i.fb)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %._crit_edge620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge620
  %i.ly = landingpad { ptr, i32 }
          cleanup
  store ptr %i.is, ptr %i.es, align 8
  store ptr %i.ir, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %.loopexit.split-lp

bb.bc:                                            ; preds = %bb.ba, %bb.ae
  %i.lz = phi ptr [ %i.iq, %bb.ba ], [ %i.hj, %bb.ae ] ; 2 uses
  %i.ma = phi ptr [ %i.ir, %bb.ba ], [ %i.hl, %bb.ae ] ; 2 uses
  %i.mb = phi ptr [ %i.is, %bb.ba ], [ %i.hk, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %.sroa.0514.0 = load ptr, ptr %.sroa.0514.0643, align 8 ; 2 uses
  %.not570 = icmp eq ptr %.sroa.0514.0, %4
  br i1 %.not570, label %._crit_edge645, label %.lr.ph644, !llvm.loop !50

.loopexit.split-lp:                               ; preds = %.loopexit577, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit581, %.loopexit.split-lp582, %bb.bb, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %i.kp, %bb.aq ], [ %i.ly, %bb.bb ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp582 ], [ %lpad.loopexit583, %.loopexit581 ], [ %lpad.loopexit, %.loopexit577 ], [ %lpad.loopexit578, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp579, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit379

._crit_edge650.thread:                            ; preds = %.noexc362, %._crit_edge650
  %i.mc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mc, ptr noundef nonnull @.str.7)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %._crit_edge650.thread
  invoke void @__cxa_throw(ptr nonnull %i.mc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.dq unwind label %bb.u

bb.be:                                            ; preds = %._crit_edge650.thread
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mc) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit379

._crit_edge657:                                   ; preds = %._crit_edge654, %.preheader576
  %i.me = ptrtoint ptr %i.hf to i64
  %i.mf = ptrtoint ptr %.lcssa633 to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = lshr exact i64 %i.mg, 3
  %i.mi = trunc i64 %i.mh to i32                  ; 2 uses
  store i32 %i.mi, ptr %i.i, align 8
  %.not721 = icmp eq i32 %i.mi, 0
  br i1 %.not721, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %.lr.ph660

.lr.ph660:                                        ; preds = %._crit_edge657
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bh

bb.bf:                                            ; preds = %.lr.ph656.a, %._crit_edge654
  %indvars.iv781 = phi i64 [ 0, %.lr.ph656.a ], [ %indvars.iv.next782, %._crit_edge654 ] ; 2 uses
  %i.mk = load ptr, ptr %i.fk, align 8
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %indvars.iv781
  %i.mm = load ptr, ptr %i.ml, align 8            ; 6 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 216
  store i32 0, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 224
  store ptr null, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 8
  %.not720 = icmp eq i32 %i.mq, 0
  br i1 %.not720, label %._crit_edge654, label %.lr.ph653

.lr.ph653:                                        ; preds = %bb.bf
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 208 ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph653, %bb.bg
  %indvars.iv778 = phi i64 [ 0, %.lr.ph653 ], [ %indvars.iv.next779, %bb.bg ] ; 3 uses
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %indvars.iv778
  store i32 0, ptr %i.mt, align 8
  %i.mu = load ptr, ptr %i.mr, align 8
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.mu, i64 %indvars.iv778
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store ptr null, ptr %i.mw, align 8
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1 ; 2 uses
  %i.mx = load i32, ptr %i.mp, align 8
  %i.my = zext i32 %i.mx to i64
  %i.mz = icmp samesign ult i64 %indvars.iv.next779, %i.my
  br i1 %i.mz, label %bb.bg, label %._crit_edge654, !llvm.loop !51

._crit_edge654:                                   ; preds = %bb.bg, %bb.bf
  call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.mm) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef 1320) #26
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %i.na = load i32, ptr %i.i, align 8
  %i.nb = zext i32 %i.na to i64
  %i.nc = icmp samesign ult i64 %indvars.iv.next782, %i.nb
  br i1 %i.nc, label %bb.bf, label %._crit_edge657, !llvm.loop !52

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.bh, %._crit_edge657
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fa) #26
  %i.nd = load ptr, ptr %4, align 8               ; 2 uses
  %.not8.i.i374 = icmp eq ptr %i.nd, %4
  br i1 %.not8.i.i374, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit, label %.lr.ph.i.i375

.lr.ph.i.i375:                                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %.lr.ph.i.i375
  %.09.i.i376 = phi ptr [ %i.ne, %.lr.ph.i.i375 ], [ %i.nd, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %i.ne = load ptr, ptr %.09.i.i376, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i376, i64 noundef 24) #26
  %.not.i.i377 = icmp eq ptr %i.ne, %4
  br i1 %.not.i.i377, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit, label %.lr.ph.i.i375, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit:       ; preds = %.lr.ph.i.i375, %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit575

bb.bh:                                            ; preds = %.lr.ph660, %bb.bh
  %indvars.iv784 = phi i64 [ 0, %.lr.ph660 ], [ %indvars.iv.next785, %bb.bh ] ; 3 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %.lcssa633, i64 %indvars.iv784
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = load ptr, ptr %i.mj, align 8
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv784
  store ptr %i.ng, ptr %i.ni, align 8
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 1 ; 2 uses
  %i.nj = load i32, ptr %i.i, align 8
  %i.nk = zext i32 %i.nj to i64
  %i.nl = icmp samesign ult i64 %indvars.iv.next785, %i.nk
  br i1 %i.nl, label %bb.bh, label %_ZNSt6vectorIjSaIjEED2Ev.exit, !llvm.loop !53

_ZNSt6vectorIjSaIjEED2Ev.exit379:                 ; preds = %.loopexit.split-lp, %bb.be, %bb.u, %.loopexit.split-lp586, %.loopexit585
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.md, %bb.be ], [ %i.fm, %bb.u ], [ %.pn.pn, %.loopexit.split-lp ], [ %lpad.loopexit587, %.loopexit585 ], [ %lpad.loopexit.split-lp588, %.loopexit.split-lp586 ] ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fa) #26
  %.pre834 = load ptr, ptr %4, align 8            ; 2 uses
  %.not8.i.i380 = icmp eq ptr %.pre834, %4
  br i1 %.not8.i.i380, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit384, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit379, %.lr.ph.i.i381
  %.09.i.i382 = phi ptr [ %i.nm, %.lr.ph.i.i381 ], [ %.pre834, %_ZNSt6vectorIjSaIjEED2Ev.exit379 ] ; 2 uses
  %i.nm = load ptr, ptr %.09.i.i382, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i382, i64 noundef 24) #26
  %.not.i.i383 = icmp eq ptr %i.nm, %4
  br i1 %.not.i.i383, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit384, label %.lr.ph.i.i381, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit384:    ; preds = %.lr.ph.i.i381, %_ZNSt6vectorIjSaIjEED2Ev.exit379.thread, %_ZNSt6vectorIjSaIjEED2Ev.exit379
  %.pn.pn.pn.pn.pn893 = phi { ptr, i32 } [ %i.fl, %_ZNSt6vectorIjSaIjEED2Ev.exit379.thread ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit379 ], [ %.pn.pn.pn.pn, %.lr.ph.i.i381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.do

.loopexit575:                                     ; preds = %bb.r, %_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit, %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit
  %i.nn = load i32, ptr %i.k, align 8             ; 2 uses
  %.not723 = icmp eq i32 %i.nn, 0
  br i1 %.not723, label %._crit_edge666, label %.lr.ph665

.lr.ph665:                                        ; preds = %.loopexit575
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.bi

._crit_edge666:                                   ; preds = %bb.bk, %.loopexit575
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8            ; 2 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %bb.bm, label %bb.bl

bb.bi:                                            ; preds = %.lr.ph665, %bb.bk
  %i.ns = phi i32 [ %i.nn, %.lr.ph665 ], [ %i.nx, %bb.bk ]
  %indvars.iv790 = phi i64 [ 0, %.lr.ph665 ], [ %indvars.iv.next791, %bb.bk ] ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv790
  %i.nv = load ptr, ptr %i.nu, align 8            ; 3 uses
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN11aiAnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(1096) dereferenceable(1096) %i.nv) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.nv, i64 noundef 1096) #26
  %.pre837 = load i32, ptr %i.k, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.nx = phi i32 [ %i.ns, %bb.bi ], [ %.pre837, %bb.bj ] ; 2 uses
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 1 ; 2 uses
  %i.ny = zext i32 %i.nx to i64
  %i.nz = icmp samesign ult i64 %indvars.iv.next791, %i.ny
  br i1 %i.nz, label %bb.bi, label %._crit_edge666, !llvm.loop !54

bb.bl:                                            ; preds = %._crit_edge666
  call void @_ZdaPv(ptr noundef nonnull %i.nq) #26
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge666
  store ptr null, ptr %i.np, align 8
  store i32 0, ptr %i.k, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 7 uses
  %i.ob = load i32, ptr %i.oa, align 8
  %.not724 = icmp eq i32 %i.ob, 0
  br i1 %.not724, label %.preheader574, label %.lr.ph669

.lr.ph669:                                        ; preds = %bb.bm
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.bn

.preheader574:                                    ; preds = %_ZN6aiNode8FindNodeERK8aiString.exit, %bb.bm
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.oe = load i32, ptr %i.od, align 8
  %.not725 = icmp eq i32 %i.oe, 0
  br i1 %.not725, label %._crit_edge672, label %.lr.ph671.a

.lr.ph671.a:                                      ; preds = %.preheader574
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.bp

bb.bn:                                            ; preds = %.lr.ph669, %_ZN6aiNode8FindNodeERK8aiString.exit
  %indvars.iv793 = phi i64 [ 0, %.lr.ph669 ], [ %indvars.iv.next794, %_ZN6aiNode8FindNodeERK8aiString.exit ] ; 2 uses
  %i.og = load ptr, ptr %i.oc, align 8
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %indvars.iv793
  %i.oi = load ptr, ptr %i.oh, align 8            ; 10 uses
  %i.oj = load ptr, ptr %i.m, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.ol = invoke noundef ptr @_ZN6aiNode8FindNodeEPKc(ptr noundef nonnull align 8 dereferenceable(1144) %i.oj, ptr noundef nonnull %i.ok)
          to label %_ZN6aiNode8FindNodeERK8aiString.exit unwind label %bb.bo ; 12 uses

_ZN6aiNode8FindNodeERK8aiString.exit:             ; preds = %bb.bn
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 1028 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 1028 ; 2 uses
  %i.oo = load float, ptr %i.om, align 4
  %i.op = load float, ptr %i.on, align 4          ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 1032 ; 3 uses
  %i.or = load float, ptr %i.oq, align 4
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 1032
  %i.ot = load float, ptr %i.os, align 4          ; 3 uses
  %i.ou = fmul float %i.or, %i.ot
  %i.ov = call float @llvm.fmuladd.f32(float %i.oo, float %i.op, float %i.ou)
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ol, i64 1036 ; 3 uses
  %i.ox = load float, ptr %i.ow, align 4
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oi, i64 1036 ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4          ; 3 uses
  %i.pa = call float @llvm.fmuladd.f32(float %i.ox, float %i.oz, float %i.ov)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ol, i64 1040 ; 2 uses
  %i.pc = load float, ptr %i.pb, align 4
  %i.pd = fadd float %i.pa, %i.pc
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ol, i64 1044 ; 3 uses
  %i.pf = load float, ptr %i.pe, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ol, i64 1048 ; 3 uses
  %i.ph = load float, ptr %i.pg, align 4
  %i.pi = fmul float %i.ot, %i.ph
  %i.pj = call float @llvm.fmuladd.f32(float %i.pf, float %i.op, float %i.pi)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ol, i64 1052 ; 3 uses
  %i.pl = load float, ptr %i.pk, align 4
  %i.pm = call float @llvm.fmuladd.f32(float %i.pl, float %i.oz, float %i.pj)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ol, i64 1056 ; 2 uses
  %i.po = load float, ptr %i.pn, align 4
  %i.pp = fadd float %i.po, %i.pm
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.pp, i64 1
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ol, i64 1060 ; 3 uses
  %i.pr = load float, ptr %i.pq, align 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ol, i64 1064 ; 3 uses
  %i.pt = load float, ptr %i.ps, align 4
  %i.pu = fmul float %i.ot, %i.pt
  %i.pv = call float @llvm.fmuladd.f32(float %i.pr, float %i.op, float %i.pu)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ol, i64 1068 ; 3 uses
  %i.px = load float, ptr %i.pw, align 4
  %i.py = call float @llvm.fmuladd.f32(float %i.px, float %i.oz, float %i.pv)
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ol, i64 1072 ; 2 uses
  %i.qa = load float, ptr %i.pz, align 4
  %i.qb = fadd float %i.qa, %i.py
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.on, align 4
  store float %i.qb, ptr %i.oy, align 4
  %i.qc = getelementptr inbounds nuw i8, ptr %i.oi, i64 1052 ; 2 uses
  %i.qd = load float, ptr %i.om, align 4
  %i.qe = load float, ptr %i.qc, align 4          ; 3 uses
  %i.qf = load float, ptr %i.oq, align 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.oi, i64 1056
  %i.qh = load float, ptr %i.qg, align 4          ; 3 uses
  %i.qi = fmul float %i.qf, %i.qh
  %i.qj = call float @llvm.fmuladd.f32(float %i.qd, float %i.qe, float %i.qi)
  %i.qk = load float, ptr %i.ow, align 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.oi, i64 1060 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4          ; 3 uses
  %i.qn = call float @llvm.fmuladd.f32(float %i.qk, float %i.qm, float %i.qj)
  %i.qo = load float, ptr %i.pb, align 4
  %i.qp = fadd float %i.qn, %i.qo
  %.sroa.0.0.vec.insert.i386 = insertelement <2 x float> poison, float %i.qp, i64 0
  %i.qq = load float, ptr %i.pe, align 4
  %i.qr = load float, ptr %i.pg, align 4
  %i.qs = fmul float %i.qh, %i.qr
  %i.qt = call float @llvm.fmuladd.f32(float %i.qq, float %i.qe, float %i.qs)
  %i.qu = load float, ptr %i.pk, align 4
  %i.qv = call float @llvm.fmuladd.f32(float %i.qu, float %i.qm, float %i.qt)
  %i.qw = load float, ptr %i.pn, align 4
  %i.qx = fadd float %i.qw, %i.qv
  %.sroa.0.4.vec.insert.i387 = insertelement <2 x float> %.sroa.0.0.vec.insert.i386, float %i.qx, i64 1
  %i.qy = load float, ptr %i.pq, align 4
  %i.qz = load float, ptr %i.ps, align 4
  %i.ra = fmul float %i.qh, %i.qz
  %i.rb = call float @llvm.fmuladd.f32(float %i.qy, float %i.qe, float %i.ra)
  %i.rc = load float, ptr %i.pw, align 4
  %i.rd = call float @llvm.fmuladd.f32(float %i.rc, float %i.qm, float %i.rb)
  %i.re = load float, ptr %i.pz, align 4
  %i.rf = fadd float %i.re, %i.rd
  store <2 x float> %.sroa.0.4.vec.insert.i387, ptr %i.qc, align 4
  store float %i.rf, ptr %i.ql, align 4
  %i.rg = load float, ptr %i.om, align 4
  %i.rh = load float, ptr %i.oq, align 4
  %i.ri = load float, ptr %i.ow, align 4
  %i.rj = load float, ptr %i.pe, align 4
  %i.rk = load float, ptr %i.pg, align 4
  %i.rl = load float, ptr %i.pk, align 4
  %i.rm = load float, ptr %i.pq, align 4
  %i.rn = load float, ptr %i.ps, align 4
  %i.ro = load float, ptr %i.pw, align 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.oi, i64 1040 ; 2 uses
  %i.rq = load float, ptr %i.rp, align 4          ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.oi, i64 1044
  %i.rs = load float, ptr %i.rr, align 4          ; 3 uses
  %i.rt = fmul float %i.rh, %i.rs
  %i.ru = call float @llvm.fmuladd.f32(float %i.rg, float %i.rq, float %i.rt)
  %i.rv = getelementptr inbounds nuw i8, ptr %i.oi, i64 1048 ; 2 uses
  %i.rw = load float, ptr %i.rv, align 4          ; 3 uses
  %i.rx = call float @llvm.fmuladd.f32(float %i.ri, float %i.rw, float %i.ru)
  %.sroa.0.0.vec.insert.i390 = insertelement <2 x float> poison, float %i.rx, i64 0
  %i.ry = fmul float %i.rk, %i.rs
  %i.rz = call float @llvm.fmuladd.f32(float %i.rj, float %i.rq, float %i.ry)
  %i.sa = call float @llvm.fmuladd.f32(float %i.rl, float %i.rw, float %i.rz)
  %.sroa.0.4.vec.insert.i391 = insertelement <2 x float> %.sroa.0.0.vec.insert.i390, float %i.sa, i64 1
  %i.sb = fmul float %i.rn, %i.rs
  %i.sc = call float @llvm.fmuladd.f32(float %i.rm, float %i.rq, float %i.sb)
  %i.sd = call float @llvm.fmuladd.f32(float %i.ro, float %i.rw, float %i.sc)
  store <2 x float> %.sroa.0.4.vec.insert.i391, ptr %i.rp, align 4
  store float %i.sd, ptr %i.rv, align 4
end_hunk_2
begin_hunk_3_@_ZN6Assimp20PretransformVertices7ExecuteEP7aiScene:bb.a
          to label %bb.bs unwind label %bb.by     ; 10 uses

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.wg)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  %i.wh = load ptr, ptr %i.m, align 8             ; 5 uses
  %i.wi = icmp eq ptr %i.wg, %i.wh
  br i1 %i.wi, label %bb.bu, label %_ZN8aiStringaSERKS_.exit.thread

_ZN8aiStringaSERKS_.exit.thread:                  ; preds = %bb.bt
  %i.wj = load i32, ptr %i.wh, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.wj, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.wg, align 4
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wg, i64 4 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  %i.wm = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wk, ptr nonnull align 4 %i.wl, i64 %i.wm, i1 false)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.wm
  store i8 0, ptr %i.wn, align 1
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN8aiStringaSERKS_.exit.thread, %bb.bt
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.wh) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.wh, i64 noundef 1144) #26
  store ptr %i.wg, ptr %i.m, align 8
  %i.wo = load i32, ptr %i.i, align 8             ; 3 uses
  %i.wp = icmp eq i32 %i.wo, 1
  %.pre838 = load i32, ptr %i.od, align 8         ; 3 uses
  br i1 %i.wp, label %bb.bv, label %._crit_edge839

._crit_edge839:                                   ; preds = %bb.bu
  %.pre840 = load i32, ptr %i.oa, align 8
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %.not341 = icmp eq i32 %.pre838, 0
  %.pre841 = load i32, ptr %i.oa, align 8         ; 2 uses
  %.not342 = icmp eq i32 %.pre841, 0
  %or.cond934 = select i1 %.not341, i1 %.not342, i1 false
  br i1 %or.cond934, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wg, i64 1120
  store i32 1, ptr %i.wq, align 8
  %i.wr = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #24
          to label %bb.bx unwind label %bb.by     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wg, i64 1128
  store ptr %i.wr, ptr %i.ws, align 8
  store i32 0, ptr %i.wr, align 4
  br label %.loopexit

bb.by:                                            ; preds = %bb.bw, %bb.br
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.bz:                                            ; preds = %bb.bs
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef 1144) #26
  br label %bb.do

bb.ca:                                            ; preds = %._crit_edge839, %bb.bv
  %i.wv = phi i32 [ %.pre840, %._crit_edge839 ], [ %.pre841, %bb.bv ]
  %i.ww = add i32 %.pre838, %i.wo
  %i.wx = add i32 %i.ww, %i.wv                    ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wg, i64 1104
  store i32 %i.wx, ptr %i.wy, align 8
  %i.wz = zext i32 %i.wx to i64
  %i.xa = shl nuw nsw i64 %i.wz, 3
  %i.xb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xa) #24
          to label %bb.cb unwind label %bb.cc     ; 3 uses

bb.cb:                                            ; preds = %bb.ca
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wg, i64 1112
  store ptr %i.xb, ptr %i.xc, align 8
  %.not726 = icmp eq i32 %i.wo, 0
  br i1 %.not726, label %.preheader573, label %.lr.ph676

.lr.ph676:                                        ; preds = %bb.cb
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.cd

.preheader573.loopexit:                           ; preds = %bb.ch
  %.pre842 = load i32, ptr %i.od, align 8
  br label %.preheader573

.preheader573:                                    ; preds = %.preheader573.loopexit, %bb.cb
  %i.xe = phi i32 [ %.pre838, %bb.cb ], [ %.pre842, %.preheader573.loopexit ]
  %.0310.lcssa = phi ptr [ %i.xb, %bb.cb ], [ %i.xy, %.preheader573.loopexit ] ; 2 uses
  %.not727 = icmp eq i32 %i.xe, 0
  br i1 %.not727, label %.preheader572, label %.lr.ph680

.lr.ph680:                                        ; preds = %.preheader573
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.ck

bb.cc:                                            ; preds = %bb.ca
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cd:                                            ; preds = %.lr.ph676, %bb.ch
  %indvars.iv799 = phi i64 [ 0, %.lr.ph676 ], [ %indvars.iv.next800, %bb.ch ] ; 3 uses
  %.0310674 = phi ptr [ %i.xb, %.lr.ph676 ], [ %i.xy, %bb.ch ] ; 2 uses
  %i.xh = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.ce unwind label %bb.ci     ; 9 uses

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.xh)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.xh, ptr %.0310674, align 8
  %i.xi = load ptr, ptr %i.m, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 1096
  store ptr %i.xi, ptr %i.xj, align 8
  %i.xk = load ptr, ptr %i.xd, align 8
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %indvars.iv799
  %i.xm = load ptr, ptr %i.xl, align 8            ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 236 ; 2 uses
  %i.xo = icmp eq ptr %i.xh, %i.xn
  br i1 %i.xo, label %_ZN8aiStringaSERKS_.exit409, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.xp = load i32, ptr %i.xn, align 4
  %spec.select.i408 = call i32 @llvm.umin.i32(i32 %i.xp, i32 1023) ; 2 uses
  store i32 %spec.select.i408, ptr %i.xh, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xh, i64 4 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xm, i64 240
  %i.xs = zext nneg i32 %spec.select.i408 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.xq, ptr nonnull align 4 %i.xr, i64 %i.xs, i1 false)
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xs
  store i8 0, ptr %i.xt, align 1
  br label %_ZN8aiStringaSERKS_.exit409

_ZN8aiStringaSERKS_.exit409:                      ; preds = %bb.cf, %bb.cg
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xh, i64 1120
  store i32 1, ptr %i.xu, align 8
  %i.xv = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #24
          to label %bb.ch unwind label %bb.ci     ; 2 uses

bb.ch:                                            ; preds = %_ZN8aiStringaSERKS_.exit409
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xh, i64 1128
  store ptr %i.xv, ptr %i.xw, align 8
  %i.xx = trunc nuw i64 %indvars.iv799 to i32
  store i32 %i.xx, ptr %i.xv, align 4
  %indvars.iv.next800 = add nuw nsw i64 %indvars.iv799, 1 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.0310674, i64 8 ; 2 uses
  %i.xz = load i32, ptr %i.i, align 8
  %i.ya = zext i32 %i.xz to i64
  %i.yb = icmp samesign ult i64 %indvars.iv.next800, %i.ya
  br i1 %i.yb, label %bb.cd, label %.preheader573.loopexit, !llvm.loop !57

bb.ci:                                            ; preds = %_ZN8aiStringaSERKS_.exit409, %bb.cd
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cj:                                            ; preds = %bb.ce
  %i.yd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.xh, i64 noundef 1144) #26
  br label %bb.do

.preheader572:                                    ; preds = %_ZN8aiStringaSERKS_.exit411, %.preheader573
  %.1311.lcssa = phi ptr [ %.0310.lcssa, %.preheader573 ], [ %i.yt, %_ZN8aiStringaSERKS_.exit411 ]
  %i.ye = load i32, ptr %i.oa, align 8
  %.not728 = icmp eq i32 %i.ye, 0
  br i1 %.not728, label %.loopexit, label %.lr.ph684

.lr.ph684:                                        ; preds = %.preheader572
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.cq

bb.ck:                                            ; preds = %.lr.ph680, %_ZN8aiStringaSERKS_.exit411
  %indvars.iv802 = phi i64 [ 0, %.lr.ph680 ], [ %indvars.iv.next803, %_ZN8aiStringaSERKS_.exit411 ] ; 3 uses
  %.1311679 = phi ptr [ %.0310.lcssa, %.lr.ph680 ], [ %i.yt, %_ZN8aiStringaSERKS_.exit411 ] ; 2 uses
  %i.yg = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.cl unwind label %bb.co     ; 7 uses

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.yg)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  store ptr %i.yg, ptr %.1311679, align 8
  %i.yh = load ptr, ptr %i.m, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 1096
  store ptr %i.yh, ptr %i.yi, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 4 ; 2 uses
  %i.yk = trunc nuw i64 %indvars.iv802 to i32
  %i.yl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.yj, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.yk) #23 ; 2 uses
  store i32 %i.yl, ptr %i.yg, align 8
  %i.ym = load ptr, ptr %i.xf, align 8
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %indvars.iv802
  %i.yo = load ptr, ptr %i.yn, align 8            ; 3 uses
  %i.yp = icmp eq ptr %i.yo, %i.yg
  br i1 %i.yp, label %_ZN8aiStringaSERKS_.exit411, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %spec.select.i410 = call i32 @llvm.umin.i32(i32 %i.yl, i32 1023) ; 2 uses
  store i32 %spec.select.i410, ptr %i.yo, align 4
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 4 ; 2 uses
  %i.yr = zext nneg i32 %spec.select.i410 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yq, ptr nonnull align 4 %i.yj, i64 %i.yr, i1 false)
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yr
  store i8 0, ptr %i.ys, align 1
  br label %_ZN8aiStringaSERKS_.exit411

_ZN8aiStringaSERKS_.exit411:                      ; preds = %bb.cm, %bb.cn
  %indvars.iv.next803 = add nuw nsw i64 %indvars.iv802, 1 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.1311679, i64 8 ; 2 uses
  %i.yu = load i32, ptr %i.od, align 8
  %i.yv = zext i32 %i.yu to i64
  %i.yw = icmp samesign ult i64 %indvars.iv.next803, %i.yv
  br i1 %i.yw, label %bb.ck, label %.preheader572, !llvm.loop !58

bb.co:                                            ; preds = %bb.ck
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cp:                                            ; preds = %bb.cl
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yg, i64 noundef 1144) #26
  br label %bb.do

bb.cq:                                            ; preds = %.lr.ph684, %_ZN8aiStringaSERKS_.exit413
  %indvars.iv805 = phi i64 [ 0, %.lr.ph684 ], [ %indvars.iv.next806, %_ZN8aiStringaSERKS_.exit413 ] ; 3 uses
  %.2312683 = phi ptr [ %.1311.lcssa, %.lr.ph684 ], [ %i.zm, %_ZN8aiStringaSERKS_.exit413 ] ; 2 uses
  %i.yz = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.cr unwind label %bb.cu     ; 7 uses

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.yz)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.yz, ptr %.2312683, align 8
  %i.za = load ptr, ptr %i.m, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 1096
  store ptr %i.za, ptr %i.zb, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 4 ; 2 uses
  %i.zd = trunc nuw i64 %indvars.iv805 to i32
  %i.ze = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.zc, i64 noundef 1024, ptr noundef nonnull @.str.9, i32 noundef %i.zd) #23 ; 2 uses
  store i32 %i.ze, ptr %i.yz, align 8
  %i.zf = load ptr, ptr %i.yf, align 8
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %indvars.iv805
  %i.zh = load ptr, ptr %i.zg, align 8            ; 3 uses
  %i.zi = icmp eq ptr %i.zh, %i.yz
  br i1 %i.zi, label %_ZN8aiStringaSERKS_.exit413, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %spec.select.i412 = call i32 @llvm.umin.i32(i32 %i.ze, i32 1023) ; 2 uses
  store i32 %spec.select.i412, ptr %i.zh, align 4
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zh, i64 4 ; 2 uses
  %i.zk = zext nneg i32 %spec.select.i412 to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zj, ptr nonnull align 4 %i.zc, i64 %i.zk, i1 false)
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zk
  store i8 0, ptr %i.zl, align 1
  br label %_ZN8aiStringaSERKS_.exit413

_ZN8aiStringaSERKS_.exit413:                      ; preds = %bb.cs, %bb.ct
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.2312683, i64 8
  %i.zn = load i32, ptr %i.oa, align 8
  %i.zo = zext i32 %i.zn to i64
  %i.zp = icmp samesign ult i64 %indvars.iv.next806, %i.zo
  br i1 %i.zp, label %bb.cq, label %.loopexit, !llvm.loop !59

bb.cu:                                            ; preds = %bb.cq
  %i.zq = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cv:                                            ; preds = %bb.cr
  %i.zr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yz, i64 noundef 1144) #26
  br label %bb.do

bb.cw:                                            ; preds = %._crit_edge672
  %i.zs = load ptr, ptr %i.m, align 8
  call void @_ZNK6Assimp20PretransformVertices21MakeIdentityTransformEP6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.zs)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8aiStringaSERKS_.exit413, %.preheader572, %bb.cw, %bb.bx
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.zu = load i8, ptr %i.zt, align 1, !range !38, !noundef !39
  %i.zv = trunc nuw i8 %i.zu to i1
  br i1 %i.zv, label %.preheader, label %._crit_edge715

.preheader:                                       ; preds = %.loopexit
  %i.zw = load i32, ptr %i.i, align 8             ; 3 uses
  %.not729 = icmp eq i32 %i.zw, 0                 ; 2 uses
  br i1 %.not729, label %._crit_edge715, label %.lr.ph702

.lr.ph702:                                        ; preds = %.preheader
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zy = load ptr, ptr %i.zx, align 8
  %wide.trip.count814 = zext i32 %i.zw to i64
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph702, %._crit_edge692
  %indvars.iv811 = phi i64 [ 0, %.lr.ph702 ], [ %indvars.iv.next812, %._crit_edge692 ] ; 2 uses
  %.sroa.14.0700 = phi float [ 1.000000e+10, %.lr.ph702 ], [ %.sroa.14.1.lcssa, %._crit_edge692 ] ; 2 uses
  %.sroa.0459.0699 = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph702 ], [ %.sroa.0459.1.lcssa, %._crit_edge692 ] ; 2 uses
  %.sroa.12.0698 = phi float [ -1.000000e+10, %.lr.ph702 ], [ %.sroa.12.1.lcssa, %._crit_edge692 ] ; 2 uses
  %.sroa.0471.0697 = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph702 ], [ %.sroa.0471.1.lcssa, %._crit_edge692 ] ; 2 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zy, i64 %indvars.iv811
  %i.aaa = load ptr, ptr %i.zz, align 8           ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %i.aac = load i32, ptr %i.aab, align 4          ; 2 uses
  %.not730 = icmp eq i32 %i.aac, 0
  br i1 %.not730, label %._crit_edge692, label %.lr.ph691

.lr.ph691:                                        ; preds = %bb.cx
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aae = load ptr, ptr %i.aad, align 8
  %wide.trip.count = zext i32 %i.aac to i64
  br label %bb.cy

._crit_edge692:                                   ; preds = %bb.cy, %bb.cx
  %.sroa.0471.1.lcssa = phi <2 x float> [ %.sroa.0471.0697, %bb.cx ], [ %i.aam, %bb.cy ] ; 3 uses
  %.sroa.12.1.lcssa = phi float [ %.sroa.12.0698, %bb.cx ], [ %i.aaq, %bb.cy ] ; 2 uses
  %.sroa.0459.1.lcssa = phi <2 x float> [ %.sroa.0459.0699, %bb.cx ], [ %i.aao, %bb.cy ] ; 2 uses
  %.sroa.14.1.lcssa = phi float [ %.sroa.14.0700, %bb.cx ], [ %i.aaj, %bb.cy ] ; 3 uses
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond815.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count814
  br i1 %exitcond815.not, label %._crit_edge703, label %bb.cx, !llvm.loop !60

bb.cy:                                            ; preds = %.lr.ph691, %bb.cy
  %indvars.iv808 = phi i64 [ 0, %.lr.ph691 ], [ %indvars.iv.next809, %bb.cy ] ; 2 uses
  %.sroa.14.1688 = phi float [ %.sroa.14.0700, %.lr.ph691 ], [ %i.aaj, %bb.cy ] ; 2 uses
  %.sroa.0459.1687 = phi <2 x float> [ %.sroa.0459.0699, %.lr.ph691 ], [ %i.aao, %bb.cy ] ; 2 uses
  %.sroa.12.1686 = phi float [ %.sroa.12.0698, %.lr.ph691 ], [ %i.aaq, %bb.cy ] ; 2 uses
  %.sroa.0471.1685 = phi <2 x float> [ %.sroa.0471.0697, %.lr.ph691 ], [ %i.aam, %bb.cy ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw [12 x i8], ptr %i.aae, i64 %indvars.iv808 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aah = load float, ptr %i.aag, align 4        ; 4 uses
  %i.aai = fcmp olt float %.sroa.14.1688, %i.aah
  %i.aaj = select i1 %i.aai, float %.sroa.14.1688, float %i.aah ; 2 uses
  %i.aak = load <2 x float>, ptr %i.aaf, align 4  ; 4 uses
  %i.aal = fcmp olt <2 x float> %.sroa.0471.1685, %i.aak
  %i.aam = select <2 x i1> %i.aal, <2 x float> %.sroa.0471.1685, <2 x float> %i.aak ; 2 uses
  %i.aan = fcmp olt <2 x float> %i.aak, %.sroa.0459.1687
  %i.aao = select <2 x i1> %i.aan, <2 x float> %.sroa.0459.1687, <2 x float> %i.aak ; 2 uses
  %i.aap = fcmp olt float %i.aah, %.sroa.12.1686
  %i.aaq = select i1 %i.aap, float %.sroa.12.1686, float %i.aah ; 2 uses
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next809, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge692, label %bb.cy, !llvm.loop !61

._crit_edge703:                                   ; preds = %._crit_edge692
  %i.aar = fsub float %.sroa.12.1.lcssa, %.sroa.14.1.lcssa ; 3 uses
  %i.aas = fsub <2 x float> %.sroa.0459.1.lcssa, %.sroa.0471.1.lcssa ; 3 uses
  %i.aat = fmul <2 x float> %i.aas, splat (float 5.000000e-01)
  %i.aau = fmul float %i.aar, 5.000000e-01
  %i.aav = fadd <2 x float> %.sroa.0471.1.lcssa, %i.aat
  %i.aaw = fadd float %.sroa.14.1.lcssa, %i.aau
  br i1 %.not729, label %._crit_edge715, label %.lr.ph714

.lr.ph714:                                        ; preds = %._crit_edge703
  %i.aax = extractelement <2 x float> %i.aas, i64 1 ; 2 uses
  %i.aay = fcmp olt float %i.aax, %i.aar
  %i.aaz = select i1 %i.aay, float %i.aar, float %i.aax ; 2 uses
  %i.aba = extractelement <2 x float> %i.aas, i64 0 ; 2 uses
  %i.abb = fcmp olt float %i.aba, %i.aaz
  %i.abc = select i1 %i.abb, float %i.aaz, float %i.aba
  %i.abd = fmul float %i.abc, 5.000000e-01
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abf = fdiv float 1.000000e+00, %i.abd        ; 2 uses
  %i.abg = insertelement <2 x float> poison, float %i.abf, i64 0
  %i.abh = shufflevector <2 x float> %i.abg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph714, %._crit_edge711
  %i.abi = phi i32 [ %i.zw, %.lr.ph714 ], [ %i.abp, %._crit_edge711 ]
  %indvars.iv819 = phi i64 [ 0, %.lr.ph714 ], [ %indvars.iv.next820, %._crit_edge711 ] ; 2 uses
  %i.abj = load ptr, ptr %i.abe, align 8
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.abj, i64 %indvars.iv819
  %i.abl = load ptr, ptr %i.abk, align 8          ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 4 ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 4
  %.not732 = icmp eq i32 %i.abn, 0
  br i1 %.not732, label %._crit_edge711, label %.lr.ph710

.lr.ph710:                                        ; preds = %bb.cz
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  br label %bb.da

._crit_edge711.loopexit:                          ; preds = %bb.da
  %.pre843 = load i32, ptr %i.i, align 8
  br label %._crit_edge711

._crit_edge711:                                   ; preds = %._crit_edge711.loopexit, %bb.cz
  %i.abp = phi i32 [ %.pre843, %._crit_edge711.loopexit ], [ %i.abi, %bb.cz ] ; 2 uses
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1 ; 2 uses
  %i.abq = zext i32 %i.abp to i64
  %i.abr = icmp samesign ult i64 %indvars.iv.next820, %i.abq
  br i1 %i.abr, label %bb.cz, label %._crit_edge715, !llvm.loop !62

bb.da:                                            ; preds = %.lr.ph710, %bb.da
  %indvars.iv816 = phi i64 [ 0, %.lr.ph710 ], [ %indvars.iv.next817, %bb.da ] ; 2 uses
  %i.abs = load ptr, ptr %i.abo, align 8
  %i.abt = getelementptr inbounds nuw [12 x i8], ptr %i.abs, i64 %indvars.iv816 ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 8 ; 2 uses
  %i.abv = load float, ptr %i.abu, align 4
  %i.abw = fsub float %i.abv, %i.aaw
  %i.abx = load <2 x float>, ptr %i.abt, align 4
  %i.aby = fsub <2 x float> %i.abx, %i.aav
  %i.abz = fmul <2 x float> %i.abh, %i.aby
  %i.aca = fmul float %i.abf, %i.abw
  store <2 x float> %i.abz, ptr %i.abt, align 4
  store float %i.aca, ptr %i.abu, align 4
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 1 ; 2 uses
  %i.acb = load i32, ptr %i.abm, align 4
  %i.acc = zext i32 %i.acb to i64
  %i.acd = icmp samesign ult i64 %indvars.iv.next817, %i.acc
  br i1 %i.acd, label %bb.da, label %._crit_edge711.loopexit, !llvm.loop !63

._crit_edge715:                                   ; preds = %.preheader, %._crit_edge711, %._crit_edge703, %.loopexit
  %i.ace = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.db unwind label %bb.q

bb.db:                                            ; preds = %._crit_edge715
  br i1 %i.ace, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.acf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dd unwind label %bb.q

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.acf, ptr noundef nonnull @.str.10)
          to label %bb.de unwind label %bb.q

bb.de:                                            ; preds = %bb.dd
  %i.acg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.df unwind label %bb.q

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.ach = load ptr, ptr %i.m, align 8
  %i.aci = call noundef i32 @_ZNK6Assimp20PretransformVertices10CountNodesEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.ach)
  store i32 %i.aci, ptr %i.g, align 4
  invoke void @_ZN6Assimp6Logger4infoIJRA9_KcRKjRA12_S2_S6_RA22_S2_jRA15_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.acg, ptr noundef nonnull align 1 dereferenceable(9) @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.12, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(15) @.str.14)
          to label %bb.dg unwind label %bb.dk

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.acj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dh unwind label %bb.q

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN6Assimp6Logger4infoIJRA6_KcRjRA13_S2_S5_RA10_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.acj, ptr noundef nonnull align 1 dereferenceable(6) @.str.15, ptr noundef nonnull align 4 dereferenceable(4) %i.od, ptr noundef nonnull align 1 dereferenceable(13) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.oa, ptr noundef nonnull align 1 dereferenceable(10) @.str.17)
          to label %bb.di unwind label %bb.q

bb.di:                                            ; preds = %bb.dh
  %i.ack = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dj unwind label %bb.q

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN6Assimp6Logger4infoIJRA7_KcRKjRA42_S2_RjRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ack, ptr noundef nonnull align 1 dereferenceable(7) @.str.18, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(42) @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 1 dereferenceable(2) @.str.20)
end_hunk_3
begin_hunk_4_@_ZN6Assimp6Logger4infoIJRA6_KcRjRA13_S2_S5_RA10_S2_EEEvDpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #23
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA6_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %6, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4infoIJRA7_KcRKjRA42_S2_RjRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(7) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(42) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %1) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef nonnull align 1 dereferenceable(7) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA7_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7) #23
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA7_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA42_KcRjRA2_S2_ERKjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSD_SE_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(42) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(2) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA7_cEERKT_.exit
  %i.d = load ptr, ptr %6, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %6, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %7, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %7, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #23
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA7_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %6, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp20PretransformVerticesD0Ev(ptr noundef nonnull align 8 dereferenceable(93) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #26
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #16

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #23
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #23
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #23
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !82
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !82
  store i8 0, ptr %i.a, align 8, !alias.scope !82
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !82 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !82 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !82 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !82 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
end_hunk_4
begin_hunk_5_@_ZN6Assimp6Logger13formatMessageIJRA42_KcRjRA2_S2_ERKjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSD_SE_EEOT0_DpOT_:bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #23
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRjRA2_KcERA42_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSB_SC_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(42) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %3) #23
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(42) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA2_KcERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(2) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %6, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #23
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #23
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA2_KcERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.b) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %5, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #23
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #23
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #23
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !125
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !125
  store i8 0, ptr %i.c, align 8, !alias.scope !125
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !125 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !125 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !125 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !125 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !125
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #23
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #23
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noreturn }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = !{!13}
!13 = distinct !{!13, !14}
!14 = distinct !{!14, !"LVerDomain"}
!15 = !{!16}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !4, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !4, !18}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = distinct !{!40, !4}
!41 = distinct !{!41, !4}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !4}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, !4}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !4}
!55 = distinct !{!55, !4}
!56 = distinct !{!56, !4}
!57 = distinct !{!57, !4}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !4}
!61 = distinct !{!61, !4}
!62 = distinct !{!62, !4}
!63 = distinct !{!63, !4}
!64 = distinct !{!64, !4}
!65 = distinct !{!65, !4}
!66 = distinct !{!66, !4}
!67 = distinct !{!67, !4}
!68 = distinct !{!68, !4}
!69 = distinct !{!69, !4}
!70 = distinct !{!70, !4}
!71 = distinct !{!71, !4}
!72 = distinct !{!72, !4}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!75 = distinct !{!75, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!78 = distinct !{!78, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!81 = distinct !{!81, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!82 = !{!80, !77, !74}
!83 = distinct !{!83, !4}
!84 = distinct !{!84, !4}
!85 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!86 = distinct !{!86, !4}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!89 = distinct !{!89, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!92 = distinct !{!92, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!95 = distinct !{!95, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!98 = distinct !{!98, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!99 = !{!97, !94, !91, !88}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!102 = distinct !{!102, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!105 = distinct !{!105, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!108 = distinct !{!108, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!111 = distinct !{!111, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!112 = !{!110, !107, !104, !101}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!115 = distinct !{!115, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!118 = distinct !{!118, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!121 = distinct !{!121, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!124 = distinct !{!124, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!125 = !{!123, !120, !117, !114}
end_hunk_5
