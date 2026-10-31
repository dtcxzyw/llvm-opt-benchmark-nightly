Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gainmapmetadata?download=true
inline.NumInlined: 93
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8ultrahdr26uhdr_gainmap_metadata_frac30gainmapMetadataFractionToFloatEPKS0_PNS_25uhdr_gainmap_metadata_extE:bb.a
  %i.an = load i32, ptr %i.am, align 4, !tbaa !6
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !6
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !6
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !6
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !6
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !25, !range !23, !noundef !24
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.l, %bb.g, %.preheader
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.be, align 4, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bf, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9) #17 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %.preheader
  %i.bh = load i32, ptr %i.o, align 4, !tbaa !6
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.m, %bb.h, %bb.s
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bj, align 4, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bk, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10) #17 ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.bm = load i32, ptr %i.p, align 4, !tbaa !6
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.n, %bb.i, %bb.u
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bo, align 4, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bp, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #17 ; 0 uses
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.br = load i32, ptr %i.q, align 4, !tbaa !6
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.o, %bb.j, %bb.w
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bt, align 4, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bu, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12) #17 ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.bw = load i32, ptr %i.r, align 4, !tbaa !6
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.z, label %bb.g

bb.z:                                             ; preds = %bb.p, %bb.k, %bb.y
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bz, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.13) #17 ; 0 uses
  br label %.thread

bb.aa:                                            ; preds = %bb.q
  store i32 6, ptr %0, align 4, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cb, align 4, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(46) %i.cc, ptr noundef nonnull align 1 dereferenceable(46) @.str.14, i64 46, i1 false)
  br label %.thread

