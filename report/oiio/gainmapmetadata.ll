inline.NumInlined: 93
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8ultrahdr26uhdr_gainmap_metadata_frac30gainmapMetadataFractionToFloatEPKS0_PNS_25uhdr_gainmap_metadata_extE:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = sitofp i32 %i.dg to float
  %i.di = load i32, ptr %i.x, align 4, !tbaa !3
  %i.dj = uitofp i32 %i.di to float
  %i.dk = fdiv contract float %i.dh, %i.dj
  %i.dl = fpext contract float %i.dk to double
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dt = insertelement <4 x double> poison, double %i.cs, i64 0
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dx = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.dd, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dz = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.ea = load i32, ptr %i.q, align 4, !tbaa !3
  %i.eb = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.ec = tail call contract double @exp2(double noundef %i.dl) #17, !tbaa !3
  %i.ed = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.eg = uitofp i32 %i.ef to float
  %i.eh = fdiv contract float %i.ee, %i.eg
  %i.ei = fpext contract float %i.eh to double
  %i.ej = tail call contract double @exp2(double noundef %i.ei) #17, !tbaa !3
  %i.ek = fptrunc contract double %i.ej to float
  store float %i.ek, ptr %i.dn, align 8, !tbaa !49
  %i.el = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.em = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.en = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.eo = sitofp i32 %i.en to float
  %i.ep = load i32, ptr %i.am, align 4, !tbaa !3
  %i.eq = uitofp i32 %i.ep to float
  %i.er = fdiv contract float %i.eo, %i.eq
  %i.es = fpext contract float %i.er to double
  %i.et = insertelement <4 x double> %i.dt, double %i.ec, i64 1
  %i.eu = load i32, ptr %i.do, align 4, !tbaa !3
  %i.ev = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ew = uitofp i32 %i.eu to float
  %i.ex = uitofp i32 %i.ev to float
  %i.ey = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.ez = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.fa = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %i.fb = insertelement <4 x i32> %i.fa, i32 %i.el, i64 1
  %i.fc = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.em, i64 1
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ff = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.fg = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.fh = tail call contract double @exp2(double noundef %i.es) #17, !tbaa !3
  %i.fi = insertelement <4 x double> %i.et, double %i.fh, i64 2
  %i.fj = insertelement <4 x double> %i.fi, double %i.cz, i64 3
  %i.fk = fptrunc <4 x double> %i.fj to <4 x float>
  store <4 x float> %i.fk, ptr %2, align 8, !tbaa !49
  %i.fl = load i32, ptr %i.du, align 4, !tbaa !3
  %i.fm = sitofp i32 %i.fl to float
  %i.fn = load i32, ptr %i.as, align 4, !tbaa !3
  %i.fo = uitofp i32 %i.fn to float
  %i.fp = fdiv contract float %i.fm, %i.fo
  %i.fq = fpext contract float %i.fp to double
  %i.fr = tail call contract double @exp2(double noundef %i.fq) #17, !tbaa !3
  %i.fs = fptrunc contract double %i.fr to float
  %i.ft = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.fu = uitofp i32 %i.ft to float
  %i.fv = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.fw = uitofp i32 %i.fv to float
  %i.fx = insertelement <4 x float> %i.ey, float %i.fu, i64 1
  %i.fy = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fz = insertelement <4 x float> %i.fy, float %i.db, i64 1
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gb = insertelement <4 x float> %i.ez, float %i.fw, i64 1
  %i.gc = shufflevector <4 x float> %i.dx, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gd = fdiv contract <4 x float> %i.ga, %i.gc
  store <4 x float> %i.gd, ptr %i.dv, align 4, !tbaa !49
  %i.ge = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.gf = insertelement <4 x i32> %i.fb, i32 %i.ge, i64 2
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.eb, i64 3
  %i.gh = sitofp <4 x i32> %i.gg to <4 x float>
  %i.gi = load i32, ptr %i.av, align 4, !tbaa !3
  %i.gj = insertelement <4 x i32> %i.fd, i32 %i.gi, i64 2
  %i.gk = insertelement <4 x i32> %i.gj, i32 %i.de, i64 3
  %i.gl = uitofp <4 x i32> %i.gk to <4 x float>
  %i.gm = fdiv contract <4 x float> %i.gh, %i.gl
  store <4 x float> %i.gm, ptr %i.ck, align 4, !tbaa !49
  %i.gn = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.go = insertelement <2 x i32> poison, i32 %i.ff, i64 0
  %i.gp = insertelement <2 x i32> %i.go, i32 %i.gn, i64 1
  %i.gq = sitofp <2 x i32> %i.gp to <2 x float>
  %i.gr = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.gs = uitofp i32 %i.gr to float
  %i.gt = uitofp i32 %i.fg to float
  %i.gu = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gs, i64 1
  %i.gw = fdiv contract <2 x float> %i.gq, %i.gv
  store <2 x float> %i.gw, ptr %i.dr, align 4, !tbaa !49
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !31
  %i.gz = uitofp i32 %i.gy to float
  %i.ha = load i32, ptr %i.k, align 4, !tbaa !29
  %i.hb = uitofp i32 %i.ha to float
  %i.hc = fdiv contract float %i.gz, %i.hb
  %i.hd = fpext contract float %i.hc to double
  %i.he = tail call contract double @exp2(double noundef %i.hd) #17, !tbaa !3
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !30
  %i.hh = uitofp i32 %i.hg to float
  %i.hi = load i32, ptr %i.e, align 4, !tbaa !28
  %i.hj = uitofp i32 %i.hi to float
  %i.hk = fdiv contract float %i.hh, %i.hj
  %i.hl = fpext contract float %i.hk to double
  %i.hm = tail call contract double @exp2(double noundef %i.hl) #17, !tbaa !3
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ho = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.he, i64 1
  %i.hq = fptrunc <2 x double> %i.hp to <2 x float>
  store <2 x float> %i.hq, ptr %i.hn, align 4, !tbaa !49
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !22, !range !25, !noundef !26
  %i.ht = zext nneg i8 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !51
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
  store i32 3, ptr %0, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(50) %i.d, ptr noundef nonnull align 1 dereferenceable(50) @.str.3, i64 50, i1 false)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i8 0, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51
  %i.h = icmp ne i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 137
  %i.j = zext i1 %i.h to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !22
  %i.k = load float, ptr %1, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !49
  %i.n = fcmp contract oeq float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 8
  %i.q = fcmp contract oeq float %i.k, %i.p
  %or.cond.i = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !49 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load float, ptr %i.t, align 8, !tbaa !49
  %i.v = fcmp contract oeq float %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = load float, ptr %i.w, align 4
  %i.y = fcmp contract oeq float %i.s, %i.x
  %or.cond9.i = select i1 %i.v, i1 %i.y, i1 false
  br i1 %or.cond9.i, label %bb.e, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load float, ptr %i.z, align 8, !tbaa !49 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !49
  %i.ad = fcmp contract oeq float %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load float, ptr %i.ae, align 8
  %i.ag = fcmp contract oeq float %i.aa, %i.af
  %or.cond12.i = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond12.i, label %bb.f, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !49 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !49
  %i.al = fcmp contract oeq float %i.ai, %i.ak
  br i1 %i.al, label %3, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

