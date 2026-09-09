Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangle?download=true
inline.NumInlined: 349
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z12testtriangleP4meshP8behaviorP4otri:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.10.0 = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.d ], [ %i.l, %bb.e ] ; 3 uses
  %.0206 = phi ptr [ %i.j, %bb.b ], [ %i.p, %bb.d ], [ %i.s, %bb.e ] ; 2 uses
  %.0205 = phi ptr [ %i.p, %bb.b ], [ %i.s, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %.0203 = phi double [ %i.ao, %bb.b ], [ %i.ap, %bb.d ], [ %i.aq, %bb.e ]
  %.0 = phi double [ %i.ax, %bb.b ], [ %i.bd, %bb.d ], [ %i.bi, %bb.e ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !42
  %.not = icmp eq i32 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !41
  %.not216 = icmp eq i32 %i.bm, 0                 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not216, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !43
  %.not217 = icmp eq i32 %i.bo, 0
  br i1 %.not217, label %bb.l, label %.thread251

bb.i:                                             ; preds = %bb.f
  %i.bp = fneg double %i.ac
  %i.bq = fmul double %i.aa, %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.v, double %i.af, double %i.bq)
  %i.bs = fmul double %i.br, 5.000000e-01         ; 2 uses
  br i1 %.not216, label %.thread252, label %.thread253

bb.j:                                             ; preds = %bb.g
  %i.bt = fneg double %i.ac
  %i.bu = fmul double %i.aa, %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.v, double %i.af, double %i.bu)
  %i.bw = fmul double %i.bv, 5.000000e-01
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.by = load double, ptr %i.bx, align 8, !tbaa !36
  %i.bz = fcmp ogt double %i.bw, %i.by
  br i1 %i.bz, label %.sink.split, label %.thread251

.thread253:                                       ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !36
  %i.cc = fcmp ogt double %i.bs, %i.cb
  br i1 %i.cc, label %.sink.split, label %.thread252

.thread252:                                       ; preds = %.thread253, %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !85
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !23 ; 2 uses
  %i.ci = fcmp ogt double %i.bs, %i.ch
  %i.cj = fcmp ogt double %i.ch, 0.000000e+00
  %or.cond223 = and i1 %i.ci, %i.cj
  br i1 %or.cond223, label %.sink.split, label %.thread251

.thread251:                                       ; preds = %bb.j, %bb.h, %.thread252
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !43
  %.not220 = icmp eq i32 %i.cl, 0
  br i1 %.not220, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread251
  %i.cm = fsub double %i.t, %i.ab
  %i.cn = fsub double %i.x, %i.ae                 ; 2 uses
  %i.co = fmul double %i.cn, %i.cn
  %i.cp = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.cm, i64 1 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.al, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.co, i64 1
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cq, <2 x double> %i.cs) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0 ; 2 uses
  %i.cv = extractelement <2 x double> %i.ct, i64 1 ; 2 uses
  %i.cw = fcmp ogt double %i.cu, %i.cv
  %i.cx = select i1 %i.cw, double %i.cu, double %i.cv ; 2 uses
  %i.cy = fmul double %i.x, %i.x
  %i.cz = insertelement <2 x double> poison, double %i.v, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.t, i64 1 ; 2 uses
  %i.db = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.cy, i64 1
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.da, <2 x double> %i.dc) ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0 ; 2 uses
  %i.df = fcmp ogt double %i.de, %i.cx
  %i.dg = select i1 %i.df, double %i.de, double %i.cx
  %i.dh = extractelement <2 x double> %i.dd, i64 1
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double 5.000000e-02, double 2.000000e-02)
  %i.dj = fcmp ule double %i.dg, %i.di
  br i1 %i.dj, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %.thread251, %bb.k, %bb.h
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !67
  %i.dm = fcmp ogt double %.0, %i.dl
  br i1 %i.dm, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 82740
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !109
  %i.dp = add nsw i32 %i.do, 1
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %.0206, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !32
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.du = getelementptr inbounds [4 x i8], ptr %.0205, i64 %i.dq
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32
  %i.dw = icmp eq i32 %i.dv, 1
  br i1 %i.dw, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.dx = sext i32 %.sroa.10.0 to i64
  %i.dy = getelementptr [8 x i8], ptr %i.a, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !76
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = and i64 %i.eb, -4                       ; 3 uses
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 82872
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !84
  %i.eg = icmp eq ptr %i.ef, %i.ed
  br i1 %i.eg, label %.preheader, label %.sink.split