bb.ab:                                            ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !52
  %i.cg = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 noundef 0, i64 noundef %i.cf, ptr noundef nonnull @.str.15, i64 noundef 3) ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !6
  %i.cp = sitofp i32 %i.co to float
  %i.cq = load i32, ptr %i.n, align 4, !tbaa !6
  %i.cr = uitofp i32 %i.cq to float
  %i.cs = fdiv contract float %i.cp, %i.cr
  %i.ct = fpext contract float %i.cs to double
  %i.cu = tail call contract double @exp2(double noundef %i.ct) #17, !tbaa !6
  %i.cv = load i32, ptr %1, align 4, !tbaa !6
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = load i32, ptr %i.p, align 4, !tbaa !6
  %i.cy = uitofp i32 %i.cx to float
  %i.cz = fdiv contract float %i.cw, %i.cy
  %i.da = fpext contract float %i.cz to double
  %i.db = tail call contract double @exp2(double noundef %i.da) #17, !tbaa !6
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !6
  %i.de = sitofp i32 %i.dd to float
  %i.df = load i32, ptr %i.x, align 4, !tbaa !6
  %i.dg = uitofp i32 %i.df to float
  %i.dh = fdiv contract float %i.de, %i.dg
  %i.di = fpext contract float %i.dh to double
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.dm = load i32, ptr %i.ci, align 4, !tbaa !6
  %i.dn = uitofp i32 %i.dm to float
  %i.do = load i32, ptr %i.o, align 4, !tbaa !6
  %i.dp = uitofp i32 %i.do to float
  %i.dq = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dr = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.dt = load i32, ptr %i.ck, align 4, !tbaa !6
  %i.du = load i32, ptr %i.q, align 4, !tbaa !6
  %i.dv = uitofp i32 %i.du to float
  %i.dw = insertelement <2 x i32> poison, i32 %i.dt, i64 0
  %i.dx = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.dz = load i32, ptr %i.cm, align 4, !tbaa !6
  %i.ea = load i32, ptr %i.r, align 4, !tbaa !6
  %i.eb = uitofp i32 %i.ea to float
  %i.ec = tail call contract double @exp2(double noundef %i.di) #17, !tbaa !6
  %i.ed = load i32, ptr %i.dj, align 4, !tbaa !6
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = load i32, ptr %i.ad, align 4, !tbaa !6
  %i.eg = uitofp i32 %i.ef to float
  %i.eh = fdiv contract float %i.ee, %i.eg
  %i.ei = fpext contract float %i.eh to double
  %i.ej = tail call contract double @exp2(double noundef %i.ei) #17, !tbaa !6
  %i.ek = load i32, ptr %i.dl, align 4, !tbaa !6
  %i.el = uitofp i32 %i.ek to float
  %i.em = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.en = uitofp i32 %i.em to float
  %i.eo = insertelement <2 x float> %i.dq, float %i.el, i64 1
  %i.ep = insertelement <2 x float> %i.dr, float %i.en, i64 1
  %i.eq = fdiv contract <2 x float> %i.eo, %i.ep
  store <2 x float> %i.eq, ptr %i.cj, align 8, !tbaa !31
  %i.er = load i32, ptr %i.ds, align 4, !tbaa !6
  %i.es = insertelement <2 x i32> %i.dw, i32 %i.er, i64 1
  %i.et = sitofp <2 x i32> %i.es to <2 x float>
  %i.eu = load i32, ptr %i.ag, align 4, !tbaa !6
  %i.ev = uitofp i32 %i.eu to float
  %i.ew = insertelement <2 x float> %i.dx, float %i.ev, i64 1
  %i.ex = fdiv contract <2 x float> %i.et, %i.ew
  store <2 x float> %i.ex, ptr %i.cl, align 4, !tbaa !31
  %i.ey = load i32, ptr %i.dy, align 4, !tbaa !6
  %i.ez = insertelement <2 x i32> poison, i32 %i.dz, i64 0
  %i.fa = insertelement <2 x i32> %i.ez, i32 %i.ey, i64 1
  %i.fb = sitofp <2 x i32> %i.fa to <2 x float>
  %i.fc = load i32, ptr %i.aj, align 4, !tbaa !6
  %i.fd = uitofp i32 %i.fc to float
  %i.fe = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.fd, i64 1
  %i.fg = fdiv contract <2 x float> %i.fb, %i.ff
  store <2 x float> %i.fg, ptr %i.cn, align 8, !tbaa !31
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !6
  %i.fj = sitofp i32 %i.fi to float
  %i.fk = load i32, ptr %i.am, align 4, !tbaa !6
  %i.fl = uitofp i32 %i.fk to float
  %i.fm = fdiv contract float %i.fj, %i.fl
  %i.fn = fpext contract float %i.fm to double
  %i.fo = tail call contract double @exp2(double noundef %i.fn) #17, !tbaa !6
  %i.fp = insertelement <4 x double> poison, double %i.cu, i64 0
  %i.fq = insertelement <4 x double> %i.fp, double %i.ec, i64 1
  %i.fr = insertelement <4 x double> %i.fq, double %i.fo, i64 2
  %i.fs = insertelement <4 x double> %i.fr, double %i.db, i64 3
  %i.ft = fptrunc <4 x double> %i.fs to <4 x float>
  store <4 x float> %i.ft, ptr %2, align 8, !tbaa !31
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !6
  %i.fw = sitofp i32 %i.fv to float
  %i.fx = load i32, ptr %i.as, align 4, !tbaa !6
  %i.fy = uitofp i32 %i.fx to float
  %i.fz = fdiv contract float %i.fw, %i.fy
  %i.ga = fpext contract float %i.fz to double
  %i.gb = tail call contract double @exp2(double noundef %i.ga) #17, !tbaa !6
  %i.gc = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.gb, i64 1
  %i.ge = fptrunc <2 x double> %i.gd to <2 x float>
  store <2 x float> %i.ge, ptr %i.dk, align 8, !tbaa !31
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !6
  %i.gh = load i32, ptr %i.ap, align 4, !tbaa !6
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !6
  %i.gl = load i32, ptr %i.av, align 4, !tbaa !6
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !6
  %i.gp = load i32, ptr %i.ay, align 4, !tbaa !6
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.gs = load <2 x i32>, ptr %i.gr, align 4, !tbaa !6
  %i.gt = insertelement <4 x i32> poison, i32 %i.gg, i64 0
  %i.gu = insertelement <4 x i32> %i.gt, i32 %i.gk, i64 1
  %i.gv = insertelement <4 x i32> %i.gu, i32 %i.go, i64 2
  %i.gw = shufflevector <2 x i32> %i.gs, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gx = shufflevector <4 x i32> %i.gv, <4 x i32> %i.gw, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.gy = uitofp <4 x i32> %i.gx to <4 x float>
  %i.gz = sitofp <4 x i32> %i.gx to <4 x float>
  %i.ha = shufflevector <4 x float> %i.gy, <4 x float> %i.gz, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hb = insertelement <4 x i32> poison, i32 %i.gh, i64 0
  %i.hc = insertelement <4 x i32> %i.hb, i32 %i.gl, i64 1
  %i.hd = insertelement <4 x i32> %i.hc, i32 %i.gp, i64 2
  %i.he = shufflevector <4 x i32> %i.hd, <4 x i32> %i.gw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hf = uitofp <4 x i32> %i.he to <4 x float>
  %i.hg = fdiv contract <4 x float> %i.ha, %i.hf  ; 4 uses
  %i.hh = extractelement <4 x float> %i.hg, i64 0
  store float %i.hh, ptr %i.gi, align 8, !tbaa !31
  %i.hi = extractelement <4 x float> %i.hg, i64 1
  store float %i.hi, ptr %i.gm, align 4, !tbaa !31
  %i.hj = extractelement <4 x float> %i.hg, i64 2
  store float %i.hj, ptr %i.gq, align 8, !tbaa !31
  %i.hk = extractelement <4 x float> %i.hg, i64 3
  %i.hl = fpext contract float %i.hk to double
  %i.hm = tail call contract double @exp2(double noundef %i.hl) #17, !tbaa !6
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !28
  %i.hp = uitofp i32 %i.ho to float
  %i.hq = load i32, ptr %i.e, align 4, !tbaa !26
  %i.hr = uitofp i32 %i.hq to float
  %i.hs = fdiv contract float %i.hp, %i.hr
  %i.ht = fpext contract float %i.hs to double
  %i.hu = tail call contract double @exp2(double noundef %i.ht) #17, !tbaa !6
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.hw = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.hm, i64 1
  %i.hy = fptrunc <2 x double> %i.hx to <2 x float>
  store <2 x float> %i.hy, ptr %i.hv, align 4, !tbaa !31
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !22, !range !23, !noundef !24
  %i.ib = zext nneg i8 %i.ia to i32
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.ab, %bb.aa, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp2(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr26uhdr_gainmap_metadata_frac30gainmapMetadataFloatToFractionEPKNS_25uhdr_gainmap_metadata_extEPS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.uhdr_error_info) align 4 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(50) %i.d, ptr noundef nonnull align 1 dereferenceable(50) @.str.3, i64 50, i1 false)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i8 0, ptr %i.e, align 4, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = icmp ne i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 137
  %i.j = zext i1 %i.h to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !22
  %i.k = load float, ptr %1, align 8, !tbaa !31   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !31
  %i.n = fcmp contract oeq float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 8
  %i.q = fcmp contract oeq float %i.k, %i.p
  %or.cond.i = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !31 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load float, ptr %i.t, align 8, !tbaa !31
  %i.v = fcmp contract oeq float %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = load float, ptr %i.w, align 4
  %i.y = fcmp contract oeq float %i.s, %i.x
  %or.cond9.i = select i1 %i.v, i1 %i.y, i1 false
  br i1 %or.cond9.i, label %bb.e, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load float, ptr %i.z, align 8, !tbaa !31 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !31
  %i.ad = fcmp contract oeq float %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load float, ptr %i.ae, align 8
  %i.ag = fcmp contract oeq float %i.aa, %i.af
  %or.cond12.i = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond12.i, label %bb.f, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !31 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !31
  %i.al = fcmp contract oeq float %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.an = load float, ptr %i.am, align 4, !tbaa !31
  %i.ao = fcmp contract oeq float %i.ai, %i.an
  br i1 %i.ao, label %bb.h, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.as = load float, ptr %i.ar, align 4, !tbaa !31
  %i.at = fcmp contract oeq float %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load float, ptr %i.au, align 8, !tbaa !31
  %i.aw = fcmp contract oeq float %i.aq, %i.av
  br label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.ax = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ %i.aw, %bb.i ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not116 = icmp samesign ugt i64 %indvars.iv, 1
  %.not.not = select i1 %i.ax, i1 true, i1 %.not116
  br i1 %.not.not, label %.critedge, label %bb.k, !llvm.loop !53