3:                                                ; preds = %bb.f
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = fcmp contract oeq float %i.ai, %5
  br i1 %6, label %bb.g, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.g:                                             ; preds = %3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load float, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !49
  %i.aq = fcmp contract oeq float %i.an, %i.ap
  br i1 %i.aq, label %bb.h, label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load float, ptr %i.ar, align 8, !tbaa !49
  %i.at = fcmp contract oeq float %i.an, %i.as
  br label %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit

_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %3, %bb.g, %bb.h
  %7 = phi i1 [ false, %bb.g ], [ false, %3 ], [ false, %bb.f ], [ %i.at, %bb.h ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not116 = icmp samesign ugt i64 %indvars.iv, 1
  %.not.not = select i1 %7, i1 true, i1 %.not116
  br i1 %.not.not, label %.critedge, label %bb.j, !llvm.loop !53

bb.j:                                             ; preds = %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit, %bb.i
  %indvars.iv = phi i64 [ 0, %_ZNK8ultrahdr25uhdr_gainmap_metadata_ext26are_all_channels_identicalEv.exit ], [ %indvars.iv.next, %bb.i ] ; 22 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !49
  %i.bj = fpext contract float %i.bi to double
  %i.bk = tail call contract double @log2(double noundef %i.bj) #17, !tbaa !3
  %i.bl = fptrunc contract double %i.bk to float
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.bo = tail call noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef %i.bl, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn)
  br i1 %i.bo, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bq, align 4, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load float, ptr %i.bp, align 4, !tbaa !49
  %i.bt = fpext contract float %i.bs to double
  %i.bu = tail call contract double @log2(double noundef %i.bt) #17, !tbaa !3
  %i.bv = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.br, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.bu) #17 ; 0 uses
  br label %bb.z

bb.l:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !49
  %i.by = fpext contract float %i.bx to double
  %i.bz = tail call contract double @log2(double noundef %i.by) #17, !tbaa !3
  %i.ca = fptrunc contract double %i.bz to float
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.cd = tail call noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef %i.ca, ptr noundef %i.cb, ptr noundef nonnull %i.cc)
  br i1 %i.cd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cf, align 4, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !49
  %i.ci = fpext contract float %i.ch to double
  %i.cj = tail call contract double @log2(double noundef %i.ci) #17, !tbaa !3
  %i.ck = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cg, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.cj) #17 ; 0 uses
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !49
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.cp = tail call noundef zeroext i1 @_ZN8ultrahdr23floatToUnsignedFractionEfPjS0_(float noundef %i.cm, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.co)
  br i1 %i.cp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cr, align 4, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load float, ptr %i.cq, align 4, !tbaa !49
  %i.cu = fpext contract float %i.ct to double
  %i.cv = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cs, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.cu) #17 ; 0 uses
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !49
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.da = tail call noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef %i.cx, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz)
  br i1 %i.da, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !16
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.dc, align 4, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load float, ptr %i.db, align 4, !tbaa !49
  %i.df = fpext contract float %i.de to double
  %i.dg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dd, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.df) #17 ; 0 uses
  br label %bb.z