.preheader:                                       ; preds = %bb.o, %.preheader
  %.sroa.0153.1 = phi ptr [ %i.en, %.preheader ], [ %i.a, %bb.o ]
  %.sroa.10.1 = phi i32 [ %i.ep, %.preheader ], [ %.sroa.10.0, %bb.o ]
  %i.eh = sext i32 %.sroa.10.1 to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %.sroa.0153.1, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !76
  %i.ek = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.el = and i64 %i.ek, 3
  %i.em = and i64 %i.ek, -4
  %i.en = inttoptr i64 %i.em to ptr               ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @plus1mod3, i64 %i.el
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !32 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr [8 x i8], ptr %i.en, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !76
  %i.eu = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.ev = and i64 %i.eu, -4                       ; 2 uses
  %i.ew = icmp eq i64 %i.ec, %i.ev
  br i1 %i.ew, label %.preheader, label %bb.p, !llvm.loop !226

bb.p:                                             ; preds = %.preheader
  %i.ex = inttoptr i64 %i.ev to ptr               ; 2 uses
  %i.ey = and i64 %i.eu, 1                        ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !76 ; 2 uses
  %i.fc = sub nuw nsw i64 5, %i.ey
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !76 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.sroa.6.0 = phi i32 [ %.sroa.10.0, %bb.p ], [ %i.fn, %bb.q ]
  %.sroa.0148.0 = phi ptr [ %i.a, %bb.p ], [ %i.fl, %bb.q ]
  %i.ff = sext i32 %.sroa.6.0 to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %.sroa.0148.0, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !76
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = and i64 %i.fi, 3
  %i.fk = and i64 %i.fi, -4
  %i.fl = inttoptr i64 %i.fk to ptr               ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @minus1mod3, i64 %i.fj
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !32 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr [8 x i8], ptr %i.fl, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !76
  %i.fs = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.ft = and i64 %i.fs, -4                       ; 2 uses
  %i.fu = icmp eq i64 %i.ec, %i.ft
  br i1 %i.fu, label %bb.q, label %bb.r, !llvm.loop !227

bb.r:                                             ; preds = %bb.q
  %i.fv = inttoptr i64 %i.ft to ptr               ; 2 uses
  %i.fw = and i64 %i.fs, 1                        ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !76 ; 2 uses
  %i.ga = sub nuw nsw i64 5, %i.fw
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !76 ; 2 uses
  %i.gd = load double, ptr %i.fe, align 8, !tbaa !23 ; 2 uses
  %i.ge = load double, ptr %i.fz, align 8, !tbaa !23
  %i.gf = fcmp oeq double %i.gd, %i.ge
  br i1 %i.gf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !23 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !23
  %i.gk = fcmp oeq double %i.gh, %i.gj
  br i1 %i.gk, label %select.unfold, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gl = load double, ptr %i.fb, align 8, !tbaa !23 ; 2 uses
  %i.gm = load double, ptr %i.gc, align 8, !tbaa !23
  %i.gn = fcmp oeq double %i.gl, %i.gm
  br i1 %i.gn, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %bb.t
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.gp = load double, ptr %i.go, align 8, !tbaa !23 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !23
  %i.gs = fcmp oeq double %i.gp, %i.gr
  br i1 %i.gs, label %select.unfold, label %.sink.split