bb.k:                                             ; preds = %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit, %bb.j
  %indvars.iv = phi i64 [ 0, %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit ], [ %indvars.iv.next, %bb.j ] ; 22 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !31
  %i.bn = fpext contract float %i.bm to double
  %i.bo = tail call contract double @log2(double noundef %i.bn) #17, !tbaa !6
  %i.bp = fptrunc contract double %i.bo to float
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.bs = tail call noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef %i.bp, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.br)
  br i1 %i.bs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bu, align 4, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load float, ptr %i.bt, align 4, !tbaa !31
  %i.bx = fpext contract float %i.bw to double
  %i.by = tail call contract double @log2(double noundef %i.bx) #17, !tbaa !6
  %i.bz = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bv, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.by) #17 ; 0 uses
  br label %bb.aa

bb.m:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !31
  %i.cc = fpext contract float %i.cb to double
  %i.cd = tail call contract double @log2(double noundef %i.cc) #17, !tbaa !6
  %i.ce = fptrunc contract double %i.cd to float
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.ch = tail call noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef %i.ce, ptr noundef %i.cf, ptr noundef nonnull %i.cg)
  br i1 %i.ch, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cj, align 4, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load float, ptr %i.ci, align 4, !tbaa !31
  %i.cm = fpext contract float %i.cl to double
  %i.cn = tail call contract double @log2(double noundef %i.cm) #17, !tbaa !6
  %i.co = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ck, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.cn) #17 ; 0 uses
  br label %bb.aa

bb.o:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !31
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.ct = tail call noundef zeroext i1 @_ZN8ultrahdr23floatToUnsignedFractionEfPjS0_(float noundef %i.cq, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs)
  br i1 %i.ct, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cv, align 4, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load float, ptr %i.cu, align 4, !tbaa !31
  %i.cy = fpext contract float %i.cx to double
  %i.cz = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cw, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.cy) #17 ; 0 uses
  br label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.db = load float, ptr %i.da, align 4, !tbaa !31
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.de = tail call noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dd)
  br i1 %i.de, label %bb.s, label %bb.r

end_hunk_0