bb.r:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.di = load float, ptr %i.dh, align 4, !tbaa !49
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.dl = tail call noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef %i.di, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dk)
  br i1 %i.dl, label %bb.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 3, ptr %0, align 4, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.dn, align 4, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load float, ptr %i.dm, align 4, !tbaa !49
  %i.dq = fpext contract float %i.dp to double
  %i.dr = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.do, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.dq) #17 ; 0 uses
  br label %bb.z

.critedge:                                        ; preds = %bb.i
  br i1 %7, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge
  %i.ds = load i32, ptr %i.au, align 4, !tbaa !3  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.ds, ptr %i.du, align 4, !tbaa !3
  %i.dv = load i32, ptr %i.av, align 4, !tbaa !3  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !3
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !3
  %i.dy = load i32, ptr %2, align 4, !tbaa !3     ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.dy, ptr %i.ea, align 4, !tbaa !3
  %i.eb = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !3
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !3
  %i.ee = load i32, ptr %i.az, align 4, !tbaa !3  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !3
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.ee, ptr %i.eg, align 4, !tbaa !3
  %i.eh = load i32, ptr %i.ba, align 4, !tbaa !3  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !3
  %i.ek = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !3
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.ek, ptr %i.em, align 4, !tbaa !3
  %i.en = load i32, ptr %i.bd, align 4, !tbaa !3  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !3
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i32 %i.en, ptr %i.ep, align 4, !tbaa !3
  %i.eq = load i32, ptr %i.bf, align 4, !tbaa !3  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !3
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.eq, ptr %i.es, align 4, !tbaa !3
  %i.et = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i32 %i.et, ptr %i.ev, align 4, !tbaa !3
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !54
  %i.ey = fpext contract float %i.ex to double
  %i.ez = tail call contract double @log2(double noundef %i.ey) #17, !tbaa !3
  %i.fa = fptrunc contract double %i.ez to float
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fd = tail call noundef zeroext i1 @_ZN8ultrahdr23floatToUnsignedFractionEfPjS0_(float noundef %i.fa, ptr noundef nonnull %i.fb, ptr noundef nonnull %i.fc)
  br i1 %i.fd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 3, ptr %0, align 4, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.fe, align 4, !tbaa !19
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fg = load float, ptr %i.ew, align 4, !tbaa !54
  %i.fh = fpext contract float %i.fg to double
  %i.fi = tail call contract double @log2(double noundef %i.fh) #17, !tbaa !3
  %i.fj = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ff, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.fi) #17 ; 0 uses
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 8, !tbaa !55
  %i.fm = fpext contract float %i.fl to double
  %i.fn = tail call contract double @log2(double noundef %i.fm) #17, !tbaa !3
  %i.fo = fptrunc contract double %i.fn to float
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.fr = tail call noundef zeroext i1 @_ZN8ultrahdr23floatToUnsignedFractionEfPjS0_(float noundef %i.fo, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fq)
  br i1 %i.fr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 3, ptr %0, align 4, !tbaa !16
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.fs, align 4, !tbaa !19
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = load float, ptr %i.fk, align 8, !tbaa !55
  %i.fv = fpext contract float %i.fu to double
  %i.fw = tail call contract double @log2(double noundef %i.fv) #17, !tbaa !3
  %i.fx = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ft, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %i.fw) #17 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %bb.v, %bb.x, %bb.y, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN8ultrahdr21floatToSignedFractionEfPiPj(float noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN8ultrahdr23floatToUnsignedFractionEfPjS0_(float noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !9, i64 16}
!12 = !{!5, !5, i64 0}
!13 = !{!8, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTS15uhdr_error_info", !18, i64 0, !4, i64 4, !5, i64 8}
!18 = !{!"_ZTS14uhdr_codec_err", !5, i64 0}
!19 = !{!17, !4, i64 4}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !5, i64 0}
!22 = !{!23, !24, i64 137}
!23 = !{!"_ZTSN8ultrahdr26uhdr_gainmap_metadata_fracE", !5, i64 0, !5, i64 12, !5, i64 24, !5, i64 36, !5, i64 48, !5, i64 60, !5, i64 72, !5, i64 84, !5, i64 96, !5, i64 108, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !24, i64 136, !24, i64 137}
!24 = !{!"bool", !5, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!23, !24, i64 136}
!28 = !{!23, !4, i64 124}
!29 = !{!23, !4, i64 132}
end_hunk_0