select.unfold:                                    ; preds = %bb.u, %bb.s
  %3 = phi double [ %i.gh, %bb.s ], [ %i.gp, %bb.u ]
  %4 = phi double [ %i.gd, %bb.s ], [ %i.gl, %bb.u ]
  %i.gt = load <2 x double>, ptr %.0206, align 8, !tbaa !23 ; 2 uses
  %i.gu = load <2 x double>, ptr %.0205, align 8, !tbaa !23 ; 2 uses
  %i.gv = shufflevector <2 x double> %i.gt, <2 x double> %i.gu, <2 x i32> <i32 0, i32 2>
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %i.gw = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fsub <2 x double> %i.gv, %i.gw          ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gt, <2 x double> %i.gu, <2 x i32> <i32 1, i32 3>
  %6 = insertelement <2 x double> poison, double %3, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = fsub <2 x double> %i.gy, %7             ; 2 uses
  %i.ha = fmul <2 x double> %i.gz, %i.gz
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gx, <2 x double> %i.ha) ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 1 ; 2 uses
  %i.hd = fmul double %i.hc, 1.001000e+00
  %i.he = extractelement <2 x double> %i.hb, i64 0 ; 2 uses
  %i.hf = fcmp olt double %i.he, %i.hd
  %i.hg = fmul double %i.hc, f0x3FEFF7CED916872B
  %i.hh = fcmp ogt double %i.he, %i.hg
  %or.cond225 = and i1 %i.hf, %i.hh
  br i1 %or.cond225, label %bb.v, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n, %select.unfold, %bb.o, %bb.t, %bb.u, %bb.k, %.thread252, %bb.j, %.thread253
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.hj = tail call noundef ptr @_Z9poolallocP10memorypool(ptr noundef nonnull %i.hi) ; 6 uses
  %i.hk = load ptr, ptr %2, align 8, !tbaa !73
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = load i32, ptr %i.b, align 8, !tbaa !74
  %i.hn = sext i32 %i.hm to i64
  %i.ho = or i64 %i.hn, %i.hl
  %i.hp = inttoptr i64 %i.ho to ptr
  store ptr %i.hp, ptr %i.hj, align 8, !tbaa !143
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store double %.0203, ptr %i.hq, align 8, !tbaa !139
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %i.s, ptr %i.hr, align 8, !tbaa !138
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr %i.j, ptr %i.hs, align 8, !tbaa !136
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store ptr %i.p, ptr %i.ht, align 8, !tbaa !137
  tail call void @_Z16enqueuebadtriangP4meshP8behaviorP9badtriang(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %i.hj)
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.l, %select.unfold
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z13makevertexmapP4meshP8behavior(ptr nofree noundef captures(none) initializes((32, 48), (84, 88)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !91
  %i.i = sext i32 %i.h to i64                     ; 6 uses
  %i.j = add i64 %i.i, %i.f
  %i.k = urem i64 %i.f, %i.i
  %i.l = sub i64 %i.j, %i.k
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = load i32, ptr %i.o, align 4, !tbaa !93   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.v = phi ptr [ %i.ai, %bb.g ], [ %i.c, %bb.c ] ; 2 uses
  %i.w = phi i32 [ %i.ao, %bb.g ], [ %i.p, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %i.an, %bb.g ], [ %i.m, %bb.c ] ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.s
  br i1 %i.y, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i32 %i.w, 0
  br i1 %i.z, label %bb.f, label %_Z8traverseP10memorypool.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !98  ; 3 uses
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = add i64 %i.ac, %i.i
  %i.ae = urem i64 %i.ac, %i.i
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !97
  br label %_Z8traverseP10memorypool.exit.i

_Z8traverseP10memorypool.exit.i:                  ; preds = %bb.f, %bb.e
  %i.ai = phi ptr [ %i.aa, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %i.aj = phi i32 [ %i.ah, %bb.f ], [ %i.w, %bb.e ]
  %i.ak = phi ptr [ %i.ag, %bb.f ], [ %i.x, %bb.e ] ; 4 uses
  %i.al = load i32, ptr %i.u, align 4, !tbaa !96
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am ; 3 uses
  store ptr %i.an, ptr %i.n, align 8, !tbaa !102
  %i.ao = add nsw i32 %i.aj, -1                   ; 3 uses
  store i32 %i.ao, ptr %i.q, align 4, !tbaa !103
  %i.ap = icmp eq ptr %i.ak, null
  br i1 %i.ap, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %_Z8traverseP10memorypool.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !76
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.d, label %.preheader.lr.ph, !llvm.loop !1

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 82744
  %i.au = load i32, ptr %i.at, align 8, !tbaa !110
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %.pre = load i32, ptr @plus1mod3, align 4, !tbaa !32
  %.pre22 = load i32, ptr getelementptr inbounds nuw (i8, ptr @plus1mod3, i64 4), align 4, !tbaa !32
  %.pre23 = load i32, ptr getelementptr inbounds nuw (i8, ptr @plus1mod3, i64 8), align 4, !tbaa !32
  %i.aw = sext i32 %.pre to i64
  %i.ax = sext i32 %.pre22 to i64
  %i.ay = sext i32 %.pre23 to i64
  br label %.preheader

.preheader:                                       ; preds = %_Z16triangletraverseP4mesh.exit15, %.preheader.lr.ph
  %i.az = phi ptr [ %i.ai, %.preheader.lr.ph ], [ %i.ce, %_Z16triangletraverseP4mesh.exit15 ]
  %i.ba = phi i32 [ %i.ao, %.preheader.lr.ph ], [ %i.ck, %_Z16triangletraverseP4mesh.exit15 ]
  %.promoted.i12 = phi ptr [ %i.an, %.preheader.lr.ph ], [ %i.cj, %_Z16triangletraverseP4mesh.exit15 ]
  %.sroa.0.020 = phi ptr [ %i.ak, %.preheader.lr.ph ], [ %i.cg, %_Z16triangletraverseP4mesh.exit15 ] ; 5 uses
  %i.bb = ptrtoint ptr %.sroa.0.020 to i64        ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.sroa.0.020, i64 %i.aw
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !76
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.av
  store ptr %.sroa.0.020, ptr %i.bf, align 8, !tbaa !76
  %i.bg = getelementptr [8 x i8], ptr %.sroa.0.020, i64 %i.ax
  %i.bh = getelementptr i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76
  %i.bj = or i64 %i.bb, 1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.av
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !76
  %i.bm = getelementptr [8 x i8], ptr %.sroa.0.020, i64 %i.ay
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !76
  %i.bp = or i64 %i.bb, 2
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.av
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !76
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.preheader
  %i.bs = phi ptr [ %i.ce, %bb.k ], [ %i.az, %.preheader ] ; 2 uses
  %i.bt = phi i32 [ %i.ck, %bb.k ], [ %i.ba, %.preheader ] ; 2 uses
  %.promoted.i1224 = phi ptr [ %i.cj, %bb.k ], [ %.promoted.i12, %.preheader ] ; 2 uses
  %i.bu = icmp eq ptr %.promoted.i1224, %i.s
  br i1 %i.bu, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = icmp eq i32 %i.bt, 0
  br i1 %i.bv, label %bb.j, label %_Z8traverseP10memorypool.exit.i13

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !98 ; 3 uses
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = add i64 %i.by, %i.i
  %i.ca = urem i64 %i.by, %i.i
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load i32, ptr %i.t, align 8, !tbaa !97
  br label %_Z8traverseP10memorypool.exit.i13

_Z8traverseP10memorypool.exit.i13:                ; preds = %bb.j, %bb.i
  %i.ce = phi ptr [ %i.bw, %bb.j ], [ %i.bs, %bb.i ] ; 2 uses
  %i.cf = phi i32 [ %i.cd, %bb.j ], [ %i.bt, %bb.i ]
  %i.cg = phi ptr [ %i.cc, %bb.j ], [ %.promoted.i1224, %bb.i ] ; 4 uses
  %i.ch = load i32, ptr %i.u, align 4, !tbaa !96
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.ci ; 3 uses
  store ptr %i.cj, ptr %i.n, align 8, !tbaa !102
  %i.ck = add nsw i32 %i.cf, -1                   ; 3 uses
  store i32 %i.ck, ptr %i.q, align 4, !tbaa !103
  %i.cl = icmp eq ptr %i.cg, null
  br i1 %i.cl, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %_Z8traverseP10memorypool.exit.i13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !76
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.h, label %_Z16triangletraverseP4mesh.exit15, !llvm.loop !1

_Z16triangletraverseP4mesh.exit15:                ; preds = %bb.k
  br label %.preheader, !llvm.loop !228

._crit_edge:                                      ; preds = %bb.d, %_Z8traverseP10memorypool.exit.i, %bb.h, %_Z8traverseP10memorypool.exit.i13
end_hunk_0
